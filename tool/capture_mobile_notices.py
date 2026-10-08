"""Refresh reviewed notice evidence from an exact mobile dependency build.

Reads only modules named by the Gradle report and verifies their artifact
hashes before extracting notices. Additional license texts must already be
reviewed and pinned in reviewed-upstream.json; this tool never downloads or
silently assigns an unknown license. Run mobile_notices.py afterwards.
"""
import argparse
import io
import json
from pathlib import Path
import re
import xml.etree.ElementTree as ET
import zipfile

from mobile_dependency_inventory import pom_licenses
from mobile_notices import EVIDENCE, sha, validate_manifest


def pom_url(coordinate):
    group, name, version = coordinate.split(':')
    host = ('https://storage.googleapis.com/download.flutter.io/' if group == 'io.flutter' else
        'https://dl.google.com/dl/android/maven2/' if group.startswith(
        ('androidx.', 'com.google.android.', 'com.google.firebase')) else
        'https://repo.maven.apache.org/maven2/')
    return host + '/'.join((group.replace('.', '/'), name, version,
                            name + '-' + version + '.pom'))


def inherited_licenses(path, coordinate, cache, extras, chain=None):
    chain = [] if chain is None else chain
    if coordinate in {item['coordinate'] for item in chain}:
        raise ValueError('Cyclic POM parent: ' + coordinate)
    chain.append({'coordinate': coordinate, 'sha256': sha(path.read_bytes()),
                  'source': pom_url(coordinate)})
    licenses = pom_licenses(path)
    if licenses:
        return licenses, chain
    root = ET.parse(path).getroot()
    ns = '{http://maven.apache.org/POM/4.0.0}' if root.tag.startswith('{') else ''
    parent = root.find(ns + 'parent')
    if parent is None:
        return [], chain
    group, name, version = [parent.findtext(ns + key) for key in
                            ('groupId', 'artifactId', 'version')]
    candidates = sorted((cache / group / name / version).rglob(name + '-' + version + '.pom'))
    candidates += [extras / (name + '-' + version + '.pom')]
    candidate = next((p for p in candidates if p.exists()), None)
    if candidate is None:
        raise ValueError('Missing declared POM parent: ' + ':'.join((group, name, version)))
    return inherited_licenses(candidate, ':'.join((group, name, version)), cache, extras, chain)


def archive_notices(data, prefix='', depth=0):
    with zipfile.ZipFile(io.BytesIO(data)) as archive:
        for name in sorted(archive.namelist()):
            if name.endswith('/'):
                continue
            leaf = name.rsplit('/', 1)[-1]
            if leaf.lower().endswith(('.png', '.jpg', '.jpeg', '.webp', '.gif', '.ico')):
                continue
            if re.match(r'^(LICENSE|NOTICE|COPYING|COPYRIGHT)([._-]|$)', leaf, re.I) or (
                    leaf == 'third_party_licenses.txt'):
                text = archive.read(name)
                if text.strip():
                    text.decode('utf-8')  # fail instead of corrupting a notice
                    yield prefix + name, text
            elif name.endswith('.jar') and depth < 2:
                yield from archive_notices(archive.read(name), prefix + name + '!/', depth + 1)


