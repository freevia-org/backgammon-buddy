"""Audit an iOS .app or IPA for Apple transports and third-party TLS/crypto."""

import argparse
import base64
import hashlib
from pathlib import Path
import plistlib
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
DART_TLS_MARKERS = (
    'SecureSocket_Connect',
    'SecureSocket_Handshake',
    'TlsException',
)
THIRD_PARTY_CRYPTO_MARKERS = (
    'boringssl/src/',
    'BoringSSL',
    'openssl.org',
    'openssl_grpc',
    'bssl_g3',
    'SSL_CTX',
    'SSL_do_handshake',
    'EVP_AEAD_CTX_new',
)
LINK_MAP_CRYPTO_MARKERS = (
    'boringssl',
    'bssl_g3',
    'openssl_grpc',
    'grpc-binary',
)


def strings(path):
    return subprocess.check_output(
        ['strings', str(path)], text=True, errors='replace'
    )


def bundle_executable(bundle):
    info = bundle / 'Info.plist'
    if not info.is_file():
        return None
    with info.open('rb') as stream:
        executable = plistlib.load(stream).get('CFBundleExecutable')
    if not executable:
        return None
    binary = bundle / executable
    return binary if binary.is_file() else None


def app_binaries(app):
    runner = app / 'Runner'
    if runner.is_file():
        yield runner

    frameworks_dir = app / 'Frameworks'
    for framework in sorted(frameworks_dir.rglob('*.framework')):
        binary = bundle_executable(framework)
        if binary:
            yield binary

    for dylib in sorted(frameworks_dir.rglob('*.dylib')):
        if dylib.is_file():
            yield dylib

    for extension in sorted(app.rglob('*.appex')):
        binary = bundle_executable(extension)
        if binary:
            yield binary


def verify_app(app, generated_config, link_map, symbol_files):
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

    present = [marker for marker in DART_TLS_MARKERS if marker in aot_strings]
    if present:
        raise SystemExit(
            'Dart SecureSocket/TLS markers remain in App AOT: '
            + ', '.join(present)
        )

    binaries = sorted(set(app_binaries(app)))
    if not any(binary == app / 'Runner' for binary in binaries):
        raise SystemExit('Built app is missing the Runner executable')
    violations = []
    for binary in binaries:
        binary_strings = strings(binary)
        markers = [
            marker for marker in THIRD_PARTY_CRYPTO_MARKERS
            if marker in binary_strings
        ]
        violations.extend(
            f'{binary.relative_to(app)}: {marker}' for marker in markers
        )
    for symbol_file in symbol_files:
        symbol_strings = strings(symbol_file)
        markers = [
            marker for marker in THIRD_PARTY_CRYPTO_MARKERS
            if marker in symbol_strings
        ]
        violations.extend(
            f'{symbol_file.name}: {marker}' for marker in markers
        )
    if violations:
        raise SystemExit(
            'Non-OS TLS/crypto implementation markers remain in app symbols: '
            + ', '.join(violations)
        )

    if link_map:
        link_map_text = link_map.read_text(errors='replace').lower()
        present = [
            marker for marker in LINK_MAP_CRYPTO_MARKERS
            if marker in link_map_text
        ]
        if present:
            raise SystemExit(
                'Runner link map contains non-OS crypto/gRPC objects: '
                + ', '.join(present)
            )

    urlsession_strings = strings(urlsession)
    if (
        'URLSession' not in urlsession_strings
        and 'NSURLSession' not in urlsession_strings
    ):
        raise SystemExit('cupertino_http.framework has no URLSession markers')

    print('iOS URLSession compile-time define: verified')
    print('App AOT gRPC protocol markers: absent')
    print('App AOT Dart SecureSocket/TLS markers: absent')
    print('All shipped executables and supplied dSYMs: no third-party crypto markers')
    if link_map:
        print('Runner archive link map: no third-party crypto/gRPC objects')
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
    parser.add_argument('--link-map', type=Path)
    parser.add_argument('--symbol-file', type=Path, action='append', default=[])
    args = parser.parse_args()

    if args.ipa:
        with tempfile.TemporaryDirectory(prefix='bgb-ipa-audit-') as temp_dir:
            subprocess.run(['ditto', '-x', '-k', str(args.ipa), temp_dir], check=True)
            app = Path(temp_dir) / 'Payload/Runner.app'
            if not app.is_dir():
                raise SystemExit('IPA does not contain Payload/Runner.app')
            verify_app(app, args.generated_config, args.link_map, args.symbol_file)
    else:
        verify_app(args.app, args.generated_config, args.link_map, args.symbol_file)


if __name__ == '__main__':
    main()
