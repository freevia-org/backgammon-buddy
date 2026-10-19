"""Build an account-free metadata handoff, never an IPA or an Apple submission."""
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import zipfile

ROOT = Path(__file__).resolve().parents[1]
OUTPUT = ROOT / 'app/build/app-store-submission'
DOCS = (
    'docs/app-store-publishing.md',
    'docs/ios-submission-validation.md',
    'docs/ios-privacy-encryption-handoff.md',
    'docs/ios-extended-validation-2026-10-19.md',
    'docs/ios-local-build.md',
    'docs/gnubg-app-store-options.md',
    'native/licenses/README.md',
    'LICENSE',
)


def main():
    subprocess.run([sys.executable, str(ROOT / 'tool/app_store_metadata_check.py')],
                   check=True, cwd=ROOT)
    paths = sorted((ROOT / 'app/store/ios').rglob('*'))
    paths = [p for p in paths if p.is_file() and
             p.suffix in {'.txt', '.md', '.json', '.png'}]
    paths += [ROOT / name for name in DOCS]
    files = {}
    for path in paths:
        assert not path.is_symlink(), f'Refusing symlink: {path}'
        files[path.relative_to(ROOT).as_posix()] = path.read_bytes()
    source = subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=ROOT,
                                     text=True).strip()
    manifest = {
        'kind': 'metadata-handoff-not-a-signed-app',
        'source_commit': source,
        'working_tree_dirty': bool(subprocess.check_output(
            ['git', 'status', '--porcelain'], cwd=ROOT, text=True).strip()),
        'status': 'requires-owner-decisions-apple-signing-and-device-acceptance',
        'sha256': {name: hashlib.sha256(data).hexdigest()
                   for name, data in sorted(files.items())},
    }
    files['MANIFEST.json'] = (json.dumps(manifest, indent=2) + '\n').encode()
    OUTPUT.mkdir(parents=True, exist_ok=True)
    archive = OUTPUT / 'Backgammon-Buddy-App-Store-metadata.zip'
    with zipfile.ZipFile(archive, 'w', compression=zipfile.ZIP_DEFLATED) as bundle:
        for name, data in sorted(files.items()):
            entry = zipfile.ZipInfo(name, date_time=(1980, 1, 1, 0, 0, 0))
            entry.compress_type = zipfile.ZIP_DEFLATED
            entry.external_attr = 0o100644 << 16
            bundle.writestr(entry, data)
    with zipfile.ZipFile(archive) as bundle:
        assert bundle.testzip() is None
        for name, digest in manifest['sha256'].items():
            assert hashlib.sha256(bundle.read(name)).hexdigest() == digest
    digest = hashlib.sha256(archive.read_bytes()).hexdigest()
    (OUTPUT / 'SHA256SUMS.txt').write_text(f'{digest}  {archive.name}\n')
    print(f'Metadata handoff: {archive} ({len(files)} files)')
    print(f'SHA-256: {digest}')
    print('No IPA, signing credentials, upload or App Store approval included.')


if __name__ == '__main__':
    main()
