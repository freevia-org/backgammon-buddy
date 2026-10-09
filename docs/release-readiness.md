# Release readiness — 2026-10-09

**Status: tutor implementation, the Freevia online service and signed Android
artifact validation are complete. Android device acceptance and store preparation
are recorded below; physical Buddy, 16 KB runtime and Apple gates remain open.
The app has not been submitted for review or released.** Publisher is **Freevia**, source is
<https://github.com/freevia-org/backgammon-buddy>, policy is
<https://freevia.org/backgammon-buddy/privacy/>, and support is
<https://freevia.org/backgammon-buddy/support/>. This report does not claim store release.
The app identity is `org.freevia.backgammonbuddy` on Android and iOS. First-party
source is MIT licensed; third-party components retain their own licenses.
Both Git remotes point to the Freevia repository. A new Freevia upload certificate
and signing secrets are configured, with build-number baseline 10000. The signed
Android build exposed an extra x86_64 packaging issue; commit `1b17b39` restricts
release packaging to the two supported ARM ABIs while preserving debug emulator
support. Final source `e6c8749b39273604d0a1799f27083912f96b5bec` passed all 11 CI
jobs and produced the signed APK and Play bundle at `0.14.0+10017`. Both passed
independent identity, signature, ABI, native alignment, branding and notice
checks; APK ZIP alignment and bundle validation also passed. The final change
removes two unused advertising-service permissions; application behavior is
unchanged from the `10015` candidate used for core functional acceptance. The final APK updates the
new package without uninstalling the separate legacy tester app.

The dedicated Firebase project `backgammon-buddy-freevia` belongs to the Google
organization administered by `info@freevia.org`. EU Firestore storage, anonymous
Authentication, retention rules and authenticated deletion controls are deployed.
Two GitHub OIDC cleanup dry-runs and the first natural scheduled apply passed.
Independent cloud reads confirmed deletion of two disposable identities and
their complete match tree. The two REST online configuration values are set for
the final candidate; optional telemetry remains unconfigured.
An independent alert monitor is prepared as optional operations tooling
and is not deployed. Authentication processing is in the
US, with Google's separate retention disclosed; see the
[deployment record](../firebase/DEPLOY.md) and [operations](privacy-cleanup-operations.md).

