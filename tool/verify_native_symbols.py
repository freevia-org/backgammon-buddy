"""Match shipped Android engine code to retained symbols and resolve known PCs.

This is an offline symbolication rehearsal, not an observed crash or runtime test.
No device is accessed and no APK is modified. NDK LLVM tools must be supplied.
"""
import argparse
import hashlib
import json
from pathlib import Path
import struct
import subprocess
import zipfile

ABIS = {'arm64-v8a': (2, 183), 'armeabi-v7a': (1, 40)}
PROBES = ('best_move', 'cube_info', 'probabilities', 'wildbg_new_with_path')


def sha(data):
    return hashlib.sha256(data).hexdigest()


def elf_sections(data):
    """Parse bounded ELF32/64 section metadata without external Python packages."""
    def unpack(fmt, offset):
        size = struct.calcsize(fmt)
        if offset < 0 or offset + size > len(data):
            raise ValueError('Truncated ELF structure')
        return struct.unpack_from(fmt, data, offset)

    def region(offset, size):
        if offset < 0 or size < 0 or offset + size > len(data):
            raise ValueError('ELF section outside file')
        return data[offset:offset + size]

    if len(data) < 16 or data[:4] != b'\x7fELF' or data[4] not in (1, 2) or data[5] != 1:
        raise ValueError('Expected little-endian ELF32 or ELF64')
    kind = data[4]
    machine = unpack('<H', 18)[0]
    if kind == 2:
        offset = unpack('<Q', 40)[0]
        stride, count, names_index = unpack('<HHH', 58)
        fmt = '<IIQQQQIIQQ'
    else:
        offset = unpack('<I', 32)[0]
        stride, count, names_index = unpack('<HHH', 46)
        fmt = '<IIIIIIIIII'
    if not offset or not count or stride < struct.calcsize(fmt) or not 0 < names_index < count:
        raise ValueError('Missing or unsupported ELF section table')
    region(offset, stride * count)
    records = [unpack(fmt, offset + i * stride) for i in range(count)]
    names = region(records[names_index][4], records[names_index][5])
    sections = {}
    for record in records[1:]:
        name_offset, section_type, flags, address, file_offset, size = record[:6]
        if name_offset >= len(names) or b'\0' not in names[name_offset:]:
            raise ValueError('Invalid ELF section name')
        name = names[name_offset:].split(b'\0', 1)[0].decode('ascii')
        if name in sections:
            raise ValueError('Duplicate ELF section name')
        content = b'' if section_type == 8 else region(file_offset, size)
        sections[name] = {'type': section_type, 'flags': flags, 'address': address,
                          'size': size, 'sha256': None if section_type == 8 else sha(content)}
    return (kind, machine), sections


def match_symbols(shipped, retained, abi):
    shipped_arch, shipped_sections = elf_sections(shipped)
    retained_arch, retained_sections = elf_sections(retained)
    if shipped_arch != ABIS[abi] or retained_arch != shipped_arch:
        raise ValueError(f'{abi}: ELF architecture mismatch')
    def allocated(sections):
        return {n: s for n, s in sections.items() if s['flags'] & 2}
    a, b = allocated(shipped_sections), allocated(retained_sections)
    if not a or '.text' not in a or not a['.text']['flags'] & 4:
        raise ValueError(f'{abi}: no executable .text section')
    if a != b:
        changed = sorted(n for n in a.keys() | b.keys() if a.get(n) != b.get(n))
        raise ValueError(f'{abi}: retained symbols do not match shipped sections: {changed}')
    for name in ('.debug_info', '.debug_line', '.symtab'):
        if not retained_sections.get(name, {}).get('size'):
            raise ValueError(f'{abi}: retained symbols lack {name}')
    return {'elf_class': shipped_arch[0], 'elf_machine': shipped_arch[1],
            'allocated_section_count': len(a), 'allocated_sections_exact': True,
            'text_sha256': a['.text']['sha256'],
            'gnu_build_id_section_present': '.note.gnu.build-id' in a}


