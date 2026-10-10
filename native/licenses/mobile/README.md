# Mobile native dependency notices

`manifest.json` records the exact 134 Android `releaseRuntimeClasspath` module
coordinates and artifact hashes, plus 14 Apple Swift Package Manager pins from
the successful iOS workflow run 37855133199 (commit 426ced1). This is a
conservative build-resolution set; it includes unlinked Firebase products,
upstream test/build helpers and Flutter architectures excluded from the final
APK. It is not a list of enabled features or transmitted data.
The post-QR-removal run 37856567962 (commit 1b17b39) independently reproduced
all 14 pins and all 27 captured source-notice entries and passes the guard.
The October 10 local dependency refresh added `jsr305:3.0.2`, `gson:2.13.2`
and `tink-android:1.23.0`; their exact artifact hashes and published Apache-2.0
POM declarations are recorded in the manifest. This updated resolution still
needs to be checked against the rebuilt release artifact.

`texts/` contains byte-preserved, SHA-256-named upstream license and notice
texts. The Android entries preserve notices embedded in resolved AAR/JAR files,
including nested JAR notices and Google's `third_party_licenses.txt`. Published
POM licenses are retained, with a provenance chain when inherited from a parent.
`reviewed-upstream.json` adds reviewed source texts that distributions omit:

- Apache 2.0, used only where the published POM declares it.
- Google protobuf's BSD text, also used for AndroidX's relocated protobuf.
- CameraX's libyuv BSD and patent notices from the AndroidX camera release
  manifest's pinned libyuv revision. The exact CameraX binary-to-manifest
  revision mapping is not asserted; the notice texts are identical to the
  separately inspected current libyuv source.
- SQLite's public-domain statement at the actual 3.52.0 source tag.
- Flutter's full composite engine notice from the build SDK. CI checks its
  bytes against the reviewed notice, rather than assuming BSD covers every
  embedded engine dependency.

The nine missing direct POM declarations are resolved as follows: Auto Value
annotations inherits Apache 2.0 through auto-value-parent 1.6.3 and auto-parent
7; Guava 33.5.0-android, failureaccess 1.0.3 and listenablefuture's empty conflict
artifact inherit their respective Guava parent Apache declarations;
protobuf-javalite 3.25.5 inherits its parent's BSD declaration; the four Flutter
artifacts use the exact SDK's composite notice. Parent POM URLs and hashes are
recorded in the manifest.

Google's Android SDK-licensed modules remain labelled with their published
proprietary terms URLs; their bundled open-source notices are preserved without
relicensing the SDK. Likewise, Apple repository source notices are not a claim
that precompiled Google Analytics binaries have an Apache license. Those
entries retain the relevant Analytics terms link.

`python tool/mobile_notices.py` renders the app's two offline notice assets;
`--check` verifies they are current. The Licenses UI also exposes the original
OkHttp public-suffix plaintext source, its exact notice, MPL-2.0 and provenance.
See `app/assets/licenses/okhttp-publicsuffix-PROVENANCE.txt`; the offline
verifier reconstructs the actual resolved JAR's list bytes from that source.

To refresh after dependency changes:

1. Produce `resolved.json`/POM evidence with the Gradle collector and download
   the matching iOS `inventory.json` plus its `source-notices/` directory.
2. Review newly declared licenses and preserve any required upstream texts in
   `reviewed-upstream.json`. Resolve absent POM declarations from exact parent
   POMs or official source terms. Do not infer grants from package names.
3. Run the capture tool against only the exact resolved artifact cache:

   ```text
   python tool/capture_mobile_notices.py --android-resolved <resolved.json> --apple-inventory <inventory.json> --gradle-cache <modules-2/files-2.1> --extra-poms <reviewed-parent-poms>
   python tool/mobile_notices.py
   python -m unittest discover -s tool -p test_mobile_notices.py
   ```

4. Review the new manifest, source hashes and app text. CI rejects changed
   Android module/artifact hashes, Apple revisions/missing source notices, or
   a changed Flutter composite license. Rebuild the distributable artifacts
   after updating assets and retain their evidence.

These notices complete the captured native source/notice inventory; they do
not replace privacy disclosures, legal advice, a final linked-symbol review,
or verification of runtime consent behavior.