A Backgammon Buddy draft exists in Freevia's Google Play account. The owner
approved ages 13 and over, IARC terms, and Google's default installer protection.
IARC generated ESRB Everyone and PEGI 3 ratings; the declared target audience is
13 and over. Listing text, artwork, policy/contact URLs and access instructions
are saved. Data Safety declares five optional collected categories, and the
Advertising ID answer is No; the Console confirmed both forms saved. An internal
release draft contains the processed `10017 (0.14.0)` AAB, release notes and
symbols; seven actual app screenshots are saved in tutor-first order. Play
preview reports no artifact error, with only a warning that no testers are
configured. Tester delivery and review/rollout remain pending; Save and publish
was not pressed. Apple
Developer access is not ready, so iOS builds remain unsigned and cannot establish
App Store readiness.
The product/privacy/support routes were deployed and independently verified HTTP
200 with the expected distinct page titles; privacy@freevia.org and
support@freevia.org are the existing Freevia contacts.
The approved policy/support update is live in
[deployment 89b9ac90](https://89b9ac90.freevia.pages.dev), verified on freevia.org
at 23:48:18 UTC on October 8 (October 9 locally). It covers 30-day EU match
availability/deletion handling, separate US Authentication retention, local-data
preservation, unencrypted nearby traffic, GitHub draft transmission and speech
fallback. The support page links the Freevia MIT license. Only the two Backgammon
policy/support HTML files changed; the verified prior deployment's homepage,
QC Remote pages, other apps, assets, headers and redirects were preserved.
All 39 served files matched the new immutable deployment. Product/privacy/support
routes returned HTTP200 and advertise no public store/download links. The former `/aigammon/`
product route redirects to `/backgammon-buddy/`. Public source was published to
the Freevia repository; the validation evidence below identifies the tested commit.
See the [code review](code-review-2026-10-08.md) for code fixes and test results.

## Software preparation

- Android and iOS automatic release jobs now require successful CI from a
  **same-repository push to master**. A PR whose branch is named master cannot
  reach these privileged jobs. Manual dispatch remains available to repository
  maintainers. This addresses the secret exposure risk of running untrusted
  heads through `workflow_run`. [GitHub trigger documentation](https://docs.github.com/en/actions/reference/workflows-and-actions/events-that-trigger-workflows#workflow_run).
- Flutter tests, goldens, Android builds, and iOS builds use **3.44.8** together.
- Android builds a universal **ARMv7 and ARM64** APK, matching the Rust libraries,
  and checks the engine is present in each finished artifact. Explicit release
  ABI filters exclude plugins' x86_64 libraries when no x86_64 engine is shipped.
  [Flutter Android deployment](https://docs.flutter.dev/deployment/android).
- Automatic Android tester distribution now requires release signing. Missing
  credentials still allow a debug-signed diagnostic APK artifact, never a Play
  bundle or automatic tester update.
- Manual Android dispatch offers **build_appbundle**: a signed ARM/ARM64 AAB
  plus separate Dart symbols, with mandatory signing credentials. It does not
  upload to Google Play. New Play apps use app bundles.
  [Android App Bundles](https://developer.android.com/guide/app-bundle).
- Settings opens Flutter's licenses page with direct wildbg notices, generated
  notices for 119 locked target-applicable Rust components, the unmodified MPL
  dependency's complete source archive, and Kazaross-XG2 attribution/permission.
  Both production model blobs match the pinned CC0-licensed training repository;
  its license is bundled. See [provenance](../native/licenses/README.md).
- Native mobile notices now cover the exact 131 Android modules and 14 Apple
  package pins. Forty upstream texts retain their verified bytes, and the
  original OkHttp public-suffix source reproduces the packaged data. Offline
  Licenses entries and CI checks cover notice, artifact and source drift; see
  the [mobile inventory](mobile-dependency-inventory-2026-10-09.md).
- Settings now describes privacy/data handling, deletion and support. Optional
  Firebase Analytics, Performance and Crashlytics default off in native config
  and require a persisted explicit choice; withdrawal closes forwarding and SDK
  collection. Delayed initialization cannot restore withdrawn consent. Native
  operations already in flight and already sent data cannot be retracted.
- Android removes `AD_ID`, `ACCESS_ADSERVICES_AD_ID` and
  `ACCESS_ADSERVICES_ATTRIBUTION`. The actual final APK and AAB contain none of
  these permissions, retain network/camera/microphone access and have all five
  native collection/ads defaults false. No native telemetry app/sender resources
  are packaged; the two online REST configuration values are present.
- Nearby QR decoding uses the existing camera plugin and pinned pure-Dart
  `zxing2`; ML Kit and its independent metrics/model downloads are removed.
  Rotation, frame-stride, permission and lifecycle tests pass. Physical camera
  acceptance remains separate from those tests.
- Live online and nearby games are unassisted, including the screen's runtime
  guard; post-game review/practice remains available. No bilateral coaching
  protocol is implied.
- Diagnostics previews the exact GitHub report on device with Cancel before
  opening its prefilled URL. Opening sends version/platform and the selected
  error excerpt to GitHub; public posting remains a separate action. Review
  Explain/Save actions retain at least 48 logical pixels of painted touch area,
  including small-screen/large-text checks.
- Android spoken coaching verifies an installed non-network English voice using
  the native selection result and active voice before each utterance; otherwise
  text remains available. Sessions own their engines and stale cleanup cannot
  stop a newer session. iOS speech uses an ownership guard and cancellable waits
  around AVSpeechSynthesizer. This does not certify every network action of a
  third-party system speech engine; physical voice acceptance is still open.
- Buddy camera lifecycle now preserves a denied permission result instead of
  reopening the permission sheet during `inactive` transitions. Full background
  and disposal still release the camera. Async regression tests and the signed
  `10015` physical-device denial/reentry retest pass.
- iOS manual dispatch can create an **export-only App Store IPA** using a separate
  store profile. Profile identity/type/expiry checks and escaped export options
  are implemented. Store exports cannot go through Firebase distribution.
- Both signed mobile paths require an explicit build number or verified repository
  baseline; a new repository's reset workflow counter cannot silently sign an
  older version. Android checks all bundled 64-bit ELF LOAD/RELRO alignment plus
  APK ZIP alignment. CI retains native engine symbols and can retain signed iOS
  dSYMs when that export path is exercised.
- Offline preflight validates Cargo/model/license hashes and has focused tests
  for malformed/alignment-failing ELF, profile mismatches and build-number input.
- Android artifact checks now distinguish an unsafe RELRO prefix from a complete
  read/write LOAD protected by RELRO. The initial unconditional end-alignment rule
  rejected safe JNI and DataStore layouts; no native runtime failure was
  demonstrated. The unnecessary JNI linker workaround was removed. The corrected
  validator rejects rounded protection that overlaps other writable/executable
  LOADs and reports every library failure plus ZIP errors in one run. Both final
  diagnostic APKs passed the corrected ELF and ZIP checks.

## Outstanding release gates

| Priority | Gate | Evidence and action |
|---|---|---|
| P1 | Cloud operations and store disclosures | Deployed retention/deletion and the live policy are verified; Play Data Safety and Advertising ID forms are saved, not submitted. The earlier natural scheduled cleanup and independent read-back passed in run 37859798046. Later phone test fixtures have authenticated deletion requests; request acceptance alone is not purge evidence. The independent alert monitor is optional and undeployed; operators still need to inspect cleanup failures and missed runs. See [disclosure worksheet](store-disclosures.md). |
| P1 | Google Play delivery | Final signed APK/AAB 0.14.0+10017 passed artifact validation. Source-equivalent 10015 completed core local/online phone tests, and the final update smoke passed persistence and tutor checks. Play processed the AAB and saved internal release draft 1 with notes/symbols; seven screenshots and the listing are ready to send for review. No artifact errors; only the missing-testers warning remains. Configure testers and verify Play-delivered installation before any rollout. Nothing was submitted or published. |
| P1 | iOS store artifact | Apple account access is not ready. The exact-source unsigned artifact passes its notice/privacy inventory and contains no advertising identity/conversion framework paths or dylib-load references. A signed profile/export, generated Xcode privacy report, device acceptance and App Store Connect validation remain unavailable. |
| P1 | Remaining physical-device acceptance | Android tutor/review/practice, camera denial, diagnostics Cancel and live online flows passed as recorded in the [device report](device-acceptance-2026-10-09.md). Physical-board calibration, optical QR scanning, thrown dice, microphone cadence and audible speech remain unperformed. Complete the [Buddy protocol](buddy-mode-test-protocol.md) and iPhone acceptance before claiming those paths verified. Camera dice recognition remains experimental; typed dice are supported. |
| P1 | 16 KB Android runtime | Final APK/AAB static ELF checks and APK ZIP alignment pass. The test phone uses 4096-byte pages, so it cannot prove runtime compatibility on a 16 KB device/emulator. That separate acceptance target remains open. |
| P2 | Native crash symbolication | Final CI retained unstripped Android engine symbols; the signed iOS path is configured to retain archive dSYMs but was not exercised. Native upload and a deliberately symbolicated test crash still need exact-release validation; keep symbols beyond CI artifact retention. |
| P2 | Distribution metadata/build history | Freevia listing/contact, ratings, review instructions and actual screenshots are prepared/saved. Confirm final countries/platforms and rollout scope. Identity `org.freevia.backgammonbuddy` coexists with prior experimental apps without migrating their data. `RELEASE_BUILD_NUMBER_BASE=10000` exceeds observed prior tester codes; final universal APK and AAB both use 10017. |
| P2 | Windows distribution | Desktop integration passed with the real native engine, advancing five plies. No Windows installer/signing CI or clean-machine acceptance evidence exists; decide the public distribution target before advertising downloads. |

Google Play requires an accessible policy in the app and in the listing, with
accurate data/SDK disclosures and retention/deletion information. Apple's privacy
details also require a public policy URL and disclosure of relevant third-party
practices. These are submission gates, not a finished policy drafted from unknown
business decisions. [Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy](https://developer.apple.com/app-store/app-privacy-details/).

## Data inventory and disclosure handoff

The [store disclosure worksheet](store-disclosures.md) records exact flows,
contacts, local deletion controls and remaining evidence. Current source and
the newly deployed policy were cross-checked for local deletion, draft-time
feedback transmission, nearby transport and speech fallback. Website publication
and artifact/device verification are recorded as separate evidence.

| Feature | Source behavior | Decision or verification needed |
|---|---|---|
| Local games, analysis, settings, diagnostics | SQLite and app-local files (`app/lib/data`, `app/lib/diagnostics`). History deletion is local. | Describe storage/backup, deletion, and what diagnostics the user can share. |
| Online matches | Firebase anonymous identity and Firestore match/event/roll records (`packages/online_client`, `firebase/firestore.rules`). Authenticated privacy requests freeze match access; the least-privilege service deletes cloud records and identities. | Signed phone host/join, both seats, reconnect, completion and deletion-request flows passed. Scheduled execution and hosted policy verified separately. Local History deletion remains separate from cloud deletion. |
| Usage and reliability telemetry | Native defaults off; explicit persisted opt-in controls source capability. Final APK/AAB have no native telemetry app/sender configuration, and no Analytics property was created. Ads consent denied; AD_ID and both AdServices permissions absent. | Static configuration verified in both artifacts. A later enabled build needs provider retention, network and opt-in/withdrawal acceptance; withdrawal cannot retract prior/in-flight transmission. |
| Buddy camera/microphone | Camera frames are processed locally; optional audio is reduced to a transient dice-sound hint (`app/lib/buddy`). | Verify the shipped binary behaves this way, state the purposes clearly, and test refusals/backgrounding. Permission strings are present on Android/iOS. |
| Nearby networking / QR | Unencrypted local UDP/WebSocket traffic, a generic app discovery label and optional on-device camera decoding (`packages/lan_play`). | Do not claim blanket encryption in transit; use trusted Wi-Fi. Test iOS permission denial and direct-address/QR fallback when discovery fails. |
| Buddy speech | Native Android offline-voice validation before text; iOS AVSpeechSynthesizer; transcript survives unavailable speech. | Test actual eligible voice, unavailable-voice fallback and stop/session lifecycle. Do not infer control over a third-party engine's background networking. |
| Feedback | Diagnostics offers a local preview/Cancel. Opening a GitHub draft sends its version/platform and error excerpt before public submission (`app/lib/feedback`). | Declare optional report collection separately from disabled Firebase telemetry. Confirm policy distinguishes draft transmission from public posting. |

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

## Remote build evidence

Current follow-up evidence:

Final Android source `e6c8749b39273604d0a1799f27083912f96b5bec` adds only two
manifest permission removals and their Python regression to `9f92e47`.
All 11 final CI jobs passed. The signed Android APK/AAB passed independent audit;
phone acceptance is recorded separately below. iOS-affecting sources, dependencies
and configuration are unchanged, so its verified `9f92e47` unsigned artifact
remains applicable; redundant iOS run `37863235011` was canceled. No new iOS
artifact or Apple acceptance is claimed for `e6c8749`.

| Run | Verified result |
|---|---|
| [CI 37862735385](https://github.com/freevia-org/backgammon-buddy/actions/runs/37862735385) | All 11 jobs passed at exact final Android source `e6c8749b39273604d0a1799f27083912f96b5bec`. |
| [Android 37863371662](https://github.com/freevia-org/backgammon-buddy/actions/runs/37863371662) | Signed universal ARMv7/ARM64 APK and Play AAB, both 0.14.0+10017, package `org.freevia.backgammonbuddy`. Signature, ABI, ELF and notices checks pass; APK ZIP alignment and AAB bundletool validation pass. All advertising-ID/AdServices permissions are absent. Exact hashes below. |
| [CI 37860721035](https://github.com/freevia-org/backgammon-buddy/actions/runs/37860721035) | Successful at exact source `9f92e47019aede6516a84a1939af0d9fdf69d7fc`. |
| [iOS 37861040558](https://github.com/freevia-org/backgammon-buddy/actions/runs/37861040558) | Exact-source unsigned ARM64 Runner `0.14.0+10012`, identity `org.freevia.backgammonbuddy`, Xcode 26.6 (17F113), iOS SDK 26.5, Runner deployment target 15.0. Online REST configuration enabled for `backgammon-buddy-freevia`; optional telemetry configuration absent. Independent artifact inventory, notice guard and complete packaged Mach-O load inspection passed. Runner ZIP SHA-256 `5255f0e034d4ad721bb3d1ed9c6c822139fc4cf780b6aa7435b5441e045ba0f8`. |
| [CI 37858159028](https://github.com/freevia-org/backgammon-buddy/actions/runs/37858159028) | All 11 jobs passed at `68f6342`, including native notices and optional monitor checks. |
| [Android 37856568143](https://github.com/freevia-org/backgammon-buddy/actions/runs/37856568143) | Signed universal ARM APK at `1b17b39`, version 0.14.0+10011, package `org.freevia.backgammonbuddy`, valid Freevia v2 signature and native/ZIP checks. APK SHA-256 `735ca26b43d022a974ab2bba344b03a26d093f85ca30de18fb9c32611eb2122c`. No legacy publisher string found in decoded ZIP entries. This earlier candidate lacks subsequent notice/privacy changes. |
| [iOS 37856567962](https://github.com/freevia-org/backgammon-buddy/actions/runs/37856567962) | Post-QR unsigned Runner and captured inventory passed. Fourteen package pins and 27 source notices match the reviewed catalog; 23 privacy manifests captured, with no linked ML Kit or advertising identity/conversion framework paths. This is not signed/device/store acceptance. |

Final Android evidence and APK/AAB Dart/native symbols are retained under
`app/build/release-audit/android-e6c8749/`, including `artifact-verification.json`,
decoded manifests/resources, signature output and native inventory. The APK is
77,316,696 bytes, SHA-256
`57dac295d9bed3aeeaa2a4546b17df7dbb0b9e5ea7d8b11d44f58ddac96f5ba8`;
the AAB is 73,134,932 bytes, SHA-256
`6fa0a1e86b195ba997f1dec3b0ec511ccf55fc48ec2ae6a50e38f89eac332cfa`.
Both use the Freevia upload certificate SHA-256
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.
All fourteen bundled license assets match exact `e6c8749` Git bytes, and the 131
Android modules match the reviewed catalog. Both ARM AOT libraries contain the
Freevia online project configuration. Native telemetry app/sender resources are
absent and all five native collection/personalization defaults are false. Nine
permissions remain; no AD_ID or AdServices permission is present in either final
artifact. None of these static checks establishes a 16 KB runtime pass or proves
the absence of all SDK network activity.

The signed `10015` phone candidate passed local tutor explanations, review/save,
practice persistence, camera-refusal/reentry and Diagnostics preview/Cancel.
Its configured online flow passed host/join from both seats, force-stop/rejoin,
completed-game persistence and authenticated deletion requests. The permission-only
`10017` update preserves saved History/practice and still displays live hints and
explanations; its installed permissions match the cleaned artifact. Three test
identities, two matches and seventeen child documents were queued through
authenticated deletion requests; until independently checked after the scheduler,
these fixtures must not be described as purged. See the
[device acceptance record](device-acceptance-2026-10-09.md) for exact boundaries.

The final iOS evidence is preserved locally under
`app/build/release-audit/ios-9f92e47/`: downloaded artifacts, run/artifact metadata,
configuration log excerpts, the independent inventory, all packaged Mach-O
dylib-load commands, a repeatable verification script and `validation.json`.
The Runner ZIP is 18,517,026 bytes. The retained ARM64 Dart symbols are 5,605,709
bytes with SHA-256
`5c6f3fef83ae104bf826d8164881e3bd11eb9e1ec5cc8e8f3314bceaa25f0c01`.
These are separate from archive dSYMs, which this unsigned path did not produce.
Copy release evidence and symbols to durable release storage before GitHub's
artifact expiration on January 6, 2027.

Fourteen resolved Apple package pins and 27 captured upstream notice entries
(19 unique texts) match the reviewed catalog. All fourteen bundled license assets
match the exact source commit byte-for-byte. All 23 packaged privacy manifests
match the reviewed post-QR inventory; the independent ZIP inventory matches CI.
No `GoogleService-Info.plist` is packaged, and the native Analytics, Performance,
Crashlytics and ads-personalization defaults are false. SDK presence alone does
not establish collection, and this static check is not network-behavior evidence.
Every one of the seven shipped Mach-O binaries was inspected, including weak,
reexported, lazy and upward dylib loads: no AdSupport, advertising identity,
on-device conversion or ML Kit framework path/load was found. The conversion
package remains a resolved upstream package pin without a corresponding bundled
or load-referenced framework.

The bundled FirebaseAnalytics and GoogleAppMeasurement framework binaries carry
minimum OS metadata `100.0`. No packaged Mach-O references them through a dylib
load command. Firebase 12.15.0 release tooling explicitly retains this version
as a packaging-validation workaround; see its
[pinned packaging source](https://github.com/firebase/firebase-ios-sdk/blob/42e81d245e30e49ea6a5830cf2842d44a1591270/ReleaseTooling/Sources/ZipBuilder/FrameworkBuilder.swift)
and [upstream explanation](https://github.com/firebase/firebase-ios-sdk/pull/12439).
This explains the metadata without proving install/runtime behavior. The signed
archive must still pass Xcode/App Store validation and a supported physical
iPhone test, including privacy-report review; no Apple account or device evidence
is available for those gates. No app source was changed to suppress this check.

Earlier diagnostic baseline:

The following automatic runs target software revision
[`eb86f917`](https://github.com/freevia-org/backgammon-buddy/commit/eb86f917845b8fec49e17d791308722e08843f9f).
All three completed successfully on October 8, 2026 UTC:

| Run | Verified result |
|---|---|
| [CI 37849457718](https://github.com/freevia-org/backgammon-buddy/actions/runs/37849457718) | All 10 jobs passed, including Windows goldens, native-engine integration, Flutter app tests and Firestore emulator rules/transport/widget E2E jobs. |
| [iOS 37849851091](https://github.com/freevia-org/backgammon-buddy/actions/runs/37849851091) | ARM64 Rust engine and unsigned Flutter Runner built successfully. Uploaded `aigammon-ios-unsigned` (18,191,063 bytes) and `aigammon-symbols-ios-5` (1,517,106 bytes). Signed IPA/export/distribution steps were skipped. This is compilation evidence, not a release-signed candidate or device acceptance. |
| [Android 37849850922](https://github.com/freevia-org/backgammon-buddy/actions/runs/37849850922) | Both Rust ABIs and release-mode/debug-signed APKs compiled. Provenance, engine/ABI presence, every bundled 64-bit ELF check and both APK ZIP checks passed. Uploaded `aigammon-apk` (39,551,363 bytes), `aigammon-symbols-android-5` (2,663,074 bytes) and `aigammon-native-symbols-android-5` (72,504,055 bytes). Play bundle/export and tester distribution were skipped. |

**The diagnostic Android artifact validation gate is closed.** Artifact sizes
above are GitHub's uploaded archive sizes. These artifacts establish build and
packaging success; they do not establish release-signing identity, upgrade
compatibility, physical-device behavior, or store acceptance.

LOAD alignment/address congruence, RELRO protection and APK ZIP alignment are
separate checks. Android's guide warns about an unaligned RELRO end protecting
writable data. The loader's precise behavior also allows a complete LOAD to be
protected without an aligned RELRO end: Android 15 rounds the protection range,
and current AOSP explicitly exempts complete-LOAD layouts from the extra end
alignment check. The validator's narrow exception additionally requires an
RW/non-executable owner and no other writable/executable LOAD in the rounded
range. It does not enable compatibility mode, disable RELRO, or exempt a library
by name. [Android guidance](https://developer.android.com/guide/practices/page-sizes#check_the_relro_security_flag),
[Android 15 loader](https://android.googlesource.com/platform/bionic/+/refs/tags/android-15.0.0_r1/linker/linker_phdr.cpp#1062),
[AOSP complete-LOAD rule](https://android.googlesource.com/platform/bionic/+/android16-qpr2-release/linker/linker_phdr_16kib_compat.cpp#427).

Eighteen Python release tests cover unsafe prefixes, rounded RW/RX overlaps,
malformed headers, multiple simultaneous library/ZIP failures, ABI/engine
presence, signing profiles and build numbers. Original JNI, DataStore 1.1.7 and
CameraX 1.6.1 binaries pass the corrected rule. Dependencies remain unchanged,
and the final packaged APKs passed the corrected checks in the run above.

## Historical verification limits — October 8 baseline

The following paragraphs describe the earlier diagnostic build review. The
October 9 identity, signing, device and deployed-service work above supersedes
their environment and access observations; it does not turn old diagnostics
into a verified current release candidate.

Read-only local tool inventory found Flutter 3.44.8, Windows VS2022 Build Tools
and a staged Windows engine DLL. Android SDK/build tools are present, but only
NDK27.2 is installed; pinned NDK28.2 is absent and some Android SDK licenses are
unaccepted. No heavy install, license acceptance or connected-device changes were
performed. Local upload keystore/key.properties exist and are ignored; their
credentials were not printed. Old-origin GitHub secret/variable listing returned
403, which does not establish absence. Root created the Freevia destination;
remote credentials and store access remain separate acceptance evidence.

Publication scan inspected 5,661 reachable Git objects (2,027 text blobs and 152
binary blobs). High-confidence credential patterns produced only Kotlin property
read false positives; no tracked key/raw-video paths were found. All ten real
corpus photos were visually inspected: boards/table/room furniture, no people or
readable private text; EXIF was empty. This pattern/visual scan is not an absolute
guarantee about arbitrary secrets or every historical binary.
The prepared current tree, including untracked source/notices, also passed a
556-text-file high-confidence credential scan without matches.

Release tests guard workflow trust/signing/ABI declarations and Android config;
the automatic native builds above provide separate compilation evidence. No
signed mobile archive, 16 KB device run, physical-phone acceptance,
deployed-backend acceptance or store submission was performed during this review.
