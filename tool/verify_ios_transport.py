"""Audit an iOS .app or IPA for Apple transports and third-party TLS/crypto."""

import argparse
import base64
import hashlib
import os
from pathlib import Path
import plistlib
import re
import subprocess
import tempfile


REQUIRED_DEFINE = 'BGB_IOS_URLSESSION_TRANSPORT=true'
GRPC_MARKERS = (
    'dart-grpc',
    'grpc-timeout',
    'grpc-encoding',
    'google.firestore.v1',
    'GrpcFirestoreListenChannel',
)
DART_TLS_METADATA_MARKERS = (
    'SecureSocket_Connect',
    'SecureSocket_Handshake',
    'TlsException',
)
THIRD_PARTY_CRYPTO_MARKERS = (
    'boringssl',
    'openssl',
    'libssl',
    'libcrypto',
    'libressl',
    'mbedtls',
    'wolfssl',
    'aws-lc',
    'aws_lc',
    'rustls',
    's2n-tls',
    's2n_tls',
    'grpc-binary',
    'openssl_grpc',
    'bssl_g3',
    'ssl_ctx',
    'ssl_ctx_new',
    'ssl_do_handshake',
    'ssl_set_fd',
    'ssl_get_error',
    'tls_method',
    'tls_client_method',
    'openssl_init_ssl',
    'openssl_init_crypto',
    'evp_aead_ctx',
    'x509_store_ctx',
)
THIRD_PARTY_CRYPTO_SYMBOL = re.compile(
    # CommonCrypto's public CC_SHA*/CC_MD5* symbols are OS-provided hashing,
    # not a bundled TLS implementation. Do not match the SHA/MD5 suffix in
    # those symbol names; bare SHA/MD5 implementations remain suspicious.
    r'(?<!cc_)(?<![a-z0-9])(?:ssl_|tls_|evp_|crypto_|openssl_|bio_|x509_|'
    r'asn1_|rsa_|ecdsa_|ecdh_|ec_key_|bn_|hmac_|md5_|sha[0-9]*_)'
    r'[a-z0-9_]+\b'
)
LINK_MAP_CRYPTO_MARKERS = (
    'boringssl',
    'bssl_g3',
    'aws-lc',
    'aws_lc',
    'libressl',
    'mbedtls',
    'wolfssl',
    'rustls',
    's2n-tls',
    's2n_tls',
    'libssl',
    'libcrypto',
    'openssl',
    'openssl_grpc',
    'grpc-binary',
)
MACH_O_MAGICS = {
    b'\xfe\xed\xfa\xce', b'\xce\xfa\xed\xfe',
    b'\xfe\xed\xfa\xcf', b'\xcf\xfa\xed\xfe',
    b'\xca\xfe\xba\xbe', b'\xbe\xba\xfe\xca',
    b'\xca\xfe\xba\xbf', b'\xbf\xba\xfe\xca',
}


def strings(path):
    return subprocess.check_output(
        ['strings', str(path)], text=True, errors='replace'
    )


def is_macho(path):
    try:
        with path.open('rb') as stream:
            return stream.read(4) in MACH_O_MAGICS
    except OSError:
        return False


def app_binaries(app):
    # Scan every Mach-O file recursively so new extension, framework, plugin,
    # or nested bundle layouts cannot escape an allowlist of bundle types.
    root = app.resolve()
    visited = set()
    for folder, dirs, files in os.walk(app, followlinks=True):
        current = Path(folder).resolve()
        if current in visited:
            dirs[:] = []
            continue
        visited.add(current)
        dirs.sort()
        dirs[:] = [
            name for name in dirs
            if (Path(folder) / name).is_dir()
            and ((Path(folder) / name).resolve() == root
                 or root in (Path(folder) / name).resolve().parents)
        ]
        for filename in sorted(files):
            path = Path(folder) / filename
            if (path.is_file()
                    and (path.resolve() == root or root in path.resolve().parents)
                    and is_macho(path)):
                yield path


def binary_evidence(path):
    outputs = [strings(path)]
    symbols = ''
    for command in (['nm', '-a', str(path)], ['otool', '-L', str(path)]):
        result = subprocess.run(
            command, text=True, errors='replace', capture_output=True,
        )
        if result.returncode:
            raise SystemExit(
                f'Could not inspect Mach-O metadata for {path}: '
                + result.stderr.strip()
            )
        outputs.append(result.stdout)
        if command[0] == 'nm':
            symbols = result.stdout.lower()
    return '\n'.join(outputs).lower(), symbols


