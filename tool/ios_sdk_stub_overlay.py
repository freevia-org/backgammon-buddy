"""Create isolated linker stubs for LLVM versions unable to parse arm64e.x1.

Affected text stubs are copied; all other SDK files remain linked to Apple's originals.

The linker parses SDK stubs before selecting a target and follows system
re-exports and Swift library search paths. Those transitive inputs vary with
SDK and toolchain versions, so the overlay conservatively includes every stub
containing an unsupported selector, rather than maintaining a brittle list of
observed files. Only selector entries inside TAPI targets lists are removed;
all other bytes are checked against the source and recorded in the manifest.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shlex
import subprocess


def transform(data, platform):
    targets = b'(?:macos|maccatalyst)' if platform == 'macos' else b'ios'
    selector = rb',\s*arm64e\.x1-' + targets + rb'\b'
    result = re.sub(rb'\btargets:\s*\[[^\]]*\]',
                    lambda match: re.sub(selector, b'', match.group()), data)
    if b'arm64e.x1-' in result:
        raise ValueError('Unexpected arm64e.x1 selector syntax or platform')
    return result


def prepare(sdk, out, platform):
    """Shadow only directories containing changed stubs, symlinking everything else."""
    changed = {}
    for src in sdk.rglob('*.tbd'):
        if src.is_symlink():
            continue
        data = src.read_bytes()
        if b'arm64e.x1-' not in data:
            continue
        rewritten = transform(data, platform)
        if data != rewritten:
            changed[src.relative_to(sdk)] = (data, rewritten)
    if not changed:
        return None
    if out.exists():
        raise ValueError(f'Overlay destination already exists: {out}')
    shadow_dirs = {Path('.')}
    for rel in changed:
        shadow_dirs.update(rel.parents)
    evidence = []
    def shadow(relative):
        dest = out / relative
        dest.mkdir(parents=True, exist_ok=True)
        for src in (sdk / relative).iterdir():
            rel = relative / src.name
            target = out / rel
            if src.is_symlink():
                target.symlink_to(os.readlink(src), target_is_directory=src.is_dir())
            elif rel in changed:
                original, rewritten = changed[rel]
                target.write_bytes(rewritten)
                evidence.append({'path': str(rel),
                    'source_sha256': hashlib.sha256(original).hexdigest(),
                    'overlay_sha256': hashlib.sha256(rewritten).hexdigest(),
                    'removed': original.count(b'arm64e.x1-') - rewritten.count(b'arm64e.x1-')})
            elif src.is_dir() and rel in shadow_dirs:
                shadow(rel)
            else:
                target.symlink_to(src, target_is_directory=src.is_dir())
    shadow(Path('.'))
    return {'platform': platform, 'files': sorted(evidence, key=lambda e: e['path'])}


def verify(sdk, out, platform, record):
    """Recheck every source stub and the exact manifest, including unchanged stubs."""
    files = {item['path']: item for item in record['files']}
    if len(files) != len(record['files']) or record['platform'] != platform:
        raise ValueError('Invalid overlay manifest')
    seen = set()
    for src in sdk.rglob('*.tbd'):
        if src.is_symlink():
            continue
        rel = str(src.relative_to(sdk))
        original = src.read_bytes()
        expected = transform(original, platform) if b'arm64e.x1-' in original else original
        target = out / rel
        if target.read_bytes() != expected:
            raise ValueError(f'Unexpected overlay contents: {rel}')
        if expected != original:
            item = files.get(rel)
            if (item is None or target.is_symlink() or
                item['source_sha256'] != hashlib.sha256(original).hexdigest() or
                item['overlay_sha256'] != hashlib.sha256(expected).hexdigest() or
                item['removed'] != original.count(b'arm64e.x1-') - expected.count(b'arm64e.x1-')):
                raise ValueError(f'Invalid overlay evidence: {rel}')
            seen.add(rel)
        elif rel in files:
            raise ValueError(f'Unexpected manifest entry: {rel}')
    if seen != set(files):
        raise ValueError('Overlay manifest does not match source SDK')
    return len(seen)


def patch_ninja(out, overlays):
    count = 0
    sdk_pattern = re.compile(r'(?<=-isysroot )[^ ]*(?:iPhoneOS|MacOSX)[^ ]*\.sdk')
    for file in sorted(out.rglob('toolchain.ninja')):
        text = file.read_text()
        def replace(match):
            nonlocal count
            platform = 'ios' if 'iPhoneOS' in match.group() else 'macos'
            if platform not in overlays:
                return match.group()
            count += 1
            return shlex.quote(str(overlays[platform])).replace('$', '$$')
        updated = sdk_pattern.sub(replace, text)
        if updated != text:
            file.write_text(updated)
    # GN also embeds explicit SDK Swift library search paths in target rules.
    # These must use the same overlay, or the linker reads the original stubs.
    search_pattern = re.compile(r'(?<=-L)\.\./\.\./flutter/prebuilts/SDKs/(?:iPhoneOS|MacOSX)[^/\s]*\.sdk')
    for file in sorted(out.rglob('*.ninja')):
        text = file.read_text()
        def replace_search(match):
            platform = 'ios' if 'iPhoneOS' in match.group() else 'macos'
            if platform not in overlays:
                return match.group()
            return shlex.quote(str(overlays[platform])).replace('$', '$$')
        updated = search_pattern.sub(replace_search, text)
        if updated != text:
            file.write_text(updated)
    if overlays and not count:
        raise ValueError(f'No SDK paths found in {out}')
    return count


def allow_sdk_attribute_warning(out):
    """Keep SDK's ignored-attribute warning nonfatal only for Dart's host timeline."""
    count = 0
    for file in out.rglob('libdart_vm_*.ninja'):
        lines = file.read_text().splitlines(keepends=True)
        flags = next((line.removeprefix('cflags_cc = ').rstrip('\n')
                      for line in lines if line.startswith('cflags_cc = ')), None)
        if flags is None:
            continue
        updated = []
        for line in lines:
            updated.append(line)
            if line.startswith('build ') and 'timeline_macos.o:' in line:
                updated.append('  cflags_cc = ' + flags + ' -Wno-error=ignored-attributes\n')
                count += 1
        file.write_text(''.join(updated))
    return count


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--overlay-dir', required=True, type=Path)
    parser.add_argument('--ninja-dir', required=True, type=Path, action='append')
    args = parser.parse_args()
    overlays, evidence = {}, []
    for sdk_name, platform in [('iphoneos', 'ios'), ('macosx', 'macos')]:
        sdk = Path(subprocess.check_output(['xcrun', '--sdk', sdk_name,
                                            '--show-sdk-path'], text=True).strip())
        directory = args.overlay_dir / platform
        result = prepare(sdk, directory, platform)
        if result:
            overlays[platform] = directory.resolve()
            verify(sdk, directory, platform, result)
            evidence.append(result)
    for out in args.ninja_dir:
        patch_ninja(out, overlays)
        if 'macos' in overlays:
            allow_sdk_attribute_warning(out)
    print(json.dumps(evidence, sort_keys=True))


if __name__ == '__main__':
    main()
