# CI workflows

| Workflow | File | Trigger | Purpose |
|---|---|---|---|
| CI | `ci.yml` | push to `master`, all PRs | Six job definitions — see the breakdown below |
| Android | `android.yml` | `workflow_dispatch`, **CI success on a same-repository `master` push** | Build ARM/ARM64 APKs, distribute only with release signing and Firebase configured, and optionally prepare a signed Play bundle artifact |
| iOS | `ios.yml` | `workflow_dispatch`, **CI success on `master`** | Build the Rust engine staticlib, statically link it into `Runner`, produce an unsigned `Runner.app`, and (when configured) build a signed IPA and push it to Firebase App Distribution |

## `ci.yml` — the six jobs

Five can start independently; `online` waits on `rules`.

| Job | Runner | What it does |
|---|---|---|
| `packages` | Linux | One job definition, **four matrix legs** — `backgammon_core`, `board_vision`, `lan_play`, `match_transport` — each `dart analyze --fatal-infos` + `dart test`. `fail-fast: false`, so a push that breaks two packages reports both. `lan_play` alone runs under its `-P ci` retry preset: it is the only suite that binds real sockets. |
| `engine` | Linux | `cargo fmt --check`, `cargo clippy -p aigammon_engine -- -D warnings`, `cargo build --release` and `cargo test --release` in `native/engine_shim`, then `engine_bindings` analyze, unit tests, and `dart test -P engine` against the freshly built `.so` with the production nets. |
| `app` | Linux | `flutter analyze` + `flutter test -x golden`. The goldens are excluded here on purpose and run in `goldens` instead; between the two jobs the app suite is covered whole. |
| `goldens` | **Windows** | `flutter test --tags golden`, on a **pinned** Flutter version. The golden PNGs are Windows-generated and the comparison is byte-for-byte, so the runner compares like with like rather than needing a tolerance wide enough to swallow a real regression. |
| `rules` | Linux | **Emulator leg 1**, and first: the `firestore.rules` mocha suite against a firestore-only emulator. Seconds. `online` `needs:` this, so a broken rules file goes red before four toolchains are installed. |
| `online` | Linux | `online_client` analyze + unit tests, then **emulator legs 2–4** inside one `firebase emulators:exec` (`firebase/ci-emulator-suites.sh`): the `online_client -P emulator` transport suite, the app's two-client E2E on the real-time listener path, and that same E2E once more with `AIGAMMON_E2E_LISTEN=0` so the polling fallback is actually exercised. The heaviest leg — Node + Java + Dart + Flutter. |

`firebase-tools` is pinned to the same major.minor in `rules` and `online`; the
two must not drift onto different emulator versions.

All Flutter test and distribution jobs use **Flutter 3.44.8**, including the
golden tests. Upgrade those pins together and regenerate goldens deliberately.

## Distribution is gated on CI

`android.yml` and `ios.yml` no longer trigger on `push`. They trigger on
`workflow_run` — CI *completing* on `master` — and their single job is guarded
by CI success, `event == 'push'`, `head_branch == 'master'`, and the head
repository matching this repository. A PR branch can also be named `master`;
the branch trigger alone does not establish trust. These jobs have signing and
distribution secrets, so they must not check out untrusted PR heads.
Previously all three
workflows raced the same push in parallel, so a commit that broke the test suite
still built and distributed a binary; testers got a broken build before anyone
noticed the red X.

Two details this shape forces:

* Each build job checks out `github.event.workflow_run.head_sha`. A
  `workflow_run` job otherwise checks out the **default branch**, which is not
  necessarily the commit CI validated.
* `workflow_dispatch` still builds unconditionally, from `github.sha` — the
  manual escape hatch is intact.

Folding the build jobs into `ci.yml` with `needs:` was the alternative. It was
rejected because `ci.yml` also runs on every pull request (where a three-ABI
Rust cross-compile is pure waste) and because the manual dispatch entry point
would have dragged the whole test matrix along with it.

All three workflows declare `permissions: contents: read`, a
`concurrency` group with `cancel-in-progress`, and per-job `timeout-minutes`.
The distribution workflows key their concurrency group on the **commit**, not
the ref: under `workflow_run` every event reports `github.ref` as the default
branch, so a ref key would let a newer master commit cancel an older commit's
distribution mid-upload.

## `android.yml` — how it builds

1. Checks out with `submodules: recursive` (the engine needs `native/wildbg`).
2. Installs the Rust Android targets + `cargo-ndk`, then installs NDK
   `28.2.13676358` via `sdkmanager` and points `ANDROID_NDK_HOME` at it. That
   revision is also pinned literally as `ndkVersion` in
   `app/android/app/build.gradle.kts` — **edit the two together**, or the engine
   is cross-compiled against one NDK and packaged for another.
