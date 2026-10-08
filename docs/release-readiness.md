# Release readiness — 2026-10-08

**Status: software preparation and diagnostic mobile build validation complete;
release signing, device acceptance and service policy decisions remain open.** Publisher is **Freevia**, source is
<https://github.com/freevia-org/backgammon-buddy>, policy is
<https://freevia.org/backgammon-buddy/privacy/>, and support is
<https://freevia.org/backgammon-buddy/support/>. This report does not claim store release.
Repository secrets, deployed Firebase settings and store account history remain
unverified. No release-signed candidate or store submission was produced here.
Android artifacts are release-mode/debug-signed diagnostics; iOS Runner is unsigned.
The product/privacy/support routes were deployed and independently verified HTTP
200 with the expected distinct page titles; privacy@freevia.org and
support@freevia.org are the existing Freevia contacts.
The public policy/contact availability gate is satisfied. The former `/aigammon/`
product route redirects to `/backgammon-buddy/`. Public source was published to
the Freevia repository; the validation evidence below identifies the tested commit.
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
- Settings opens Flutter's licenses page with direct wildbg notices, generated
  notices for 119 locked target-applicable Rust components, the unmodified MPL
  dependency's complete source archive, and Kazaross-XG2 attribution/permission.
  Both production model blobs match the pinned CC0-licensed training repository;
  its license is bundled. See [provenance](../native/licenses/README.md).
- Settings now describes privacy/data handling, deletion and support. Optional
  Firebase Analytics, Performance and Crashlytics default off in native config
  and require a persisted explicit choice; withdrawal closes forwarding and SDK
  collection. Delayed initialization cannot restore withdrawn consent. Native
  operations already in flight and already sent data cannot be retracted.
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
| P1 | Cloud policy decisions and store disclosures | In-app controls, existing Freevia contacts and the public policy are available (live HTTP200 verified). Define cloud retention and an administrative deletion process, verify Firebase settings, and complete Play Data safety / Apple App Privacy from the signed binary. See [disclosure worksheet](store-disclosures.md). |
| P1 | Platform-native license/privacy inventory | Rust/model/table notices are bundled with source evidence. Inspect actual Android/iOS native SDK dependencies and privacy manifests after building; Flutter's Dart registry and Rust inventory do not establish every platform SDK notice. |
| P1 | Signed Android acceptance | Run the updated workflow; verify signing certificate, version code, bundled nets/engine, merged permissions/features, and installation plus update over the previous tester release. Build the AAB option and inspect the resulting bundle before submission. Existing secrets and account access are unverified, not assumed absent. |
| P1 | iOS store artifact | Both ad-hoc and App Store export-only paths are implemented; neither a signed store profile/export nor App Store Connect validation was exercised here. Verify selected Xcode/SDK, static engine symbols, device startup and archive privacy report. |
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
| Online matches | Firebase anonymous identity and Firestore match/event/roll records (`packages/online_client`, `firebase/firestore.rules`). Rules deny client-side deletion. | Establish retention and an administrative deletion process; determine applicable account-deletion requirements for the chosen account experience. Local History deletion does not erase Firestore records. |
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

## Verification limits of this round

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
