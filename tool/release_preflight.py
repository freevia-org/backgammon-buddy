"""Offline publishing checks; optionally inspect a built Android APK/AAB.

This validates artifacts and provenance, not signing or store acceptance.
"""
import argparse
from dataclasses import dataclass
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import zipfile

ROOT = Path(__file__).resolve().parents[1]


def _require(condition, message):
    """Keep release gates active even when Python is run with optimization."""
    if not condition:
        raise AssertionError(message)


def sha(data):
    return hashlib.sha256(data).hexdigest()


def check_sources(root=ROOT):
    assets = root / 'app/assets/licenses'
    inventory = json.loads((root / 'native/licenses/inventory.json').read_text())
    _require(sha((root / 'native/engine_shim/Cargo.lock').read_bytes().replace(b'\r\n', b'\n')) == inventory['cargo_lock_sha256'], 'Cargo lock changed: regenerate native notices')
    _require(sha((assets / 'native-dependencies.txt').read_bytes()) == inventory['notice_sha256'], 'Native notices changed')
    for package in inventory['packages']:
        if 'bundled_source' in package:
            _require(sha((assets / package['bundled_source']).read_bytes()) == package['source_sha256'], 'Bundled MPL source changed')
    for filename, expected in {
        'contact.onnx': 'fe5596b6d38640a92d2e83837ebdd9c872540320',
        'race.onnx': '09f7db7d7fb678d8837f56afe5dbc1134fccf0b7',
    }.items():
        data = (root / 'app/assets/nets' / filename).read_bytes()
        actual = hashlib.sha1(f'blob {len(data)}\0'.encode() + data).hexdigest()
        _require(actual == expected, f'{filename}: re-review model license/provenance')
    _require((assets / 'wildbg-training-CC0.txt').read_bytes() == (root / 'native/licenses/upstream/wildbg-training-CC0.txt').read_bytes(), 'Model license differs')
    print(f'Provenance verified: {len(inventory["packages"])} Rust components and 2 production models')


@dataclass(frozen=True)
class Segment:
    kind: int
    flags: int
    offset: int
    address: int
    memsize: int
    alignment: int

    @property
    def end(self):
        return self.address + self.memsize


def elf_16kb(data, label):
    """Check LOAD alignment and RELRO protection in a little-endian ELF64 object."""
    _require(data[:4] == b'\x7fELF', f'{label}: not ELF')
    _require(data[4] == 2 and data[5] == 1, f'{label}: expected little-endian ELF64')
    phoff = struct.unpack_from('<Q', data, 32)[0]
    entsize, count = struct.unpack_from('<HH', data, 54)
    _require(entsize >= 56 and count > 0, f'{label}: invalid program headers')
    segments = []
    for index in range(count):
        offset = phoff + index * entsize
        kind, flags, fileoff, address, _, _, memsize, alignment = struct.unpack_from('<IIQQQQQQ', data, offset)
        segments.append(Segment(kind, flags, fileoff, address, memsize, alignment))
    loads = [s for s in segments if s.kind == 1]
    errors = []
    if not loads:
        errors.append('no LOAD segments')
    for segment in loads:
        alignment = segment.alignment
        if alignment < 16384 or alignment & (alignment - 1):
            errors.append('LOAD alignment below 16 KB or not a power of two')
        if (segment.address - segment.offset) % 16384:
            errors.append('LOAD address/offset incongruent')
    for relro in (s for s in segments if s.kind == 0x6474e552):
        remainder = relro.end % 16384
        # AOSP phdr_table_get_relro_min_align exempts a complete LOAD from end
        # alignment: there is no writable suffix for rounded mprotect to harm.
        # Retain a conservative check of other writable/executable LOADs too:
        # mprotect(PROT_READ) must not remove write/execute access outside RELRO.
        # https://android.googlesource.com/platform/bionic/+/android16-qpr2-release/linker/linker_phdr_16kib_compat.cpp
        complete_load = next((s for s in loads if s.flags & 7 == 6
                              and s.address == relro.address
                              and s.end <= relro.end), None)
        protected_start = relro.address // 16384 * 16384
        protected_end = (relro.end + 16383) // 16384 * 16384
        permission_overlap = any(
            s.memsize and (
                s.flags & 1 and max(s.address, protected_start) < min(s.end, protected_end)
                or s.flags & 2 and (
                    max(s.address, protected_start) < min(s.end, relro.address)
                    or max(s.address, relro.end) < min(s.end, protected_end)
                )
            ) for s in loads
        )
        other_load_overlap = any(
            s is not complete_load and s.flags & 3 and s.memsize
            and max(s.address, protected_start) < min(s.end, protected_end)
            for s in loads
        )
        if remainder and (complete_load is None or permission_overlap or other_load_overlap):
            errors.append(
                f'GNU_RELRO end 0x{relro.end:x} is not 16 KB aligned '
                f'(remainder 0x{remainder:x}); no safe complete-LOAD layout'
            )
        elif permission_overlap:
            errors.append('GNU_RELRO page rounding changes writable/executable permissions outside the intended protection')
    if errors:
        headers = '\n'.join(
            f'  {"LOAD" if s.kind == 1 else "GNU_RELRO"} flags=0x{s.flags:x} '
            f'offset=0x{s.offset:x} address=0x{s.address:x} '
            f'memsize=0x{s.memsize:x} end=0x{s.end:x} align=0x{s.alignment:x}'
            for s in segments if s.kind in (1, 0x6474e552)
        )
        raise AssertionError(f'{label}: {"; ".join(errors)}\n{headers}')


def check_android(path, expected_abis, zipalign=None):
    prefix = 'base/lib/' if path.suffix == '.aab' else 'lib/'
    errors = []
    with zipfile.ZipFile(path) as archive:
        names = archive.namelist()
        abis = {n.split('/')[2 if prefix.startswith('base') else 1] for n in names if n.startswith(prefix) and n.endswith('.so')}
        if abis != set(expected_abis):
            errors.append(f'ABIs {abis}, expected {set(expected_abis)}')
        for abi in sorted(abis):
            if f'{prefix}{abi}/libaigammon_engine.so' not in names:
                errors.append(f'no engine for {abi}')
        for name in names:
            if name.startswith(prefix) and name.endswith('.so') and any(f'/{abi}/' in name for abi in ['arm64-v8a', 'x86_64']):
                try:
                    elf_16kb(archive.read(name), name)
                except (AssertionError, struct.error, IndexError) as error:
                    errors.append(f'{name}: {error}')
    if path.suffix == '.apk':
        if not zipalign:
            errors.append('APK packaging verification needs --zipalign <SDK build-tools/zipalign>')
        else:
            try:
                subprocess.run([str(zipalign), '-v', '-c', '-P', '16', '4', str(path)], check=True)
            except (subprocess.CalledProcessError, OSError) as error:
                errors.append(f'APK ZIP alignment check failed: {error}')
    _require(not errors, f'{path.name}: artifact validation failed:\n' + '\n'.join(errors))
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
