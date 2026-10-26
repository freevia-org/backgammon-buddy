import unittest
from pathlib import Path
import re

from verify_ios_ffi_exports import REQUIRED_EXPORTS, parse_exports, verify_exports


class VerifyIosFfiExportsTests(unittest.TestCase):
    def test_export_trie_parser_accepts_required_c_symbols(self):
        output = '\n'.join(
            f'        0x{i:08X}  _{name}' for i, name in enumerate(sorted(REQUIRED_EXPORTS), 1))
        output += '\n        0x00000000  ___isOSVersionAtLeast [weak-def]\n'

        self.assertEqual(set(verify_exports(output)), set(REQUIRED_EXPORTS))
        self.assertIn('__isOSVersionAtLeast', parse_exports(output))

    def test_missing_runtime_symbol_fails_closed(self):
        output = '\n'.join(
            f'        0x{i:08X}  _{name}'
            for i, name in enumerate(sorted(REQUIRED_EXPORTS - {'buddy_gnubg_rank'}), 1))

        with self.assertRaisesRegex(ValueError, '_buddy_gnubg_rank'):
            verify_exports(output)

    def test_manifest_matches_dart_ffi_bindings(self):
        root = Path(__file__).resolve().parents[1]
        sources = (
            root / 'packages/engine_bindings/lib/src/ffi/wildbg_ffi.dart',
            root / 'packages/engine_bindings/lib/src/gnubg_engine.dart',
        )
        dart_symbols = set()
        for source in sources:
            dart_symbols.update(re.findall(r"'([A-Za-z_][A-Za-z0-9_]*)'", source.read_text()))
        dart_symbols = {name for name in dart_symbols
                        if name.startswith(('wildbg_', 'buddy_gnubg_'))
                        or name in {'best_move', 'probabilities', 'cube_info'}}

        # The version query is kept in the public native ABI for diagnostics,
        # though the Dart wrapper currently only calls abi_version.
        self.assertEqual(dart_symbols | {'buddy_gnubg_version'}, set(REQUIRED_EXPORTS))


if __name__ == '__main__':
    unittest.main()