3. `cargo ndk -t arm64-v8a -t armeabi-v7a -o app/android/app/src/main/jniLibs build --release`
   cross-compiles `libaigammon_engine.so` straight into the Flutter jniLibs
   layout. At runtime the app loads it with
   `DynamicLibrary.open('libaigammon_engine.so')`. **Two ABIs, not three:**
   x86_64 devices/emulators are outside this distribution target set.
4. `flutter build apk --release --split-per-abi --target-platform android-arm,android-arm64`,
   producing `app-arm64-v8a-release.apk` and `app-armeabi-v7a-release.apk`.
   Flutter otherwise defaults to all three ABIs, independently of which Rust
   libraries exist. The workflow inspects each finished APK for its engine
   library before uploading artifacts.
5. Uploads **both** per-ABI APKs as the `aigammon-apk` artifact, and distributes
   the `arm64-v8a` one to the testers group (App Distribution takes one file and
   does no ABI matching; `armeabi-v7a` stays available from the artifact).
   Firebase distribution requires both Firebase credentials and release signing.

### Preparing a Google Play bundle

Manually dispatch Android with **build_appbundle = true** to also build a signed
ARM/ARM64 `.aab`. All four Android signing secrets are mandatory for this option;
the workflow fails clearly if they are missing. The result and its separate
Dart symbols are saved in `aigammon-play-bundle-<run number>`. This prepares an
artifact only; it does not submit to Google Play. APK tester distribution still
runs when configured. Complete [release readiness](../../docs/release-readiness.md)
before a store submission.

### Signing

Release signing is **repository-secret gated**, like the Firebase and iOS paths.
The `Configure release signing` step decodes the upload keystore and writes
`app/android/key.properties`; `app/android/app/build.gradle.kts` picks it up and
selects the real `release` signing config. When the secrets are absent the step
prints a `::warning::` and Gradle falls back to Flutter's **debug** keystore, so
the job stays green — but that APK cannot be published and is not automatically
distributed to testers. This keeps a temporary runner's debug key from creating
an install that the next signed build cannot update in place.

Four secrets, all required together:

| Secret | Value |
|---|---|
| `ANDROID_KEYSTORE_BASE64` | base64 of the upload `.jks` |
| `ANDROID_KEYSTORE_PASSWORD` | keystore password |
| `ANDROID_KEY_ALIAS` | key alias (`aigammon-upload`) |
| `ANDROID_KEY_PASSWORD` | key password |

Full instructions — including how to generate your own keystore — are in
**`app/android/KEYSTORE_SETUP.md`**. `app/test/android_signing_test.dart` guards
the wiring.

### Neural nets

The production ONNX nets ship as Flutter **assets** (`app/assets/nets/`), so the
APK bundles them automatically. No CI work is needed for nets.

## `ios.yml` — how it builds

Runs on `macos-latest` (Rust cross-compilation to `aarch64-apple-ios` and the
Xcode build both need macOS).

1. Checks out with `submodules: recursive` (the engine needs `native/wildbg`).
2. Installs the Rust `aarch64-apple-ios` target and builds the engine staticlib:
   `cargo build --release --target aarch64-apple-ios` in `native/engine_shim`.
3. Copies `libaigammon_engine.a` to **`app/ios/Frameworks/`** — the path the
   `-force_load` in `app/ios/Flutter/Release.xcconfig` expects. Unlike Android
   (a `.so` opened by path at runtime), iOS forbids `dlopen`, so the engine is
   linked **statically** into `Runner` and its symbols are resolved at runtime
   via `DynamicLibrary.process()`. See `native/README.md` "iOS".
4. `flutter build ios --release --no-codesign` produces `Runner.app`. Same
   online-play dart-defines as `android.yml` (repo **variables**
   `AIGAMMON_FIREBASE_PROJECT` / `AIGAMMON_FIREBASE_API_KEY`).
5. `Runner.app` is a directory tree with internal symlinks, so it is packaged
   with `ditto -c -k --keepParent` (upload-artifact mangles the symlinks
   otherwise) and uploaded as the **`aigammon-ios-unsigned`** artifact.

> An **unsigned `.app` cannot be installed on an iPhone.** Signing is the
> user-gated step below; without the secrets, CI stops after the unsigned
> artifact.

### Signing + Firebase distribution (secret-gated)

