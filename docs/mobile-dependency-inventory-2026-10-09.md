# Mobile native dependency evidence — 2026-10-09

The downloaded diagnostic binaries were inspected directly. These inventories
are build evidence, not a conclusion that their SDKs transmit data, and not a
license assignment based on package names.

| Artifact | SHA-256 | Observations |
|---|---|---|
| ARM64 APK | `860eea123052575fe985ec237415be6739cd399ae68a0856471f638b6fd7c8cd` | 8 ELF libraries; 58 Android dependency version markers |
| ARMv7 APK | `3a1b1a7ffce2f4fa8b4f819ca76811355fb0a75c5d37f1ef6f61a14d485c353f` | 8 ELF libraries; 58 Android dependency version markers |
| Runner.app.zip | `f75ec164c07d9e95794adff5daeedba98de33960025d284dc4219e4810d66e8f` | 24 privacy manifests; 8 framework metadata records plus app metadata |

The iOS app metadata records version 0.14.0, build 5, SDK `iphoneos26.5` and
Xcode build identifier `2660`. Embedded frameworks report FirebaseAnalytics,
GoogleAppMeasurement and GoogleAppMeasurementIdentitySupport 12.15.0, and
GoogleAdsOnDeviceConversion 3.6.0. Android markers include CameraX core 1.6.1,
AndroidX core 1.17.0, DataStore 1.1.7 and Privacy Sandbox ad-services
1.1.0-beta11. Artifact presence alone does not prove collection or use.

The inspected Apple privacy manifests declare UserDefaults, file timestamp and
system boot-time API reasons in relevant SDK bundles. Crashlytics declares crash
and other diagnostic data; Installations and GoogleDataTransport declare other
diagnostic data. Those declarations mark their described collection as not
tracking and not linked. They are SDK declarations, not an app-level privacy
label or a substitute for checking actual optional-telemetry behavior. In
particular, not every linked SDK's behavior can be reconstructed from these 24
files alone.

The first-party iOS delegates only register the Flutter engine/plugins; the
source review found no direct calls to required-reason APIs in those delegates.
Application Dart code uses `Stopwatch` and files in its support directory.
Flutter's embedded manifest already declares file timestamp reasons `C617.1`
and `0A2A.1`, and boot-time reason `35F9.1`. No speculative first-party API
reasons were added. This targeted source check is not an Xcode privacy report
or a complete symbol audit of linked third-party code.

