# Backgammon Buddy store artwork

- `play-icon.png`: 512 × 512, square 32-bit PNG, from the existing app mark.
- `play-feature.png`: 1024 × 500, opaque 24-bit PNG. Uses the app mark and
  Freevia product site's walnut/cream/gold palette and tutoring tagline.

Regenerate from `app/` with
`flutter test tool/generate_store_graphics.dart`. The generator uses
`AppMarkPainter` and Roboto included in the Flutter SDK. The same mark appears in
the Android/iOS/Windows launcher assets and the Freevia product website. These
are promotional artwork, not screenshots. Actual phone screenshots must be
captured from the release candidate separately.

Artwork contains no rating badges, pricing, store badges or unverified claims.
Dimensions and color modes follow [Google Play's preview asset requirements](https://support.google.com/googleplay/android-developer/answer/9866151).
