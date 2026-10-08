"""Validate a decoded distribution profile and create escaped export options.

Run after `security cms -D`; never logs profile values or signs/uploads anything.
"""
import argparse
from datetime import datetime, timezone
from pathlib import Path
import plistlib

BUNDLE = 'org.freevia.backgammonbuddy'


def export_options(profile, method, now=None):
    assert method in ('ad-hoc', 'app-store-connect'), 'Unsupported export method'
    now = now or datetime.now(timezone.utc)
    expiry = profile['ExpirationDate'].replace(tzinfo=timezone.utc)
    assert expiry > now, 'Provisioning profile expired'
    team = profile['TeamIdentifier'][0]
    entitlements = profile['Entitlements']
    assert entitlements['application-identifier'] == f'{team}.{BUNDLE}', 'Profile app identity differs'
    assert not entitlements.get('get-task-allow', False), 'Development profile cannot sign a release'
    assert not profile.get('ProvisionsAllDevices', False), 'Enterprise profile is not an App Store/ad-hoc profile'
    devices = profile.get('ProvisionedDevices', [])
    assert bool(devices) == (method == 'ad-hoc'), 'Profile does not match export method'
    return {'method': method, 'destination': 'export', 'signingStyle': 'manual',
            'teamID': team, 'signingCertificate': 'Apple Distribution',
            'provisioningProfiles': {BUNDLE: profile['Name']}, 'stripSwiftSymbols': True}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('profile', type=Path)
    parser.add_argument('output', type=Path)
    parser.add_argument('--method', required=True, choices=['ad-hoc', 'app-store-connect'])
    args = parser.parse_args()
    with args.profile.open('rb') as stream:
        profile = plistlib.load(stream)
    options = export_options(profile, args.method)
    with args.output.open('wb') as stream:
        plistlib.dump(options, stream)
    print('Distribution profile validated; export-only options written')


if __name__ == '__main__':
    main()
