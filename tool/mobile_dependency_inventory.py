"""Capture mobile binary/dependency evidence without inferring license grants.

Run on release artifacts, with Gradle's collector JSON and Apple build-source
roots when available. No signing material, GoogleService files, or user data is
read. Privacy manifests describe SDK capabilities, not observed transmission.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import plistlib
import re
import xml.etree.ElementTree as ET
import zipfile
from urllib.parse import urlsplit, urlunsplit


def sha(data):
    return hashlib.sha256(data).hexdigest()


def public_url(value):
    parsed = urlsplit(value)
    return urlunsplit((parsed.scheme, parsed.netloc.split('@')[-1], parsed.path, '', ''))


def inspect_artifact(path):
    result = {'artifact': path.name, 'sha256': sha(path.read_bytes()),
              'native_libraries': [], 'frameworks': [], 'version_markers': {},
              'privacy_manifests': [], 'notice_assets': []}
    with zipfile.ZipFile(path) as archive:
        for name in sorted(archive.namelist()):
            if name.startswith('__MACOSX/') or name.endswith('/'):
                continue
            lower = name.lower()
            if name.endswith('.so'):
                result['native_libraries'].append({'path': name, 'sha256': sha(archive.read(name))})
            elif name.endswith('.version') and name.startswith('META-INF/'):
                result['version_markers'][name] = archive.read(name).decode('utf-8').strip()
            elif name.endswith('.xcprivacy'):
                data = archive.read(name)
                result['privacy_manifests'].append({'path': name, 'sha256': sha(data),
                    'declarations': plistlib.loads(data)})
            elif name.endswith('.framework/Info.plist') or name.endswith('.app/Info.plist'):
                plist = plistlib.loads(archive.read(name))
                # Deliberate allowlist: do not export account/team/config values.
                metadata = {key: plist[key] for key in (
                    'CFBundleIdentifier', 'CFBundleShortVersionString', 'CFBundleVersion',
                    'DTSDKName', 'DTXcode', 'MinimumOSVersion') if key in plist}
                metadata['path'] = name
                result['frameworks'].append(metadata)
            elif re.search(r'(^|/)(licenses?|notices?|copying|acknowledgements|third_party_licenses)([./_-]|$)', lower):
                result['notice_assets'].append({'path': name, 'sha256': sha(archive.read(name))})
    return result


def pom_licenses(path):
    root = ET.parse(path).getroot()
    namespace = '{http://maven.apache.org/POM/4.0.0}' if root.tag.startswith('{') else ''
    declarations = []
    for item in root.findall(f'{namespace}licenses/{namespace}license'):
        declaration = {}
        for key in ('name', 'url', 'distribution', 'comments'):
            text = item.findtext(namespace + key)
            if text:
                declaration[key] = public_url(text.strip()) if key == 'url' else text.strip()
        if declaration:
            declarations.append(declaration)
    return declarations


def android_dependencies(record):
    result = json.loads(record.read_text(encoding='utf-8'))
    for item in result['dependencies']:
        pom = item.pop('pom_file', None)
        if pom:
            pom_path = record.parent / pom
            item['pom_sha256'] = sha(pom_path.read_bytes())
            item['declared_licenses'] = pom_licenses(pom_path)
        else:
            item['declared_licenses'] = []
        if not item['declared_licenses']:
            item['license_status'] = 'No direct POM declaration captured; inspect parent/source terms.'
    return result


def apple_sources(roots, output):
    """Capture resolution pins and checked-out LICENSE/NOTICE texts only."""
    pins, notices, seen = [], [], set()
    for source_root in roots:
        if not source_root.exists():
            continue
        for folder, dirs, files in os.walk(source_root):
            dirs[:] = [d for d in dirs if d not in ('.git', 'Index.noindex', 'ModuleCache.noindex',
                                                   'Intermediates.noindex', 'Products')]
            here = Path(folder)
            if 'Package.resolved' in files:
                record = json.loads((here / 'Package.resolved').read_text())
                for pin in record.get('pins', record.get('object', {}).get('pins', [])):
                    normalized = {'identity': pin.get('identity', pin.get('package')),
                        'location': public_url(pin.get('location', pin.get('repositoryURL', ''))),
                        'state': pin.get('state', {})}
                    key = json.dumps(normalized, sort_keys=True)
                    if key not in seen:
                        seen.add(key)
                        pins.append(normalized)
            # Only dependency checkout licenses, not profiles/certificates/config.
            if 'checkouts' not in here.parts:
                continue
            index = here.parts.index('checkouts')
            relative = Path(*here.parts[index + 1:])
            for filename in files:
                if not re.match(r'^(LICENSE|NOTICE|COPYING)([._-]|$)', filename, re.I):
                    continue
                source = here / filename
                data = source.read_bytes()
                digest = sha(data)
                dest = output / 'source-notices' / (digest + '.txt')
                dest.parent.mkdir(parents=True, exist_ok=True)
                if not dest.exists():
                    dest.write_bytes(data)
                entry = {'source': (relative / filename).as_posix(), 'sha256': digest,
                         'captured_text': dest.relative_to(output).as_posix()}
                if entry not in notices:
                    notices.append(entry)
    return {'resolved_packages': pins, 'source_notices': notices}


def summarize(report):
    lines = ['# Mobile dependency evidence', '',
        'Generated from the named artifacts and build metadata. This inventory does not '
        'infer license grants or prove runtime collection/consent behavior.', '']
    for item in report['artifacts']:
        lines += [f"## {item['artifact']}", '', f"SHA-256: `{item['sha256']}`", '',
            f"Native ELF libraries: {len(item['native_libraries'])}; framework/app metadata: "
            f"{len(item['frameworks'])}; Android version markers: {len(item['version_markers'])}; "
            f"privacy manifests: {len(item['privacy_manifests'])}; notice assets: {len(item['notice_assets'])}.", '',
            '| Framework / app | Version | Build SDK |', '|---|---|---|']
        for framework in item['frameworks']:
            lines.append(f"| {framework['path']} | {framework.get('CFBundleShortVersionString', 'unknown')} | "
                         f"{framework.get('DTSDKName', 'not declared')} |")
        lines += ['', 'The complete JSON contains exact privacy declarations and binary hashes.', '']
    android = report.get('android_dependencies')
    if android:
        dependencies = android['dependencies']
        missing = [d['coordinate'] for d in dependencies if not d.get('declared_licenses')]
        lines += ['## Android resolved dependencies', '',
            f'{len(dependencies)} resolved modules; {len(missing)} have no direct POM license declaration.', '']
        lines += [f'- `{coordinate}`: inspect parent/source terms.' for coordinate in missing]
        lines += ['']
    else:
        lines += ['Android dependency-resolution/POM metadata was not supplied. APK version '
                  'markers are a partial inventory and cannot replace it.', '']
    apple = report.get('apple_sources', {})
    lines += [f"Apple resolution pins: {len(apple.get('resolved_packages', []))}; checked-out license/notice "
              f"texts captured: {len(apple.get('source_notices', []))}.", '',
              'Embedded framework versions do not inventory statically linked SDKs. Retain '
              'Package.resolved plus source notices with each build. Missing declarations are '
              'review gaps, never evidence of unrestricted use.', '']
    return '\n'.join(lines)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--artifact', type=Path, action='append', default=[])
    parser.add_argument('--android-dependencies', type=Path)
    parser.add_argument('--apple-source-root', type=Path, action='append', default=[])
    parser.add_argument('--out-dir', type=Path, required=True)
    parser.add_argument('--require-no-apple-ad-support', action='store_true')
    args = parser.parse_args()
    args.out_dir.mkdir(parents=True, exist_ok=True)
    report = {'schema': 1, 'artifacts': [inspect_artifact(path) for path in args.artifact]}
    if args.require_no_apple_ad_support:
        forbidden = ('GoogleAppMeasurementIdentitySupport.framework/', 'GoogleAdsOnDeviceConversion.framework/')
        found = [f['path'] for artifact in report['artifacts'] for f in artifact['frameworks']
                 if any(name in f['path'] for name in forbidden)]
        if found:
            raise SystemExit('Unexpected advertising-support frameworks: ' + ', '.join(found))
    if args.android_dependencies:
        report['android_dependencies'] = android_dependencies(args.android_dependencies)
    if args.apple_source_root:
        report['apple_sources'] = apple_sources(args.apple_source_root, args.out_dir)
    (args.out_dir / 'inventory.json').write_text(json.dumps(report, indent=2, sort_keys=True) + '\n', encoding='utf-8')
    (args.out_dir / 'inventory.md').write_text(summarize(report), encoding='utf-8')
    print(f"Captured {len(report['artifacts'])} artifacts in {args.out_dir}")


if __name__ == '__main__':
    main()