def capture(args):
    reviewed = json.loads((EVIDENCE / 'reviewed-upstream.json').read_text(encoding='utf-8'))
    manifest = {'schema': 1, 'scope':
        'These notices preserve the published license texts and attributions for native '
        'build dependencies. Resolution can include unused products or architectures; '
        'listing a dependency does not mean its optional features collect data. '
        'Dart packages are also listed separately by Flutter. Proprietary SDK terms '
        'remain separate from the open-source licenses reproduced here.',
        'notices': reviewed['notices'].copy()}

    def add_text(key, data, source):
        digest = sha(data)
        target = EVIDENCE / 'texts' / (digest + '.txt')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
        entry = manifest['notices'].setdefault(key, {'sha256': digest, 'sources': []})
        if entry['sha256'] != digest:
            raise ValueError('Notice identity collision: ' + key)
        if source not in entry['sources']:
            entry['sources'].append(source)
        return key

    resolved = json.loads(args.android_resolved.read_text(encoding='utf-8'))
    android = []
    for dep in resolved['dependencies']:
        coordinate = dep['coordinate']
        record = {'id': coordinate, 'artifacts': dep['artifacts'], 'notices': []}
        if dep.get('pom_file'):
            licenses, chain = inherited_licenses(args.android_resolved.parent / dep['pom_file'],
                                                  coordinate, args.gradle_cache, args.extra_poms)
            record.update(declared_licenses=licenses, pom_evidence=chain)
        else:
            licenses = []
        for license in licenses:
            name = license['name'].lower()
            if 'apache' in name:
                record['notices'].append('Apache-2.0')
            elif name == 'android software development kit license':
                record.setdefault('terms_urls', []).append(license['url'])
            elif name in ('bsd-3-clause', 'bsd 3-clause', 'bsd license', 'public domain'):
                pass  # explicit reviewed component mapping is required below
            else:
                raise ValueError('Review unknown published license: ' + coordinate + ' / ' + name)
        special = reviewed['android'].get(coordinate, {})
        if any('bsd' in item['name'].lower() or item['name'].lower() == 'public domain'
               for item in licenses) and not special.get('notices'):
            raise ValueError('Missing reviewed BSD/public-domain source: ' + coordinate)
        if not licenses and not coordinate.startswith('io.flutter:') and not special:
            raise ValueError('No published or explicitly reviewed license: ' + coordinate)
        record['notices'] += special.get('notices', [])
        for key in ('note', 'terms_urls'):
            if key in special:
                record[key] = special[key]
        if coordinate.startswith('io.flutter:'):
            if not coordinate.endswith('1.0.0-' + reviewed['flutter_engine_revision']):
                raise ValueError('Flutter engine changed; recapture its composite license')
            record['notices'].append('Flutter-engine-composite')
            record['note'] = 'Flutter engine and embedded third-party notices from the exact SDK engine revision.'
        group, name, version = coordinate.split(':')
        for artifact in dep['artifacts']:
            candidates = sorted((args.gradle_cache / group / name / version).rglob(artifact['name']))
            path = next((p for p in candidates if sha(p.read_bytes()) == artifact['sha256']), None)
            if path is None:
                raise ValueError('Resolved artifact unavailable or hash changed: ' + coordinate)
            for source, data in archive_notices(path.read_bytes()):
                key = 'Android-published-notice-' + sha(data)[:16]
                record['notices'].append(add_text(key, data,
                    coordinate + ' / ' + artifact['name'] + '!/' + source))
        record['notices'] = sorted(set(record['notices']))
        android.append(record)
    manifest['android'] = {'title': 'Android native dependency notices',
        'scope': 'Exact releaseRuntimeClasspath artifacts, including the Flutter engine. '
                 'Every artifact is SHA-256 pinned in the accompanying source repository inventory.',
        'dependencies': sorted(android, key=lambda r: r['id'])}

    inventory = json.loads(args.apple_inventory.read_text(encoding='utf-8'))['apple_sources']
    apple = []
    for pin in inventory['resolved_packages']:
        identity = pin['identity']
        state = pin['state']
        record = {'id': identity + ' ' + state.get('version', state['revision']), 'notices': []}
        for item in inventory['source_notices']:
            parts = item['source'].split('/', 1)
            if parts[0].lower() != identity.lower():
                continue
            data = (args.apple_inventory.parent / item['captured_text']).read_bytes()
            if sha(data) != item['sha256']:
                raise ValueError('Apple source-notice hash mismatch: ' + item['source'])
            url = pin['location'].removesuffix('.git') + '/blob/' + state['revision'] + '/' + parts[1]
            key = 'Apple-source-notice-' + sha(data)[:16]
            record['notices'].append(add_text(key, data, url))
        record['notices'] = sorted(set(record['notices']))
        if identity in ('firebase-ios-sdk', 'googleappmeasurement'):
            record['terms_urls'] = ['https://firebase.google.com/terms/analytics']
            record['note'] = ('Repository license texts apply to their respective source files. '
                'The prebuilt Firebase Analytics / Google App Measurement SDKs also have '
                'service terms; these source notices do not relicense proprietary binaries.')
        if identity == 'google-ads-on-device-conversion-ios-sdk':
            record['note'] = ('Resolved transitively by the upstream package manifest; '
                'not linked by this app, which selects FirebaseAnalyticsCore without Ad ID support.')
        apple.append(record)
    apple.append({'id': 'Flutter engine', 'notices': ['Flutter-engine-composite']})
    manifest['apple'] = {'title': 'Apple native dependency notices',
        'scope': 'Pinned Swift Package Manager source notices, including upstream subcomponents. '
                 'This is a conservative build-resolution inventory; some packages, test helpers '
                 'and Firebase products are not linked into this application.',
        'resolved_packages': inventory['resolved_packages'],
        'source_notices': inventory['source_notices'],
        'dependencies': sorted(apple, key=lambda r: r['id'])}
    validate_manifest(manifest, EVIDENCE)
    (EVIDENCE / 'manifest.json').write_text(json.dumps(manifest, indent=2, sort_keys=True) + '\n', encoding='utf-8')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--android-resolved', type=Path, required=True)
    parser.add_argument('--apple-inventory', type=Path, required=True)
    parser.add_argument('--gradle-cache', type=Path, required=True)
    parser.add_argument('--extra-poms', type=Path, required=True)
    capture(parser.parse_args())


if __name__ == '__main__':
    main()
