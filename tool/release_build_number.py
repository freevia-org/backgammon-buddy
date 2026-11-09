"""Resolve aligned store build identifiers from the committed pubspec version.

The +N suffix is the shared release sequence: iOS uses N directly, while
Android encodes the semantic version and N into its monotonically increasing
Play versionCode. This tool cannot inspect store history; release owners must
keep the committed sequence above every previously uploaded build.
"""
import os
import re


def aligned_build(version, platform):
    match = re.fullmatch(r'(\d+)\.(\d+)\.(\d+)\+(\d+)', version.strip())
    if not match:
        raise ValueError('pubspec version must be MAJOR.MINOR.PATCH+SEQUENCE')
    major, minor, patch, sequence = map(int, match.groups())
    if not 0 < sequence <= 999:
        raise ValueError('Shared build sequence must be between 1 and 999')
    if platform == 'ios':
        return sequence
    if platform != 'android':
        raise ValueError('RELEASE_PLATFORM must be android or ios')
    if minor > 99 or patch > 999:
        raise ValueError('Version fields exceed Android versionCode encoding limits')
    number = major * 100_000_000 + minor * 1_000_000 + patch * 1_000 + sequence
    if number > 2_100_000_000:
        raise ValueError('Android versionCode exceeds Google Play maximum')
    return number


if __name__ == '__main__':
    with open('app/pubspec.yaml', encoding='utf-8') as stream:
        version_line = next(line for line in stream if line.startswith('version:'))
    version = version_line.split(':', 1)[1].strip().strip("'\"")
    platform = os.environ['RELEASE_PLATFORM']
    number = aligned_build(version, platform)
    sequence = int(version.rsplit('+', 1)[1])
    with open(os.environ['GITHUB_ENV'], 'a', encoding='utf-8') as stream:
        stream.write(f'BUILD_NUMBER={number}\nBUILD_SEQUENCE={sequence}\n')
        stream.write('HAS_RELEASE_BUILD_NUMBER=true\n')
    print(f'{platform} build number: {number} (shared sequence {sequence}, version {version})')
