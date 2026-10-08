"""Resolve a build number without assuming a new repository's counter is newer.

The owner must choose a baseline/override above all previous published builds.
This validates representation only; it cannot inspect Play/App Store history.
"""
import os


def resolve(run, override='', base=''):
    for value in [run, override, base]:
        assert not value or (value.isascii() and value.isdecimal()), 'Build numbers must be decimal integers'
    number = int(override) if override else int(base or '0') + int(run)
    assert 0 < number <= 2100000000, 'Build number is outside supported Android range'
    return number, bool(override or base)


if __name__ == '__main__':
    number, explicit = resolve(os.environ['GITHUB_RUN_NUMBER'],
                               os.environ.get('REQUESTED_BUILD_NUMBER', ''),
                               os.environ.get('BUILD_NUMBER_BASE', ''))
    with open(os.environ['GITHUB_ENV'], 'a', encoding='utf-8') as stream:
        stream.write(f'BUILD_NUMBER={number}\nHAS_RELEASE_BUILD_NUMBER={str(explicit).lower()}\n')
    print(f'Build number: {number}; owner-selected history baseline: {explicit}')
