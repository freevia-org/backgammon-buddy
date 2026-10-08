# Release readiness — 2026-10-08

**Status: preparation complete for review; store submission is not yet verified.**
This audit inspected source and ran local checks. It did not inspect repository
secret values, developer accounts, deployed Firebase settings, or store listings;
it did not build/sign a mobile artifact, distribute, publish, or change a version.
See the [code review](code-review-2026-10-08.md) for code fixes and test results.

## Prepared in this round

- Android and iOS automatic release jobs now require successful CI from a
  **same-repository push to master**. A PR whose branch is named master cannot
  reach these privileged jobs. Manual dispatch remains available to repository
  maintainers. This addresses the secret exposure risk of running untrusted
  heads through `workflow_run`. [GitHub trigger documentation](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#workflow_run).
- Flutter tests, goldens, Android builds, and iOS builds use **3.44.8** together.
- Android explicitly builds **ARMv7 and ARM64** APKs, matching the Rust libraries,
  and checks the engine is present in each finished artifact. Flutter's default
  split build also emits x86_64, which previously lacked our engine.
  [Flutter Android deployment](https://docs.flutter.dev/deployment/android).
- Automatic Android tester distribution now requires release signing. Missing
  credentials still allow a debug-signed diagnostic APK artifact, never a Play
  bundle or automatic tester update.
- Manual Android dispatch offers **build_appbundle**: a signed ARM/ARM64 AAB
  plus separate Dart symbols, with mandatory signing credentials. It does not
  upload to Google Play. New Play apps use app bundles.
  [Android App Bundles](https://developer.android.com/guide/app-bundle).
- Settings now opens Flutter's licenses page. The shipped assets include the
  upstream wildbg MIT and Apache-2.0 texts, engine/shim attribution and net
  provenance. The license texts are tested against the pinned upstream files;
  this does not conclude the model or native-transitive license review.

## Outstanding release gates

| Priority | Gate | Evidence and action |
|---|---|---|
| P1 | Privacy policy and data disclosures | No policy document, public policy URL, or in-app policy entry was found. Complete the inventory below, select a privacy contact and retention policy, publish the policy, expose it in the app, and complete Play Data safety / Apple App Privacy. Do not claim the configured mobile app collects no data. |
| P1 | Remaining dependency/model notices | The in-app entry and direct wildbg notices are now bundled. Review Rust-transitive and platform-native notices, and confirm redistribution terms for the production models/training inputs. Net source identity was verified; provenance alone does not establish license permissions. Include any additional required texts before release. |
| P1 | Signed Android acceptance | Run the updated workflow; verify signing certificate, version code, bundled nets/engine, merged permissions/features, and installation plus update over the previous tester release. Build the AAB option and inspect the resulting bundle before submission. Existing secrets and account access are unverified, not assumed absent. |
| P1 | iOS store artifact | The current iOS workflow produces an unsigned app and optionally an **ad-hoc** IPA for registered tester devices. An App Store distribution profile/export and App Store Connect validation still need to be exercised. Verify selected Xcode/SDK, the static engine symbols, device startup, and archive privacy report. |
| P1 | Real-device tutor and Buddy acceptance | Complete the [Buddy protocol](buddy-mode-test-protocol.md) and the tutor smoke checks below on Android and iOS. CI cannot certify camera, microphone, local-network prompts, thermal load, lifecycle behavior, or speech. Camera dice recognition remains experimental: typed dice are the supported path. |
| P2 | Native crash symbolication | Android capture and symbol generation are configured, but native symbol upload is still an explicit gap in [Firebase deployment](../firebase/DEPLOY.md). Verify a deliberate test crash is symbolicated using the exact release; keep Dart symbols and native symbols/dSYMs beyond the CI artifact retention window. |
| P2 | Distribution metadata | Confirm store identity/contact, screenshots, age ratings, supported countries/platforms, support URL and review instructions. Android id is `com.xmelon.aigammon_app`; iOS id is `com.xmelon.aigammon`. Choose and tag the next version only after the candidate is accepted. |
| P2 | Windows distribution | Windows is a development target today: no Windows installer/signing CI or clean-machine acceptance evidence. Decide whether it is a public launch platform before advertising downloads. |

Google Play requires an accessible policy in the app and in the listing, with
accurate data/SDK disclosures and retention/deletion information. Apple's privacy
details also require a public policy URL and disclosure of relevant third-party
practices. These are submission gates, not a finished policy drafted from unknown
business decisions. [Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy](https://developer.apple.com/app-store/app-privacy-details/).

## Data inventory to finish before policy writing

| Feature | Source behavior | Decision or verification needed |
|---|---|---|
| Local games, analysis, settings, diagnostics | SQLite and app-local files (`app/lib/data`, `app/lib/diagnostics`). History deletion is local. | Describe storage/backup, deletion, and what diagnostics the user can share. |
| Online matches | Firebase anonymous identity and Firestore match/event/roll records (`packages/online_client`, `firebase/firestore.rules`). Rules deny client-side deletion. | Establish retention and an administrative deletion process; determine applicable account-deletion requirements for the chosen account experience. Local History deletion does not erase Firestore records. |
| Usage and reliability telemetry | `initializeObservability` enables Analytics, Performance and Crashlytics on configured mobile builds (`app/lib/analytics/firebase_observability.dart`). No in-app collection choice was found. | Review SDK defaults, identifiers, data destinations and region-specific consent needs; decide and implement collection controls before release where required. |
| Buddy camera/microphone | Camera frames are processed locally; optional audio is reduced to a transient dice-sound hint (`app/lib/buddy`). | Verify the shipped binary behaves this way, state the purposes clearly, and test refusals/backgrounding. Permission strings are present on Android/iOS. |
| Nearby networking / QR | Local UDP/WebSocket traffic and optional camera scanning (`packages/lan_play`). | Describe local-network usage; test iOS permission denial and direct-address/QR fallback when discovery fails. |
| Feedback | Opens a user-reviewed GitHub issue (`app/lib/feedback`). | Explain when diagnostic details leave the device and that submitted public issues may be visible to others. |

## Candidate verification sequence

1. Record the candidate commit, submodule pin, lockfiles, app version/build number,
   enabled Firebase configuration (names only), and checks that passed. Preserve
   the artifacts and symbols together. Confirm version codes exceed prior store
   uploads rather than assuming a fresh workflow counter is sufficient.
2. Run CI including Firestore emulator unit/E2E legs. Then build the signed mobile
   candidate from the same commit. Manual dispatch bypasses the CI dependency, so
   record the corresponding CI result explicitly.
3. Android: use `apksigner verify --verbose --print-certs` on the APK; inspect
   `aapt dump badging` for INTERNET and optional camera/microphone hardware.
   Verify production nets and each target ABI's `libaigammon_engine.so`.
4. Android: validate native ELF segment alignment and APK packaging, and run on a
   16 KB page-size device/emulator. NDK r28 alone is not proof for every bundled
   library. Use Android's documented `llvm-objdump` and
   `zipalign -v -c -P 16 4 <apk>` checks. The official page checked on this audit
   date lists February 1, 2027 as the update-blocking deadline; recheck at release.
   [16 KB page-size guidance](https://developer.android.com/guide/practices/page-sizes).
5. iOS: record `xcodebuild -version` and SDK version. Apple's current submission
   requirement is Xcode 26+ with the iOS 26+ SDK; the app's iOS 15 deployment target
   is distinct from that SDK requirement. Generate Xcode's privacy report and
   inspect required-reason APIs/manifests contributed by plugins and native code.
   [Apple requirements](https://developer.apple.com/news/upcoming-requirements/),
   [privacy manifests](https://developer.apple.com/documentation/bundleresources/privacy-manifest-files).
6. On each launch platform, finish one computer match and one multiplayer match;
   return to History, reopen analysis, and verify a save survives leaving the game
   immediately after the result. Exercise offline startup, reconnect, permission
   refusal, background/resume and interrupted engine initialization.
7. Tutor smoke: enable each coaching option separately; preview and explain a
   candidate; stage/undo a different move; verify hints use the correct player
   and position; inspect opponent commentary; review an unavailable evaluation;
   ensure cubeless games do not offer cube guidance; reopen post-game explanations.
   Use small screens and enlarged text, and verify feedback does not obscure play.
8. Complete store forms and policy/notices; prepare review notes describing local
   play, invite-code online play, typed Buddy dice and optional permissions. Upload
   only after all applicable gates have evidence and the release owner approves
   that concrete candidate.

## Verification limits of this round

The new release tests guard workflow trust/signing/ABI declarations and existing
Android config tests. They do not execute GitHub Actions or prove a signed binary
works on a phone. APK/AAB inspection now runs in the workflow itself. No Android
NDK build, macOS/Xcode archive, 16 KB device run, deployed-backend check, or store
submission was performed during this review.
