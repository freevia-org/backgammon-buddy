"""Offline draft checks; does not sign, upload or certify submission readiness."""
import hashlib
import json
from pathlib import Path
import plistlib
import struct
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]


def check_png(path, expected):
    data = path.read_bytes()
    assert data[:8] == b'\x89PNG\r\n\x1a\n', path
    width, height, depth, color = struct.unpack('>IIBB', data[16:26])
    assert (width, height) == expected, f'{path}: {width}x{height}'
    assert color in (0, 2, 3), f'{path}: alpha channel is not allowed'
    offset = 8
    while offset < len(data):
        size = struct.unpack('>I', data[offset:offset + 4])[0]
        kind = data[offset + 4:offset + 8]
        assert kind != b'tRNS', f'{path}: transparency is not allowed'
        offset += size + 12
    return hashlib.sha256(data).hexdigest()


def main():
    store = ROOT / 'app/store/ios'
    info = json.loads((store / 'app-information.json').read_text())
    assert info['bundle_id'] == 'org.freevia.backgammonbuddy'
    assert info['status'] == 'preparation-draft-not-submitted'
    for key in ('marketing_url', 'support_url', 'privacy_policy_url'):
        url = urlparse(info[key])
        assert url.scheme == 'https' and url.netloc == 'freevia.org', key
    limits = {'name': 30, 'subtitle': 30, 'keywords': 100,
              'promotional_text': 170, 'description': 4000, 'review_notes': 4000}
    for name, limit in limits.items():
        text = (store / f'en-US/{name}.txt').read_text().strip()
        assert 0 < len(text) <= limit, f'{name}: {len(text)}/{limit}'
        print(f'{name}: {len(text)}/{limit} characters')
    with (ROOT / 'app/ios/Runner/Info.plist').open('rb') as stream:
        plist = plistlib.load(stream)
    assert 'NSMicrophoneUsageDescription' not in plist
    assert 'QR' in plist['NSCameraUsageDescription']
    assert 'NSLocalNetworkUsageDescription' in plist
    icons = ROOT / 'app/ios/Runner/Assets.xcassets/AppIcon.appiconset'
    catalog = json.loads((icons / 'Contents.json').read_text())
    icon = next(i for i in catalog['images'] if i['idiom'] == 'ios-marketing')
    check_png(icons / icon['filename'], (1024, 1024))
    manifest = json.loads((store / 'screenshots/manifest.json').read_text())
    for family, expected in {'iphone-6.9': (1320, 2868), 'ipad-13': (2064, 2752)}.items():
        images = sorted((store / f'screenshots/en-US/{family}').glob('*.png'))
        assert 1 <= len(images) <= 10, f'{family}: provide 1–10 screenshots'
        for path in images:
            digest = check_png(path, expected)
            relative = path.relative_to(store / 'screenshots').as_posix()
            assert manifest['sha256'][relative] == digest, f'{relative}: manifest hash mismatch'
        print(f'{family}: {len(images)} opaque screenshots at {expected[0]}x{expected[1]}')
    print('Draft metadata, v1 permissions and 1024px icon checks passed.')
    print('NOT submission approval: account/signing, exact signed-artifact audit,')
    print('privacy/encryption decisions and device acceptance remain open.')


if __name__ == '__main__':
    main()
