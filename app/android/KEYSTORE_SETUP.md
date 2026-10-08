# Android release signing

The release APK is signed with an **upload keystore**. Until the four repository
secrets below exist, `android.yml` skips the signing step and Gradle falls back
to Flutter's **debug** keystore with a loud warning (see the gate at the top of
`app/android/app/build.gradle.kts`). A debug-signed APK installs fine for
testers but **cannot be published**, and — because every machine has a different
debug key — an app once installed from one debug-signed build cannot be updated
by another. CI retains these builds as downloadable artifacts, but skips
automatic Firebase distribution unless release signing is configured.

> Back up the keystore and credentials. With **Play App Signing**, the upload
> key and the app signing key are distinct: Google supports resetting a lost
> upload key. APKs distributed directly still need the same signing identity
> for compatible updates. See [Android's signing guide](https://developer.android.com/studio/publish/app-signing).

---

## 1. A keystore already exists locally

The new Freevia identity `org.freevia.backgammonbuddy` uses a dedicated upload
key generated on 2026-10-09. The certificate subject is
`CN=Backgammon Buddy Upload, O=Freevia`; its SHA-256 digest is
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.

| file | contents |
|---|---|
| `app/android/freevia-backgammon-buddy-upload.jks` | the private upload keystore |
| `app/android/key.properties` | the generated random password, alias and keystore path |

Both files are **git-ignored** (`app/android/.gitignore`). The four GitHub
repository secrets were configured directly from them without printing the
password or writing a base64 copy. Keep a secure owner-controlled backup. Prior
experimental signing material remains locally for recovery and is not used for
Freevia builds. If generating another key before release, see §3.

## 2. Add the four repository secrets

GitHub → the repo → **Settings → Secrets and variables → Actions → New
repository secret**. Create each of these:

| Secret | Value |
|---|---|
| `ANDROID_KEYSTORE_BASE64` | base64 of the Freevia upload keystore |
| `ANDROID_KEYSTORE_PASSWORD` | `storePassword` from the private `key.properties` |
| `ANDROID_KEY_ALIAS` | `freevia-backgammon-buddy-upload` |
| `ANDROID_KEY_PASSWORD` | `keyPassword` from the private `key.properties` |

All four must be present. The workflow checks for all four together, so a
partially-filled set skips signing rather than failing the build half-way.

Once they are set, the next push to `master` produces a **release-signed** APK;
the job log prints `Release signing ENABLED`. Set `RELEASE_BUILD_NUMBER_BASE`
or provide manual `build_number` above previous releases first; signed builds
fail if no explicit baseline/override is configured.

## 3. Generating your OWN keystore instead

Nothing about the generated one is special — replace it freely, as long as you
do so **before** any signed build reaches a real user.

```bash
keytool -genkeypair -v \
  -keystore freevia-backgammon-buddy-upload.jks \
  -keyalg RSA -keysize 3072 -validity 10000 \
  -alias freevia-backgammon-buddy-upload \
  -dname "CN=Backgammon Buddy Upload, O=Freevia"
```

`keytool` prompts for the password. Use a randomly generated value stored in a
password manager. For automation, use `-storepass:env` and `-keypass:env` with a
private process environment; keep credentials out of command arguments and logs.

Then base64 it for the secret:

```bash
# Linux / macOS
base64 -w0 freevia-backgammon-buddy-upload.jks > freevia-backgammon-buddy-upload.jks.base64.txt

# Windows PowerShell
[Convert]::ToBase64String([IO.File]::ReadAllBytes('freevia-backgammon-buddy-upload.jks')) |
  Set-Content freevia-backgammon-buddy-upload.jks.base64.txt -NoNewline
```

…and fill in the four secrets from §2 with your own values.

> **Password characters.** The credentials travel into a Java `.properties`
> file, where a backslash is an escape character. The CI step escapes
> backslashes, but the simplest thing is to use a password without them.

## 4. Signing a release build on this machine

Create `app/android/key.properties` (git-ignored) by hand:

```properties
storeFile=freevia-backgammon-buddy-upload.jks
storePassword=<STORE_PASSWORD>
keyAlias=freevia-backgammon-buddy-upload
keyPassword=<KEY_PASSWORD>
```

`storeFile` is resolved relative to `app/android/`. With the file in place,
`flutter build apk --release` picks up the real signing config; without it, the
debug-key fallback and its warning apply.

## 5. Verifying what a build was signed with

```bash
apksigner verify --verbose --print-certs app/build/app/outputs/flutter-apk/app-release.apk
```

Use `apksigner` from the Android SDK build-tools directory (or add it to PATH).
The debug key shows `CN=Android Debug, O=Android, C=US`. The upload key shows
the `-dname` you supplied above. Record its SHA-256 certificate digest with the
release. Unlike `keytool -jarfile`, this verifies modern APK signing schemes.

For a Google Play bundle, manually dispatch the Android workflow with
`build_appbundle` enabled. It requires all four signing secrets and saves an AAB
plus its Dart symbols as an artifact; it does not upload to Google Play. See
[release readiness](../../docs/release-readiness.md) for the remaining checks.

The workflow builds a universal ARMv7/ARM64 APK so its version code equals the
AAB's. Flutter's `--split-per-abi` adds ABI offsets; do not mix those output codes
with the bundle sequence. On 2026-10-09, the latest old-repository tester artifact
had codes 2028 (ARM64) and 4028 (x86_64), and used an Android Debug certificate.
The Freevia repository baseline is 10000, above those observed codes. The Freevia
Play Console contained no prior Backgammon app when inspected on 2026-10-09.
The owner-selected `org.freevia.backgammonbuddy` package is a separate install
from the experimental app, preserving its existing data. It does not import the
older app's history automatically.

## 6. The other file you drop in by hand: `google-services.json`

`key.properties` is not the only git-ignored, generated file `app/android`
expects. `app/google-services.json` is the second, and it is the same tier: not
committed, written by CI from repo variables/secrets, supplied by hand on a
developer machine.

It is **not** a credential — project id, project number, Android app id and the
Web API key all ship inside every APK already — but it is what the
`com.google.gms.google-services`, `com.google.firebase.crashlytics` and
`com.google.firebase.firebase-perf` Gradle plugins read, and those plugins are
what capture a native crash in the Rust engine `.so`.

**Get it, do not write it:** Firebase console → ⚙ *Project settings* → *Your
apps* → the Android app (`org.freevia.backgammonbuddy`) → **google-services.json**.
Save it at `app/android/app/google-services.json`. A hand-assembled file whose
`package_name` does not match `applicationId` exactly fails the build with *"No
matching client found for package name"*.

Without it the Android build still succeeds — Gradle logs a `NOTE:` and skips
all three plugins, leaving Dart-only crash reporting and no automatic
performance traces. Full details, including the CI generation step and the
still-open native-symbol-upload gap, are in `firebase/DEPLOY.md`.

---

**Related:** `app/test/android_signing_test.dart` asserts this wiring stays in
place (the release build type reads `key.properties`, the debug fallback stays
gated, the keystore material stays git-ignored, and this document keeps naming
the same four secrets `android.yml` consumes).
