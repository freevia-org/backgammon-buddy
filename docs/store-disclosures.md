# Backgammon Buddy store disclosure worksheet — 2026-10-09

Publisher: **Freevia**. Product: <https://freevia.org/backgammon-buddy/>.
Policy: <https://freevia.org/backgammon-buddy/privacy/>. Support:
<https://freevia.org/backgammon-buddy/support/> / support@freevia.org.
Privacy contact: privacy@freevia.org. Source/feedback:
<https://github.com/freevia-org/backgammon-buddy>.
Freevia's first-party source is MIT licensed; bundled third-party components
retain their own licenses and notices.

This worksheet records source, artifact and Console evidence for the release
owner. Google Play Data Safety and Advertising ID forms are saved but have not
been submitted for review; Apple App Privacy is not complete. The Play preview
lists five optional, non-ephemeral collected categories: User IDs, Other actions,
Device or other IDs, Crash logs and Diagnostics. Shared is unselected under the
documented processor/user-initiated exceptions; the blanket encryption answer is
No because nearby traffic is plaintext. Advertising ID is No. See the
[detailed Play mapping](play-data-safety-draft.md) before submission.
The owner approved EU Firestore storage, 30-day hosted-match availability and
deletion of verified identity/data requests within 30 days. The dedicated
`backgammon-buddy-freevia` project is owned by `info@freevia.org` and is under
the organization administered by that account. Firestore `eur3` and no billing
account were read back from Google. Anonymous Authentication is enabled and
processes sign-in data in the United States. Rules, a live isolated
create/join/deletion smoke and the first natural hourly WIF apply passed. The
scheduled run deleted two disposable identities and their match tree; independent
cloud reads verified the result. See [operations](privacy-cleanup-operations.md).

Final signed Android APK/AAB `0.14.0+10017`, source
`e6c8749b39273604d0a1799f27083912f96b5bec`, include the two REST online
configuration values. Both passed native SDK/notice and permission checks;
AD_ID and both AdServices permissions are absent. Optional telemetry app/sender
resources remain absent and all five native collection/ads defaults are false;
no Analytics property was created. SDK capability in source is not proof of
collection. Static configuration checks do not replace network-behavior testing.
Exact hashes and validation evidence are in [release readiness](release-readiness.md).

