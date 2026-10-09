# Play Data safety candidate worksheet — 2026-10-09

Prepared for Freevia's `org.freevia.backgammonbuddy`. **Saved in Play Console;
not submitted for review or rollout.** The signed Android candidate at
`e6c8749`, version `0.14.0+10017`, confirms the REST online project/key with no
native Firebase telemetry configuration, the local QR decoder and generic
nearby label. Its actual APK and AAB have no advertising-ID or AdServices
permissions. The verified AAB is saved in an unsubmitted internal release draft.

## Saved selections and source evidence

| Field | Candidate answer | App-specific evidence |
|---|---|---|
| Collects user data | Yes | Optional online authentication, match records and authenticated deletion requests leave the device. |
| Personal info → User IDs | Collected; optional; not ephemeral | `AuthClient` obtains a persistent pseudonymous UID. `MatchApi` associates moves, dice and deletion requests with it. Purposes: app functionality, account management, fraud prevention/security. Local tutoring works without creating this identity. |
| App activity → Other actions | Collected; optional; not ephemeral | Online checker moves, cube decisions, dice events and match state implement multiplayer. Purpose: app functionality. These are gameplay records, not a usage-analytics feed. Nearby play also exchanges gameplay with the selected peer. |
| Device or other IDs | Collected; optional; not ephemeral | Google Auth receives connection/IP information for authentication security and retains IP logs for weeks; nearby transport exchanges local addresses. This category covers connection identifiers, not location: neither first-party path derives a geographical location. Purposes: app functionality and fraud prevention/security. |
| Location | No first-party collection identified | Camera/QR does not use geolocation; an IP address alone is not evidence that a location is inferred. Do not import Analytics/Performance location declarations into an unconfigured candidate. |
| Photos, videos, audio | No off-device collection by these features | Camera frames and short microphone buffers are processed locally. QR decoding is pure Dart. These permissions alone do not establish collection. |
| App info and performance → Crash logs | Collected; optional; not ephemeral | Diagnostics → Report issue previews the exact report locally with Cancel, then sends an error/stack excerpt in the GitHub draft URL only after Open GitHub. This reaches GitHub before posting. Purpose: Analytics (diagnosing/fixing bugs). This user-initiated path is separate from disabled automated Firebase crash reporting. |
| App info and performance → Diagnostics | Collected; optional; not ephemeral | Feedback URL prefill sends app version/platform and, from Diagnostics, technical error details. Purpose: Analytics (diagnosing/fixing bugs). GitHub can retain requests and posted issues; no ephemeral-processing claim. |
| Automated Firebase telemetry | Not enabled in the signed candidate | Compile-time telemetry config is incomplete; initialization returns disabled before using Firebase. The decoded artifact has no generated `google_app_id`/sender resources, and native collection/personalization defaults are false. This does not remove the two optional feedback collection rows above. |
| Name, email, phone, chat, contacts, purchases | No collection by gameplay/authentication | Anonymous REST sign-up sends no name/email/password. Nearby uses a generic app label, no OS hostname. There is no chat or purchase flow. Support and GitHub are separate, user-initiated channels. |
| Data deletion | Yes; scheduled backend path verified | In-app authenticated request freezes the identity's match access and queues deletion; public support/privacy pages provide an external request route with ownership verification. The natural scheduled run removed both disposable test identities and their match tree. This does not promise instant erasure of all provider backups. |
| Account creation / external account login | No user-facing account creation or external login | The app creates an anonymous backend Auth record for online play and restores this installation's token. It offers no username/password, email, OAuth login or account recovery across devices. User ID collection and data deletion remain declared. |
| Independent security review | No | Code review and tests are not a Google-authorized MASA assessment. |

