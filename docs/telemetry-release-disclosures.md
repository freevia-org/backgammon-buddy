# Firebase telemetry disclosure and release checklist

Status checked 2026-11-08 for Firebase project `backgammon-buddy-freevia` and
Android/iOS bundle `org.freevia.backgammonbuddy`. This is an internal release
worksheet, not the published privacy policy or a submitted store declaration.

## Deployment state

- Google Analytics is enabled in the Freevia Firebase project.
- The Analytics Firebase overview currently reports no activity. No consented
  release build has yet produced a verified event in the property.
- Crashlytics and Performance Monitoring are present in the Flutter app. The
  Firebase Console has no first report for either product yet.
- App collection defaults to off. Analytics, Crashlytics, and Performance
  Monitoring start only after the player accepts the optional telemetry choice
  in Settings. The player can switch it off again.
- A new mobile release must be built with the project, API key, sender ID, and
  matching platform Firebase App ID. The installed store releases predate this
  configured candidate and must not be described as reporting telemetry until
  an artifact audit confirms its configuration.

## What the opted-in build sends

| Data | Examples from this app | Store purpose | Collection and retention notes |
|---|---|---|---|
| App interactions | Screen views; starting/completing a match; tutor hints; cube and resignation actions | Analytics | Optional, installation-associated events. No account UID is passed to Analytics. |
| Gameplay activity | Match mode and length, outcomes and scores | Analytics | Optional; these event parameters describe a match and are associated with the app installation identifier. |
| Device or other IDs | Firebase App Instance ID / Firebase Installation ID | Analytics, crash and performance diagnostics | Random installation identifiers; the app does not send its anonymous online-play UID to Analytics. |
| Crash data and diagnostics | Crash stack traces, app/device/runtime details, and crash-free diagnostics | Reliability and analytics | Firebase Crashlytics retention is 90 days for stack/minidump data and associated identifiers before deletion begins. |
| Performance data | Startup, engine, and network timing/traces; network metadata such as response code and size | Reliability and analytics | Firebase Performance retains IP-associated events 30 days and installation-associated/de-identified performance data 60 days before deletion begins. |

No ad ID, advertising, Google Signals consent, user ID, or ad-personalization
signals are enabled by this code. Firebase Analytics collection is gated on the
consent flag; the native SDK defaults are also off. On withdrawal, the app
disables collection, resets the local Analytics data/identifier, and deletes
unsent Crashlytics reports. This does not retract data already delivered to
Google.

The app contains Buddy-mode analytics event definitions, but the physical-board
Buddy entry remains disabled by `physicalBuddyEnabledProvider`. Recheck the
release route guards before treating those camera/microphone-related event
fields as reachable in a store build.

## Store-form preparation

### Google Play Data safety

- Report collection because the enabled, opted-in path sends data off-device.
- Assess **App interactions** for screens and tutor actions, **Other actions**
  for match outcomes/scores, **Device or other IDs** for the installation IDs,
  and **Crash logs / Diagnostics** for Crashlytics and Performance Monitoring.
- Mark these telemetry rows **optional** because collection is disabled until
  the player opts in. They are stored remotely, so do not mark them ephemeral.
- Purposes are Analytics for usage/gameplay events and App functionality or
  Analytics for reliability diagnostics. Confirm the exact Console wording.
- Google may qualify as a service provider when processing solely for Freevia;
  verify the current processor terms before deciding whether any field is
  marked “shared.” The no-sharing choice does not remove the collection rows.
- Keep the existing anonymous online-play identity, hosted match data, and
  user-initiated GitHub feedback rows separate from Firebase telemetry.

### Apple App Privacy

Prepare entries for **Product Interaction**, **Diagnostics** (crash data and
other diagnostic data), and **Device ID**. Confirm linked-to-user classification
against Apple's current definitions because event data is associated with a
random app-installation identifier even though no online UID is sent. Mark
tracking as **No**: this app does not use the Advertising ID, ATT, ad
personalization, or cross-app tracking. Update the privacy answers before
submitting a telemetry-enabled binary; the account holder reviews final store
selections.

## Data location and retention limits

- The EU Firestore location and 30-day hosted-match retention apply to online
  match records, not automatically to Analytics, Crashlytics, or Performance
  Monitoring.
- Google documents regional collection for EU-origin Analytics traffic, but
  Analytics reporting location does not establish EU-only storage/processing.
- Firebase describes Crashlytics and Performance Monitoring as global services
  unless a product-specific location selection is available. Do not claim
  telemetry has EU-only residency.
- The Analytics property's user/event data retention setting has not been
  verified in the signed-in Console. Check it before stating a retention period;
  Google Analytics standard properties offer 2- or 14-month user/event retention
  choices, and standard aggregated reports are not controlled by that setting.

## Release validation still required

- [ ] Confirm build logs say telemetry configured and the packaged Android
  `google_app_id`/sender resources identify the Freevia Android app.
- [ ] Confirm a signed iOS archive uses the Freevia iOS Firebase App ID.
- [ ] Run an opted-in Android and iOS installation and observe at least one
  expected event in the correct Firebase project. Do not switch default consent
  on to manufacture this signal.
- [ ] Verify crash and performance reports after a consented build. A first
  report can take time to appear.
- [ ] Upload exact-release Dart/native symbols before claiming readable release
  stack traces. Current mobile workflows generate symbol artifacts but do not
  upload Crashlytics symbols; no Firebase service-account secret is configured
  in GitHub Actions yet.
- [ ] Update Play Data safety and App Store Privacy details before submitting
  the telemetry-enabled version. Keep current reviews and releases untouched
  until the Publishing session confirms the form changes are ready.

## References

- [Firebase privacy and security](https://firebase.google.com/support/privacy)
- [Firebase project locations](https://firebase.google.com/docs/projects/locations)
- [Analytics regional data collection](https://support.google.com/analytics/answer/11598602)
- [Analytics data retention](https://support.google.com/analytics/answer/7667196)
- [Google Play Data safety](https://support.google.com/googleplay/android-developer/answer/10787469)
- [Apple App Privacy details](https://developer.apple.com/app-store/app-privacy-details/)
