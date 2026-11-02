import tempfile
import unittest
from pathlib import Path

from verify_ios_transport import third_party_crypto_symbols, verify_engine_profile


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

    def test_reports_transport_and_cipher_symbols(self):
        self.assertEqual(
            third_party_crypto_symbols(
                '0000 T ssl_do_handshake\n'
                '0000 T _SSL_CTX_new\n'
                '0000 T openssl_init_ssl\n'
                '0000 T evp_aead_ctx_seal\n'
                '0000 T tls_client_method\n'
            ),
            [
                'evp_aead_ctx_seal',
                'openssl_init_ssl',
                'ssl_ctx_new',
                'ssl_do_handshake',
                'tls_client_method',
            ],
        )

    def test_ignores_hash_random_disabled_stubs_and_thread_local_symbols(self):
        self.assertEqual(
            third_party_crypto_symbols(
                '0000 T md5_buffer\n'
                '0000 T cc_sha256_update\n'
                '0000 T crypto_getrandombytesep21_dart_nativearguments\n'
                '0000 T x509_pemep21_dart_nativearguments\n'
                '0000 T tls_guard\n'
                '0000 T tls_scopencinvb1z_run_in_tls_scope\n'
                '0000 T bn_b3m_tract_linalg\n'
                '0000 T _RNvC6tract16tls_client_method\n'
            ),
            [],
        )


if __name__ == '__main__':
    unittest.main()
