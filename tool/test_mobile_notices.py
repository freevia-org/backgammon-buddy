import copy
import io
import json
from pathlib import Path
import tempfile
import unittest
import zipfile

from capture_mobile_notices import archive_notices, inherited_licenses
from mobile_notices import (EVIDENCE, check_android, check_apple, render, sha,
                            validate_manifest, verified_text)


def zip_bytes(files):
    target = io.BytesIO()
    with zipfile.ZipFile(target, 'w') as archive:
        for name, content in files.items():
            archive.writestr(name, content)
    return target.getvalue()


class MobileNoticesTests(unittest.TestCase):
    def test_extracts_native_and_nested_sdk_notices_without_binary_data(self):
        archive = zip_bytes({
            'third_party_licenses.txt': 'Exact Google SDK third-party text\r\n',
            'third_party_licenses.json': '{"index": 1}',
            'classes.jar': zip_bytes({'META-INF/NOTICE.txt': 'Original attribution',
                                       'android/Foo.class': b'\x00\xfe'}),
            'res/drawable/LICENSE_logo.png': b'not a license',
        })
        records = dict(archive_notices(archive))
        self.assertEqual(records['third_party_licenses.txt'],
                         b'Exact Google SDK third-party text\r\n')
        self.assertEqual(records['classes.jar!/META-INF/NOTICE.txt'], b'Original attribution')
        self.assertNotIn('third_party_licenses.json', records)
        self.assertNotIn('res/drawable/LICENSE_logo.png', records)

    def test_pom_inherits_published_license_without_inventing_one(self):
        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            child = base / 'child.pom'
            child.write_text('<project><parent><groupId>a</groupId><artifactId>parent</artifactId>'
                             '<version>2</version></parent></project>')
            parent = base / 'parent-2.pom'
            parent.write_text('<project><licenses><license><name>BSD-3-Clause</name>'
                              '<url>https://example.org/LICENSE</url></license></licenses></project>')
            licenses, chain = inherited_licenses(child, 'a:child:1', base / 'cache', base)
            self.assertEqual(licenses[0]['name'], 'BSD-3-Clause')
            self.assertEqual([p['coordinate'] for p in chain], ['a:child:1', 'a:parent:2'])
            self.assertEqual(chain[1]['sha256'], sha(parent.read_bytes()))
            parent.write_text('<project/>')
            self.assertEqual(inherited_licenses(child, 'a:child:1', base / 'cache', base)[0], [])

    def test_missing_parent_is_a_review_failure(self):
        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            child = base / 'child.pom'
            child.write_text('<project><parent><groupId>a</groupId><artifactId>missing</artifactId>'
                             '<version>2</version></parent></project>')
            with self.assertRaisesRegex(ValueError, 'Missing declared POM parent'):
                inherited_licenses(child, 'a:child:1', base, base)

    def test_exact_android_graph_guard_catches_version_and_artifact_changes(self):
        record = {'id': 'a:b:1', 'artifacts': [{'name': 'b.jar', 'sha256': 'original'}]}
        manifest = {'android': {'dependencies': [record]}}
        graph = {'dependencies': [{'coordinate': 'a:b:1', 'artifacts': record['artifacts']}]}
        check_android(manifest, graph)
        for changed in [[], [{'coordinate': 'a:b:2', 'artifacts': record['artifacts']}],
                        [{'coordinate': 'a:b:1', 'artifacts': [{'name': 'b.jar', 'sha256': 'new'}]}]]:
            with self.assertRaisesRegex(ValueError, 'review is stale'):
                check_android(manifest, {'dependencies': changed})

    def test_apple_revision_and_missing_source_guards(self):
        source = {'resolved_packages': [{'identity': 'a', 'location': 'https://example.org/a',
                                         'state': {'revision': 'one'}}],
                  'source_notices': [{'source': 'a/LICENSE', 'sha256': 'original'}]}
        manifest = {'apple': source}
        check_apple(manifest, {'apple_sources': source})
        changed = copy.deepcopy(source)
        changed['resolved_packages'][0]['state']['revision'] = 'two'
        with self.assertRaisesRegex(ValueError, 'revisions changed'):
            check_apple(manifest, {'apple_sources': changed})
        changed = copy.deepcopy(source)
        changed['source_notices'] = []
        with self.assertRaisesRegex(ValueError, 'missing or changed'):
            check_apple(manifest, {'apple_sources': changed})

    def test_source_text_tampering_fails(self):
        with tempfile.TemporaryDirectory() as directory:
            base = Path(directory)
            (base / 'texts').mkdir()
            digest = sha(b'Original')
            (base / 'texts' / (digest + '.txt')).write_bytes(b'Changed')
            with self.assertRaisesRegex(ValueError, 'SHA-256'):
                verified_text(base, digest)

    def test_reviewed_inventory_covers_all_current_components_and_renders_offline(self):
        manifest = json.loads((EVIDENCE / 'manifest.json').read_text(encoding='utf-8'))
        validate_manifest(manifest, EVIDENCE)
        android = render(manifest, 'android', EVIDENCE).decode('utf-8')
        apple = render(manifest, 'apple', EVIDENCE).decode('utf-8')
        self.assertEqual(len(manifest['android']['dependencies']), 134)
        android_ids = {item['id'] for item in manifest['android']['dependencies']}
        self.assertTrue({
            'com.google.code.findbugs:jsr305:3.0.2',
            'com.google.code.gson:gson:2.13.2',
            'com.google.crypto.tink:tink-android:1.23.0',
        }.issubset(android_ids))
        self.assertEqual(len(manifest['apple']['resolved_packages']), 14)
        self.assertIn('The LibYuv Project Authors', android)
        self.assertIn('Android Software Development Kit License', android)
        self.assertIn('Animal Sniffer', android)
        self.assertIn('not relicense proprietary binaries', apple)
        self.assertIn('not linked by this app', apple)
        self.assertNotIn('com.google.mlkit:', android)


if __name__ == '__main__':
    unittest.main()
