# Account-free iOS submission validation — 2026-10-19

This record supplements the earlier 232-case simulator report. It does not claim
an Apple-signed build, App Store validation, physical camera or device acceptance.

## Production deployment acceptance

Firestore rules were deployed to `backgammon-buddy-freevia` using the authorized
`info@freevia.org` Firebase CLI login. Independent Rules API read-back exactly
matched the committed file, SHA-256
`aa4e6d095df54e6e4033e18d1e27ca7ab21d39a93d3cd3cd20d99ef365d695c0`.
A disposable production anonymous identity and hosted match were deleted using
the real cleanup implementation restricted to that fixture. Independent reads
confirmed Auth/match absence, completion accessible without authentication, and
receipt collection enumeration denied. The test's receipt/deny marker were
removed afterwards. No existing player data was selected by that test.

The existing hourly worker already uses master source through GitHub OIDC;
[manual read-only run 39230799839](https://github.com/freevia-org/backgammon-buddy/actions/runs/39230799839)
passed on `b80e881`. This does not claim that manual dispatch applies deletions;
its apply gate remains limited to scheduled runs.

Public policy and support disclosures were published through Cloudflare Pages
production deployment `0a2042aa-2c0e-4e86-98e3-892c096c641e`. Live custom-domain
HTTP 200, receipt wording, all four security headers and all 15 previous redirects
were verified. Only `/backgammon-buddy/privacy/index.html` and
`/backgammon-buddy/support/index.html` changed; the other 66 asset hashes were
preserved. Headers/redirects were recovered from the actual deployment dashboard,
not guessed from an old snapshot. An initial preview omitted file-upload metadata;
that preview was not published. The corrected preview preserved both configs.

## Cleanup IAM issue found and fixed

The live custom role originally had seven permissions and lacked
`datastore.entities.create`. Operator-led erasure tests could pass while the
hourly service account could not publish a new receipt. The production role was
updated with exactly that one additional permission using its etag; all original
permissions were preserved, and the service-account binding/live role were read
back. No key, token-creator grant or rules-administration permission was added.

The runner now calls the project's read-only `testIamPermissions` API before
reading the queue, in both manual dry-run and scheduled apply. A missing write
permission therefore fails even with no pending requests. Nineteen worker tests
pass, including the missing-create regression, full-access success, wrong-project
rejection and administrative HTTP failure. An operator preflight passed against
the live API; the post-merge workflow must also pass using its own OIDC identity.

## Native production client validation

The native suite passed on the dedicated iPad Pro 13 simulator, iOS 27.0, using
real production HTTPS and TLS gRPC endpoints. The host coordinator verified both
identities absent after erasure and removed the disposable match tree, receipts
and deny markers. This is native client/service evidence, not a physical device
or a signed App Store binary.

The explicit manual suite `app/integration_test/ios_production_firebase_test.dart`
creates two fresh anonymous identities and one match. It checks secure-token
refresh/restoration, create/join and seating, commit/entropy/reveal and event
exchange, real TLS gRPC listening, deletion retry, immediate peer access denial,
and unauthenticated receipt reads after actual erasure. It is not a naturally
completed full production game or a two-device physical-network test.

The host coordinator `tool/ios_production_fixture_cleanup.mjs` runs the actual
worker with queries restricted to the private fixture's two UIDs and single
match. It verifies server-side account creation times (within 15 minutes) and
anonymous status, refuses unexpected matches, and never runs retention sweeps. It checks
Auth deletion and removes the test receipts/markers only after the native client
explicitly acknowledges both completions in the private fixture. Container/file
disappearance alone is not accepted as successful native confirmation. IDs and receipts stay in a simulator-private JSON
file; no OAuth token, refresh token or service-account key enters Dart defines.
No private fixture is committed or printed. Production testing is manual opt-in,
not an automatic CI side effect. Interrupted runs require inspecting and cleaning
the retained private fixture; do not rerun blindly and orphan identities.

Reproduction with Node 22+, Flutter 3.44.8, the simulator engine archives staged,
and an already-authorized Firebase CLI:

1. Choose a dedicated simulator with the app installed. Resolve its private data
   directory with `xcrun simctl get_app_container SIMULATOR_ID org.freevia.backgammonbuddy data`.
2. Start `node tool/ios_production_fixture_cleanup.mjs --apply-fixture
   PRIVATE_CONTAINER/Documents/production-validation.json FIREBASE_TOOLS_DIRECTORY`.
   The final directory is the installed `firebase-tools` package containing `lib/auth.js`.
3. Supply a private, ignored JSON dart-define file containing
   `AIGAMMON_PRODUCTION_VALIDATION=true` and the project's public
   `AIGAMMON_FIREBASE_API_KEY`. Run from `app/`:
   `flutter test integration_test/ios_production_firebase_test.dart -d SIMULATOR_ID
   --no-pub --dart-define-from-file=PRIVATE_DEFINES_JSON --reporter expanded`.
4. Require a passing native test and both coordinator PASS messages. Confirm the
   private fixture was removed. Delete the local define file after the run.

## iPad and accessibility validation

`app/test/ipad_accessibility_test.dart` exercises shipping Home, match setup and
Settings on 1032×1376 portrait, 1376×1032 landscape and 507×1032 split-view-sized
surfaces, each at 100% and 200% text. Every route checks layout exceptions,
labeled tap targets and Apple's 44-point target guideline. Privacy (top and lower
content), Learning and Archive routes are included, for seven checked route
states per configuration. The host suite passes
six cases and is included in ordinary Flutter CI. The native wrapper runs the
same assertions on a dedicated iPad simulator; synthetic viewport sizes cover
layout, not an actual Stage Manager window interaction.