def verify_engine_profile(engine_profile):
    if engine_profile is None:
        raise SystemExit(
            'Missing Flutter engine profile; iOS TLS audit requires the '
            'profile from the custom --no-dart-secure-socket engine build'
        )
    profile = {}
    for line in engine_profile.read_text().splitlines():
        if '=' in line:
            key, value = line.split('=', 1)
            profile[key] = value
    if profile.get('target_dart_disable_secure_socket') != 'true':
        raise SystemExit(
            'Flutter engine profile does not prove '
            'dart_disable_secure_socket=true'
        )
    if '--no-dart-secure-socket' not in profile.get('target_gn_args', ''):
        raise SystemExit(
            'Flutter engine profile is missing --no-dart-secure-socket'
        )
    if not re.fullmatch(r'[0-9a-f]{40}', profile.get('engine_revision', '')):
        raise SystemExit(
            'Flutter engine profile is missing its pinned 40-character '
            'engine revision'
        )
    for key in (
        'framework_revision',
        'engine_source_checkout_revision',
        'engine_source_tree_sha',
        'engine_version_engine_tree_sha',
        'host_engine_revision',
    ):
        if not re.fullmatch(r'[0-9a-f]{40}', profile.get(key, '')):
            raise SystemExit(
                f'Flutter engine profile is missing a valid {key}'
            )
    if profile['engine_source_tree_sha'] != profile['engine_version_engine_tree_sha']:
        raise SystemExit(
            'Flutter engine source tree does not match the pinned engine '
            'version'
        )
    if profile['engine_source_checkout_revision'] != profile['framework_revision']:
        raise SystemExit(
            'Flutter engine source checkout does not match its pinned '
            'framework revision'
        )
    if profile['host_engine_revision'] != profile['engine_revision']:
        raise SystemExit(
            'Flutter host engine artifacts do not match the pinned engine '
            'revision'
        )
    return profile


