# Deletion confirmation localization — 2026-10-19

All six receipt/status messages now have translations in each of the 27
non-English ARB bundles (162 translated values), alongside the English original.
Generated Dart localizations are regenerated. No new receipt message retains an
English fallback in a non-English bundle. Serbian keeps the existing Latin
script and Portuguese keeps the existing Brazilian wording style.

The wording preserves these distinctions in every language: requesting deletion
is separate from confirming completion; processing can take up to 30 days;
server confirmations remain available for 90 days; the saved receipt works after
sign-out without creating an account; missing/expired receipts and failed checks
never prove deletion; local history/learning remain; later online identities are
not deleted by an earlier request; Google's backup/security-record retention is
subject to the privacy policy.

Validation: 45 focused tests passed, comprising ARB keys/placeholders and no
English fallback copies, privacy behavior/persistence, and 28 locale-specific
widget flows. Each locale's flow checks no-receipt, pending, completed and error
states at 320×640 logical pixels with 2× text scaling and checks for layout
exceptions. These are host widget tests, not a new physical-device test.
The existing English simulator screenshot set is unchanged.

Firebase remains optional infrastructure for anonymous online identities,
hosted online match synchronization and deletion/confirmation. Solo play,
on-device two-player games, local analysis/history/practice and direct nearby
Wi-Fi play do not require Firebase. Optional automated Firebase telemetry remains
unconfigured in the current release configuration.
