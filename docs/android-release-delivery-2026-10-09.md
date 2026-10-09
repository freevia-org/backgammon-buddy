# Android release delivery — 2026-10-09

Freevia's Backgammon Buddy `org.freevia.backgammonbuddy`, version
`0.14.0+10018`, is **available to internal testers** in Google Play, replacing
10017. Its first production release and the existing store/privacy declarations
have been **submitted for Google review**. Console shows **Changes in review**;
automated quick checks are still running and must succeed before review delivery.
Public production availability is not yet confirmed.

The owner authorized Android publication and supplied two Google accounts. Their
app-named list is selected and saved with exactly two users. Personal addresses
are retained in Play and the ignored local import file, not this public record.
No invitation emails were sent.

The [tester opt-in link](https://play.google.com/apps/internaltest/4701280291485247000)
requires one of those approved accounts. Play reports the track active and
the replacement release available, published on 2026-10-09 at 12:55 Kyiv time
(09:55 UTC). The earlier 10017 release was published at 11:56 Kyiv (08:56 UTC).
Testers may see
`org.freevia.backgammonbuddy (unreviewed)` as a temporary download name until
app review. Play's publication confirmation notes that propagation usually
takes up to an hour and can take longer; tester installation from Play has not
yet been independently observed.

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
