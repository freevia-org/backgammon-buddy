"""Verify the dynamic exports required by dart:ffi in an iOS executable or IPA."""
import argparse
from pathlib import Path
import re
import subprocess
import tempfile
import zipfile

REQUIRED_EXPORTS = frozenset({
    'wildbg_new_with_path',
    'wildbg_free',
    'best_move',
    'probabilities',
    'cube_info',
    'buddy_gnubg_version',
    'buddy_gnubg_abi_version',
    'buddy_gnubg_init',
    'buddy_gnubg_evaluate',
    'buddy_gnubg_rank',
    'buddy_gnubg_cube',
})

EXPORT_LINE = re.compile(r'^\s*0x[0-9a-fA-F]+\s+(_\S+)')


def parse_exports(output):
    """Return C symbol names in dyld_info's Mach-O export-trie output."""
    exports = set()
    for line in output.splitlines():
        match = EXPORT_LINE.match(line)
        if match:
            symbol = match.group(1)
            if symbol.startswith('__'):
                # Mach-O adds one leading underscore to C symbols. C++ and
                # compiler-runtime exports may have more; only normalize one.
                symbol = symbol[1:]
            exports.add(symbol)
    return exports


def verify_exports(output):
    exports = parse_exports(output)
    missing = sorted('_' + name for name in REQUIRED_EXPORTS if '_' + name not in exports)
    if missing:
        raise ValueError('iOS executable is missing required dynamic FFI exports: '
                         + ', '.join(missing))
    return sorted(REQUIRED_EXPORTS)


def binary_from_ipa(ipa, destination):
    with zipfile.ZipFile(ipa) as archive:
        matches = [name for name in archive.namelist()
                   if re.fullmatch(r'Payload/[^/]+\.app/Runner', name)]
        if len(matches) != 1:
            raise ValueError(f'Expected one Payload/*.app/Runner executable in IPA; found {len(matches)}')
        target = destination / 'Runner'
        target.write_bytes(archive.read(matches[0]))
        return target


def inspect(binary):
    result = subprocess.run(
        ['xcrun', 'dyld_info', '-exports', str(binary)],
        text=True, capture_output=True, check=True)
    verified = verify_exports(result.stdout)
    print(f'Verified {len(verified)} required dynamic iOS FFI exports in {binary}')
    return verified


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--binary', type=Path, help='Runner Mach-O executable')
    group.add_argument('--ipa', type=Path, help='Exported IPA to inspect')
    args = parser.parse_args()
    if args.binary:
        inspect(args.binary)
    else:
        with tempfile.TemporaryDirectory(prefix='ios-ffi-exports-') as temp:
            inspect(binary_from_ipa(args.ipa, Path(temp)))


if __name__ == '__main__':
    main()
