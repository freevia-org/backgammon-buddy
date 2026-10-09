# Android release delivery — 2026-10-09

Freevia's Backgammon Buddy `org.freevia.backgammonbuddy`, version
`0.14.0+10023`, is **available to internal testers** in Google Play, replacing
10022 with the accepted tutor-panel spacing and full-size action buttons. Release
5 was published at 15:54 Kyiv on October 9 (12:54 UTC). The first production
release remains 10018; it and the existing store/privacy declarations were
submitted for Google review. This internal-only follow-up did not alter or
resubmit production or the listing. Public production availability is not yet
confirmed.

The owner authorized Android publication and supplied two Google accounts. Their
app-named list is selected and saved with exactly two users. Personal addresses
are retained in Play and the ignored local import file, not this public record.
No invitation emails were sent.

The [tester opt-in link](https://play.google.com/apps/internaltest/4701280291485247000)
requires one of those approved accounts. Play reports the track active and
the latest release available to internal testers. Earlier releases 10022, 10020,
10018 and 10017 were published at 14:49 Kyiv (11:49 UTC), 14:22 Kyiv
(11:22 UTC), 12:55 Kyiv (09:55 UTC) and 11:56 Kyiv (08:56 UTC), respectively.
Testers may see
`org.freevia.backgammonbuddy (unreviewed)` as a temporary download name until
app review. Play's publication confirmation notes that propagation usually
takes up to an hour and can take longer; tester installation from Play has not
yet been independently observed.

## Internal tutor panel refinements — 10023

Source `13736ccf1ef1631d9cfe87d8320777e027a0a3e8` produced signed APK/AAB
version `0.14.0+10023` in [Android workflow 37931478694](https://github.com/freevia-org/backgammon-buddy/actions/runs/37931478694).
The workflow succeeded; the package, explicit build number, Freevia upload
certificate, two ARM ABIs, native ELF alignment and APK ZIP alignment were
independently checked. Provenance validation matched all 119 Rust components and
both production models. The local render harness passed for the tutor workflow.
The full CI matrix and an exact-build physical-device test were not run for this
styling-only update.

Google Play preview showed build `10023 (0.14.0)`, retained all supported phone
and tablet devices, and marked it **Ready to release**. Release 5 was published
to the existing internal track, and Console confirms **Available to internal
testers**. The same two-person tester list and opt-in link remain; no invitations
were sent. Production, the store listing and legal declarations were unchanged.

The update restores full-size Hint, Roll and Confirm buttons, keeps Roll and
Confirm in the same right-hand action slot, reduces the space under the tutor
handle, and preserves the selected-history highlight without a Live label.
Archived APK, AAB, symbols, dependency evidence and workflow log are under
`E:/Users/anton/Documents/Freevia/Releases/backgammon-buddy/0.14.0-10023/`.
APK SHA-256: `b8729dee262832b29f2d826da128c44d0ea55111446c157054f57591618353a2`.
AAB SHA-256: `4f3454f5598cf15d88886031b65384de80c5c3075d1a8d836d21804d83403216`.
The 147-file archive totals 478,678,013 bytes. Every manifest entry was
rechecked after copying. The archived `SHA256SUMS.txt` SHA-256 is
`9aca0dbef361a1e1b3026f932dca02c8b8e3561d6e97ce175ac38cdb36a92e92`.

## Internal compact tutor controls — 10022

Source `b037dd302c56c8a3d67aa215dcc949c47948d040` passed all 11 jobs in
[CI 37924567323](https://github.com/freevia-org/backgammon-buddy/actions/runs/37924567323).
[Android build 37924614290](https://github.com/freevia-org/backgammon-buddy/actions/runs/37924614290)
produced signed APK and AAB version `0.14.0+10022`. Independent artifact checks
passed before rollout. Play accepted the bundle with ReTrace mapping and native
symbols; its preview showed **Ready to release** with no errors or warnings.
Release 4 was published as `0.14.0 — compact tutor controls`. Console confirms
**Active**, **Available to internal testers**, code **10022**, and the unchanged
selected list of two testers. No invitations or new legal agreements were involved.

The compact panel puts the tutor icon, label and short prompt on the left,
with analysis below and a draggable handle at the top center. Roll stays visible
at the bottom right inside the panel, including while details expand, and is
enabled only when a roll is legal. Expanded details retain the full verdict when
the short header is truncated. Local validation passed 1,224 tests with seven
expected skips and clean analysis. Six real-font renders were accepted; a
supplemental four-case portrait/landscape test at normal and doubled text size
verified that the expanded verdict wraps without truncation.
See the [compact tutor validation record](tutor-compact-panel-2026-10-09.md).

| Artifact | Bytes | SHA-256 |
|---|---:|---|
| APK | 77,447,748 | `3c3c67e1f9fd5825887bba174804b8cac3208d4f0973ea0ddb1997b8cf3d20a6` |
| AAB | 73,232,634 | `f5b588c4bd7249ac846c0cea9c7f53ea939ce1f3a4a27caf67827b9ec9377ef9` |

The exact package/version, Freevia signer and online configuration, permissions,
license assets, APK/JAR signatures, bundletool validation, native ELF and APK ZIP
alignment, and matching debug symbols passed independent verification. All 14
non-Dart native libraries remain byte-identical to 10018. No exact-10022 device
or Test Lab runtime result is claimed. Artifacts, logs and audit reports are under
`app/build/release-audit/android-b037dd3/`; ready, published and tester-list
screenshots/DOM evidence use the `internal-10022-` prefix under
`app/build/release-audit/play-console/`.

Production and the store listing were not changed during this internal-only
release.

## Historical internal live tutor update — 10020

Source `d0da10b2945007fdda8957625f72775c6228297d` passed all 11 jobs in
[CI 37921732739](https://github.com/freevia-org/backgammon-buddy/actions/runs/37921732739).
[Android build 37921800569](https://github.com/freevia-org/backgammon-buddy/actions/runs/37921800569)
produced signed APK and AAB version `0.14.0+10020`. The independent audit passed
before rollout. The internal preview showed **Ready to release** with no errors
or warnings, and release 3 was saved and published as
`0.14.0 — live tutor update`. Console confirms **Active**, **Available to internal
testers**, version code **10020**, and the unchanged selected two-user tester list.
No new agreement or authentication step was required, and no invitations were sent.

The release adds a continuous expandable tutor panel, advice for staged moves,
restored advice after Undo, current-position feedback after computer replies,
move-log review, and clearer tactical explanations. Settings are available from
the expanded panel's cog. Local validation passed 1,224 tests with seven
skips, including goldens; portrait, landscape and enlarged-text layouts were checked.
See the [tutor validation and artifact record](tutor-panel-feedback-2026-10-09.md).

| Artifact | Bytes | SHA-256 |
|---|---:|---|
| APK | 77,431,364 | `8978b8064390665e4bad8a9636cc7771c7e80bbc15141d17f35381f60ff82e71` |
| AAB | 73,223,504 | `beae6b89243c4d7422ace3e536904f02545b6ab1cf3671595b16c668a61166d2` |

Exact identity, Freevia upload signer/configuration, permissions, license assets,
APK/JAR signatures, bundletool validation, native 16 KB alignment, APK ZIP alignment
and matching debug symbols all passed. All 14 non-Dart native library payloads
match 10018 byte for byte; only the two Dart `libapp.so` payloads changed. This is
static artifact evidence, not an exact-10020 device or Test Lab runtime claim.
The earlier 10018 runtime result remains separately identified below.

The signed candidates, dependency inventories, logs and audit reports are under
`app/build/release-audit/android-d0da10b/`. Publication, ready-preview and preserved
tester-list screenshots/DOM evidence use the `internal-10020-` prefix under
`app/build/release-audit/play-console/`. Production, store screenshots and listing
were left unchanged in this follow-up.

## V1 replacement and production submission

The owner subsequently narrowed v1 to on-screen play, tutoring, review and
practice. Physical-board Buddy is reserved for v2. Build 10017 remains historical
internal-test evidence. Replacement source
`b32a976427cfe49e34b05fbadcc3a743ec4793a5` passed all 11 jobs in
[CI 37910030483](https://github.com/freevia-org/backgammon-buddy/actions/runs/37910030483),
and [Android build 37910032478](https://github.com/freevia-org/backgammon-buddy/actions/runs/37910032478)
produced signed APK/AAB candidate `0.14.0+10018`. Its independent APK/AAB audit
passed. A bounded Firebase Test Lab run passed on genuine 16 KB ARM64/API 36,
including foreground offline core tutoring and a Home screen without physical
Buddy. The installed APK hash, certificate and version matched the candidate;
one test ran with zero failures in one attempt. Internal 10018 and the first
production 10018 preview each displayed **Ready to release**, with no errors or
warnings. Production release 1 was saved and all 11 changes were sent for review.

The saved v1 listing removes physical-board, dice-camera, microphone and spoken
Buddy claims. Six existing, authentic tutor/review/practice screenshots remain;
the home screenshot showing the physical Buddy entry was removed. The runtime
Home capture confirms the feature is absent, but its native aspect ratio differs
from the six store assets, so it was not added to the listing.

The authorized free distribution submission targets all 178 available countries/regions
(177 named entries and rest of world).
Google Play Games on PC was opted out. Android XR still uses the automatic shared
mobile track; its inspected controls offered shared or dedicated tracks, not an
opt-out. That setting is not evidence of XR acceptance. No pricing change was made.

No account-verification or closed-testing blocker was presented during submission.
Managed publishing remains off, and the submitted action is **Start full rollout**;
approval can make the first production release public without a second manual
publish step. [Google’s current guidance](https://support.google.com/googleplay/android-developer/answer/9859654?hl=en)
says it cannot hold a first-time app publication and recommends closed testing
first for a controlled launch; no additional test-track requirement was imposed.

The website landing, privacy and support pages were updated and verified live
with deployment `b25d663d-dc19-466c-b28e-53660351ac10`. Current-v1 copy
keeps optional local nearby QR pairing; the policy separately covers earlier
internal 10017 camera/microphone/speech. All 39 public immutable files matched
staging, and the other 38 files of the 41-file deployment were unchanged from
the latest production baseline `c884e4d3-4c15-407f-85db-533e03925b04`.

## Replacement candidate artifact — 10018

The signed artifacts are retained under `app/build/release-audit/android-b32a976/`:

| Artifact | Relative path | Bytes | SHA-256 |
|---|---|---:|---|
| APK | `aigammon-apk/app-release.apk` | 77,333,060 | `2ae2b79c87e6b0f2d38850449855b761d3b88614dd6ca6c2194d99a87ac4c5fa` |
| AAB | `aigammon-play-bundle-18/app/outputs/bundle/release/app-release.aab` | 73,152,668 | `bff44c1fdeac1808b7209466c7a25720c4131bc87709a02ca45e8b4e7f21e1d5` |

Bundletool 1.18.3 validation, JAR signature verification and native ELF alignment
checks passed, as did APK signature and ZIP alignment checks. Their expected
Freevia RSA-3072 upload certificate is unchanged. Source provenance comes from
the workflow run and matching artifact inventory; AGP's embedded VCS marker is
`NO_SUPPORTED_VCS_FOUND`, not an embedded source commit.
The retained JAR verifier output includes the same self-signed/no-timestamp and
streaming ZIP-order warnings as the earlier candidate; validation succeeds.

The final merged manifest excludes `RECORD_AUDIO`, `AD_ID` and both unused
AdServices permissions. Camera remains for optional nearby QR scanning. The
artifact matches the CI inventory, includes all 14 license assets exactly as
in source, contains the Freevia online configuration in both ARM ABIs and has
no legacy publisher branding in the archive scan. Native symbol verification
matched every allocated section and resolved four known source PCs per ABI for
both APK and AAB; that is an offline symbol rehearsal, not an observed crash or
16 KB runtime result. Audit evidence is retained under
`app/build/release-audit/android-b32a976/`.

The [runtime result](https://console.firebase.google.com/project/backgammon-buddy-freevia/testlab/histories/bh.813025184b02081b/matrices/9136726721370232600)
is retained separately from the static audit. Its native 1080×2400 Home capture
is runtime evidence; the six existing 9:16 store screenshots remain in use.

Chrome reauthentication restored Play access after an earlier blocked attempt.
The bundle was uploaded into internal release 2 with release name
`0.14.0 — on-screen tutor v1` and v1 notes, then published. The same library
artifact and notes were used for production release 1. No second binary was
uploaded or substituted. The submission dialog stated that reviews typically
complete within seven days but may take longer; this is guidance, not a release date.

## Historical delivered artifact — 10017

- Application source: `e6c8749b39273604d0a1799f27083912f96b5bec`.
- [CI 37862735385](https://github.com/freevia-org/backgammon-buddy/actions/runs/37862735385): all 11 jobs passed.
- [Android build 37863371662](https://github.com/freevia-org/backgammon-buddy/actions/runs/37863371662): signed APK and AAB, both build 10017.
- AAB SHA-256: `6fa0a1e86b195ba997f1dec3b0ec511ccf55fc48ec2ae6a50e38f89eac332cfa`.
- APK SHA-256: `57dac295d9bed3aeeaa2a4546b17df7dbb0b9e5ea7d8b11d44f58ddac96f5ba8`.
- Play accepted the AAB with ReTrace mapping and native debug symbols, API 24+, target SDK 36 and two ARM ABIs. After tester setup, preview showed **Ready to release** without warnings or errors.

Signature, identity, permissions, native alignment, notices and configuration
checks are recorded in the [Data Safety/artifact worksheet](play-data-safety-draft.md).
Sideloaded physical-device acceptance is recorded separately in
[the device report](device-acceptance-2026-10-09.md). That evidence does not
establish a Play-installed upgrade path: Play's distributed signing certificate
differs from the upload/sideload certificate. Console’s app-signing page generated
Digital Asset Links with signing SHA-256
`5192c88596e9386d65a6fa24a24a30aebf23eb88356a020aa0cd81430f8c11ea`;
the upload certificate shown there is
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.
This is Console metadata evidence, not a downloaded-certificate inspection.
A Play-signed install cannot replace the upload-signed package in place. Use a
separate test target; do not uninstall/reset the existing package or discard its
History/practice to make the signatures match.

## Scope and evidence

The internal testing track is published. Production, the v1 store listing,
Data Safety, rating, target audience, privacy policy and other saved declarations
are included in the review submission. Production is not yet verified public.
Existing Play signing/default protection and tester access were preserved; no new legal
agreement appeared. Apple distribution remains on hold.

The historical 10017 notes identify physical-board Buddy assistance as
experimental. Replacement notes omit that feature. Current v1 store copy
describes try-first without implying Confirm is required.

Local evidence under `app/build/release-audit/play-console/`:

- `internal-10017-published.png`: active track, available release, publication time.
- `internal-10018-published.png`: replacement on-screen v1 release available to internal testers at 12:55 Kyiv.
- `production-10018-ready.png`: production preview Ready to release with build 10018 and current notes.
- `production-10018-submitted-quick-checks.png` / `production-10018-submitted-dom.txt`: Changes in review with quick checks running and full rollout scope.
- `internal-10017-testers-saved.png`: selected two-user list and enabled opt-in link.
- `bundle-10017-draft-saved.png`: earlier processed AAB and historical release notes.
- `production-countries-178-draft.png`: saved country scope; track still inactive.
- `store-copy-v1.txt`: current on-screen-only listing copy.
- `store-v1-persisted.png` / `store-v1-persisted-dom.txt`: reopened saved description and six screenshots.
- `website-v1-verification.json` / `website-v1-privacy-live.png`: live policy and complete immutable asset verification.
- `play-app-signing-certificates.png`: signing page/upload certificate evidence.
- `google-freevia-verification-pending.png`: earlier authentication interruption, subsequently resolved in Chrome.

All candidate binaries, native/Dart symbols, dependency inventories and
`artifact-verification.json` remain under
`app/build/release-audit/android-b32a976/`; historical 10017 files remain under
`app/build/release-audit/android-e6c8749/`.
