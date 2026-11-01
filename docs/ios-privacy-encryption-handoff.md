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

## Local URLSession transport audit — 2026-11-01

Candidate 0.16.3 (30) was built in Xcode Release with Flutter 3.44.8, signed
locally with the Freevia Apple Distribution identity and the existing App Store
profile, and exported to an IPA for local handoff only. The IPA passed strict
deep signature verification, profile identity/expiry checks, and all 11 FFI
export checks. It was not uploaded, and no App Store Connect declaration or
review state was changed. The carried app plist still has
`ITSAppUsesNonExemptEncryption=false`; this build did not edit that value.

The iOS release workflow now always passes
`BGB_IOS_URLSESSION_TRANSPORT=true` and verifies the generated define and App
AOT markers with `tool/verify_ios_transport.py`. Local release instructions use
the same define. With it set, the app's REST provider selects
`CupertinoClient.defaultSessionConfiguration`, the gRPC listener provider
returns no listener, and implicit `online_client` HTTP clients fail fast unless
an explicit client is injected. The Cupertino framework contains URLSession
symbols, and the Firebase native frameworks remain packaged for opted-in
telemetry.

Binary distinction from the stock Flutter engine:

- The candidate App.framework AOT no longer contains the gRPC protocol markers
  (`dart-grpc`, `grpc-timeout`, `grpc-encoding`, and `google.firestore.v1`); each
  appeared once in build 28. This agrees with the compile-time gRPC-off branch.
- App.framework AOT still has 10 `SecureSocket_` strings, 2 `HttpClient` strings,
  and 2 `TlsException` strings, exactly the same counts as build 28. Those
  strings alone do not establish reachable first-party call paths, but they do
  mean the binary audit cannot claim that Dart TLS/HTTP identifiers disappeared.
  No app runtime source call to Dart `SecureSocket` or `HttpClient` was found;
  the online REST clients are explicitly injected through URLSession.
- The packaged stock Flutter.framework still has Dart SecureSocket hooks and
  BoringSSL material (`boringssl/src` and `crypto/fipsmodule` strings). Engine
  source also calls BoringSSL SHA-1 for Flutter graphics-cache keys, an
  integrity use. There is no separate OpenSSL/BoringSSL dynamic framework;
  this code is within Flutter.framework. The final app therefore uses Apple
  URLSession/OS TLS for its configured online REST path but still packages Dart
  SecureSocket/BoringSSL capability. It is not accurate to classify the whole
  IPA as containing only Apple OS networking or cryptography.
- An isolated upstream custom-engine attempt confirmed the iOS GN flag can set
  `dart_disable_secure_socket=true`, but its required host tool build fails on
  an ANGLE warning promoted to an error by the pinned engine/toolchain and
  Xcode 27.2 SDK. No upstream source edits or generated engine binaries were
  added to the project.

The signed local artifact and audit logs are under
`/Users/tony/Documents/ChatGPT/Backgammon Buddy/.release-evidence/ios-0.16.3-30/`.
IPA SHA-256: `92a8d94a701d2389a8c23df7f17fd302362cc65b05d15bb59cb7e84e95696d72`.

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
