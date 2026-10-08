"""Build/check offline mobile notices from reviewed, hash-pinned evidence.

This renderer has no network access and does not guess license grants. The
reviewed manifest includes build-resolved modules (a conservative superset of
linked native code), direct/inherited POM declarations and upstream texts.
"""
import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
EVIDENCE = ROOT / 'native/licenses/mobile'
ASSETS = ROOT / 'app/assets/licenses'


def sha(data):
    return hashlib.sha256(data).hexdigest()


def verified_text(evidence, digest):
    data = (evidence / 'texts' / (digest + '.txt')).read_bytes()
    if sha(data) != digest:
        raise ValueError('Notice text does not match its reviewed SHA-256: ' + digest)
    return data.decode('utf-8')


def validate_manifest(manifest, evidence):
    for notice in manifest['notices'].values():
        verified_text(evidence, notice['sha256'])
        if not notice['sources']:
            raise ValueError('Every notice needs source provenance')
    for platform in ('android', 'apple'):
        records = manifest[platform]['dependencies']
        if not records or len({r['id'] for r in records}) != len(records):
            raise ValueError('Missing or duplicated dependency identity')
        for record in records:
            if not record['notices'] and not record.get('terms_urls'):
                raise ValueError('Unreviewed dependency: ' + record['id'])
            for key in record['notices']:
                if key not in manifest['notices']:
                    raise ValueError('Missing notice reference: ' + key)


def render(manifest, platform, evidence):
    data = manifest[platform]
    lines = [data['title'], '', manifest['scope'], '', data['scope'], '']
    usages = {}
    for record in data['dependencies']:
        lines += [record['id']]
        for license in record.get('declared_licenses', []):
            lines.append('Published license declaration: ' + license['name'] +
                         (' — ' + license['url'] if license.get('url') else ''))
        for url in record.get('terms_urls', []):
            lines.append('SDK terms: ' + url)
        if record.get('note'):
            lines.append(record['note'])
        for key in record['notices']:
            usages.setdefault(key, []).append(record['id'])
        lines.append('Notices: ' + ', '.join(record['notices']))
        lines.append('')
    for key in sorted(usages):
        notice = manifest['notices'][key]
        lines += ['=' * 72, key, '', 'Included for:', *usages[key], '',
                  'Source:', *notice['sources'],
                  'SHA-256: ' + notice['sha256'], '']
        lines.append(verified_text(evidence, notice['sha256']))
        lines.append('')
    return ('\n'.join(lines).rstrip() + '\n').encode('utf-8')


def android_signature(records):
    return {r.get('coordinate', r.get('id')):
            sorted((a['name'], a['sha256']) for a in r['artifacts'])
            for r in records}


def check_android(manifest, resolved):
    expected = android_signature(manifest['android']['dependencies'])
    actual = android_signature(resolved['dependencies'])
    if expected != actual:
        changed = sorted(k for k in expected.keys() | actual.keys()
                         if expected.get(k) != actual.get(k))
        raise ValueError('Android native notice review is stale: ' + ', '.join(changed))


def check_apple(manifest, inventory):
    def signature(pins):
        return {p['identity']: (p['location'], p['state'].get('revision')) for p in pins}
    if signature(manifest['apple']['resolved_packages']) != signature(
            inventory['apple_sources']['resolved_packages']):
        raise ValueError('Apple package revisions changed; review native notices')
    # Source files can change even if a collector/source root is accidentally
    # incomplete. A successful build must reproduce every reviewed source text.
    expected = {(n['source'], n['sha256']) for n in manifest['apple']['source_notices']}
    actual = {(n['source'], n['sha256']) for n in inventory['apple_sources']['source_notices']}
    if not expected.issubset(actual):
        raise ValueError('Apple native notice evidence is missing or changed')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--check', action='store_true')
    parser.add_argument('--android-resolved', type=Path)
    parser.add_argument('--apple-inventory', type=Path)
    parser.add_argument('--flutter-license', type=Path)
    args = parser.parse_args()
    manifest = json.loads((EVIDENCE / 'manifest.json').read_text(encoding='utf-8'))
    validate_manifest(manifest, EVIDENCE)
    if args.flutter_license and sha(args.flutter_license.read_bytes()) != (
            manifest['notices']['Flutter-engine-composite']['sha256']):
        raise ValueError('Flutter engine composite notice changed; recapture and review it')
    if args.android_resolved:
        check_android(manifest, json.loads(args.android_resolved.read_text(encoding='utf-8')))
    if args.apple_inventory:
        check_apple(manifest, json.loads(args.apple_inventory.read_text(encoding='utf-8')))
    for platform in ('android', 'apple'):
        path = ASSETS / (platform + '-native-notices.txt')
        content = render(manifest, platform, EVIDENCE)
        if args.check:
            if not path.exists() or path.read_bytes() != content:
                raise SystemExit('Regenerate mobile native notices: ' + str(path))
        else:
            path.write_bytes(content)
    print('Mobile notices verified: %d Android modules, %d Apple package pins.' % (
        len(manifest['android']['dependencies']), len(manifest['apple']['resolved_packages'])))


if __name__ == '__main__':
    main()
