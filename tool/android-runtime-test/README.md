# Exact-release Android 16 KB acceptance

This standalone test project does **not** rebuild, modify, re-sign, or inject
code into Backgammon Buddy. Its UI Automator test instruments its own disposable
package and drives the separately installed release APK through Android
accessibility. Never install this harness on a user's phone: run it on a fresh,
disposable Test Lab device with no user data.

The inert `anchor` APK satisfies Test Lab's code-bearing launcher APK requirement for a
self-instrumenting test. The shipping APK is an `additionalApks` entry. The
probe refuses to continue unless it sees all of:

- `getconf PAGE_SIZE` exactly `16384` and primary ABI `arm64-v8a`;
- the expected installed version, SHA-256 certificate, and **whole APK SHA-256**;
- a local game whose real engine returns scored Top plays, an expanded board
  explanation, and a top play that enables Confirm. The harness records activating
  Confirm, without treating an enabled Hint as proof that a new turn completed.

The same run attempts an offline smoke by enabling airplane mode and disabling
Wi-Fi on the disposable device; prior settings are restored in `finally`.
`offlineCoreVerified` is true only if there was no active network before launch
and after tutor execution. If a managed target retains another network, offline
acceptance remains open even if the separate 16 KB native-runtime checks pass.

There is no fallback to translated x86, a 4 KB device, a mock engine, or a rebuilt
product. A build of this harness alone is not runtime evidence. Failure to launch,
missing evidence, APK rewriting, or any failed assertion leaves acceptance open.

## Build

Requires Java 17+, Android SDK 36, and Gradle 9.1.0 (the app's existing wrapper
can run this independent project with `-p`). Set the normal `ANDROID_HOME` SDK
location, then from the repository root:

```sh
app/android/gradlew -p tool/android-runtime-test :anchor:assembleDebug :probe:assembleDebug
```

Only `anchor/build/outputs/apk/debug/anchor-debug.apk` and
`probe/build/outputs/apk/debug/probe-debug.apk` are produced. They are local test
utilities; do not upload them to an app store or include them in a product build.

## One bounded free Test Lab run

Before submitting, independently verify billing is disabled on the **existing
Freevia project**, its Spark virtual-test quota is available, and the current
device catalog includes `MediumPhone_ps16k.arm` / API `36`. Do not substitute
the `backcompat` model. Use the Google-managed default Test Lab results bucket;
do not enable billing or create a separate paid bucket/project. Keep authentication
in the operator's existing Google tooling; no credentials belong in this project.
The managed bucket belongs to Google's Test Lab storage project. Do not send a
requester-billing override such as `x-goog-user-project` when uploading to it:
that can charge the request against the billing-disabled app project and fail
with HTTP 403 even though the managed no-cost bucket is available.

Upload the two test APKs and the exact approved release APK, then submit one
instrumentation matrix with these settings (use real GCS paths and independently
verified release values):

```json
{
  "testSpecification": {
    "testTimeout": "300s",
    "disablePerformanceMetrics": true,
    "androidInstrumentationTest": {
      "appApk": {"gcsPath": "gs://BUCKET/PREFIX/anchor-debug.apk"},
      "testApk": {"gcsPath": "gs://BUCKET/PREFIX/probe-debug.apk"},
      "testRunnerClass": "androidx.test.runner.AndroidJUnitRunner",
      "testTargets": ["class org.freevia.runtimeprobe.ReleaseRuntimeTest"],
      "orchestratorOption": "DO_NOT_USE_ORCHESTRATOR"
    },
    "testSetup": {
      "additionalApks": [{"location": {"gcsPath": "gs://BUCKET/PREFIX/app-release.apk"}}],
      "dontAutograntPermissions": true,
      "environmentVariables": [
        {"key": "expectedApkSha256", "value": "VERIFIED_RELEASE_APK_SHA256"},
        {"key": "expectedCertificateSha256", "value": "VERIFIED_SIGNER_SHA256"},
        {"key": "expectedVersionCode", "value": "VERIFIED_VERSION_CODE"}
      ],
      "directoriesToPull": ["/sdcard/Android/data/org.freevia.runtimeprobe/files/runtime-evidence"]
    }
  },
  "environmentMatrix": {"androidDeviceList": {"androidDevices": [
    {"androidModelId": "MediumPhone_ps16k.arm", "androidVersionId": "36", "locale": "en", "orientation": "portrait"}
  ]}},
  "resultStorage": {"googleCloudStorage": {"gcsPath": "gs://BUCKET/PREFIX/results"}},
  "flakyTestAttempts": 0,
  "failFast": true
}
```

Keep the request, matrix response, test XML/logs/video, and pulled `evidence.json`
plus screenshots/hierarchies under the ignored release-audit directory. A pass
must include successful JUnit results **and** the probe's exact-release/page-size
evidence. The runtime covers the local on-screen engine/tutor path; offline
acceptance requires `offlineCoreVerified=true`. It does not cover optical QR,
network multiplayer, all native plugins, or a real crash/unwinding test.

Primary references: [Test Lab instrumentation](https://firebase.google.com/docs/test-lab/android/instrumentation-test),
[self-instrumenting app requirement](https://docs.cloud.google.com/developer-device-platform/device-run/migrate),
[matrix REST schema](https://firebase.google.com/docs/test-lab/reference/testing/rest/v1/projects.testMatrices),
[Spark quotas](https://firebase.google.com/docs/test-lab/usage-quotas-pricing),
[managed results bucket](https://firebase.google.com/docs/test-lab/reference/toolresults/rest/v1beta3/projects/initializeSettings).
