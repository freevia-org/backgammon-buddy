# Backgammon Buddy store disclosure worksheet — 2026-10-08

Publisher: **Freevia**. Product: <https://freevia.org/backgammon-buddy/>.
Policy: <https://freevia.org/backgammon-buddy/privacy/>. Support:
<https://freevia.org/backgammon-buddy/support/> / support@freevia.org.
Privacy contact: privacy@freevia.org. Source/feedback:
<https://github.com/freevia-org/backgammon-buddy>.

This is a source-grounded worksheet for the release owner, not a submitted
Play Data safety or Apple App Privacy form. Verify the exact enabled release
configuration, SDK behavior and current console categories before submitting.
The public policy describes the current implementation and explicitly leaves
cloud retention/admin deletion unresolved; do not advertise a final store release
until that decision and native acceptance are complete.

| Flow | Data and destination | Required choice / purpose | Retention and deletion evidence |
|---|---|---|---|
| Local games, learning, settings | SQLite match events, engine analysis, saved exercises and attempt scores on device | App functionality; no cloud sync for learning | History delete cascades linked exercises/attempts. Individual exercise delete preserves original history. Learning reset removes attempts/resets schedule and preserves exercises/history. Device backups can retain app data. |
| Local diagnostics | App-local error text and stack traces | Reliability/debugging, independent of telemetry | User can clear in Settings; rotating crash log has bounded entries/bytes. Nothing is sent merely by opening Diagnostics. |
| Online play | Anonymous Firebase Auth identifier, match settings, event/move log, dice commitments/reveals in Firestore | Optional online feature; needed to operate that match | Local History deletion does not delete cloud records. Rules deny client deletion. **Owner must define/implement retention and administrative deletion before public online service release.** |
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
- [ ] Decide cloud retention periods and a workable authenticated administrative
  deletion request process, including anonymous identifiers and backups.
- [ ] Verify Firebase project region, data processing terms, Analytics retention,
  Crashlytics retention, exports and actual enabled products.
- [ ] Complete both store forms from the signed candidate's merged SDK/permission
  inventory. Generate Xcode privacy report and inspect required-reason APIs.
- [ ] Test opt-in, opt-out (including slow initialization), restart, offline mode
  and denied permissions on real Android/iOS devices; inspect network behavior.
- [ ] Complete screenshots, age rating, countries, category, review instructions,
  and candidate-specific version/build numbers. No store upload was performed here.

Sources for form review: [Google Play User Data](https://support.google.com/googleplay/android-developer/answer/10144311),
[Apple App Privacy details](https://developer.apple.com/app-store/app-privacy-details/),
[Firebase privacy and security](https://firebase.google.com/support/privacy).
