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

## Encryption questionnaire — build 27

The application uses encryption: HTTPS/TLS for Google services (including Dart's
network implementation), OS Keychain protection for credentials/receipts, secure
random generation, and SHA-256 fair-dice commitments. Nearby transport is plaintext.
No proprietary content cipher, VPN or general-purpose encryption feature is
identified in the first-party implementation. Prepare the standard/exempt-use
assessment using the inventory in `docs/ios-privacy-encryption-handoff.md`.

The Freevia representative confirmed that build 27 uses standard encryption
outside Apple's operating-system APIs. Publishing selected that classification
in the App Store Connect flow. Selecting France caused Apple to require an
approved export-compliance document in App Encryption Documentation before it
will save the answer; the form had no Save action, so build 27 remains Missing
Compliance. This owner-confirmed classification does not establish an ANSSI
filing outcome, Apple's acceptance, or an export-compliance key.

The authorized representative must sign and submit the prepared French ANSSI
declaration. After the official document is issued, upload it to App Store
Connect, obtain Apple's key value, then make any required plist/build change and
complete the exact build's compliance flow. Do not set
`ITSAppUsesNonExemptEncryption` or invent a key before Apple issues it.

Reference:
https://developer.apple.com/help/app-store-connect/manage-app-information/determine-and-upload-app-encryption-documentation/

## Rejection response: Guidelines 4.3 and 4.2.6

**Owner review required. Do not paste or submit this section as written.** The
exact nine questions are not preserved in this repository; copy their wording
from App Store Connect before preparing the final response. The notes below
separate repository-supported product facts from facts only the account holder
can attest to.

### Source-level comparison available for review

The repository contains a source baseline at commit
`f983d2e2f995420d44c44d2acebdeb7b008976a2`, whose `app/pubspec.yaml` reports
`0.16.0+22`, and the current `v0.16.3` source at commit
`2ce8cfae7263690c11254d5a9e9a8bc3219b0484`, whose app version reports
`0.16.3+25`. The source diff includes the game HUD/dialogs and end-of-game
summary, match setup and settings, tutor analysis, 28-language interface
localization, online deletion confirmation, and the switch to GNUbg as the
default evaluation engine. This is repository source evidence only: the exact
signed IPA provenance for build 22 and build 27 has not been tied to these
commits. Do not describe this as a verified binary-to-binary comparison or claim
that any change answers Apple's 4.3/4.2.6 concern without checking the exact
review wording and signed artifacts.

### Supported product description

Backgammon Buddy is a playable backgammon game and tutor published under the
Freevia brand. It supports offline solo games against the computer, shared-device
hot-seat games, practice, and review of moves and completed games. Tutoring
explains positions and move choices in solo play. Online play sends structured
game actions; the app does not provide free-form chat, public profiles, wagering,
or prizes. The README and in-app documentation describe these capabilities.

Possible factual wording, after the account holder confirms it:

> Backgammon Buddy is a standalone backgammon game and learning product. Its
> primary use is playing and improving at backgammon through practice, move
> explanations, and game review. It is designed for people who want a playable
> backgammon app with optional coaching, including offline solo play and
> shared-device play.

This describes the product; it does **not** establish market research or a
unique market gap. Do not claim a market gap, customer demand, beta feedback,
or competitive distinction unless the account holder can substantiate it.

### Owner confirmations needed before answering Apple

- **Target audience and age:** Google Play currently uses 13+, but that does not
  establish Apple's age rating or intended audience. Confirm intended users and
  whether children are targeted.
- **Beta participation and feedback:** the release record checked on 2026-10-29
  said TestFlight build 26 was Waiting for Review. This is a dated snapshot, not
  a live App Store Connect check. The repository does not establish whether
  testers installed or used it or what feedback they gave. Android
  internal testers were invited, but participation and feedback are not
  evidenced here. State “no feedback received” only if confirmed by the owner.
- **Market rationale:** provide the owner's real rationale or research for
  releasing this product. No market-size, competitor, or demand claims are
  documented here.
- **Standalone product rationale:** confirm why Backgammon Buddy is maintained
  as its own game rather than a feature inside another Freevia app. The product
  scope above is documented; the publisher's business rationale is not.
- **Shared material across Freevia apps:** this repository documents the
  Backgammon Buddy implementation but cannot establish whether other Freevia
  products share source code, assets, branding, accounts, or hosted services.
  Confirm each category. Do not describe a shared element as “only common
  Flutter/third-party code” without checking the other products.
- **Origin and rights:** confirm who conceived the app and supplied its content,
  art, name, and branding; whether a client or partner contributed; and why
  Freevia is the publisher. The app identifies itself as Freevia, but the
  origin/ownership history is not recorded here. Separately confirm the rights
  to distribute included engines and assets; bundled license notices are not a
  substitute for confirming compliance with each license.

### Release evidence to attach or quote

- The public product description and screenshots for the submitted build.
- A concise feature list matching the signed binary, distinguishing offline
  play, tutoring/review, and structured online play.
- Verifiable tester participation and feedback records, if any.
- Owner-confirmed product-origin, shared-material, and distribution-rights
  statements.

Keep factual statements narrow and specific to the exact build under review.
Do not imply that build 26 was reviewed as an App Store submission: its recorded
state was TestFlight external beta Waiting for Review.

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
