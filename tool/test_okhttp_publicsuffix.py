import struct
import tempfile
import unittest
from pathlib import Path

import verify_okhttp_publicsuffix as verifier


class PublicSuffixSourceTest(unittest.TestCase):
    def test_original_source_and_licenses_reproduce_pinned_library_data(self):
        self.assertTrue(verifier.verify()["sourceVerified"])

    def test_utf8_sort_and_exception_prefix_are_preserved(self):
        source = "// notice\n\nnet\n!city.example\n*.example\nä.test\ncom\n".encode()
        normal = "*.example\ncom\nnet\nä.test\n".encode()
        exceptional = b"city.example\n"
        expected = struct.pack(">I", len(normal)) + normal + struct.pack(">I", len(exceptional)) + exceptional
        self.assertEqual(verifier.compile_source(source), expected)

    def test_source_mutation_is_rejected_even_when_notice_is_preserved(self):
        with tempfile.TemporaryDirectory() as directory:
            assets = Path(directory)
            for name in verifier.HASHES:
                (assets / name).write_bytes((verifier.ASSETS / name).read_bytes())
            source = assets / "okhttp-publicsuffix-4.12.0-source.dat"
            source.write_bytes(source.read_bytes() + b"new.example\n")
            with self.assertRaisesRegex(ValueError, "Pinned upstream"):
                verifier.verify(assets)


if __name__ == "__main__":
    unittest.main()
