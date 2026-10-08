"""Offline publishing checks; optionally inspect a built Android APK/AAB.

This validates artifacts and provenance, not signing or store acceptance.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def sha(data):
    return hashlib.sha256(data).hexdigest()


def check_sources(root=ROOT):
    assets = root / 'app/assets/licenses'
    inventory = json.loads((root / 'native/licenses/inventory.json').read_text())
    assert sha((root / 'native/engine_shim/Cargo.lock').read_bytes().replace(b'\r\n', b'\n')) == inventory['cargo_lock_sha256'], 'Cargo lock changed: regenerate native notices'
    assert sha((assets / 'native-dependencies.txt').read_bytes()) == inventory['notice_sha256'], 'Native notices changed'
    for package in inventory['packages']:
        if 'bundled_source' in package:
            assert sha((assets / package['bundled_source']).read_bytes()) == package['source_sha256'], 'Bundled MPL source changed'
    for filename, expected in {
        'contact.onnx': 'fe5596b6d38640a92d2e83837ebdd9c872540320',
        'race.onnx': '09f7db7d7fb678d8837f56afe5dbc1134fccf0b7',
    }.items():
        data = (root / 'app/assets/nets' / filename).read_bytes()
        actual = hashlib.sha1(f'blob {len(data)}\0'.encode() + data).hexdigest()
        assert actual == expected, f'{filename}: re-review model license/provenance'
    assert (assets / 'wildbg-training-CC0.txt').read_bytes() == (root / 'native/licenses/upstream/wildbg-training-CC0.txt').read_bytes(), 'Model license differs'
    print(f'Provenance verified: {len(inventory["packages"])} Rust components and 2 production models')


def elf_16kb(data, label):
    """Check every LOAD alignment in a little-endian ELF64 shared object."""
    assert data[:4] == b'\x7fELF', f'{label}: not ELF'
    assert data[4] == 2 and data[5] == 1, f'{label}: expected little-endian ELF64'
    phoff = struct.unpack_from('<Q', data, 32)[0]
    entsize, count = struct.unpack_from('<HH', data, 54)
    assert entsize >= 56 and count > 0, f'{label}: invalid program headers'
    loads = 0
    for index in range(count):
        offset = phoff + index * entsize
        kind, _, fileoff, address, _, _, memsize, alignment = struct.unpack_from('<IIQQQQQQ', data, offset)
        if kind == 1:
            loads += 1
            assert alignment >= 16384 and alignment & (alignment - 1) == 0, f'{label}: LOAD alignment below 16 KB'
            assert (address - fileoff) % 16384 == 0, f'{label}: LOAD address/offset incongruent'
        if kind == 0x6474e552:
            assert (address + memsize) % 16384 == 0, f'{label}: GNU_RELRO end is not 16 KB aligned'
    assert loads, f'{label}: no LOAD segments'


def check_android(path, expected_abis, zipalign=None):
    prefix = 'base/lib/' if path.suffix == '.aab' else 'lib/'
    with zipfile.ZipFile(path) as archive:
        names = archive.namelist()
        abis = {n.split('/')[2 if prefix.startswith('base') else 1] for n in names if n.startswith(prefix) and n.endswith('.so')}
        assert abis == set(expected_abis), f'{path.name}: ABIs {abis}, expected {set(expected_abis)}'
        for abi in abis:
            assert f'{prefix}{abi}/libaigammon_engine.so' in names, f'{path.name}: no engine for {abi}'
        for name in names:
            if name.startswith(prefix) and name.endswith('.so') and any(f'/{abi}/' in name for abi in ['arm64-v8a', 'x86_64']):
                elf_16kb(archive.read(name), name)
    if path.suffix == '.apk':
        assert zipalign, 'APK packaging verification needs --zipalign <SDK build-tools/zipalign>'
        subprocess.run([str(zipalign), '-v', '-c', '-P', '16', '4', str(path)], check=True)
    print(f'{path.name}: engine/ABI and 64-bit ELF alignment checks passed')


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--android', type=Path)
    parser.add_argument('--abis', default='arm64-v8a,armeabi-v7a')
    parser.add_argument('--zipalign', type=Path)
    args = parser.parse_args()
    check_sources()
    if args.android:
        check_android(args.android, args.abis.split(','), args.zipalign)


if __name__ == '__main__':
    main()
