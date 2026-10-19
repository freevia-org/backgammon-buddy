# Submission answers prepared for the account holder

Configuration: online REST play enabled for `backgammon-buddy-freevia`; native
Analytics, Performance and Crashlytics unconfigured. No ads, purchases, wagers,
prizes, free-form chat or public profiles. Physical Buddy, microphone listening
and spoken coaching are disabled in v1. Recheck the signed binary and CI inputs
before transferring these drafts to App Store Connect. These are not submitted
answers or a numerical age-rating certification.

## App Privacy

Proposed answer: **data is collected**, for App Functionality; **not used for
tracking**. Declare the anonymous User ID as linked to an identity: pseudonymous
is not the same as unlinked. Declare hosted Gameplay Content as linked to that
ID. Match settings, moves, events and fair-dice records stay available for 30 days
in EU Firestore. Authentication is processed separately by Google in the US;
provider security/backup retention is disclosed in the public policy.

Deletion requests contain the UID and a private random receipt. The completion
receipt contains only status and timestamps, expires after 90 days, and can be
read without a sign-in. The UID-keyed deny marker is retained for 24 hours after
completion. A receipt lookup also contacts Google; do not describe it as having
no network processing. Local History and learning are separate from online
identity deletion.

For GitHub feedback, conservatively include user-selected **Other Diagnostic
Data**, **Crash Data** when the selected excerpt includes an error/stack, and
**Other User Content** for entered feedback. Purpose: App Functionality. Treat
support content as linked where GitHub associates it with the submitting account.
The previewed details are transmitted when opening the prefilled draft URL,
before an issue is posted. No issue or email is sent automatically.

Do not declare local-only History, practice, QR camera frames or on-device engine
analysis as uploaded by these features. Native telemetry categories remain off
for this configuration; adding sender/iOS-app identifiers requires a new review.
No ATT prompt is needed for first-party tracking because none is implemented;
recheck packaged SDK behavior rather than inferring it from this draft.

Reference: https://developer.apple.com/app-store/app-privacy-details/

## Age-rating questionnaire

Proposed content answers, subject to the account holder checking Apple's actual
question wording:

- Advertising, messaging/chat, social-media capabilities, contests, real-money
  gambling, loot boxes, medical advice and health topics: absent.
- Violence, weapons, horror, profanity, sexual content, nudity, alcohol/tobacco/drug
  references and mature themes: absent from first-party game content.
- No parental-control or age-assurance feature is implemented. Do not claim one.
- No embedded unrestricted web browser or social feed is implemented. Support,
  policy, source and feedback links open external destinations; review their
  handling against the current unrestricted-web-access wording.
- Multiplayer exchanges structured gameplay, not arbitrary public content. Review
  the current user-generated-content definition rather than equating it with chat.
- Backgammon uses dice, match scores and a doubling cube with no wager, purchasable
  stakes, currency or prize. The account holder must assess Apple's **simulated
  gambling** definition against that exact gameplay; do not copy Play's rating or
  assume that “no real money” settles this question.
- No Kids category, age override or numerical rating is preselected. Apple derives
  the rating after the questionnaire is completed.

References:
https://developer.apple.com/help/app-store-connect/reference/app-information/age-ratings-values-and-definitions/
https://developer.apple.com/news/?id=tlur8uvi

## Encryption questionnaire

The application uses encryption: HTTPS/TLS for Google services (including Dart's
network implementation), OS Keychain protection for credentials/receipts, secure
random generation, and SHA-256 fair-dice commitments. Nearby transport is plaintext.
No proprietary content cipher, VPN or general-purpose encryption feature is
identified in the first-party implementation. Prepare the standard/exempt-use
assessment using the inventory in `docs/ios-privacy-encryption-handoff.md`.

Leave `ITSAppUsesNonExemptEncryption` unset until the account holder records the
classification for the exact signed artifact and selected territories. Do not
answer “no cryptography,” “OS only,” or invent an exemption/documentation code.
This is the remaining owner/compliance decision, not an unavailable coding task.

Reference:
https://developer.apple.com/help/app-store-connect/manage-app-information/determine-and-upload-app-encryption-documentation/

## Accessibility declarations

Do not advertise full VoiceOver, Voice Control, Larger Text, Sufficient Contrast
or other Accessibility Nutrition Labels solely from automated checks. Board
semantics currently summarize position/turn/dice; full nonvisual move entry has
not been certified. The simulator checks assess named tap targets, touch size and
layout at 200% text on the routes recorded in the validation report. They do not
certify every common task or replace evaluation with assistive technology users.

Reference:
https://developer.apple.com/help/app-store-connect/manage-app-accessibility/overview-of-accessibility-nutrition-labels/

## Values the account holder must supply

Legal seller/entity and enrollment details; review contact name/phone/email;
trader/contact declarations; territories and price confirmation (draft: Free);
final privacy/export/rating answers; certificates/profiles; and release approval.
No invented personal contact details or signing credentials are in this package.