The upstream 12.15.0 binary ZIPs were also inspected, with hashes matching their
official Swift manifests: FirebaseAnalytics
`ba21a1b13404d96d4b6686eff250ce4088305d6d5c860bb07319118bae8b97b7`
and GoogleAppMeasurement
`2cd7cac8479c843694babab921c34381c3811f335223386e0076e1056e6cef5c`.
Neither ZIP contains a privacy manifest or LICENSE/NOTICE file. Their absence
in Runner is therefore also present in these upstream binary distributions;
it is not evidence that they collect nothing. Review their source-package terms
and [Firebase's disclosure guidance](https://firebase.google.com/docs/ios/app-store-data-collection)
alongside the final Xcode privacy report before iOS submission.

## Build changes

`tool/mobile_dependency_inventory.py` reads APK/AAB/IPA/Runner ZIP artifacts and
records exact hashes, Android version markers, embedded native library hashes,
framework/app versions and complete privacy manifest declarations. It exports
only an allowlist of app plist fields, never signing profiles or Firebase config.

The Android workflow now runs `tool/mobile_dependencies.gradle` against the
actual `releaseRuntimeClasspath`. It captures resolved module coordinates,
artifact hashes and available POMs. The Python report records only license
declarations present directly in those POMs; missing declarations remain explicit
gaps requiring parent-POM/source review. Maven metadata is not a substitute for
retaining any required notice text.

The iOS workflow captures Swift Package Manager resolution pins and checked-out
LICENSE/NOTICE/COPYING texts with content hashes. Both unsigned and signed
artifacts receive their own inventories, and the unsigned inventory retains
Xcode/SDK versions. Statically linked SDKs cannot be fully inventoried from
embedded-framework metadata; the resolution/source evidence is necessary.

The locked FlutterFire Analytics 12.4.5 SPM manifest supports
`FIREBASE_ANALYTICS_WITHOUT_ADID=true`, selecting `FirebaseAnalyticsCore`.
The iOS job now sets this for its builds, consistent with the app's absence of
advertising features. A post-build check rejects embedded
GoogleAppMeasurementIdentitySupport or GoogleAdsOnDeviceConversion frameworks.
The successful run 37855133199 at commit `426ced1` confirms this removal:
`Runner.app.zip` SHA-256
`5d21d64536023279b99e81c9cbbdaa217afdcee3f183598802ada19ca75409f5`
has 24 privacy manifests and seven app/framework metadata records, including
FirebaseAnalytics and GoogleAppMeasurement 12.15.0 but neither advertising
support framework. It uses the new `org.freevia.backgammonbuddy` identity.
This follows the
[FlutterFire installation instructions](https://github.com/firebase/flutterfire/blob/main/docs/analytics/_get-started.md)
and [Firebase's IDFA-free dependency guidance](https://firebase.google.com/docs/analytics/ios/configure-data-collection).
The later post-QR-removal run 37856567962 at `1b17b39` also passes the notice
guard with identical 14 pins and 27 source-notice entries. Its Runner ZIP hash is
`fc8f0ce3713eef2ab2b8a3345537622982a340e8ff0cc0e5326de1532c60774e`;
it has 23 privacy manifests and the same seven app/framework metadata records.
The removed manifest belongs to the removed scanner plugin. Neither Ad ID
support framework is present, and the captured metadata contains no ML Kit or
old scanner entries.
Local Apple builds must use the same environment variable.
The [locked GoogleAppMeasurement manifest](https://github.com/google/GoogleAppMeasurement/blob/12.15.0/Package.swift)
also confirms its Core target excludes both the identity-support and on-device
conversion dependencies, while the default target includes them.

The Freevia MIT license is copied verbatim from the repository's root `LICENSE`
to `app/assets/licenses/Freevia-MIT.txt` and registered in the offline Licenses
screen. It covers the app's original code; third-party licenses stay separate.

## Native notice closure

The local post-QR-change Android `releaseRuntimeClasspath` resolves 131 modules.
All six ML Kit/ODML modules from the earlier 137-module graph are absent. QR
scanning now decodes camera luminance with the pure-Dart `zxing2` package. The
exact candidate APK must still pass the same graph/hash check; the old APK hashes
at the top of this document are not evidence for that newer dependency graph.

The successful Apple build supplied 14 SPM resolution pins and 27 captured
source-notice entries (19 unique texts). The dependency manifest still resolves
the upstream on-device-conversion package, but the selected Core target does
not link its framework. The inventory and in-app notice explicitly distinguish
these cases rather than claiming every resolved product is active.

`native/licenses/mobile/manifest.json` now records the exact Android artifact
hashes, POM license declarations and parent-POM provenance. Nine missing direct
declarations were resolved through exact parent metadata or the Flutter SDK's
complete composite license. Forty byte-preserved unique notice texts cover
the native source/notice inventory. Google's 13 SDK-licensed Android modules
retain their published terms links and embedded third-party notices; they are
not relabelled Apache merely because their wrappers contain Apache code.

The app's offline Licenses screen registers Android and Apple native notice
bundles in addition to its existing Dart/Rust/model notices. A separate OkHttp
entry exposes the complete original MPL public-suffix source, notice, license
and provenance. Its source reconstructs the exact resolved OkHttp 4.12.0 JAR's
9,499 rules and eight exceptions byte-for-byte. The CameraX libyuv BSD/patent
notices come from a pinned official camera-release source manifest; exact
binary-to-source revision mapping is not asserted, and those notice bytes also
match separately inspected current upstream libyuv.

The deterministic renderer and release guards reject stale generated assets,
changed Android coordinates/artifact hashes, changed Apple package revisions,
missing Apple source notices and a changed Flutter composite license. See
`native/licenses/mobile/README.md` for the refresh procedure and source scope.

Focused validation passed: seven notice tests, five artifact inventory tests,
three OkHttp source tests, 18 release-tool tests and three Flutter license tests.
The actual local graph and remote Apple inventory both pass the new notice
guards. No signing material or app user data is included in this evidence.

## Remaining verification

- Rebuild and check the exact signed Android candidate after the notice assets
  land. Its earlier diagnostic/build artifacts cannot prove updated contents.
- Continue real-device checks of the QR replacement and optional telemetry
  behavior. Dependency absence and privacy manifests alone cannot certify
  runtime consent or transmission behavior.
- Before iOS submission, produce/review the final Xcode privacy report and
  current App Store disclosures, including Analytics behavior whose upstream
  binaries omit their own privacy manifest. A complete linked-symbol audit
  and physical iOS acceptance are still outstanding.

To reproduce artifact inspection locally:

```powershell
python tool/mobile_dependency_inventory.py `
  --artifact app/build/release-audit/android/app-arm64-v8a-release.apk `
  --artifact app/build/release-audit/ios/Runner.app.zip `
  --out-dir app/build/release-audit/mobile-inventory
```

Per-build CI artifacts are named `aigammon-android-dependencies-<run>`,
`aigammon-ios-dependencies-<run>` and, when signing is available,
`aigammon-ios-signed-dependencies-<run>`.
