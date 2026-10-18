# Extended iOS simulator validation — 2026-10-19

Status: **232 distinct simulator cases passed across exploratory runs and corrected reruns.** No failure remains in the tested scope. This includes injected-service UI regressions, protocol/serialization tests, actual native services, and manually reviewed native share sheets; it is not 232 complete end-to-end matches.

## Environment and method

Flutter 3.44.8 / Dart 3.12.2, Xcode 27.1, ARM64 iOS 27.1 simulator `Backgammon Buddy E2E` (`BDC75BAD-2FF2-4EBB-ABEA-2C9416110FBB`). Both real native engines are staged for the simulator. This extends the prior [iOS report](ios-e2e-2026-10-18.md).

The expanded suite distinguishes injected-service UI regressions from native integrations. Settings, practice, history, online/Nearby UI, privacy, feedback, and export suites retain their existing injected collaborators and in-memory databases. Separate cases exercise actual iOS sockets, local Auth/Firestore, the AI engine, clipboard, camera enumeration/fallback, URL-handler availability, and native sharing. Passing a mocked UI case does not establish live cloud or hardware behavior.

## Findings and fixes

- Home overflowed vertically in landscape. Wide, short screens now place the brand beside a three-column menu. Button heights adapt to available height while retaining at least 48px targets. Portrait keeps its existing layout. Four host regressions cover 844×390 and 568×320 at normal and 2× text.
- Maltese app text was declared supported, but Flutter’s Material/Cupertino framework delegates could not load it. Framework delegates now fall back to English only when the SDK lacks that language, while the app locale and Maltese strings remain intact. Regression coverage loads every delegate for all 28 shipped locales and builds a Maltese Material screen.
- Synthetic 320px/1× diagnostics and privacy tests retained the simulator's larger physical cutout insets. The corrected fixtures set and restore their own safe-area metrics; this was a test setup problem, not a diagnostics product defect.
- Locale tests use the BackButton widget rather than an English-only Back tooltip. The QR test waits for route animation to finish before tapping its manual-entry fallback.
- The ten-minute fake-clock lobby budget test remains a host test and skips on live bindings. Native share cases require explicit opt-in and a reviewer; they do not silently wait for interaction during routine runs.

## Results

| Scope | Evidence so far |
| --- | --- |
| Remaining feature regression suites | 160 passed in iOS Simulator |
| Local Auth/Firestore protocol and rules | 7 passed in iOS Simulator |
| Natural AI match | Passed; game ended through bearing off and its result persisted |
| Native clipboard | Passed through the real iOS clipboard |
| Locale/layout | 56 passed: all 28 shipped languages in portrait and landscape, Home/setup/settings at normal and 2× text |
| Framework locale compatibility | 2 passed on host and simulator; every framework delegate loads all 28 languages, Maltese retains its app locale |
| Native camera fallback | Passed: actual camera plugin reports no simulator cameras, fallback renders and returns to manual entry |
| Native HTTPS handler | Passed: iOS browser handler is registered; no public issue submitted |
| Native export share sheets | 3 passed: actual SGF, MAT and XG sheets inspected and cancelled; each returned dismissed |
| Host viewport regressions | 14 diagnostics/privacy cases passed; 4 landscape Home cases passed |
| Static analysis | Changed source/test directories: no issues |

The first exploratory run exposed the landscape Home defect and test-driver issues. The corrected locale sweep then exposed the Maltese framework-support defect. All affected cases passed their targeted reruns. Native share attempts initially timed out while Device Hub accessibility queries were unavailable or another simulator was selected; a preconnected screenshot-based review succeeded for all three formats. Initial failed logs are retained rather than overwritten.

Evidence files under `app/build/ios-e2e/`:

- `extended-validation.log`: 160 feature cases, 7 local-backend cases, natural AI completion and native clipboard passed; initial locale/driver failures are historical.
- `extended-corrected-rerun.log`: 54 locale/viewports plus 3 native-service cases passed; the two historical Maltese failures are resolved by the final smoke run.
- `final-smoke-simulator.log`: Maltese portrait/landscape, both framework regressions, and all 3 native-service cases passed before the manual-sheet attempt stalled. The later manual run below resolves those remaining cases.
- `native-share-reviewed.log`: all 3 manually reviewed native sheets passed. `native-mat-share.png` and `native-xg-share.png` retain example captures.
- `remaining-host-regressions.log`, `landscape-home-final.log`, `framework-locales-host.log`: passing host regressions.
- `remaining-complete-analysis.log`: no static-analysis issues in `lib`, `test`, and `integration_test`.

The real local-backend match ran over the listener path, with 148 events, 74 rolls, and 2,136 convergence comparisons. The dropped-listener fallback also completed. Adversarial cases checked rules-refused writes, illegal opponent events, doubling in cubeless play, tampered reveals, and future-roll entropy squatting. The emulator's inflated watch-delivery count is not a production billing measurement.

## Reproduce

Start disposable Auth and Firestore emulators using `firebase/firebase.json` and project `demo-aigammon`, listening on localhost ports 9099 and 8080. No production credentials are used. With the simulator libraries staged and the PATH/RUBYOPT setup from [local build instructions](ios-local-build.md), run from `app/`:

```sh
flutter test integration_test/ios_extended_validation_test.dart \
  -d BDC75BAD-2FF2-4EBB-ABEA-2C9416110FBB --no-pub --reporter expanded
```

Native share-sheet validation is separate and requires cancelling each real iOS sheet without selecting a recipient:

```sh
flutter test integration_test/ios_device_services_test.dart \
  -d BDC75BAD-2FF2-4EBB-ABEA-2C9416110FBB --no-pub \
  --dart-define=AIGAMMON_MANUAL_SHARE=true --reporter expanded
```

Evidence is retained locally under `app/build/ios-e2e/`; it is excluded from Git. Initial failing exploratory logs are preserved alongside corrected reruns.

## Physical iPhone acceptance still required

- Optical QR scanning with actual focus, exposure, lighting, orientation, torch and camera permission states.
- Two real devices on Wi-Fi: local-network permission allow/deny behavior, UDP/broadcast discovery, typed/QR joining, disconnect/reconnect and network changes. Loopback sockets and discovery do not establish this. The repository documents raw-UDP iOS discovery as best-effort without multicast entitlement/provisioning; see `native/README.md`.
- AirDrop and recipient-app delivery, where real devices or configured recipient apps/accounts are needed. Cancelling a native sheet proves neither delivery nor external app import compatibility.
- Signed device installation/cold launch and both native engines on actual iPhone CPUs; hardware performance, thermals, battery and touch/VoiceOver acceptance across target devices/OS versions. The simulator evidence is for iOS 27.1 only.

## Other limits that do not inherently need an iPhone

This local build has no `GoogleService-Info.plist` or production service configuration. Production Firebase authentication/matches, real opt-in telemetry/Crashlytics, production retention/deletion, and deployment-specific TLS/quota behavior need configured services. The local emulator tests do not establish those.

Feedback preview and URL construction are tested without creating public GitHub issues. Native browser-handler availability does not establish a submitted issue. No public issue, email, or recipient share is sent during these tests. Locale layout and bundle checks do not establish linguistic correctness or exhaustive screen-reader coverage.

Physical-board Buddy setup/calibration/game and its microphone/voice workflow are disabled in v1. The gate tests confirm direct routes cannot open those services. These are retained v2 features, not enabled v1 features claimed as hardware-validated.
