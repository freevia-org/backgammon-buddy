# App Store publishing preparation — 2026-10-19

Status: prepared source and English metadata drafts; **not submission-ready**.
No Apple Developer membership, registered app, signing credentials, uploaded build
or physical iPhone is available. Nothing here enrolls, pays, uploads or publishes.
Current source version: 0.16.0+22; CI overrides the build number. Select a fresh
monotonically increasing build number for the eventual signed release.

## Prepared now

- English listing and reviewer text: `app/store/ios/en-US/`.
- App identity, public URLs and proposed category: `app/store/ios/app-information.json`.
- Version 1 camera permission describes QR joining and manual fallback; the
  deferred microphone permission is removed. Physical Buddy remains gated off.
- Existing CI builds ARM64 iOS with both native engines, collects dependency and
  privacy-manifest evidence, and supports export-only App Store signing. Signing
  has not been exercised. See `.github/workflows/ios.yml` and its README.
- Simulator evidence: [232-case report](ios-extended-validation-2026-10-19.md).
  Current master 0b66d00 passed iOS device-target unsigned build and Android build.
- Run `python3 tool/app_store_metadata_check.py` to validate draft field lengths,
  URLs, identity, icon asset and v1 permissions. Passing this check means only
  the local preparation files are coherent; it cannot certify an App Store release.

## Blockers that do not depend on owning an iPhone

1. **GNUbg compatibility deferred by owner.** The owner chose to proceed with
   the current engine and revisit compatibility if Apple rejects it on licensing
   grounds. This is no longer treated as a preparation blocker. Retain the GPL
   notices and corresponding-source delivery; no alternate license or exception
   has been obtained. [Investigation](gnubg-app-store-options.md).
2. **Deletion confirmation implemented; deployment acceptance remains.** Settings
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
   rules, client, cleanup-worker and UI/persistence tests. Deploy matching rules
   and worker, update the public retention disclosure, then verify the exact
   production candidate before marking this operational gate complete.
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
No final App Privacy answers have been submitted or certified.

## When the Apple account is available

1. Owner enrolls as the correct legal entity (organization enrollment may need
   D-U-N-S verification); chooses seller identity and accepts agreements. Resolve
   required trader/contact declarations and territories. No invented legal name,
   phone number or address is provided in the drafts.
2. Register explicit App ID `org.freevia.backgammonbuddy` and create the iOS app
   record using the prepared SKU and English primary locale. Confirm identifier
   availability; do not silently change an established package identity.
3. Create an Apple Distribution certificate and App Store Connect provisioning
   profile for that ID. A store profile does not need a registered iPhone UDID.
   Store P12/password/profile as GitHub secrets, never in this repository:
   `IOS_CERT_P12_BASE64`, `IOS_CERT_PASSWORD`, `IOS_APP_STORE_PROFILE_BASE64`.
4. Confirm build-number baseline `RELEASE_BUILD_NUMBER_BASE` or explicitly provide
   a number greater than every prior upload. Dispatch the iOS workflow on the
   reviewed commit with `export_method=app-store-connect` and `build_number`.
   The existing path exports an IPA artifact; it does not upload to Apple or
   Firebase. No App Store Connect API private key is required for export alone.
5. Preserve the exact IPA, source commit/submodules, complete corresponding
   source, Dart symbols, dSYMs, dependency inventory and hashes outside expiring
   CI artifacts. Validate signing identity/profile, embedded entitlements, native
   engines, notices, required-reason API manifests and Xcode's privacy report.
6. Use Xcode Organizer or Transporter to validate/upload the signed build. Resolve
   processing warnings; successful unsigned CI does not prove Apple acceptance.
   Select the processed build in App Store Connect and complete privacy, export,
   rating, review contact, URLs, screenshots, territories, pricing and agreements.
7. Use TestFlight testers with real iPhones/iPads if the owner has none. A device
   is not needed to create the account/record or export/upload, but retain the
   physical acceptance gate below. Never mark those tests passed by simulation.
8. Replace the preparation paragraph in review notes with exact-build evidence
   and final online/deletion instructions. Choose manual release initially; owner
   reviews the concrete listing/build and authorizes submission/publication.

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
