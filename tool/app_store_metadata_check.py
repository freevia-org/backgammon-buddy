"""Offline draft checks; does not sign, upload or certify submission readiness."""
import json
from pathlib import Path
import plistlib
import struct
from urllib.parse import urlparse

ROOT = Path(__file__).resolve().parents[1]


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
    data = (icons / icon['filename']).read_bytes()
    assert data[:8] == b'\x89PNG\r\n\x1a\n'
    width, height, depth, color = struct.unpack('>IIBB', data[16:26])
    assert (width, height) == (1024, 1024)
    assert color in (0, 2, 3) and b'tRNS' not in data, 'Marketing icon must be opaque'
    print('Draft metadata, v1 permissions and 1024px icon checks passed.')
    print('NOT submission approval: licensing, account/signing, deletion completion,')
    print('privacy/encryption decisions, screenshots and device acceptance remain open.')


if __name__ == '__main__':
    main()
