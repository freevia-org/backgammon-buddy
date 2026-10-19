# English App Store screenshot set

Six authentic native iOS Simulator captures, reviewed on 2026-10-19:

| Display class | Device / runtime | Pixel dimensions | Screens |
|---|---|---|---|
| `en-US/iphone-6.9` | iPhone 17 Pro Max, iOS 27.0 | 1320×2868 portrait | Home, match setup, solo game with tutor |
| `en-US/ipad-13` | iPad Pro 13-inch (M5), iOS 27.0 | 2064×2752 portrait | Home, match setup, solo game with tutor |

The native captures include the real shipping widgets and actual game state.
The integration target sets English, light/default theme, Easy AI, one-point
match and tutor on in the dedicated simulator's local settings. No fake game UI,
private online identity or live invite is used. Opening dice are genuinely random
and may differ on recapture. This is initial solo-play/layout evidence, not a
new completed-game or full iPad acceptance test.

Native capture PNGs had opaque 16-bit RGBA encoding. Store files are re-encoded
as opaque 8-bit sRGB RGB using their embedded ICC profile; there is no resizing,
cropping, painting or marketing overlay. `manifest.json` records both raw and
store SHA-256 values, dimensions, version, source baseline and capture method.
Raw originals are retained locally under the ignored
`app/build/ios-e2e/native-store-screenshots/` directory. The six store files are
committed, and CI checks their dimensions, alpha absence and hashes. Images still
need recapture if a licensing-driven engine flavor or visible UI changes.

## Recapture

Use a dedicated disposable simulator of each named class, with both native
simulator archives staged as in `docs/ios-local-build.md`. From `app/`, run:

```sh
STORE_SCREENSHOT_DIR=/absolute/raw/en-US/iphone-6.9 flutter drive \
  --driver=test_driver/store_screenshots.dart \
  --target=integration_test/ios_store_screenshots_test.dart \
  -d YOUR_IPHONE_SIMULATOR_UDID
```

Repeat for the iPad, writing to `/absolute/raw/en-US/ipad-13`. On this busy Mac,
Flutter's device-discovery/build path was slow; the successful capture used the
same compiled integration target, launched with the Flutter debug arguments,
then the driver connected directly to its advertised VM service:

```sh
flutter build ios --simulator --debug --no-pub \
  --target=integration_test/ios_store_screenshots_test.dart
xcrun simctl install YOUR_UDID build/ios/iphonesimulator/Runner.app
xcrun simctl launch YOUR_UDID org.freevia.backgammonbuddy \
  --enable-dart-profiling --enable-checked-mode --verify-entry-points
# Set VM_SERVICE_URL to this app's actual local debug service URI (including
# its ephemeral auth code), obtained from Flutter logs or its mDNS advertisement.
STORE_SCREENSHOT_DIR=/absolute/raw/en-US/iphone-6.9 \
  dart test_driver/store_screenshots.dart
```

Do not commit the VM service auth code or disable its authentication. Both host
drivers reported `All tests passed`. Review every new raw image before encoding.
From repository root, using Python with Pillow/ImageCms:

```sh
python3 tool/prepare_ios_screenshots.py /absolute/raw app/store/ios/screenshots
```

Update `manifest.json` SHA-256 values/provenance from the actual outputs and run
`python3 tool/app_store_metadata_check.py`. The driver must write outside the
committed store directory when collecting new raw images; the encoder preserves
raw files separately and refuses in-place operation. Confirm the current
[Apple screenshot specifications](https://developer.apple.com/help/app-store-connect/reference/app-information/screenshot-specifications/)
before uploading. No App Store upload or Apple validation has occurred.
