"""Put one Mac mini iOS run's heavy outputs on its dedicated external volume."""
import argparse
import os
from pathlib import Path
import shutil
import tempfile


def prepare(workspace, mount, require_mounted=True, minimum_free=50 * 1024**3):
    if (mount.is_symlink() or not mount.is_dir() or
        (require_mounted and (not os.path.ismount(mount) or
                              mount.stat().st_dev == Path('/').stat().st_dev))):
        raise ValueError(f'Expected a separately mounted volume: {mount}')
    if shutil.disk_usage(mount).free < minimum_free:
        raise ValueError(f'Insufficient free space on {mount}')
    outputs = [workspace / 'app/build', workspace / 'native/gnubg/build']
    if any(path.exists() or path.is_symlink() for path in outputs):
        raise ValueError('A build output path already exists; refusing to replace it')
    root = Path(tempfile.mkdtemp(prefix='backgammon-buddy-ios-', dir=mount))
    root.chmod(0o700)
    for name in ('temp', 'tmp', 'cargo', 'pub', 'app-build', 'gnubg-build'):
        (root / name).mkdir(mode=0o700)
    outputs[0].symlink_to(root / 'app-build', target_is_directory=True)
    outputs[1].symlink_to(root / 'gnubg-build', target_is_directory=True)
    return {'BGB_BUILD_TEMP': str(root / 'temp'),
            'CARGO_TARGET_DIR': str(root / 'cargo'),
            'PUB_CACHE': str(root / 'pub'), 'TMPDIR': str(root / 'tmp') + '/'}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--workspace', required=True, type=Path)
    parser.add_argument('--mount', required=True, type=Path)
    parser.add_argument('--env-file', required=True, type=Path)
    args = parser.parse_args()
    variables = prepare(args.workspace, args.mount)
    with args.env_file.open('a') as output:
        for key, value in variables.items():
            output.write(f'{key}={value}\n')
    print(f"Dedicated private iOS build storage: {Path(variables['BGB_BUILD_TEMP']).parent}")


if __name__ == '__main__':
    main()
