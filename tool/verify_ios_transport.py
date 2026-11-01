"""Verify the iOS URLSession transport profile and its app-AOT markers."""

import argparse
import base64
from pathlib import Path
import subprocess


REQUIRED_DEFINE = 'BGB_IOS_URLSESSION_TRANSPORT=true'
GRPC_MARKERS = (
    'dart-grpc',
    'grpc-timeout',
    'grpc-encoding',
    'google.firestore.v1',
)


def strings(path):
    return subprocess.check_output(
        ['strings', str(path)], text=True, errors='replace'
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('app', type=Path, help='Built Runner.app directory')
    parser.add_argument(
        '--generated-config',
        type=Path,
        default=Path('app/ios/Flutter/Generated.xcconfig'),
    )
    args = parser.parse_args()

    config = args.generated_config.read_text()
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

    aot = args.app / 'Frameworks/App.framework/App'
    urlsession = args.app / 'Frameworks/cupertino_http.framework/cupertino_http'
    if not aot.is_file() or not urlsession.is_file():
        raise SystemExit(
            'Built app is missing App.framework or cupertino_http.framework'
        )

    aot_strings = strings(aot)
    present = [marker for marker in GRPC_MARKERS if marker in aot_strings]
    if present:
        raise SystemExit('gRPC markers remain in App AOT: ' + ', '.join(present))

    urlsession_strings = strings(urlsession)
    if (
        'URLSession' not in urlsession_strings
        and 'NSURLSession' not in urlsession_strings
    ):
        raise SystemExit('cupertino_http.framework has no URLSession markers')

    print('iOS URLSession compile-time define: verified')
    print('App AOT gRPC protocol markers: absent')
    print('cupertino_http URLSession transport: present')
    print('Stock Flutter.framework SecureSocket/BoringSSL is outside this check.')


if __name__ == '__main__':
    main()