Gameplay fits Play's **Other actions** category, whose examples explicitly include
gameplay. Optional means the app's local tutor remains usable without the online
feature. Pseudonymous UIDs still need disclosure. These classifications apply
the [current Play definitions](https://support.google.com/googleplay/android-developer/answer/10787469)
to the code and the Console's reviewed wording.

The account answer applies Play's definition of an app account as a user-facing
identity across applications/devices to this installation-bound anonymous flow.
It does **not** mean no Firebase Auth record exists. The console separately
allows a data-deletion link for apps without user account creation, which is
the appropriate route for the current UX.
[Play account/deletion definition](https://support.google.com/googleplay/android-developer/answer/13327111).

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
that prefill as remaining on the device until submission. Diagnostics presents
the exact payload in a local preview with Cancel before opening that URL.

Buddy speech selects an installed English Android voice explicitly marked as
not requiring a network connection, excluding `notInstalled` voices, before
each utterance. App code makes no voice-download or default-engine change
request; when no eligible voice exists, coaching remains as text. An app-owned
Android bridge checks the native `setVoice` status and active voice metadata
immediately before passing text to the engine. This avoids the locked
`flutter_tts` plugin's discarded native selection status. iOS uses `AVSpeechSynthesizer`, which
Apple documents as generating speech on device. These are synthesis controls,
not evidence of audio leaving the device. The Android bridge initializes the
user's installed system engine; offline voice selection is not a
claim that all lifecycle/network behavior of that third-party engine is audited.
[Android voice metadata](https://developer.android.com/reference/android/speech/tts/Voice#isNetworkConnectionRequired()),
[Android installation feature](https://developer.android.com/reference/android/speech/tts/TextToSpeech.Engine#KEY_FEATURE_NOT_INSTALLED),
[Apple speech synthesis](https://developer.apple.com/documentation/avfoundation/speech-synthesis).

## Provider scope and remaining evidence

Firebase documents Auth IP use for abuse prevention, IP log retention of a few
weeks, US Auth processing, and deletion of other authentication data from live
and backup systems within 180 days after customer deletion. Freevia's 30-day
request-processing commitment is separate. Firestore match availability expires
30 days after creation; the scheduled cleanup removes records. A completed
request keeps a minimal UID/status/timestamp marker for 24 hours against stale
tokens. [Firebase privacy](https://firebase.google.com/support/privacy).

The [natural scheduled cleanup run](https://github.com/freevia-org/backgammon-buddy/actions/runs/37859798046)
completed successfully on 2026-10-08 at 23:30:54 UTC. Its count-only result was
two requests, one match, three documents and two Auth identities deleted,
zero overdue requests and no remaining batch work. Independent cloud checks
confirmed the disposable Auth identities and match tree were gone, with only
the intended completion markers retained. This proves the deployed path;
GitHub schedule timing remains best effort.

The [Firebase Android disclosure guide](https://firebase.google.com/docs/android/play-data-disclosure)
describes SDK-dependent collection. This app's gameplay/Auth clients use REST and
secure gRPC directly; do not blindly copy the native Auth/Firestore SDK rows.
Likewise, library presence is not sufficient evidence that an uninitialized
Analytics/Crashlytics/Performance product is collecting data. Final validation
must still check native startup and configured resources.

## Console and artifact evidence

The Console preview lists five optional, non-ephemeral collected types: User
IDs, Other actions, Device or other IDs, Crash logs and Diagnostics. “Shared”
is unselected under the processor/user-initiated exceptions described above.
The blanket encryption question is **No** because nearby transfers are plaintext.
No user-facing account creation or external account login is declared. The
deletion link is `https://freevia.org/backgammon-buddy/privacy/#retention`.
The separate Advertising ID answer is **No**. Both forms displayed “Change
saved. Send for review in Publishing overview”; no review submission was made.

[CI 37862735385](https://github.com/freevia-org/backgammon-buddy/actions/runs/37862735385)
passed all 11 jobs at `e6c8749b39273604d0a1799f27083912f96b5bec`.
[Android build 37863371662](https://github.com/freevia-org/backgammon-buddy/actions/runs/37863371662)
produced a release-signed APK and AAB at the same version code `10017`.
The certificate is `CN=Backgammon Buddy Upload, O=Freevia`, SHA-256
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.
Both artifacts have only ARM64/ARMv7, pass the 64-bit ELF checks, and contain
14 license assets matching Git. APK ZIP alignment, AAB validation and signatures
pass. The 131-module Android inventory matches the native notice catalog and
contains no ML Kit scanner. Archive-wide byte scans found no legacy publisher
branding. Online project configuration is present in both AOT libraries;
native telemetry application resources are absent and all five native collection,
ad-ID collection and personalization defaults are false. Both decoded manifests
retain nine permissions, with classic AD_ID and both unused AdServices
permissions absent. The local manifest merger and 20 release-tool tests passed;
physical upgrade checks preserved History and practice records.

| Artifact | Bytes | SHA-256 |
|---|---:|---|
| APK | 77,316,696 | `57dac295d9bed3aeeaa2a4546b17df7dbb0b9e5ea7d8b11d44f58ddac96f5ba8` |
| AAB | 73,134,932 | `6fa0a1e86b195ba997f1dec3b0ec511ccf55fc48ec2ae6a50e38f89eac332cfa` |

Play processed bundle `10017 (0.14.0)` with its ReTrace mapping and native debug
symbols and saved it in internal release draft 1. Preview reported no artifact
error; its only warning was that no testers are specified. **Save and publish
was not pressed.** Play signing and default automatic protection remain enabled;
this flow presented no new agreement. The Freevia certificate above signs the
upload/sideload candidate; it is not a claim about Google's eventual distributed
APK signing certificate.

The saved store copy describes try-first as trying a full play before viewing
hints, without implying that Confirm is required. Store copy and internal
release notes explicitly call physical-board Buddy assistance experimental;
the listing states that camera recognition needs calibration and may need
manual correction.

Seven unaltered physical-phone screenshots are saved in tutor-first order:
live hints, live explanation, game review, review explanation, blind practice,
practice result and home. The listing status is **Ready to send for review**;
it has not been submitted. Six are 1440×2560; home is 1800×3200. Review/practice
captures use build 10015; live/home captures use 10017, whose only application
change removed unused manifest permissions. Each set has a local provenance
manifest with hashes. The new prepared icon and feature graphic are conservatively
declared as created/edited with AI; actual screenshots remain unlabeled. This
interprets [Google's asset-specific declaration guidance](https://support.google.com/googleplay/android-developer/answer/17262077)
for artwork prepared through code with AI assistance; the guidance does not
expressly resolve that rendering method. No image synthesis or invented UI was
used for the screenshots.

Local proof files are under `app/build/release-audit/play-console/`:
`data-safety-saved.png`, `advertising-id-saved.png`,
`store-copy-final-saved.png`, `asset-labels-verified.png`,
`bundle-10017-validation.png`, `bundle-10017-draft-saved.png` and
`listing-ready-for-review.png`. The screenshot
sources and provenance are in its `screenshots-10015/` and `screenshots-10017/`
subdirectories; `store-copy-final.txt` and `internal-release-notes-final.txt`
record the final narrowed wording. Signed artifacts and all APK/AAB Dart/native symbols are preserved
under `app/build/release-audit/android-e6c8749/`, with `artifact-verification.json`.
The hosted privacy/support policy was verified after deployment
`89b9ac90-2035-40da-b3b9-768b96e783d9`, including deletion/retention, US Auth,
plaintext nearby transport, GitHub draft transmission and local speech controls.

The independent Cloudflare alert monitor is optional and is not a Play Data
safety prerequisite. Review all distributed versions when telemetry is enabled
later; then update this form and the policy.
