# App Store publishing status — 2026-10-29 (ASC status last checked October 27)

**Apple accepted the signed iOS candidate into App Store Connect.** Backgammon
Buddy `org.freevia.backgammonbuddy`, version `0.16.2` build `26`, was built from
`5577f0b3f8f16f105d69dfb46f105e3f970df68f` (CI run
[40311504947](https://github.com/freevia-org/backgammon-buddy/actions/runs/40311504947)).
The exact IPA uploaded to Apple has SHA-256
`c664e83656f29fdc6d31befb449aa086b7c0bc434a19b3384147e745af88646f`.
Independent checks confirmed its signature, App Store provisioning profile,
bundle/version/build identity and all 11 required native FFI exports. App Store
Connect reports build 26 **Ready to Submit** in TestFlight.

Version `0.16.0` build `22` is **Rejected** under Apple Guidelines 4.3 (Spam)
and 4.2.6 (App Generation Services). The review is complete; the version was
not modified after rejection. Apple requests either significant changes before
resubmission if the cited concerns apply, or a reply to App Review answering
nine questions about the product, audience, market gap, beta testing, product
structure, shared code/assets, third-party components, and the origin of the
concept/content/branding. The prepared product and technical facts are in
`app/store/ios/submission-answers.md`; several business and testing answers
still require owner confirmation. No reply has been sent.

Build 26 remains **Ready to Submit** in TestFlight, but no App Store version
`0.16.2` record exists. Apple’s current guidance says the existing App Store
version must be **Ready for Distribution** before creating a new version. The
rejected 0.16.0 release therefore blocks creation/submission of 0.16.2 until
the rejection is resolved. No new version was created or submitted, and build
26 has not received physical-device acceptance. Do not represent TestFlight
availability as App Store review or release. [Apple's version-creation guide](https://developer.apple.com/help/app-store-connect/update-your-app/create-a-new-version).

GitHub release [v0.16.2](https://github.com/freevia-org/backgammon-buddy/releases/tag/v0.16.2)
contains Android build 10150 and the Windows x64 ZIP. The most recent verified
Google Play status (October 26, 2026) was build 10150 active in internal testing
and at 100% production rollout across 178 countries. Current Play status still
needs confirmation in the Publishing session before making any further store
change. The app source version is `0.16.2+24`; Android code 10150 and iOS build
26 are platform-specific build numbers.

Physical-device iOS acceptance remains outstanding. No App Store release or
public iOS availability is claimed.

## Prepared now

- English listing and reviewer text: `app/store/ios/en-US/`.
- App identity, public URLs and proposed category: `app/store/ios/app-information.json`.
- Version 1 camera permission describes QR joining and manual fallback; the
  deferred microphone permission is removed. Physical Buddy remains gated off.
- Existing CI builds ARM64 iOS with both native engines and collects dependency
  and privacy-manifest evidence. App Store signing/export was exercised for build
  26 and its artifact was independently verified. See `.github/workflows/ios.yml`
  and its README.
- Simulator evidence: [232-case report](ios-extended-validation-2026-10-19.md).
  Release commit `3cfbb3e` passed CI, Android, Windows and the iOS device-target
  unsigned build ([iOS workflow](https://github.com/freevia-org/backgammon-buddy/actions/runs/40174626360)).
- Run `python3 tool/app_store_metadata_check.py` to validate draft field lengths,
  URLs, identity, icon asset and v1 permissions. Passing this check means only
  the local preparation files are coherent; it cannot certify an App Store release.

## Blockers that do not depend on owning an iPhone

1. **GNUbg compatibility deferred by owner.** The owner chose to proceed with
   the current engine and revisit compatibility if Apple rejects it on licensing
   grounds. This is no longer treated as a preparation blocker. Retain the GPL
   notices and corresponding-source delivery; no alternate license or exception
   has been obtained. [Investigation](gnubg-app-store-options.md).
2. **Deletion confirmation deployed and production-tested.** Settings
   → Privacy → Check deletion confirmation uses a private 256-bit receipt stored
   in OS secure storage, independently of the removed Firebase credential.
   The worker publishes completion only after match and Auth deletion succeeds.
   The app preserves verified confirmation across restarts and checks all locally
   saved requests; missing/expired receipts and failures never imply completion.
   Anonymous receipt reads cannot list requests, create accounts or expose UID/
   match data. Server receipts expire after 90 days; a completed cached receipt
   contains no UID. Pending legacy requests can attach a receipt once while their
   owner credential still works. Lost-device/older completed requests use support.
   A demo-only real Auth/Firestore erasure-and-receipt test passed, alongside
   rules, client, cleanup-worker and UI/persistence tests. Matching rules are now
   deployed, a disposable production erasure/receipt test passed, and the public
   privacy/support disclosures are published. Recheck the exact signed candidate
   before submission. See [the production record](ios-submission-validation.md).
   This is an in-app status confirmation, not an email/push notification.
   [Apple's requirement](https://developer.apple.com/support/offering-account-deletion-in-your-app/).
3. **Exact release configuration and privacy form.** See the [current configuration and encryption inventory](ios-privacy-encryption-handoff.md). Choose whether online play
   and optional telemetry are enabled in the final build. CI uses repository
   variables for online REST access; Firebase native telemetry also needs sender
   and iOS app identifiers. Inspect the actual signed artifact and behavior before
   answering App Privacy; source capability is not evidence of collection.
4. **Encryption assessment.** Inventory native/system TLS, Dart network TLS,
   secure token storage and SHA-256 commit/reveal. Do not describe this as no
   cryptography, or blindly set `ITSAppUsesNonExemptEncryption=false`. Complete
   Apple's [export questions](https://developer.apple.com/help/app-store-connect/manage-app-information/overview-of-export-compliance/)
   for the exact binary; set the key only after the exemption is established.
5. **Simulator screenshots prepared.** Six authentic English portrait captures
   (Home, match setup, solo game with tutor) are committed under
   `app/store/ios/screenshots/`: three iPhone Pro Max 1320×2868 images and three
   iPad Pro 13-inch 2064×2752 images. Both native integration capture tests passed;
   all six were visually reviewed and encoded as opaque 8-bit sRGB PNGs without
   resizing, overlays or UI edits. CI checks dimensions, opacity and SHA-256.
   See the [capture manifest and reproduction instructions](../app/store/ios/screenshots/README.md).
   These show the current dual-engine UI; recapture after visible changes or an
   alternative licensing build. No App Store upload/acceptance is established.
   [Apple specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/screenshot-specifications/).
6. **Age rating and accessibility claims.** Complete Apple's current questionnaire
   from actual content. No money/wager/prize functionality is implemented; do not
   infer Apple's simulated-gambling answer or age rating from Play's IARC result.
   Review linked external content, anonymous multiplayer and communication fields.
   Do not claim VoiceOver/other accessibility support labels without Apple's
   required evaluation. Simulator large-text checks are narrower evidence.

## App Privacy worksheet for the selected build

Use [Apple's definitions](https://developer.apple.com/app-store/app-privacy-details/),
not a copy of Google Play's form. Include relevant partners and user-initiated
support flows. The existing [data inventory](store-disclosures.md) has historical
Android evidence; revalidate it for this iOS artifact.

| Flow | Candidate Apple categories/purpose | Preparation decision |
|---|---|---|
| Local history, exercises and diagnostics | On-device processing alone is not off-device collection | No cloud history sync; distinguish device backup from developer collection |
| Online identity and match logs | User ID; Gameplay Content / Product Interaction as applicable; App Functionality; associated with pseudonymous identity | Optional online service; EU match storage, 30-day match expiry, separate Google Auth retention; verify actual processing |
| QR camera | Local frames only | No image upload/save in v1; do not declare camera images collected merely because camera permission exists |
| Nearby game | Peer gameplay and network address over plaintext local transport | Apply Apple's collection definition to direct peer exchange; disclose plaintext trusted-Wi-Fi use in policy |
| GitHub feedback draft | Diagnostics, app/platform details and any user-entered support content; App Functionality | Opening the URL transmits previewed details before posting. Evaluate linked identity and GitHub processing; not covered by “telemetry off” |
| Optional Analytics / Performance / Crashlytics | Device ID, Product Interaction, Crash Data, Performance Data, Other Diagnostic Data as applicable; Analytics / App Functionality | Default off; if configured, evaluate SDK's complete data behavior and consent/withdrawal on exact build. Never assume optional data is exempt from labels |

No advertising or cross-app tracking purpose is implemented by first-party code.
Recheck all embedded SDKs and their manifests before selecting “no tracking.”
Do not choose “Data Not Collected” for a build enabling online/support collection.
This record does not verify that the final App Privacy answers for version 0.16.2
are complete. Reconfirm the exact version's answers in App Store Connect before
submission; do not infer completion from an earlier version or the source inventory.

## Remaining App Store steps

1. Resolve the rejection: collect owner-approved answers to Apple's nine
   questions and send a response only after those facts are confirmed, or make
   the significant app changes Apple requires if the cited concerns apply.
   Do not invent market research, beta feedback, company relationships, or
   third-party rights claims.
2. Recheck App Store Connect after the rejection is addressed. Apple currently
   requires the existing App Store version to be **Ready for Distribution** to
   create a new version. Do not attempt a workaround that cancels, edits, or
   misrepresents the rejected record.
3. Only after Apple permits a new version, verify version 0.16.2 metadata,
   privacy answers, export compliance, rating, review contact, URLs, screenshots,
   territories, pricing and agreements for the exact build. Determine whether
   build 26 remains eligible or a newer signed build is required. Preserve the
   exact IPA, source commit/submodules, Dart symbols, dSYMs, dependency inventory
   and hashes outside expiring CI artifacts.
4. Keep physical iPhone/iPad acceptance checks below visible as outstanding;
   do not report simulator checks as device acceptance. Choose manual release
   initially and release only after Apple's approval.

## Physical acceptance still outstanding

- Signed installation and cold launch; both native engines, offline solo play,
  tutor, review, learning, archive and persistence on real ARM64 hardware.
- Camera Allow/Deny, QR focus/exposure, torch/rotation and lifecycle.
- Two-device trusted Wi-Fi: local-network Allow/Deny, discovery, typed/QR joins,
  reconnect and network changes. Raw UDP discovery is best-effort on iOS; examine
  the multicast entitlement/provisioning requirement in `native/README.md`.
- Native share delivery/AirDrop and recipient imports; simulator sheet/cancel
  coverage does not certify delivery.
- iPad layouts, touch and VoiceOver usability, supported OS coverage, memory,
  battery and thermal behavior. iPad simulator screenshots/layout work can be
  done before hardware is available; the three portrait capture flows now pass,
  while broader iPad acceptance remains open.
- Optional telemetry consent/withdrawal and production network behavior if enabled.
  Production service configuration is a separate dependency from hardware.

Physical-board camera recognition, dice listening and voice are deferred to v2,
not missing acceptance for enabled v1 functionality. If re-enabled, restore an
accurate microphone purpose string and add a separate acceptance/release review.

## Submission metadata and validation handoff

See [submission answers](../app/store/ios/submission-answers.md) and the
[validation/deployment record](ios-submission-validation.md). Deployment statements
in older historical reports are superseded by this record.
