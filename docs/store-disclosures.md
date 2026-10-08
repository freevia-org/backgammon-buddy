# Backgammon Buddy store disclosure worksheet — 2026-10-09

Publisher: **Freevia**. Product: <https://freevia.org/backgammon-buddy/>.
Policy: <https://freevia.org/backgammon-buddy/privacy/>. Support:
<https://freevia.org/backgammon-buddy/support/> / support@freevia.org.
Privacy contact: privacy@freevia.org. Source/feedback:
<https://github.com/freevia-org/backgammon-buddy>.

This is a source-grounded worksheet for the release owner, not a submitted
Play Data safety or Apple App Privacy form. Verify the exact enabled release
configuration, SDK behavior and current console categories before submitting.
The owner approved EU Firestore storage, 30-day hosted-match availability and
deletion of verified identity/data requests within 30 days. The dedicated
`backgammon-buddy-freevia` project is owned by `info@freevia.org` and is under
the organization administered by that account. Firestore `eur3` and no billing
account were read back from Google. Anonymous Authentication is enabled and
processes sign-in data in the United States. Rules and a live isolated create/join/deletion smoke passed;
the hourly WIF workflow needs its own production execution check before online
release configuration is enabled. See [operations](privacy-cleanup-operations.md).

For the first candidate, enable only the two REST online configuration values
after that verification. Optional telemetry platform configuration remains
unset; no Analytics property was created. SDK capability in source is not proof
that a specific signed binary collects data. Confirm the exact build's defines
before selecting store categories and record them with the release evidence.

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
| Nearby play | Match data and network addresses exchanged directly with peer over local UDP/WebSocket | Optional nearby feature | No Firebase match storage for this path. Local saved history follows deletion above. |
| Optional Analytics | App/device/installation identifiers and usage events, including screens/match mode/difficulty/results, sent to Google Firebase | Off by default; explicit Settings confirmation; analytics/reliability purpose | All three optional SDK collection switches are disabled on withdrawal; Analytics local data resets, unsent Crashlytics reports are deleted. Already transmitted or in-flight data is not retracted. Verify configured Firebase retention. Ad consent is denied; Android advertising ID permission removed. |
| Optional Performance/Crashlytics | Device/app diagnostics, timings/network performance and crash stack/report data sent to Google Firebase | Same optional opt-in; diagnostics purpose | Same withdrawal choice; owner must verify backend retention/exports and SDK collection in real builds. Native SDKs may have information beyond the app's custom events. |
| Buddy/QR camera | Frames processed on device to read board or QR | Optional camera permission; feature functionality | App does not upload frames or save Buddy recordings. Refusal leaves local on-screen play available. |
| Buddy microphone | Transient PCM reduced to a dice-sound hint locally | Optional microphone permission and listening choice | No saved audio recording or upload by app. |
| Feedback | User-reviewed GitHub issue with version/platform and optional diagnostics excerpt | Opens draft only; user separately submits it | Public issue may remain on GitHub. User can edit/remove private details before posting or contact support by email. |

Form preparation: online identifiers are pseudonymous, not proof of anonymity.
Assess identifiers, gameplay/user content, app interactions, diagnostics and
performance categories for the features/SDKs above. Optional opt-in collection
still belongs in disclosures for a binary that supports it. Data processed only
on device must be distinguished from data transmitted off device. No advertising,
sale or cross-app tracking purpose is implemented in first-party app code; verify
native SDK configuration before making form claims about third parties.

Release owner checklist:

- [x] Hosted product/privacy/support routes resolve HTTP200 with distinct expected
  titles; copy was cross-checked against current source. Owner/contact is Freevia.
- [x] Owner chose 30-day hosted-match retention and verified deletion within
  30 days. In-app authenticated request, immediate rules freeze and default-dry-run
  administrative deletion implemented and tested with isolated live fixtures.
- [x] Verify project ownership, organization, EU Firestore location, billing
  disabled, anonymous-only sign-in, PITR disabled. Optional telemetry remains
  unconfigured for the first candidate.
- [ ] Verify hourly WIF apply and independent missed-run/failure monitoring;
  update hosted policy with approved timings, 24-hour security marker, US
  Authentication processing and Google's separate retention. Support must verify ownership; a UID/invite alone
  never authorizes erasure. Lost-device email requests need case review, not a
  blind UID-based admin command.
- [ ] Review applicable data processing terms. Before enabling telemetry in a
  later candidate, verify Analytics/Crashlytics retention, exports and actual
  enabled products and update the forms/policy.
- [ ] Complete both store forms from the signed candidate's merged SDK/permission
  inventory. Generate Xcode privacy report and inspect required-reason APIs.
- [ ] Test opt-in, opt-out (including slow initialization), restart, offline mode
  and denied permissions on real Android/iOS devices; inspect network behavior.
- [ ] Complete screenshots, age rating, countries, category, review instructions,
  and candidate-specific version/build numbers. No store upload was performed here.

Sources for form review: [Google Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy details](https://developer.apple.com/app-store/app-privacy-details/),
[Firebase privacy and security](https://firebase.google.com/support/privacy).
Account deletion references: [Google Play account deletion](https://support.google.com/googleplay/android-developer/answer/13327111)
allows a support-email web path that works without reinstalling the app;
[Apple guest-account deletion](https://developer.apple.com/help/app-review/guideline-reference/5-1-1-account-deletion)
also requires a deletion path for automatically created identities and a
completion confirmation. Support can confirm its handled requests by reply;
automatic in-app completion receipts remain to be designed before Apple release.
