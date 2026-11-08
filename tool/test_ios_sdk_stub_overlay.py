import tempfile
import unittest
from pathlib import Path

from ios_sdk_stub_overlay import allow_sdk_attribute_warning, patch_ninja, prepare, transform


class StubOverlayTest(unittest.TestCase):
    def test_only_requested_selector_is_removed(self):
        data = b'targets: [ arm64-ios, arm64e-ios, arm64e.x1-ios ]\nsymbols: [ _foo ]\n'
        self.assertEqual(transform(data, 'ios'),
                         b'targets: [ arm64-ios, arm64e-ios ]\nsymbols: [ _foo ]\n')
        with self.assertRaises(ValueError):
            transform(b'targets: [ arm64e.x1-ios ]', 'ios')
        self.assertEqual(transform(b'targets: [ arm64-macos, arm64e-macos, \n arm64e.x1-macos, arm64e.x1-maccatalyst ]', 'macos'),
                         b'targets: [ arm64-macos, arm64e-macos ]')

    def test_source_unchanged_and_overlay_link_rule(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            source = root / 'sdk/usr/lib/libSystem.tbd'
            source.parent.mkdir(parents=True)
            data = b'targets: [ arm64-ios, arm64e-ios, arm64e.x1-ios ]\n'
            source.write_bytes(data)
            overlay = root / 'overlay with space'
            self.assertEqual(prepare(root / 'sdk', overlay, 'ios')['files'][0]['removed'], 1)
            self.assertEqual(source.read_bytes(), data)
            self.assertEqual((overlay / 'usr/lib/libSystem.tbd').read_bytes(), transform(data, 'ios'))
            ninja = root / 'out/toolchain.ninja'
            ninja.parent.mkdir()
            ninja.write_text('rule link\n  command = clang++ -isysroot iPhoneOS.sdk ${ldflags}\n')
            target = ninja.parent / 'target.ninja'
            target.write_text('ldflags = -L../../flutter/prebuilts/SDKs/iPhoneOS27.2.sdk/usr/lib/swift\n')
            self.assertEqual(patch_ninja(ninja.parent, {'ios': overlay}), 1)
            self.assertIn("-isysroot '" + str(overlay) + "'", ninja.read_text())
            self.assertIn("-L'" + str(overlay) + "'/usr/lib/swift", target.read_text())

    def test_multiple_stubs_and_unchanged_files(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp); sdk = root / 'sdk'; overlay = root / 'overlay'
            inputs = {
                'usr/lib/libSystem.tbd': b'targets: [ arm64e-macos, arm64e.x1-macos ]\n',
                'usr/lib/system/libcache.tbd': b'targets: [ arm64-macos, arm64e.x1-macos ]\nother: unchanged\n',
                'usr/lib/other.tbd': b'targets: [ arm64-macos ]\n',
                'usr/include/header.h': b'header bytes',
            }
            for name, data in inputs.items():
                path = sdk / name; path.parent.mkdir(parents=True, exist_ok=True); path.write_bytes(data)
            result = prepare(sdk, overlay, 'macos')
            self.assertEqual(len(result['files']), 2)
            for name, data in inputs.items():
                self.assertEqual((sdk / name).read_bytes(), data)
                expected = transform(data, 'macos') if name.endswith('.tbd') else data
                self.assertEqual((overlay / name).read_bytes(), expected)

    def test_warning_scope_is_limited_to_timeline(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'libdart_vm_precompiler.ninja'
            path.write_text('cflags_cc = -std=c++20\nbuild foo.timeline_macos.o: cxx timeline_macos.cc\nbuild bar.o: cxx bar.cc\n')
            self.assertEqual(allow_sdk_attribute_warning(Path(tmp)), 1)
            self.assertIn('build foo.timeline_macos.o: cxx timeline_macos.cc\n  cflags_cc = -std=c++20 -Wno-error=ignored-attributes\n', path.read_text())
            self.assertNotIn('build bar.o: cxx bar.cc\n  cflags_cc', path.read_text())


if __name__ == '__main__':
    unittest.main()