The signing/distribution path is **skipped** until **four** repository secrets
are all present **together with** the existing `FIREBASE_SERVICE_ACCOUNT`
(reused from Android) — the gate requires all five so a missing service account
skips cleanly instead of failing at the distribute step. When they exist, the
workflow imports the certificate into a throwaway keychain, installs the
provisioning profile, derives the team id / profile name / UUID from the profile
itself (nothing hard-coded), and writes an `ExportOptions.plist` for an
**ad-hoc** export. It then builds the signed IPA in three explicit commands
rather than `flutter build ipa`: `flutter build ios --release --no-codesign`
(compile), then `xcodebuild … archive` with **manual** signing settings passed
on the command line (`CODE_SIGN_STYLE=Manual`, `DEVELOPMENT_TEAM`,
`PROVISIONING_PROFILE_SPECIFIER`, `CODE_SIGN_IDENTITY`), then `xcodebuild
-exportArchive`. This is necessary because `Runner.xcodeproj` ships
`CODE_SIGN_STYLE=Automatic` with no `DEVELOPMENT_TEAM`, and those target-level
pbxproj settings outrank xcconfig — only command-line build settings override
them, so `flutter build ipa`'s internal archive would fail with "Signing for
Runner requires a development team" on the headless runner. The IPA is uploaded
as `aigammon-ios-signed` and distributed to the Firebase **`testers`** group.

| Secret | What it is |
|---|---|
| `IOS_CERT_P12_BASE64` | base64 of the **Apple Distribution** certificate exported as a `.p12` |
| `IOS_CERT_PASSWORD` | the password set when exporting that `.p12` |
| `IOS_PROVISIONING_PROFILE_BASE64` | base64 of the **ad-hoc** `.mobileprovision` (expected profile name `aigammon-adhoc`, bundle id `com.xmelon.aigammon`, with tester device UDIDs) |
| `FIREBASE_IOS_APP_ID` | the iOS App ID from the Firebase console (`1:…:ios:…`) |

Producing these requires an **Apple Developer Program** membership and is done
by hand once. The exact enrollment, profile-creation, export, base64-encoding,
and Firebase-console steps live in **`firebase/DEPLOY.md` → "iOS distribution"**.

## Firebase App Distribution setup

The distribution step is **secret-gated**: it runs only when both
`FIREBASE_SERVICE_ACCOUNT` and `FIREBASE_ANDROID_APP_ID` repository secrets are
present. Until then the job builds and uploads the APK artifact and logs a clear
"skipping distribution" message. To enable distribution:

1. **Register the Android app in Firebase.** In the
   [Firebase console](https://console.firebase.google.com/project/aigammon)
   open **Project overview → Add app → Android** and register package name
   `com.xmelon.aigammon_app`. You do **not** need to download or commit
   `google-services.json`: the app bundles no Firebase SDK, and App Distribution
   of a raw APK only needs the App ID + a service account. Copy the generated
   **App ID** — it looks like `1:1234567890:android:abcdef0123456789`.

2. **Create the testers group.** In **Release & Monitor → App Distribution →
   Testers & Groups**, create a group whose alias is exactly **`testers`**
   (the workflow passes `groups: testers`) and add tester emails.

3. **Create a service account key.** In **Project settings → Service accounts**,
   use the **Firebase Admin SDK** service account and **Generate new private
   key** to download a JSON file. (For least privilege you can instead create a
   dedicated service account in Google Cloud IAM granted the **Firebase App
   Distribution Admin** role and download its key.)

4. **Add the GitHub secrets** (repo **Settings → Secrets and variables →
   Actions → New repository secret**):
   - `FIREBASE_ANDROID_APP_ID` — the App ID from step 1 (`1:…:android:…`).
   - `FIREBASE_SERVICE_ACCOUNT` — the **entire contents** of the service-account
     JSON file from step 3 (paste the JSON as the secret value).

Once both secrets exist, the next run of `android.yml` distributes the release
APK to the `testers` group automatically.

## Debug symbols (release builds)

Both release builds pass `--obfuscate --split-debug-info=build/symbols/<platform>`.
That shrinks the binary and removes Dart symbol names from it — which means a
stack trace from a shipped build is **unreadable until it is symbolicated**.

Each build therefore uploads its symbols as their own artifact, keyed by run
number (the same value as the build number baked into the app), so a trace can
be matched to the exact build that produced it:

| Artifact | From |
|---|---|
| `aigammon-symbols-android-<run>` | `android.yml` |
| `aigammon-symbols-ios-<run>` | `ios.yml` |

To read a trace a tester copied out of **Settings → Diagnostics** (see
`app/lib/diagnostics/crash_log.dart`):

```bash
# download and unzip the matching symbols artifact first
flutter symbolize -d <symbols-dir>/app.android-arm64.symbols -i trace.txt
```

Obfuscation also means `runtimeType.toString()` no longer returns real class
names. The only uses in this repo are diagnostic string interpolation, so the
effect is degraded log text, not changed behaviour — nothing dispatches on it.