def validate_resolution(payload, expected):
    if not isinstance(payload, list) or len(payload) != len(expected):
        raise ValueError('Unexpected LLVM symbolizer output')
    results = []
    for item, (function, address) in zip(payload, expected):
        if int(item['Address'], 16) != address:
            raise ValueError('Symbolizer returned a different address')
        frames = item.get('Symbol', [])
        matching = [f for f in frames if f.get('FunctionName') == function
                    and f.get('FileName', '').replace('\\', '/').endswith('/engine_shim/src/lib.rs')
                    and isinstance(f.get('Line'), int) and f['Line'] > 0]
        if not matching:
            raise ValueError(f'{function}: no resolved engine source line')
        frame = matching[0]
        results.append({'relative_pc': hex(address), 'function': function,
                        'source': 'native/engine_shim/src/lib.rs', 'line': frame['Line']})
    return results


def resolve_probes(llvm_bin, symbols, abi):
    suffix = '.exe' if (llvm_bin / 'llvm-nm.exe').exists() else ''
    listing = subprocess.check_output(
        [str(llvm_bin / ('llvm-nm' + suffix)), '--dynamic', '--defined-only', '--format=posix', str(symbols)],
        text=True)
    exported = {}
    for line in listing.splitlines():
        fields = line.split()
        if len(fields) == 4 and fields[1] == 'T':
            exported[fields[0]] = (int(fields[2], 16), int(fields[3], 16))
    expected = []
    for function in PROBES:
        address, size = exported[function]
        # ARM32 function pointers use the low Thumb bit; crash PCs do not.
        address &= ~1
        delta = 4 if abi == 'arm64-v8a' else 2
        if size <= delta:
            raise ValueError(f'{function}: exported function too small for interior PC probe')
        expected.append((function, address + delta))
    payload = json.loads(subprocess.check_output(
        [str(llvm_bin / ('llvm-symbolizer' + suffix)), '--output-style=JSON', '--inlines',
         '--obj=' + str(symbols), *[hex(pc) for _, pc in expected]], text=True))
    return validate_resolution(payload, expected)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--artifact', type=Path, action='append', required=True)
    parser.add_argument('--symbols-dir', type=Path, required=True)
    parser.add_argument('--llvm-bin', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    report = {'kind': 'offline-known-PC-symbolication-rehearsal',
              'observed_crash': False, 'device_accessed': False, 'artifacts': []}
    for path in args.artifact:
        artifact = {'file': str(path), 'sha256': sha(path.read_bytes()), 'engines': []}
        with zipfile.ZipFile(path) as archive:
            prefix = 'base/lib/' if path.suffix == '.aab' else 'lib/'
            actual = {n.split('/')[-2] for n in archive.namelist()
                      if n.startswith(prefix) and n.endswith('/libaigammon_engine.so')}
            if actual != set(ABIS):
                raise ValueError(f'Engine ABI set differs: {actual}')
            for abi in ABIS:
                symbols = args.symbols_dir / abi / 'libaigammon_engine.so'
                shipped = archive.read(f'{prefix}{abi}/libaigammon_engine.so')
                retained = symbols.read_bytes()
                result = match_symbols(shipped, retained, abi)
                result.update({'abi': abi, 'shipped_sha256': sha(shipped),
                               'retained_sha256': sha(retained),
                               'resolved_probes': resolve_probes(args.llvm_bin, symbols, abi)})
                artifact['engines'].append(result)
        report['artifacts'].append(artifact)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(report, indent=2) + '\n', encoding='utf-8')
    print(f'Exact allocated sections and source-line resolution verified for {len(report["artifacts"])} artifacts, both ARM ABIs.')
    print('Synthetic known PCs only; no device crash, unwinding, or telemetry-upload test performed.')


if __name__ == '__main__':
    main()
