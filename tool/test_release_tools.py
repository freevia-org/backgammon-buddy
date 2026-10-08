import copy
from datetime import datetime, timezone
import plistlib
import struct
import unittest

from ios_export_options import export_options
from release_preflight import elf_16kb
from release_build_number import resolve


class ReleaseToolsTest(unittest.TestCase):
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
                    'application-identifier': 'TEAM.com.xmelon.aigammon', 'get-task-allow': False}}

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

    def elf(self, alignment):
        data = bytearray(120)
        data[:6] = b'\x7fELF\x02\x01'
        struct.pack_into('<Q', data, 32, 64)
        struct.pack_into('<HH', data, 54, 56, 1)
        struct.pack_into('<IIQQQQQQ', data, 64, 1, 4, 0, 0, 0, 120, 120, alignment)
        return data

    def test_page_alignment_accepts_16kb_rejects_4kb(self):
        elf_16kb(self.elf(16384), 'test.so')
        with self.assertRaises(AssertionError):
            elf_16kb(self.elf(4096), 'test.so')

    def test_malformed_elf_does_not_pass(self):
        with self.assertRaises((AssertionError, struct.error)):
            elf_16kb(b'not elf', 'test.so')


if __name__ == '__main__':
    unittest.main()
