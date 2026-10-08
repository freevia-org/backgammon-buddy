# Release readiness — 2026-10-09

**Status: tutor implementation, review fixes and the Freevia online service are
implemented. Final signed Android acceptance and store preparation are in
progress; the app has not been submitted or released.** Publisher is **Freevia**, source is
<https://github.com/freevia-org/backgammon-buddy>, policy is
<https://freevia.org/backgammon-buddy/privacy/>, and support is
<https://freevia.org/backgammon-buddy/support/>. This report does not claim store release.
The app identity is `org.freevia.backgammonbuddy` on Android and iOS. First-party
source is MIT licensed; third-party components retain their own licenses.
Both Git remotes point to the Freevia repository. A new Freevia upload certificate
and signing secrets are configured, with build-number baseline 10000. The signed
Android build exposed an extra x86_64 packaging issue; commit `1b17b39` restricts
release packaging to the two supported ARM ABIs while preserving debug emulator
support. The corrected signed APK `0.14.0+10011` passed independent package,
certificate, ABI, native alignment, ZIP and branding checks and was installed
side-by-side on the test phone. Later notice/privacy changes require rebuilding
the final candidate and Play bundle.

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
are saved; no bundle has been uploaded. Apple Developer access is not ready, so iOS builds remain
unsigned and cannot establish App Store readiness.
The product/privacy/support routes were deployed and independently verified HTTP
200 with the expected distinct page titles; privacy@freevia.org and
support@freevia.org are the existing Freevia contacts.
The public policy/contact URLs are available; the policy still needs the new
retention and deletion facts before online launch. The former `/aigammon/`
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
- Nearby QR decoding uses the existing camera plugin and pinned pure-Dart
  `zxing2`; ML Kit and its independent metrics/model downloads are removed.
  Rotation, frame-stride, permission and lifecycle tests pass. Physical camera
  acceptance remains separate from those tests.
- Live online and nearby games are unassisted, including the screen's runtime
  guard; post-game review/practice remains available. No bilateral coaching
  protocol is implied.
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
| P1 | Cloud operations and store disclosures | The owner approved 30-day hosted-match expiry and deletion-request handling. EU Firestore, US anonymous Auth processing, deployed rules and in-app deletion are documented. Scheduled apply and independent deletion read-back passed in run 37859798046. Update the hosted policy, then complete disclosures against the configured signed binary. The independent alert monitor is optional and undeployed; operators still need to inspect cleanup failures and missed runs. See [disclosure worksheet](store-disclosures.md). |
| P1 | Final artifact inventory | Android and Apple native notice/source inventory is captured and bundled, and post-QR iOS evidence passes its guard. Verify the final rebuilt APK/AAB and unsigned iOS artifact against those exact notices and privacy metadata. |
| P1 | Signed Android acceptance | Signed APK 0.14.0+10011 passed package/signature/ABI/alignment checks and initial phone tutor/save/practice tests; the older app/data remain intact. Build the final source with online configuration and bundled notices, inspect APK/AAB and symbols, then update the new package and finish device acceptance. |
| P1 | iOS store artifact | Apple account access is not ready. Unsigned builds pass, but a signed profile/export, device acceptance and App Store Connect validation remain unavailable. Verify no-ad-ID framework selection and complete native license/privacy inventory from the current artifact. |
| P1 | Real-device tutor and Buddy acceptance | Complete the [Buddy protocol](buddy-mode-test-protocol.md) and the tutor smoke checks below on Android and iOS. CI cannot certify camera, microphone, local-network prompts, thermal load, lifecycle behavior, or speech. Camera dice recognition remains experimental: typed dice are the supported path. |
| P2 | Native crash symbolication | Final CI retained unstripped Android engine symbols; the signed iOS path is configured to retain archive dSYMs but was not exercised. Native upload and a deliberately symbolicated test crash still need exact-release validation; keep symbols beyond CI artifact retention. |
| P2 | Distribution metadata/build history | Publisher/contact and source URLs are Freevia. Confirm screenshots, age ratings, countries/platforms and review instructions. The owner selected the new Android/iOS identity `org.freevia.backgammonbuddy`; it coexists with prior experimental apps and does not migrate their data. The Freevia Play account had no Backgammon entry or release history when inspected. `RELEASE_BUILD_NUMBER_BASE=10000` is configured above observed prior tester codes; universal APK and AAB use the same explicit code. |
| P2 | Windows distribution | Desktop integration passed with the real native engine, advancing five plies. No Windows installer/signing CI or clean-machine acceptance evidence exists; decide the public distribution target before advertising downloads. |

Google Play requires an accessible policy in the app and in the listing, with
accurate data/SDK disclosures and retention/deletion information. Apple's privacy
details also require a public policy URL and disclosure of relevant third-party
practices. These are submission gates, not a finished policy drafted from unknown
business decisions. [Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy](https://developer.apple.com/app-store/app-privacy-details/).

## Data inventory and disclosure handoff

The [store disclosure worksheet](store-disclosures.md) records exact flows,
contacts, local deletion controls and remaining policy decisions. The hosted
draft was cross-checked against current code, including reset-practice behavior.

| Feature | Source behavior | Decision or verification needed |
|---|---|---|
| Local games, analysis, settings, diagnostics | SQLite and app-local files (`app/lib/data`, `app/lib/diagnostics`). History deletion is local. | Describe storage/backup, deletion, and what diagnostics the user can share. |
| Online matches | Firebase anonymous identity and Firestore match/event/roll records (`packages/online_client`, `firebase/firestore.rules`). Authenticated privacy requests freeze access; the least-privilege service deletes cloud records and identities. | Scheduled execution verified; update the hosted policy and verify the configured binary. Local History deletion remains separate from cloud deletion. |
| Usage and reliability telemetry | Native defaults off; explicit persisted opt-in controls Analytics, Performance and Crashlytics. Consent checked across asynchronous startup. Ads consent denied and Android AD_ID permission removed. | Verify SDK network behavior, backend retention and form categories in the actual binary. Withdrawal cannot retract prior/in-flight transmission. |
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

## Remote build evidence

Current follow-up evidence:

| Run | Verified result |
|---|---|
| [CI 37858159028](https://github.com/freevia-org/backgammon-buddy/actions/runs/37858159028) | All 11 jobs passed at `68f6342`, including native notices and optional monitor checks. |
| [Android 37856568143](https://github.com/freevia-org/backgammon-buddy/actions/runs/37856568143) | Signed universal ARM APK at `1b17b39`, version 0.14.0+10011, package `org.freevia.backgammonbuddy`, valid Freevia v2 signature and native/ZIP checks. APK SHA-256 `735ca26b43d022a974ab2bba344b03a26d093f85ca30de18fb9c32611eb2122c`. No legacy publisher string found in decoded ZIP entries. This earlier candidate lacks subsequent notice/privacy changes. |
| [iOS 37856567962](https://github.com/freevia-org/backgammon-buddy/actions/runs/37856567962) | Post-QR unsigned Runner and captured inventory passed. Fourteen package pins and 27 source notices match the reviewed catalog; 23 privacy manifests captured, with no linked ML Kit or advertising identity/conversion framework paths. This is not signed/device/store acceptance. |

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
