import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../branding/app_version.dart';

const nativeLicenseAssets = [
  'assets/licenses/wildbg-NOTICES.txt',
  'assets/licenses/wildbg-LICENSE-MIT.txt',
  'assets/licenses/wildbg-LICENSE-APACHE.txt',
];

/// Flutter discovers Dart-package notices automatically. The Rust engine is
/// outside that dependency graph, so its notices are registered explicitly.
Stream<LicenseEntry> nativeEngineLicenses() async* {
  for (final asset in nativeLicenseAssets) {
    yield LicenseEntryWithLineBreaks(const [
      'wildbg (native engine)',
    ], await rootBundle.loadString(asset));
  }
}

Stream<LicenseEntry> additionalNativeLicenses() async* {
  yield LicenseEntryWithLineBreaks(const [
    'Backgammon Buddy (Freevia)',
  ], await rootBundle.loadString('assets/licenses/Freevia-MIT.txt'));
  yield LicenseEntryWithLineBreaks(const [
    'Kazaross-XG2 match equity table',
  ], await rootBundle.loadString('assets/licenses/Kazaross-XG2-NOTICE.txt'));
  yield LicenseEntryWithLineBreaks(const [
    'Native Rust dependencies',
  ], await rootBundle.loadString('assets/licenses/native-dependencies.txt'));
  yield LicenseEntryWithLineBreaks(const [
    'wildbg neural-network models and training data',
  ], await rootBundle.loadString('assets/licenses/wildbg-training-CC0.txt'));
  yield LicenseEntryWithLineBreaks(const [
    'Android native dependencies',
  ], await rootBundle.loadString('assets/licenses/android-native-notices.txt'));
  yield LicenseEntryWithLineBreaks(const [
    'Apple native dependencies',
  ], await rootBundle.loadString('assets/licenses/apple-native-notices.txt'));
  final suffixSource = <String>[];
  for (final name in [
    'PROVENANCE.txt',
    'NOTICE.txt',
    'MPL-2.0.txt',
    '4.12.0-source.dat',
  ]) {
    suffixSource.add(await rootBundle.loadString(
      'assets/licenses/okhttp-publicsuffix-$name',
    ));
  }
  yield LicenseEntryWithLineBreaks(const [
    'OkHttp public-suffix list — license and complete source',
  ], suffixSource.join('\n\n'));
}

bool _nativeLicensesRegistered = false;

/// Registers lazily: startup never waits for license-asset IO, and repeated
/// visits retain one registry collector rather than duplicating every notice.
void showAppLicenses(BuildContext context) {
  if (!_nativeLicensesRegistered) {
    LicenseRegistry.addLicense(nativeEngineLicenses);
    LicenseRegistry.addLicense(additionalNativeLicenses);
    _nativeLicensesRegistered = true;
  }
  showLicensePage(
    context: context,
    applicationName: 'Backgammon Buddy',
    applicationVersion: appVersion,
  );
}