Provider retention is separate from Freevia's request handling: Firebase says
Authentication keeps IP logs for a few weeks and removes authentication data
from its live and backup systems within 180 days after the customer initiates
account deletion. The 30-day commitment covers Freevia's execution of the
identity/match deletion workflow, not immediate erasure from every Google
system. See [Firebase privacy](https://firebase.google.com/support/privacy).

| Flow | Data and destination | Required choice / purpose | Retention and deletion evidence |
|---|---|---|---|
| Local games, learning, settings | SQLite match events, engine analysis, saved exercises and attempt scores on device | App functionality; no cloud sync for learning | History delete cascades linked exercises/attempts. Individual exercise delete preserves original history. Learning reset removes attempts/resets schedule and preserves exercises/history. Device backups can retain app data. |
| Local diagnostics | App-local error text and stack traces | Reliability/debugging, independent of telemetry | User can clear in Settings; rotating crash log has bounded entries/bytes. Nothing is sent merely by opening Diagnostics. |
| Online play | Pseudonymous Firebase Auth identifier; match settings, event/move log, dice commitments/reveals in EU Firestore | Optional online feature; needed to operate that match | Rules deny access 30 days after match creation, including unfinished matches; hourly admin cleanup removes all match logs. Local History deletion does not delete cloud records. Privacy → Delete online identity and data submits an owner-authenticated request, freezes both players' access and requests erasure within 30 days. Identity otherwise persists for returning play. A completed request marker retains UID/status/timestamps for 24 hours to block stale ID tokens; no gameplay or credentials remain in it. No backup/PITR schedule was enabled; Firestore reports its standard 1-hour version retention. |
| Nearby play | Match data and network addresses exchanged directly with peer over unencrypted local UDP/WebSocket; discovery advertises a generic app label, not the operating-system hostname | Optional nearby feature; use trusted Wi-Fi | No Firebase match storage for this path. Local saved history follows deletion above. Do not claim that all app transfers are encrypted. |
| Optional Analytics | App/device/installation identifiers and usage events, including screens/match mode/difficulty/results, sent to Google Firebase | Source capability only; unconfigured in 10017. Otherwise off by default with explicit Settings confirmation; analytics/reliability purpose | All three optional SDK collection switches are disabled on withdrawal; Analytics local data resets, unsent Crashlytics reports are deleted. Already transmitted or in-flight data is not retracted. Verify retention before configuring a later release. Ad consent is denied; final Android AD_ID and both AdServices permissions are absent. |
| Optional Performance/Crashlytics | Device/app diagnostics, timings/network performance and crash stack/report data sent to Google Firebase | Same optional opt-in; diagnostics purpose | Same withdrawal choice; owner must verify backend retention/exports and SDK collection in real builds. Native SDKs may have information beyond the app's custom events. |
| Buddy/QR camera | Frames processed on device to read board or QR | Optional camera permission; feature functionality | App does not upload frames or save Buddy recordings. Refusal leaves local on-screen play available. |
| Buddy microphone | Transient PCM reduced to a dice-sound hint locally | Optional microphone permission and listening choice | No saved audio recording or upload by app. |
| Buddy speech | Coaching text goes to an installed Android voice that reports no network requirement and is not marked uninstalled; native selection status and the active voice are checked before each utterance. iOS uses AVSpeechSynthesizer. | Spoken coaching; text remains available if no eligible Android voice exists | The app does not request voice downloads or change the system engine. This is a synthesis control, not an audit of every background/network action by the user's third-party speech engine. Physical speech and voice availability still need candidate acceptance. |
| Feedback | Opening a GitHub draft sends version/platform and, for Diagnostics, an error/stack excerpt in its URL before any public issue is posted | Optional; bug diagnosis and improvement. Diagnostics previews the exact payload locally with Cancel before Open GitHub; ordinary feedback includes version/platform | GitHub may retain the request and any submitted issue. Local preview does not transmit; opening the draft does. Users can cancel and prepare their own report, edit before public submission, or contact support by email. |

Form preparation: online identifiers are pseudonymous, not proof of anonymity.
Assess identifiers, gameplay/user content, app interactions, diagnostics and
performance categories for the enabled features above. Optional GitHub report
collection still belongs in disclosures; disabled automated Firebase telemetry
does not remove it. The telemetry rows describe source capability and must not
be treated as enabled in the verified online-only candidate. Data processed only
on device must be distinguished from data transmitted off device. No advertising,
sale or cross-app tracking purpose is implemented in first-party app code; verify
native SDK configuration before making form claims about third parties.

Release owner checklist:

- [x] Hosted product/privacy/support routes resolve HTTP200 with distinct expected
  titles. Owner/contact is Freevia; no public Android/iOS store or download link
  is advertised. The updated policy/support content was read back from freevia.org
  at 23:48:18 UTC on October 8 (October 9 locally), following production
  deployment `89b9ac90-2035-40da-b3b9-768b96e783d9`.
- [x] Owner chose 30-day hosted-match retention and verified deletion within
  30 days. In-app authenticated request, immediate rules freeze and default-dry-run
  administrative deletion implemented and tested with isolated live fixtures.
- [x] Verify project ownership, organization, EU Firestore location, billing
  disabled, anonymous-only sign-in, PITR disabled. Optional telemetry remains
  unconfigured for the first candidate.
- [x] Verify hourly WIF apply and actual disposable-fixture deletion, including
  both Auth identities and the full match tree, in run `37859798046`. The signed
  10015 phone candidate separately passed both online seats, rejoin, completed
  game persistence and authenticated deletion requests. The 10017 update removes
  only unused advertising permissions; saved learning/history and hints survive.
- [ ] Independently verify purge of the later phone-test fixtures after scheduled
  cleanup. Three identities, two matches and seventeen child documents have
  authenticated requests; accepted requests are not proof of completed erasure.
- [x] Publish and independently recheck the approved retention/deletion policy,
  plaintext LAN disclosure, GitHub draft-opening transmission and speech/text
  fallback. [The deployed policy](https://freevia.org/backgammon-buddy/privacy/#retention)
  and [external deletion help](https://freevia.org/backgammon-buddy/support/#delete-online)
  explain ownership verification and preserved local data. The support page
  identifies the MIT first-party source and separate third-party licenses.
  Exactly two pages changed; all 39 served files matched the immutable deployment,
  and the existing homepage, QC Remote pages, other apps and site settings were preserved.
- [ ] Arrange operator inspection of failed/missed runs (an independent alert
  service is optional, prepared but undeployed). Support must verify ownership; a UID/invite alone
  never authorizes erasure. Lost-device email requests need case review, not a
  blind UID-based admin command.
- [ ] Review applicable data processing terms. Before enabling telemetry in a
  later candidate, verify Analytics/Crashlytics retention, exports and actual
  enabled products and update the forms/policy.
- [x] Save Google Play Data Safety and Advertising ID declarations based on the
  actual configuration and merged permissions. Console save is not review
  submission or approval. Native inventory/notice checks passed for final 10017.
- [ ] Complete Apple App Privacy, signed archive/privacy-report and required-reason
  API review before iOS release. The unsigned 10012 artifact passed static notice,
  package and manifest checks; no physical iPhone acceptance was performed.
- [x] Retest Android camera denial/reentry, restart persistence, local Diagnostics
  preview/Cancel and online deletion-request controls in the signed app. No
  public GitHub issue was submitted during testing. See the
  [device report](device-acceptance-2026-10-09.md) for candidate boundaries.
- [ ] Complete remaining physical-board, optical-QR, microphone/audible-speech,
  offline-network and 16 KB runtime acceptance; inspect network behavior. Repeat
  platform-specific checks on iOS. Optional-telemetry opt-in/withdrawal and slow
  initialization need separate acceptance if enabled in a later build.
- [x] Save Freevia listing text, contacts/policy, ratings, review instructions,
  seven actual app screenshots and an internal release draft. Final APK/AAB both
  use 0.14.0+10017.
- [x] Upload the verified AAB into internal release draft 1 and confirm Play
  processing with mapping/native symbols. Preview reports no artifact error;
  its only warning is that no testers are configured. Save and publish was not
  pressed.
- [ ] Configure tester delivery and final countries/rollout scope. No review
  submission or public release is claimed.

Sources for form review: [Google Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy details](https://developer.apple.com/app-store/app-privacy-details/),
[Firebase privacy and security](https://firebase.google.com/support/privacy).
Account deletion references: [Google Play account deletion](https://support.google.com/googleplay/android-developer/answer/13327111)
allows a support-email web path that works without reinstalling the app;
[Apple guest-account deletion](https://developer.apple.com/help/app-review/guideline-reference/5-1-1-account-deletion)
also requires a deletion path for automatically created identities and a
completion confirmation. Support can confirm its handled requests by reply;
automatic in-app completion receipts remain to be designed before Apple release.
