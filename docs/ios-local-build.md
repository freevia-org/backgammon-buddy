# Local iOS build on Apple Silicon

The app uses Flutter **3.44.8** (Dart 3.12.2), Rust stable, CMake, and
Xcode with iOS platform support. Its bundle identifier is
`org.freevia.backgammonbuddy`; its minimum supported iOS version is 15.0.
The Xcode project already integrates Flutter plugins using Swift Package Manager.

## This Mac

The repository and pinned `native/wildbg` submodule were downloaded on
2026-10-18. Local tool locations:

```sh
export PATH="$HOME/.gem/ruby/2.6.0/bin:$HOME/development/flutter/bin:$HOME/.cargo/bin:$HOME/development/ios-build-tools/bin:$PATH"
export RUBYOPT=-rlogger
```

Flutter is pinned to the same 3.44.8 tag as `.github/workflows/ios.yml`.
Rust has `aarch64-apple-ios` and `aarch64-apple-ios-sim` targets installed.
CMake is installed in the isolated `~/development/ios-build-tools` Python
environment. Use the PATH above in each build terminal.

Xcode **27.1 (27A9275)** and the iOS **27.1** SDK are installed; Xcode's
first-launch check passes and its developer directory is selected.
Flutter dependency resolution and analysis passed; the non-golden app suite
passed with 1,314 tests and 7 skips. On 2026-10-18, the unsigned ARM64 device
release build succeeded: **0.16.0 (22)**, minimum iOS 15.0, approximately 85.2 MB.
All 11 native engine entry points were verified in the executable's dynamic
export table; both ONNX networks and 25 privacy manifests are packaged.
No physical-device execution or release signing has been performed.

Simulator validation subsequently passed 22 distinct E2E cases; see
[the simulator report](ios-e2e-2026-10-18.md) for scope, runtime recovery and
reproduction commands. The native archives currently staged under
`app/ios/Frameworks` target the simulator; rebuild/stage the device archives
before using the unsigned device-build commands below.

## Finish Xcode setup

Install Xcode from the Mac App Store and open it. Review its license and finish
the first-launch component installation, including iOS support. Select its
developer tools (requires administrator authorization):

```sh
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer
xcodebuild -runFirstLaunch
xcodebuild -downloadPlatform iOS
xcodebuild -version
xcrun --sdk iphoneos --show-sdk-version
flutter doctor -v
```

See [Flutter's iOS setup guide](https://docs.flutter.dev/platform-integration/ios/setup).
The `flutter_tts` plugin requires CocoaPods fallback alongside Swift Package
Manager. `app/ios/Podfile` and the optional Pods xcconfig includes are configured;
the Podfile raises older plugin targets to iOS 15 for Xcode 27 compatibility.
CocoaPods **1.16.2** is installed in the user gem directory on this Mac.
Apple's Ruby 2.6 requires compatible gems: ffi 1.17.2, ActiveSupport 6.1.7.10,
and Zeitwerk 2.6.18. `RUBYOPT=-rlogger` above loads Ruby's logger before
ActiveSupport. Keep these environment settings when invoking Flutter or pod.

## Build an unsigned device app

From the repository root, after exporting PATH as above:

```sh
git submodule update --init --recursive
(cd app && flutter pub get)
(cd native/engine_shim && cargo build --locked --release --target aarch64-apple-ios)
bash native/gnubg/build-ios.sh iphoneos
cp native/engine_shim/target/aarch64-apple-ios/release/libaigammon_engine.a app/ios/Frameworks/
(cd app && FIREBASE_ANALYTICS_WITHOUT_ADID=true flutter build ios --release --no-codesign)
```

Output: `app/build/ios/iphoneos/Runner.app`. Both engine archives must be
staged before building Flutter: the xcconfig force-loads them for Dart FFI.
The linker also uses `-export_dynamic` so dead-code stripping preserves the
engine entry points resolved by `DynamicLibrary.process()`; force-loading alone
produced a successful compile with missing runtime exports on Xcode 27.
This unsigned app cannot be installed on a physical iPhone.

The completed build is also packaged as
`app/build/ios/iphoneos/Backgammon-Buddy-0.16.0-22-unsigned.app.zip`.

For a simulator build on this ARM64 Mac, replace the Rust target with
`aarch64-apple-ios-sim`, pass `iphonesimulator` to the GNUbg script, copy the
Rust archive from that target directory, and use `flutter build ios --simulator`.
Device and simulator builds share staging paths, so rebuild/stage both native
libraries whenever switching destinations. Do not run these builds concurrently.

## Validation and signing

```sh
(cd app && flutter analyze)
(cd app && flutter test --exclude-tags golden)
```

Before an iPhone installation, open `app/ios/Runner.xcworkspace` in Xcode,
add the intended Apple account, select the Runner signing team, and provision
the device. Distribution requires the appropriate Apple Developer membership
and certificates/profiles. No team or signing credentials are stored here.

Online play and optional telemetry use `--dart-define` configuration documented
in `.github/workflows/ios.yml` and `firebase/DEPLOY.md`; builds without those
values leave those services unconfigured. Use the release build-number tooling
and `docs/release-readiness.md` before distributing a release.
