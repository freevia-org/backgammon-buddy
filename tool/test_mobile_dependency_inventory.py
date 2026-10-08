import json
from pathlib import Path
import plistlib
import subprocess
import sys
import tempfile
import unittest
import zipfile

from mobile_dependency_inventory import android_dependencies, apple_sources, inspect_artifact, public_url


class MobileInventoryTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.root = Path(self.temp.name)

    def test_artifact_records_native_metadata_without_secret_plist_fields(self):
        artifact = self.root / 'Runner.zip'
        manifest = {'NSPrivacyTracking': False, 'NSPrivacyAccessedAPITypes': [
            {'NSPrivacyAccessedAPIType': 'NSPrivacyAccessedAPICategoryUserDefaults',
             'NSPrivacyAccessedAPITypeReasons': ['CA92.1']}]}
        with zipfile.ZipFile(artifact, 'w') as archive:
            archive.writestr('Runner.app/Info.plist', plistlib.dumps({
                'CFBundleVersion': '123', 'DTSDKName': 'iphoneos26.5',
                'private-token': 'MUST-NOT-EXPORT'}))
            archive.writestr('Runner.app/PrivacyInfo.xcprivacy', plistlib.dumps(manifest))
            archive.writestr('lib/arm64-v8a/libtest.so', b'native evidence')
            archive.writestr('META-INF/example.version', '1.2.3\n')
            archive.writestr('assets/licenses/LICENSE.txt', 'license text')
        report = inspect_artifact(artifact)
        self.assertEqual(report['privacy_manifests'][0]['declarations'], manifest)
        self.assertEqual(report['frameworks'][0]['CFBundleVersion'], '123')
        self.assertNotIn('MUST-NOT-EXPORT', json.dumps(report))
        self.assertEqual(report['version_markers']['META-INF/example.version'], '1.2.3')
        self.assertEqual(len(report['native_libraries']), 1)
        self.assertEqual(len(report['notice_assets']), 1)

    def test_direct_pom_terms_are_recorded_and_missing_terms_remain_unknown(self):
        (self.root / 'one.pom').write_text('''<project xmlns="http://maven.apache.org/POM/4.0.0">
          <licenses><license><name>Actual declared terms</name><url>https://example.org/license</url></license></licenses>
          </project>''')
        record = self.root / 'resolved.json'
        record.write_text(json.dumps({'dependencies': [
            {'coordinate': 'a:one:1', 'pom_file': 'one.pom'}, {'coordinate': 'b:two:2'}]}))
        result = android_dependencies(record)['dependencies']
        self.assertEqual(result[0]['declared_licenses'][0]['name'], 'Actual declared terms')
        self.assertEqual(result[1]['declared_licenses'], [])
        self.assertIn('inspect parent/source', result[1]['license_status'])

    def test_apple_source_capture_is_limited_to_pins_and_dependency_notices(self):
        checkout = self.root / 'SourcePackages/checkouts/sdk'
        checkout.mkdir(parents=True)
        (checkout / 'LICENSE').write_text('sdk license')
        (checkout / 'GoogleService-Info.plist').write_text('do not copy')
        (self.root / 'Package.resolved').write_text(json.dumps({'pins': [{
            'identity': 'sdk', 'location': 'https://user:secret@example.org/sdk.git?token=secret',
            'state': {'version': '1.0.0'}}]}))
        out = self.root / 'output'
        report = apple_sources([self.root], out)
        self.assertEqual(len(report['source_notices']), 1)
        self.assertEqual(report['resolved_packages'][0]['location'], 'https://example.org/sdk.git')
        self.assertEqual((out / report['source_notices'][0]['captured_text']).read_text(), 'sdk license')
        self.assertNotIn('secret', json.dumps(report))
        self.assertNotIn('GoogleService', json.dumps(report))

    def test_ad_support_gate_rejects_bundled_identity_framework(self):
        artifact = self.root / 'Runner.zip'
        with zipfile.ZipFile(artifact, 'w') as archive:
            archive.writestr('Runner.app/Frameworks/GoogleAppMeasurementIdentitySupport.framework/Info.plist',
                             plistlib.dumps({'CFBundleVersion': '1'}))
        result = subprocess.run([sys.executable, str(Path(__file__).with_name('mobile_dependency_inventory.py')),
            '--artifact', str(artifact), '--require-no-apple-ad-support', '--out-dir', str(self.root / 'out')],
            capture_output=True, text=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('Unexpected advertising-support frameworks', result.stderr)

    def test_public_urls_drop_embedded_credentials_and_queries(self):
        self.assertEqual(public_url('https://user:password@example.org/license?token=a#b'),
                         'https://example.org/license')


if __name__ == '__main__':
    unittest.main()
