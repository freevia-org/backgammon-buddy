import struct
import unittest

from verify_native_symbols import elf_sections, match_symbols, validate_resolution


def elf_fixture(bits=64, debug=True, text=b'\x01\x02\x03\x04', address=0x1000):
    """Small ELF with independently laid-out allocated data and debug sections."""
    section_rows = [('.text', 1, 6, address, text), ('.rodata', 1, 2, 0x2000, b'data')]
    if debug:
        section_rows += [(name, 1, 0, 0, b'debug') for name in ('.debug_info', '.debug_line', '.symtab')]
    strings = b'\0' + b''.join(n.encode() + b'\0' for n, *_ in section_rows) + b'.shstrtab\0'
    section_rows += [('.shstrtab', 3, 0, 0, strings)]
    size, section_size = (64, 64) if bits == 64 else (52, 40)
    data = bytearray(size)
    data[:7] = b'\x7fELF' + bytes([2 if bits == 64 else 1, 1, 1])
    struct.pack_into('<HHI', data, 16, 3, 183 if bits == 64 else 40, 1)
    records = []
    for name, kind, flags, position, content in section_rows:
        records.append((strings.index(name.encode() + b'\0'), kind, flags, position,
                        len(data), len(content), 0, 0, 1, 0))
        data.extend(content)
    section_offset = len(data)
    data.extend(b'\0' * section_size)
    for record in records:
        data.extend(struct.pack('<IIQQQQIIQQ' if bits == 64 else '<IIIIIIIIII', *record))
    if bits == 64:
        struct.pack_into('<Q', data, 40, section_offset)
        struct.pack_into('<HHHHHH', data, 52, 64, 0, 0, section_size, len(records) + 1, len(records))
    else:
        struct.pack_into('<I', data, 32, section_offset)
        struct.pack_into('<HHHHHH', data, 40, 52, 0, 0, section_size, len(records) + 1, len(records))
    return bytes(data)


class NativeSymbolsTest(unittest.TestCase):
    def test_stripping_debug_data_preserves_both_abi_matches(self):
        for bits, abi in [(64, 'arm64-v8a'), (32, 'armeabi-v7a')]:
            result = match_symbols(elf_fixture(bits, False), elf_fixture(bits), abi)
            self.assertTrue(result['allocated_sections_exact'])
            self.assertFalse(result['gnu_build_id_section_present'])

    def test_different_code_and_relocated_code_are_rejected(self):
        original = elf_fixture(debug=False)
        for changed in [elf_fixture(text=b'\x01\x02\x03\x05'), elf_fixture(address=0x1100)]:
            with self.assertRaisesRegex(ValueError, 'do not match'):
                match_symbols(original, changed, 'arm64-v8a')

    def test_architecture_and_missing_line_tables_are_rejected(self):
        with self.assertRaisesRegex(ValueError, 'architecture mismatch'):
            match_symbols(elf_fixture(32, False), elf_fixture(64), 'armeabi-v7a')
        with self.assertRaisesRegex(ValueError, 'lack .debug_info'):
            match_symbols(elf_fixture(debug=False), elf_fixture(debug=False), 'arm64-v8a')

    def test_truncated_and_out_of_bounds_files_are_rejected(self):
        for data in [b'not ELF', elf_fixture()[:48], elf_fixture()[:-1]]:
            with self.assertRaises(ValueError):
                elf_sections(data)
        corrupt = bytearray(elf_fixture())
        struct.pack_into('<Q', corrupt, 40, 2**63)
        with self.assertRaises(ValueError):
            elf_sections(corrupt)

    def test_unresolved_or_wrong_function_does_not_count_as_symbolication(self):
        frame = {'FunctionName': 'best_move', 'FileName': '/build/native/engine_shim/src/lib.rs', 'Line': 193}
        payload = [{'Address': '0x1004', 'Symbol': [frame]}]
        self.assertEqual(validate_resolution(payload, [('best_move', 0x1004)])[0]['line'], 193)
        for mutation in [{'Line': 0}, {'FunctionName': 'wrong'}, {'FileName': '??'}]:
            bad = [{'Address': '0x1004', 'Symbol': [dict(frame, **mutation)]}]
            with self.assertRaisesRegex(ValueError, 'no resolved engine source line'):
                validate_resolution(bad, [('best_move', 0x1004)])
        with self.assertRaisesRegex(ValueError, 'different address'):
            validate_resolution(payload, [('best_move', 0x1008)])


if __name__ == '__main__':
    unittest.main()
