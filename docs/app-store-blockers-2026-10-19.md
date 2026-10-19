# Additional App Store preparation evidence — 2026-10-19

Changes: in-app deletion completion receipts, actual iPhone/iPad screenshot sets,
license-option research, and a current online-only privacy/encryption worksheet.
This is preparation, not App Store or physical-device approval.

## Verification

- 14 privacy UI/persistence tests passed, including no identity, unconfirmed,
  completed, failure, cached completion across restart and multiple requests.
- 40 focused online client/API tests passed, including no-Auth receipt reads,
  unknown/error/malformed handling, capability mismatch and a legacy request's
  one-time receipt upgrade.
- Two real Dart-client emulator tests passed for request retries, preserving the
  original capability and upgrading a legacy pending request exactly once.
- 16 cleanup-worker tests passed, including publish-after-erasure order,
  publication failure/retry, no writes in dry-run, minimal receipt fields and
  90-day expiration/purge.
- All 119 Firestore security-rules tests passed against localhost demo services.
  Receipt listing/client writes, malformed/expired reads and replacing an owner's
  receipt are denied; individual unauthenticated capability reads are permitted.
- A real demo-only Auth/Firestore acceptance test passed: a disposable anonymous
  identity requested deletion, the actual cleanup implementation removed its
  hosted match and Auth account, and an unauthenticated read returned completion.
  The test independently checked account and match absence. It is now in CI's
  online emulator leg. No production fixture was created/deleted.
- The full CI suite caught missing ARB keys for the six new English privacy
  messages. Explicit fallback entries first restored parity; a subsequent
  localization pass replaced all six fallbacks in each of the 27 non-English
  bundles. The key/placeholder contract is preserved.
- Source analysis passed without issues. iOS simulator debug build passed with
  both native engines. The capture integration test passed independently on
  iPhone 17 Pro Max and iPad Pro 13-inch (M5), iOS 27.0.
- Six captures were reviewed individually; Home/setup/game controls and tutor
  content are visible without overflow/error banners. PNG dimensions, RGB opacity,
  metadata lengths, icon and SHA-256 manifest checks passed. See
  [screenshots](../app/store/ios/screenshots/README.md).

The earlier [232-case simulator report](ios-extended-validation-2026-10-19.md)
remains separate evidence; this work does not claim to repeat that entire matrix
or complete a new AI game on iPad. New screenshot flows use real shipping widgets
and native capture, not host golden images. Ephemeral debug-service auth codes
and raw captures/logs stay in ignored local build/tmp storage.

## Release limits

[Publishing checklist](app-store-publishing.md) tracks the live release gates.
[GNUbg options](gnubg-app-store-options.md) records the current static-link/asset
license evidence, rights-holder questions and the work needed for a separate
wildbg-only iOS variant. No permission, alternate license, engine removal or
rights-holder communication has occurred.

[Privacy/encryption handoff](ios-privacy-encryption-handoff.md) records current
GitHub configuration names (online enabled, native telemetry unconfigured),
source inventory, proposed disclosure mapping and public-policy copy. Both public
policy/support routes returned HTTP 200, but the new copy is not published.
Deploy matching rules and verify the updated cleanup worker in production before
shipping the receipt-enabled client. The receipt confirmation is an in-app check,
not an email or push notification. Lost-device/older completed requests still use
ownership-verified support. The six new messages are now translated across all
28 interface languages; see the [localization follow-up](deletion-localizations-2026-10-19.md).

Apple membership, signing/profile/export, App Store Connect forms/upload and
physical hardware acceptance remain unavailable. A signed native privacy report,
final export declaration, ratings/trader details and real-device camera/LAN/share,
performance and accessibility acceptance cannot be inferred from these tests.
