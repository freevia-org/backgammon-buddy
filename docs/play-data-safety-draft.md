# Play Data safety candidate worksheet — 2026-10-09

Prepared for Freevia's `org.freevia.backgammonbuddy`. **Not yet saved in Play.**
The intended release enables only the REST online project/key, with no native
Firebase telemetry configuration. The final APK/AAB must confirm that setup,
the local QR decoder, and the generic nearby label before applying this draft.

## Proposed selections and source evidence

| Field | Candidate answer | App-specific evidence |
|---|---|---|
| Collects user data | Yes | Optional online authentication, match records and authenticated deletion requests leave the device. |
| Personal info → User IDs | Collected; optional; not ephemeral | `AuthClient` obtains a persistent pseudonymous UID. `MatchApi` associates moves, dice and deletion requests with it. Purposes: app functionality, account management, fraud prevention/security. Local tutoring works without creating this identity. |
| App activity → Other actions | Collected; optional; not ephemeral | Online checker moves, cube decisions, dice events and match state implement multiplayer. Purpose: app functionality. These are gameplay records, not a usage-analytics feed. Nearby play also exchanges gameplay with the selected peer. |
| Device or other IDs | Proposed collected; optional | Google Auth receives connection/IP information for authentication security; nearby transport exchanges local addresses. Use this category for connection identifiers, not location: neither first-party path derives a geographical location. Confirm the provider's actual use and the console definition in the final review. Purposes: app functionality and fraud prevention/security. |
| Location | No first-party collection identified | Camera/QR does not use geolocation; an IP address alone is not evidence that a location is inferred. Do not import Analytics/Performance location declarations into an unconfigured candidate. |
| Photos, videos, audio | No off-device collection by these features | Camera frames and short microphone buffers are processed locally. QR decoding is pure Dart. These permissions alone do not establish collection. |
| Diagnostics/crash/performance/analytics | Not enabled in the intended candidate | Compile-time telemetry config is incomplete; initialization returns disabled before using Firebase. Verify the merged manifest, absence of generated platform config and actual candidate behavior. Local diagnostics remain local unless the user opens a feedback draft. |
| Name, email, phone, chat, contacts, purchases | No collection by gameplay/authentication | Anonymous REST sign-up sends no name/email/password. Nearby uses a generic app label, no OS hostname. There is no chat or purchase flow. Support and GitHub are separate, user-initiated channels. |
| Data deletion | Yes, after live workflow verification | In-app authenticated request freezes the identity's match access and queues deletion; public support/privacy pages provide an external request route with ownership verification. This does not promise instant erasure of all provider backups. |
| Independent security review | No | Code review and tests are not a Google-authorized MASA assessment. |

Gameplay fits Play's **Other actions** category, whose examples explicitly include
gameplay. Optional means the app's local tutor remains usable without the online
feature. Pseudonymous UIDs still need disclosure. These classifications apply
the [current Play definitions](https://support.google.com/googleplay/android-developer/answer/10787469)
to the code; verify exact form wording before saving.

## Sharing and transport

Do not equate every network transfer with the form's “shared” label. Firebase
hosting/authentication processes the app's records on Freevia's behalf; that
processor relationship can qualify for the service-provider exception. Sending
a gameplay decision to the opponent is expected when the user hosts/joins a
peer match. The user-initiated transfer exception is relevant to that flow and
to an externally opened GitHub draft. Those exceptions do not mean there is no
collection or no privacy-policy disclosure. Confirm the applicable contractual
processor terms and actual flows before selecting “not shared.”
[Play sharing definitions](https://support.google.com/googleplay/android-developer/answer/10787469).

Production Google requests use HTTPS and secure Firestore gRPC. Nearby uses
plain local WebSocket/UDP: the app must not claim **all transfers are encrypted**.
The in-app privacy page distinguishes these paths. Answer any blanket
all-data-in-transit question conservatively; do not infer TLS on LAN from Wi-Fi
encryption. Evidence: `packages/online_client/lib/src/online_config.dart`,
`packages/lan_play/lib/src/{guest_client,host_server,discovery}.dart`.

Opening feedback passes version/platform and any selected diagnostic excerpt
in a GitHub URL. The issue is not publicly posted until the user submits it,
but the prefill already reaches GitHub when the draft opens. Do not describe
that prefill as remaining on the device until submission.

## Provider scope and remaining evidence

Firebase documents Auth IP use for abuse prevention, IP log retention of a few
weeks, US Auth processing, and deletion of other authentication data from live
and backup systems within 180 days after customer deletion. Freevia's 30-day
request-processing commitment is separate. Firestore match availability expires
30 days after creation; the scheduled cleanup removes records. A completed
request keeps a minimal UID/status/timestamp marker for 24 hours against stale
tokens. [Firebase privacy](https://firebase.google.com/support/privacy).

The [Firebase Android disclosure guide](https://firebase.google.com/docs/android/play-data-disclosure)
describes SDK-dependent collection. This app's gameplay/Auth clients use REST and
secure gRPC directly; do not blindly copy the native Auth/Firestore SDK rows.
Likewise, library presence is not sufficient evidence that an uninitialized
Analytics/Crashlytics/Performance product is collecting data. Final validation
must still check native startup and configured resources.

Before saving: record the final SHA/build/signature, actual merged permissions
and SDK inventory, online-only configuration, scheduled deletion evidence, and
policy consistency. The independent Cloudflare alert monitor is optional and
is not a Play Data safety prerequisite. Review all distributed versions when
telemetry is enabled later; then update this form and the policy.
