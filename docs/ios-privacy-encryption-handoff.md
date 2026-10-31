# iOS privacy and encryption handoff — 2026-11-01

This is a source/configuration assessment, not submitted App Store Connect answers.
Repository variable/secret **names only** were checked through GitHub: the two
online REST configuration variables and release-number baseline are present;
there is no Firebase sender/iOS-app configuration or Apple signing secret.
Accordingly the current CI configuration enables online REST play and leaves
optional native telemetry unconfigured. Recheck these inputs and the final signed
artifact before upload. Do not change the labels based solely on the simulator's
debug configuration (which defaults to the local demo emulator).

## App Privacy draft for current online-only configuration

Use [Apple's categories and definitions](https://developer.apple.com/app-store/app-privacy-details/).
The following is the conservative starting point, not an assertion that Apple
requires every possible support payload category. Review GitHub/provider handling
and the actual release data before choosing final answers.

| Category | Flow / proposed purpose | Linked / tracking assessment |
|---|---|---|
| Identifiers → User ID | Anonymous Firebase UID in online match ownership and deletion request; App Functionality | Linked to a pseudonymous online identity; anonymous is not “not linked.” No tracking purpose implemented |
| User Content → Gameplay Content | Hosted settings, move/event logs, dice commitments/reveals; App Functionality | Associated with participating UIDs; no public profile, free-form chat or wagering |
| Diagnostics → Crash Data / Other Diagnostic Data as applicable | User-selected error/stack excerpt and app/platform details sent when opening a GitHub draft; App Functionality | Determine whether linked through GitHub/account/provider handling. Do not automatically omit because automated telemetry is off |
| Other Data as applicable | User-entered feedback sent to GitHub; App Functionality | Reconcile with actual free-form fields and support privacy practice; optional user initiation alone is not an automatic disclosure exemption |

The new deletion receipt is a random, read-only service identifier, temporarily
associated with the request UID in the private pending request/24-hour deny
marker. Its independent completion document has no UID, email or gameplay and
expires 90 days after completion. Reads can convey the visitor's network address
to Google. Include this in the existing online-functionality/privacy assessment;
do not call the entire deletion request anonymous or promise immediate removal
from all provider backups. The app keeps confirmed status locally and removes
the receipt record's cached UID after confirmation.

Local history, exercises, on-device diagnostics and QR frames are not uploaded by
these features. Direct nearby traffic is plaintext; this is not a claim that all
transfers are encrypted. A future build enabling Firebase native telemetry must
reassess identifiers, usage, crash and performance categories and purposes.
No ads/cross-app tracking use is implemented by first-party code; confirm final
SDK configuration and manifests before answering tracking questions. Do not claim
“Data Not Collected” for the current online-enabled candidate.

## Encryption inventory

| Component | Evidence / behavior | Classification work remaining |
|---|---|---|
| Online Auth and Firestore REST/gRPC | `packages/online_client/lib/src/online_config.dart`; HTTPS/TLS in release endpoints, debug-only localhost HTTP emulator | Standard transport security. Includes Flutter/Dart network stack, not exclusively Apple's URLSession; do not answer “OS only” without artifact evidence |
| Firebase native SDKs | Locked Apple dependencies and privacy inventory; currently unconfigured optional telemetry | Inventory the exact shipped frameworks even if collection is disabled |
| Auth refresh token / receipt persistence | `FlutterSecureStorage` on iOS (Keychain); separate keys for auth and read-only receipt | OS-provided storage protection; receipt check does not retain/use account refresh credentials |
| Dice fairness | `packages/match_transport/lib/src/fair_dice.dart`: SHA-256 commitments, hash-derived dice, secure random secrets | Cryptographic integrity/fairness, no content cipher. This is app-level cryptographic use and must not be described as no cryptography |
| Receipt / invite generation | `Random.secure`; receipt has 256 bits of entropy | Capability generation, not encryption of a payload |
| Native evaluators | wildbg and GNUbg compute game evaluation; no application network encryption identified in their bridges | Reconfirm final dependency inventory, engine assets and any replacement engine before signing |
| Nearby transport | UDP/WebSocket on trusted LAN without app-level encryption | No TLS or encrypted-transfer claim for nearby matches |

Apple's [export compliance guidance](https://developer.apple.com/help/app-store-connect/manage-app-information/overview-of-export-compliance/)
and [documentation decision flow](https://developer.apple.com/help/app-store-connect/manage-app-information/determine-and-upload-app-encryption-documentation/)
distinguish exempt uses from non-exempt encryption. For the signed iOS candidate
0.16.3 (27), the Freevia representative confirmed on 2026-11-01 that the app uses
standard encryption outside Apple's operating-system APIs. This is the selected
export classification for App Store Connect; it is not a claim that ANSSI has
approved a filing or that Apple has accepted documentation.

Publishing opened build 27's Manage Compliance form and selected this answer.
After France was selected as a distribution territory, Apple stated that export
compliance documentation must first be uploaded in App Encryption Documentation
and approved, after which Apple supplies a key value to enter in Xcode. The form
had no Save action, so build 27 remains Missing Compliance and no answer was
saved. Do not set `ITSAppUsesNonExemptEncryption` or invent Apple's key value.
The authorized Freevia representative must sign and submit the prepared French
ANSSI declaration; once ANSSI issues the required document, Publishing can upload
it to ASC, obtain Apple's key, apply it to a new signed build if required, and
complete the build compliance questions. Reassess after any engine, encryption,
territory, or distribution change.

## Public policy/support publication — 2026-10-19

Matching Firestore rules are deployed and independently match the committed source
(SHA-256 `aa4e6d095df54e6e4033e18d1e27ca7ab21d39a93d3cd3cd20d99ef365d695c0`).
A disposable production identity/match deletion and unauthenticated receipt read
passed. The following copy is published in the policy and matching support page
via Cloudflare deployment `0a2042aa-2c0e-4e86-98e3-892c096c641e`:

> After you request online identity and data deletion in the app, you can check
> completion in Settings → Privacy → Check deletion confirmation. The app keeps a
> private random receipt in your device's secure storage, separate from the
> sign-in credential. Keep the installation until deletion is confirmed. Our
> service publishes a completion status only after removing the online identity
> and associated hosted matches. The status contains no user ID or gameplay and
> is available for 90 days after completion; a verified confirmation can remain
> on your device. Pending requests and short-lived security deny markers still
> follow the retention periods above. A failed check, missing or expired receipt
> does not prove deletion. For a lost device or an older request without a
> receipt, contact support@freevia.org for ownership-verified assistance. Local
> history and learning remain unless you delete them separately. Google's backup
> and security-record retention remains as described above.

Both public policy/support URLs returned HTTP 200 with the new receipt text, all
four security headers and all 15 prior redirects intact. Only those two HTML
files changed; the other 66 served assets kept their hashes. The six receipt messages are translated in all 28 interface languages. Bundle
consistency and all four status outcomes are tested at 320 logical pixels with
2× text scaling. Existing gameplay translations are unchanged.
