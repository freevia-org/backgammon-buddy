import copy
from datetime import datetime, timezone
from pathlib import Path
import plistlib
import struct
import subprocess
import tempfile
import unittest
import xml.etree.ElementTree as ET
from unittest.mock import patch
import zipfile

from ios_export_options import export_options
from release_preflight import check_android, elf_16kb
from release_build_number import resolve


class ReleaseToolsTest(unittest.TestCase):
    def test_android_removes_unused_advertising_permissions(self):
        manifest = ET.parse(Path(__file__).resolve().parents[1] /
                            'app/android/app/src/main/AndroidManifest.xml')
        removals = {
            node.get('{http://schemas.android.com/apk/res/android}name')
            for node in manifest.findall('./uses-permission')
            if node.get('{http://schemas.android.com/tools}node') == 'remove'
        }
        self.assertTrue({
            'com.google.android.gms.permission.AD_ID',
            'android.permission.ACCESS_ADSERVICES_AD_ID',
            'android.permission.ACCESS_ADSERVICES_ATTRIBUTION',
        }.issubset(removals))

    def test_android_offline_speech_engine_visibility(self):
        manifest = ET.parse(Path(__file__).resolve().parents[1] /
                            'app/android/app/src/main/AndroidManifest.xml')
        actions = [node.get('{http://schemas.android.com/apk/res/android}name')
                   for node in manifest.findall('./queries/intent/action')]
        self.assertIn('android.intent.action.TTS_SERVICE', actions)

    def test_build_number_requires_explicit_history_baseline(self):
        self.assertEqual(resolve('1'), (1, False))
        self.assertEqual(resolve('1', base='500'), (501, True))
        self.assertEqual(resolve('1', override='600', base='500'), (600, True))
        for value in ['0', '-1', '1;echo fail', '2100000001']:
            with self.assertRaises(AssertionError):
                resolve('1', override=value)

    def profile(self):
        return {'ExpirationDate': datetime(2030, 1, 1), 'TeamIdentifier': ['TEAM'],
                'Name': 'Freevia & Distribution', 'Entitlements': {
                    'application-identifier': 'TEAM.org.freevia.backgammonbuddy', 'get-task-allow': False}}

    def test_store_export_is_local_and_xml_escapes_name(self):
        result = export_options(self.profile(), 'app-store-connect')
        self.assertEqual(result['destination'], 'export')
        self.assertEqual(plistlib.loads(plistlib.dumps(result)), result)

    def test_store_rejects_adhoc_and_development_profile(self):
        for mutation in [lambda p: p.update(ProvisionedDevices=['device']),
                         lambda p: p['Entitlements'].update({'get-task-allow': True}),
                         lambda p: p.update(ExpirationDate=datetime(2000, 1, 1)),
                         lambda p: p['Entitlements'].update({'application-identifier': 'TEAM.other'})]:
            profile = self.profile()
            mutation(profile)
            with self.assertRaises(AssertionError):
                export_options(profile, 'app-store-connect')

    def test_adhoc_requires_devices(self):
        with self.assertRaises(AssertionError):
            export_options(self.profile(), 'ad-hoc')
        profile = self.profile()
        profile['ProvisionedDevices'] = ['device']
        export_options(profile, 'ad-hoc')

    def elf(self, alignment=16384, relro=None, loads=None):
        # LOAD tuples: flags, file offset, virtual address, memory size, alignment.
        loads = loads if loads is not None else [(4, 0, 0, 120, alignment)]
        count = len(loads) + (relro is not None)
        data = bytearray(64 + count * 56)
        data[:6] = b'\x7fELF\x02\x01'
        struct.pack_into('<Q', data, 32, 64)
        struct.pack_into('<HH', data, 54, 56, count)
        for index, (flags, offset, address, memsize, align) in enumerate(loads):
            struct.pack_into('<IIQQQQQQ', data, 64 + index * 56, 1, flags,
                             offset, address, 0, memsize, memsize, align)
        if relro is not None:
            address, memsize = relro
            struct.pack_into('<IIQQQQQQ', data, 64 + len(loads) * 56, 0x6474e552, 4,
                             0, address, 0, memsize, memsize, 1)
        return data

    def test_page_alignment_accepts_16kb_rejects_4kb(self):
        elf_16kb(self.elf(16384), 'test.so')
        with self.assertRaises(AssertionError):
            elf_16kb(self.elf(4096), 'test.so')

    def test_malformed_elf_does_not_pass(self):
        with self.assertRaises((AssertionError, struct.error)):
            elf_16kb(b'not elf', 'test.so')

    def test_aligned_load_and_relro_pass(self):
        elf_16kb(self.elf(16384, relro=(0x24870, 0x3790)), 'test.so')

    def test_aligned_load_does_not_excuse_unaligned_relro(self):
        # A genuine RELRO prefix leaves writable bytes after the unaligned end.
        with self.assertRaisesRegex(
                AssertionError, r'GNU_RELRO end 0x25000.*remainder 0x1000'):
            elf_16kb(self.elf(relro=(0x24870, 0x790), loads=[
                (6, 0x870, 0x24870, 0x1790, 16384)]), 'unsafe-prefix.so')

    def test_complete_relro_load_can_end_inside_16kb_page(self):
        # CameraX libsurface_util_jni.so: all of the final RW LOAD is RELRO.
        elf_16kb(self.elf(relro=(0x49b0, 0x650), loads=[
            (5, 0, 0, 0x9b0, 16384),
            (6, 0x9b0, 0x49b0, 0x650, 16384)]), 'camera.so')

    def test_complete_relro_load_with_distant_writable_load_passes(self):
        # DataStore 1.1.7: RELRO covers the LOAD and its padding; the next RW
        # byte is beyond the page-rounded end (0x8000).
        elf_16kb(self.elf(relro=(0x51c0, 0xe40), loads=[
            (5, 0, 0, 0x11c0, 16384),
            (6, 0x11c0, 0x51c0, 0x268, 16384),
            (6, 0x1428, 0x9428, 1, 16384)]), 'datastore.so')

    def test_relro_rounding_must_not_cover_other_writable_load(self):
        with self.assertRaisesRegex(AssertionError, 'no safe complete-LOAD'):
            elf_16kb(self.elf(relro=(0x4000, 0x1000), loads=[
                (6, 0, 0x4000, 0x1000, 16384),
                (6, 0x2000, 0x6000, 1, 16384)]), 'overlap-rw.so')

    def test_relro_rounding_must_not_cover_executable_load(self):
        for rx in [(5, 0x2000, 0x6000, 1, 16384),
                   (5, 0, 0x4000, 0x100, 16384)]:
            with self.subTest(rx=rx), self.assertRaisesRegex(
                    AssertionError, 'no safe complete-LOAD'):
                elf_16kb(self.elf(relro=(0x49b0, 0x650), loads=[
                    rx, (6, 0x9b0, 0x49b0, 0x650, 16384)]), 'overlap-rx.so')

    def test_complete_relro_does_not_excuse_bad_load_alignment_or_offset(self):
        for align, offset in [(4096, 0), (16384, 1)]:
            with self.subTest(align=align, offset=offset), self.assertRaisesRegex(
                    AssertionError, 'LOAD alignment|LOAD address/offset'):
                elf_16kb(self.elf(relro=(0x4000, 0x1000), loads=[
                    (6, offset, 0x4000, 0x1000, align)]), 'bad-load.so')

    def test_aligned_relro_end_does_not_excuse_unsafe_rounded_start(self):
        with self.assertRaisesRegex(AssertionError, 'page rounding changes'):
            elf_16kb(self.elf(relro=(0x49b0, 0x3650), loads=[
                (5, 0, 0x4000, 0x100, 16384),
                (6, 0x9b0, 0x49b0, 0x3650, 16384)]), 'aligned-end-unsafe-start.so')

    def test_relro_must_not_protect_executable_load_even_when_fully_covered(self):
        with self.assertRaisesRegex(AssertionError, 'no safe complete-LOAD'):
            elf_16kb(self.elf(relro=(0x4000, 0x1000), loads=[
                (7, 0, 0x4000, 0x1000, 16384)]), 'unsafe-rwx.so')

    def test_complete_relro_must_not_cover_other_rw_or_rx_load_inside_body(self):
        for flags in [5, 6]:
            with self.subTest(flags=flags), self.assertRaisesRegex(
                    AssertionError, 'no safe complete-LOAD'):
                elf_16kb(self.elf(relro=(0x4000, 0x1000), loads=[
                    (6, 0, 0x4000, 0x1000, 16384),
                    (flags, 0x100, 0x4100, 0x100, 16384)]), 'overlap-body.so')

    def test_apk_reports_all_library_and_zip_failures(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'sample.apk'
            with zipfile.ZipFile(path, 'w') as archive:
                archive.writestr('lib/arm64-v8a/libaigammon_engine.so', self.elf())
                archive.writestr('lib/arm64-v8a/libbad_alignment.so', self.elf(4096))
                archive.writestr('lib/arm64-v8a/libmalformed.so', b'\x7fELF\x02\x01')
            with patch('release_preflight.subprocess.run', side_effect=
                       subprocess.CalledProcessError(1, 'zipalign')) as run:
                with self.assertRaises(AssertionError) as failure:
                    check_android(path, ['arm64-v8a'], Path('zipalign'))
                message = str(failure.exception)
                self.assertIn('libbad_alignment.so', message)
                self.assertIn('libmalformed.so', message)
                self.assertIn('ZIP alignment check failed', message)
                self.assertIn('LOAD flags=', message)
                run.assert_called_once_with(
                    ['zipalign', '-v', '-c', '-P', '16', '4', str(path)], check=True)

    def test_apk_abi_and_engine_checks_remain_required(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'missing.aab'
            with zipfile.ZipFile(path, 'w') as archive:
                archive.writestr('base/lib/arm64-v8a/libother.so', self.elf())
            with self.assertRaises(AssertionError) as failure:
                check_android(path, ['arm64-v8a', 'armeabi-v7a'])
            self.assertIn('ABIs', str(failure.exception))
            self.assertIn('no engine for arm64-v8a', str(failure.exception))


if __name__ == '__main__':
    unittest.main()
