import tempfile
import unittest
from pathlib import Path

from verify_ios_transport import verify_engine_profile


REVISION = 'a' * 40
TREE = 'b' * 40


def valid_profile():
    return {
        'framework_revision': REVISION,
        'engine_revision': REVISION,
        'engine_source_checkout_revision': REVISION,
        'engine_source_tree_sha': TREE,
        'engine_version_engine_tree_sha': TREE,
        'host_engine_revision': REVISION,
        'target_gn_args': '--ios --runtime-mode=release '
        '--no-dart-secure-socket',
        'target_dart_disable_secure_socket': 'true',
    }


class VerifyIosTransportTests(unittest.TestCase):
    def verify_profile(self, profile):
        with tempfile.TemporaryDirectory() as temp_dir:
            path = Path(temp_dir) / 'engine-profile.txt'
            path.write_text(''.join(
                f'{key}={value}\n' for key, value in profile.items()
            ))
            return verify_engine_profile(path)

    def test_accepts_pinned_engine_with_secure_sockets_disabled(self):
        self.assertEqual(self.verify_profile(valid_profile()), valid_profile())

    def test_rejects_engine_profile_without_secure_socket_flag(self):
        profile = valid_profile()
        profile['target_dart_disable_secure_socket'] = 'false'
        with self.assertRaisesRegex(SystemExit, 'does not prove'):
            self.verify_profile(profile)

    def test_rejects_engine_source_tree_mismatch(self):
        profile = valid_profile()
        profile['engine_version_engine_tree_sha'] = 'c' * 40
        with self.assertRaisesRegex(SystemExit, 'source tree does not match'):
            self.verify_profile(profile)

    def test_rejects_host_engine_revision_mismatch(self):
        profile = valid_profile()
        profile['host_engine_revision'] = 'c' * 40
        with self.assertRaisesRegex(SystemExit, 'host engine artifacts'):
            self.verify_profile(profile)

    def test_rejects_engine_source_checkout_mismatch(self):
        profile = valid_profile()
        profile['engine_source_checkout_revision'] = 'c' * 40
        with self.assertRaisesRegex(SystemExit, 'source checkout'):
            self.verify_profile(profile)


if __name__ == '__main__':
    unittest.main()
