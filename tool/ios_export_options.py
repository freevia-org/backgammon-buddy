"""Validate a decoded distribution profile and create escaped export options.

Run after `security cms -D`; never logs profile values or signs/uploads anything.
"""
import argparse
from datetime import datetime, timezone
from pathlib import Path
import plistlib

BUNDLE = 'org.freevia.backgammonbuddy'


def export_options(profile, method, now=None):
    if method not in ('ad-hoc', 'app-store-connect'):
        raise AssertionError('Unsupported export method')
    now = now or datetime.now(timezone.utc)
    expiry = profile['ExpirationDate'].replace(tzinfo=timezone.utc)
    if not expiry > now:
        raise AssertionError('Provisioning profile expired')
    team = profile['TeamIdentifier'][0]
    entitlements = profile['Entitlements']
    if entitlements['application-identifier'] != f'{team}.{BUNDLE}':
        raise AssertionError('Profile app identity differs')
    if entitlements.get('get-task-allow', False):
        raise AssertionError('Development profile cannot sign a release')
    if profile.get('ProvisionsAllDevices', False):
        raise AssertionError('Enterprise profile is not an App Store/ad-hoc profile')
    devices = profile.get('ProvisionedDevices', [])
    if bool(devices) != (method == 'ad-hoc'):
        raise AssertionError('Profile does not match export method')
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