The combined native iPad run passed **28 cases**: 22 existing core engine,
navigation, persistence, tutor/review/practice and loopback multiplayer cases,
plus the six expanded layout/accessibility configurations above. The native core
AI UI flow uses surrender; it is not a natural full production online match.
The original 232-case report remains separate evidence, not 232 repeated iPad
end-to-end games. Earlier exploratory host harness attempts hit Drift stream
cancellation timers; moving database close to teardown and advancing the pending
zero-duration cancellation timer resolved the harness issue. No product failure
was found in these iPad route checks.

These checks do not certify full VoiceOver/Voice Control navigation, contrast or
all common tasks at enlarged text. The board exposes a turn/dice summary but not
per-checker semantic move entry. No full accessibility nutrition claim is made.

## Submission package and remaining external gates

- English metadata, review instructions, icon and six authentic simulator
  screenshots are checked by `python3 tool/app_store_metadata_check.py`.
- [Submission answers](../app/store/ios/submission-answers.md) prepare privacy,
  rating, encryption and accessibility declarations for the current online-on,
  telemetry-unconfigured configuration. Do not submit “Data Not Collected.”
- The [publishing checklist](app-store-publishing.md) covers registration,
  certificate/profile creation, IPA export, upload, privacy manifests and symbols.
- The account holder must provide enrollment/legal/trader details, review contact,
  territories/price, and final privacy/export/rating decisions. An App Store
  profile does not require a physical iPhone UDID.
- Signed archive/export and Apple's processing/validation require developer access.
  Audit the exact signed artifact, entitlements, SDK/privacy report and build number.
- Physical TestFlight testers must still validate signed install/cold launch, both
  engines, optical QR/permission states, real two-device LAN discovery/reconnect,
  recipient sharing/AirDrop, supported OS/device behavior, memory/thermal/battery.
  Simulator success does not close these gates.
- GNUbg licensing remains deferred by the owner's decision; keep notices and
  corresponding source. Physical Buddy/camera recognition/microphone/voice remain
  v2 features, outside the v1 acceptance claim.

## Reproducible handoff archive

Run `python3 tool/prepare_app_store_package.py` after the final commit. It validates
the metadata/icon/screenshots and writes a ZIP and SHA256SUMS under the ignored
`app/build/app-store-submission/` folder. The ZIP includes the metadata, screenshots,
review drafts and release documents, with per-file hashes and source commit/dirty
state. It contains no IPA or credentials; signing and upload remain account gates.