def verify_app(app, generated_config, engine_profile, link_maps, symbol_files,
               require_link_maps, require_symbol_files):
    engine = verify_engine_profile(engine_profile)
    app_info = app / 'Info.plist'
    if not app_info.is_file():
        raise SystemExit('Built app is missing Info.plist')
    with app_info.open('rb') as stream:
        app_plist = plistlib.load(stream)
    if app_plist.get('ITSAppUsesNonExemptEncryption') is not False:
        raise SystemExit(
            'Runner Info.plist must declare ITSAppUsesNonExemptEncryption=false'
        )

    config = generated_config.read_text()
    define_line = next(
        (line.split('=', 1)[1] for line in config.splitlines()
         if line.startswith('DART_DEFINES=')),
        '',
    )
    defines = [
        base64.b64decode(item).decode()
        for item in define_line.split(',')
        if item
    ]
    if REQUIRED_DEFINE not in defines:
        raise SystemExit(f'Missing required iOS define: {REQUIRED_DEFINE}')

    aot = app / 'Frameworks/App.framework/App'
    urlsession = app / 'Frameworks/cupertino_http.framework/cupertino_http'
    if not aot.is_file() or not urlsession.is_file():
        raise SystemExit(
            'Built app is missing App.framework or cupertino_http.framework'
        )

    aot_strings = strings(aot)
    present = [marker for marker in GRPC_MARKERS if marker in aot_strings]
    if present:
        raise SystemExit('gRPC markers remain in App AOT: ' + ', '.join(present))

    # AOT snapshots can retain native-entrypoint/type names as metadata even
    # when the pinned engine has compiled out Dart's native SecureSocket
    # implementation. These names alone do not prove a TLS implementation is
    # linked; the engine profile plus Mach-O, symbol, and linker-map scans
    # below are the evidence for that. Keep reporting the names for review.
    tls_metadata_present = [
        marker for marker in DART_TLS_METADATA_MARKERS if marker in aot_strings
    ]

    binaries = sorted(set(app_binaries(app)))
    if app / 'Runner' not in binaries:
        raise SystemExit('Built app is missing the Runner executable')
    if aot not in binaries:
        raise SystemExit('App.framework/App is not a recognized Mach-O executable')
    violations = []
    for binary in binaries:
        binary_strings, binary_symbols = binary_evidence(binary)
        markers = [
            marker for marker in THIRD_PARTY_CRYPTO_MARKERS
            if marker in binary_strings
        ]
        if THIRD_PARTY_CRYPTO_SYMBOL.search(binary_symbols):
            markers.append('third-party TLS/crypto API symbol')
        violations.extend(
            f'{binary.relative_to(app)}: {marker}' for marker in markers
        )
    if require_symbol_files and not symbol_files:
        raise SystemExit('Archive contains no dSYM symbol files to audit')
    if require_symbol_files and not any(
        symbol_file.name == 'Runner' for symbol_file in symbol_files
    ):
        raise SystemExit('Archive is missing Runner dSYM symbols')
    for symbol_file in symbol_files:
        symbol_strings, symbol_table = binary_evidence(symbol_file)
        markers = [
            marker for marker in THIRD_PARTY_CRYPTO_MARKERS
            if marker in symbol_strings
        ]
        if THIRD_PARTY_CRYPTO_SYMBOL.search(symbol_table):
            markers.append('third-party TLS/crypto API symbol')
        violations.extend(
            f'{symbol_file.name}: {marker}' for marker in markers
        )
    if violations:
        raise SystemExit(
            'Non-OS TLS/crypto implementation markers remain in app symbols: '
            + ', '.join(violations)
        )

    if require_link_maps and not link_maps:
        raise SystemExit('Archive contains no linker map files to audit')
    for link_map in link_maps:
        link_map_text = link_map.read_text(errors='replace').lower()
        link_map_markers = [
            marker for marker in LINK_MAP_CRYPTO_MARKERS
            if marker in link_map_text
        ]
        if link_map_markers:
            raise SystemExit(
                f'{link_map.name} contains non-OS crypto/gRPC objects: '
                + ', '.join(link_map_markers)
            )

    urlsession_strings = strings(urlsession)
    if (
        'URLSession' not in urlsession_strings
        and 'NSURLSession' not in urlsession_strings
    ):
        raise SystemExit('cupertino_http.framework has no URLSession markers')

    print('Runner Info.plist encryption declaration: false')
    print('iOS URLSession compile-time define: verified')
    print('App AOT gRPC protocol markers: absent')
    print(
        'Pinned Flutter engine secure socket implementation: disabled '
        f'({engine["engine_revision"]}); Dart resolves any retained '
        'SecureSocket entrypoint names to unsupported stubs'
    )
    if tls_metadata_present:
        print(
            'App AOT SecureSocket/TLS names (metadata only; implementation '
            'audited separately): ' + ', '.join(tls_metadata_present)
        )
    else:
        print('App AOT SecureSocket/TLS names: absent')
    print(f'All {len(binaries)} shipped Mach-O executables: no third-party crypto markers')
    print(f'All {len(symbol_files)} supplied dSYM symbol files: no third-party crypto markers')
    print(f'All {len(link_maps)} supplied link maps: no third-party crypto/gRPC objects')
    print('cupertino_http URLSession transport: present')
    for binary in binaries:
        digest = hashlib.sha256(binary.read_bytes()).hexdigest()
        print(f'SHA256 {binary.relative_to(app)} {digest}')


def main():
    parser = argparse.ArgumentParser()
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('app', nargs='?', type=Path, help='Built Runner.app directory')
    group.add_argument('--ipa', type=Path, help='Exported IPA to unpack and audit')
    parser.add_argument(
        '--generated-config',
        type=Path,
        default=Path('app/ios/Flutter/Generated.xcconfig'),
    )
    parser.add_argument(
        '--engine-profile', type=Path,
        help='Profile emitted by tool/build_flutter_ios_engine.sh',
    )
    parser.add_argument('--link-map', type=Path, action='append', default=[])
    parser.add_argument('--symbol-file', type=Path, action='append', default=[])
    parser.add_argument('--require-link-maps', action='store_true')
    parser.add_argument('--require-symbol-files', action='store_true')
    args = parser.parse_args()

    if args.ipa:
        with tempfile.TemporaryDirectory(prefix='bgb-ipa-audit-') as temp_dir:
            subprocess.run(['ditto', '-x', '-k', str(args.ipa), temp_dir], check=True)
            app = Path(temp_dir) / 'Payload/Runner.app'
            if not app.is_dir():
                raise SystemExit('IPA does not contain Payload/Runner.app')
            verify_app(
                app, args.generated_config, args.engine_profile,
                args.link_map, args.symbol_file, args.require_link_maps,
                args.require_symbol_files,
            )
    else:
        verify_app(
            args.app, args.generated_config, args.engine_profile,
            args.link_map, args.symbol_file, args.require_link_maps,
            args.require_symbol_files,
        )


if __name__ == '__main__':
    main()
