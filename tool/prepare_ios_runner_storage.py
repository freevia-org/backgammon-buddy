"""Put one Mac mini iOS run's heavy outputs on its dedicated external volume."""
import argparse
import os
from pathlib import Path
import shutil
import stat
import tempfile
import time

PREFIX = 'backgammon-buddy-ios-'


def prune_stale(mount, stale_after, now=None):
    """Delete earlier runs' private directories once they cannot be in use.

    Every run gets a fresh directory and never reads an old one, so without
    this the volume fills until the free-space check fails. The age threshold
    must stay far above the job timeout: a directory younger than that may
    belong to a run that is still building or saving its caches.
    """
    now = time.time() if now is None else now
    removed = []
    for path in sorted(mount.iterdir()):
        if (not path.name.startswith(PREFIX) or path.is_symlink() or not path.is_dir()
                or now - path.lstat().st_mtime < stale_after):
            continue
        for folder, _, _ in os.walk(path):  # fetched toolchains are read-only
            try:
                os.chmod(folder, os.stat(folder).st_mode | stat.S_IRWXU)
            except OSError:
                pass
        shutil.rmtree(path, ignore_errors=True)
        if not path.exists():
            removed.append(path.name)
    return removed


def prepare(workspace, mount, require_mounted=True, minimum_free=50 * 1024**3,
            stale_after=24 * 60 * 60):
    if (mount.is_symlink() or not mount.is_dir() or
        (require_mounted and (not os.path.ismount(mount) or
                              mount.stat().st_dev == Path('/').stat().st_dev))):
        raise ValueError(f'Expected a separately mounted volume: {mount}')
    for name in prune_stale(mount, stale_after):
        print(f'Removed stale build storage from an earlier run: {name}')
    if shutil.disk_usage(mount).free < minimum_free:
        raise ValueError(f'Insufficient free space on {mount}')
    outputs = [workspace / 'app/build', workspace / 'native/gnubg/build']
    if any(path.exists() or path.is_symlink() for path in outputs):
        raise ValueError('A build output path already exists; refusing to replace it')
    root = Path(tempfile.mkdtemp(prefix=PREFIX, dir=mount))
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
