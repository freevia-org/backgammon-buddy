#!/usr/bin/env bash
set -euo pipefail

: "${RUNNER_TEMP:?RUNNER_TEMP is required}"
: "${GITHUB_WORKSPACE:?GITHUB_WORKSPACE is required}"

FLUTTER_SOURCE="$RUNNER_TEMP/flutter-engine-source"
DEPOT_TOOLS="$RUNNER_TEMP/depot_tools"
ENGINE_SOURCE="$FLUTTER_SOURCE/engine/src"
PROFILE="$RUNNER_TEMP/flutter-engine-build-profile.txt"

flutter --version --machine > "$RUNNER_TEMP/flutter-version.json"
FRAMEWORK_REVISION="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["frameworkRevision"])' "$RUNNER_TEMP/flutter-version.json")"
ENGINE_REVISION="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["engineRevision"])' "$RUNNER_TEMP/flutter-version.json")"

if [ -e "$FLUTTER_SOURCE" ] || [ -e "$DEPOT_TOOLS" ]; then
  echo "Temporary Flutter engine paths already exist under $RUNNER_TEMP" >&2
  exit 1
fi
git init "$FLUTTER_SOURCE"
git -C "$FLUTTER_SOURCE" remote add origin https://github.com/flutter/flutter.git
git -C "$FLUTTER_SOURCE" fetch --depth=1 origin "$FRAMEWORK_REVISION"
git -C "$FLUTTER_SOURCE" checkout --detach FETCH_HEAD
cp "$FLUTTER_SOURCE/engine/scripts/standard.gclient" "$FLUTTER_SOURCE/.gclient"

DEPOT_TOOLS_REVISION=a20039648c0de69d8156906b18052bd47e9bf230
git init "$DEPOT_TOOLS"
git -C "$DEPOT_TOOLS" remote add origin https://chromium.googlesource.com/chromium/tools/depot_tools.git
git -C "$DEPOT_TOOLS" fetch --depth=1 origin "$DEPOT_TOOLS_REVISION"
git -C "$DEPOT_TOOLS" checkout --detach FETCH_HEAD
export DEPOT_TOOLS_UPDATE=0
export DEPOT_TOOLS_METRICS=0
test "$(git -C "$DEPOT_TOOLS" rev-parse HEAD)" = "$DEPOT_TOOLS_REVISION"
DEPOT_TOOLS_DIR="$DEPOT_TOOLS" "$DEPOT_TOOLS/ensure_bootstrap"
export PATH="$DEPOT_TOOLS:$PATH"
(
  cd "$FLUTTER_SOURCE"
  gclient sync --no-history --nohooks --verbose
  gclient runhooks
)
test -f "$DEPOT_TOOLS/python3_bin_reldir.txt"
test "$(git -C "$DEPOT_TOOLS" rev-parse HEAD)" = "$DEPOT_TOOLS_REVISION"
ACTUAL_FRAMEWORK_REVISION="$(git -C "$FLUTTER_SOURCE" rev-parse HEAD)"
ACTUAL_ENGINE_REVISION="$(cat "$FLUTTER_SOURCE/bin/internal/engine.version")"
ACTUAL_ENGINE_SOURCE_CHECKOUT_REVISION="$(git -C "$ENGINE_SOURCE/flutter" rev-parse HEAD)"
if [ "$ACTUAL_FRAMEWORK_REVISION" != "$FRAMEWORK_REVISION" ]; then
  echo "Flutter framework checkout mismatch: expected $FRAMEWORK_REVISION, got $ACTUAL_FRAMEWORK_REVISION" >&2
  exit 1
fi
if [ "$ACTUAL_ENGINE_REVISION" != "$ENGINE_REVISION" ]; then
  echo "Engine version mismatch: Flutter SDK expects $ENGINE_REVISION, checkout has $ACTUAL_ENGINE_REVISION" >&2
  exit 1
fi
if [ "$ACTUAL_ENGINE_SOURCE_CHECKOUT_REVISION" != "$FRAMEWORK_REVISION" ]; then
  echo "Engine source is not from the pinned Flutter checkout: expected $FRAMEWORK_REVISION, checkout has $ACTUAL_ENGINE_SOURCE_CHECKOUT_REVISION" >&2
  exit 1
fi
# engine.version names the Flutter-framework commit that last changed the
# engine subtree; engine/src/flutter is part of this Flutter checkout, not a
# separate Git repository. Compare the subtree trees at both pinned commits.
git -C "$FLUTTER_SOURCE" fetch --depth=1 origin "$ENGINE_REVISION"
ENGINE_SOURCE_TREE_SHA="$(git -C "$FLUTTER_SOURCE" rev-parse "$FRAMEWORK_REVISION:engine")"
ENGINE_VERSION_TREE_SHA="$(git -C "$FLUTTER_SOURCE" rev-parse "$ENGINE_REVISION:engine")"
if [ "$ENGINE_SOURCE_TREE_SHA" != "$ENGINE_VERSION_TREE_SHA" ]; then
  echo "Engine source tree does not match engine.version $ENGINE_REVISION: expected tree $ENGINE_VERSION_TREE_SHA, checkout has $ENGINE_SOURCE_TREE_SHA" >&2
  exit 1
fi

git -C "$ENGINE_SOURCE/flutter" apply --check \
  "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch"
git -C "$ENGINE_SOURCE/flutter" apply \
  "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch"
git -C "$ENGINE_SOURCE/flutter" diff --check

python3 "$ENGINE_SOURCE/flutter/tools/gn" \
  --ios --runtime-mode=release --no-dart-secure-socket
test -f "$ENGINE_SOURCE/out/ios_release/args.gn"
python3 "$ENGINE_SOURCE/flutter/tools/gn" \
  --runtime-mode=release --mac-cpu arm64 --no-build-engine-artifacts
test -f "$ENGINE_SOURCE/out/host_release_arm64/args.gn"
echo 'Building the iOS release engine and its target-local gen_snapshot.'
ninja -C "$ENGINE_SOURCE/out/ios_release"
IOS_GEN_SNAPSHOT="$ENGINE_SOURCE/out/ios_release/clang_arm64/gen_snapshot"
test -x "$IOS_GEN_SNAPSHOT"

# Flutter's release build needs host Impeller tools. Build only those two
# targets from the same pinned engine source instead of relying on host tools
# that may not be published for the runner's architecture.
FLUTTER_ENGINE_STAMP="$FLUTTER_ROOT/bin/cache/engine.stamp"
DART_SDK="$FLUTTER_ROOT/bin/cache/dart-sdk"
ACTUAL_HOST_ENGINE_REVISION="$(cat "$FLUTTER_ENGINE_STAMP")"
EXPECTED_DART_SDK_VERSION="$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["dartSdkVersion"])' "$RUNNER_TEMP/flutter-version.json")"
ACTUAL_DART_SDK_VERSION="$("$DART_SDK/bin/dart" --version 2>&1 | sed -E 's/^Dart SDK version: ([^ ]+).*/\1/')"
if [ "$ACTUAL_HOST_ENGINE_REVISION" != "$ENGINE_REVISION" ]; then
  echo "Flutter SDK engine stamp mismatch: expected $ENGINE_REVISION, cache has $ACTUAL_HOST_ENGINE_REVISION" >&2
  exit 1
fi
if [ "$ACTUAL_DART_SDK_VERSION" != "$EXPECTED_DART_SDK_VERSION" ]; then
  echo "Flutter host Dart SDK mismatch: expected $EXPECTED_DART_SDK_VERSION, cache has $ACTUAL_DART_SDK_VERSION" >&2
  exit 1
fi
test -x "$DART_SDK/bin/dart"
test -f "$DART_SDK/bin/snapshots/frontend_server_aot.dart.snapshot"
HOST_OUT="$ENGINE_SOURCE/out/host_release_arm64"
if [ -e "$HOST_OUT/dart-sdk" ]; then
  echo "Expected a no-build host GN output, found $HOST_OUT/dart-sdk" >&2
  exit 1
fi
ln -s "$DART_SDK" "$HOST_OUT/dart-sdk"
echo 'Building only the pinned host Impeller compiler and tessellator targets.'
ninja -C "$HOST_OUT" \
  //flutter/impeller/compiler:impellerc \
  //flutter/impeller/tessellator:tessellator_shared
HOST_IMPELLERC="$HOST_OUT/impellerc"
HOST_TESSELLATOR="$HOST_OUT/libtessellator.dylib"
if [ ! -x "$HOST_IMPELLERC" ] || [ ! -f "$HOST_TESSELLATOR" ]; then
  echo "Pinned host targets did not produce impellerc and libtessellator in $HOST_OUT" >&2
  exit 1
fi
lipo -verify_arch arm64 "$HOST_IMPELLERC"
lipo -verify_arch arm64 "$HOST_TESSELLATOR"

XCODE_VERSION="$(xcodebuild -version | tr '\n' ' ')"
ACTUAL_DEPOT_TOOLS_REVISION="$(git -C "$DEPOT_TOOLS" rev-parse HEAD)"
IOS_SDK_VERSION="$(xcrun --sdk iphoneos --show-sdk-version)"
PATCH_SHA256="$(shasum -a 256 "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch" | awk '{print $1}')"
IOS_GEN_SNAPSHOT_SHA256="$(shasum -a 256 "$IOS_GEN_SNAPSHOT" | awk '{print $1}')"
HOST_IMPELLERC_SHA256="$(shasum -a 256 "$HOST_IMPELLERC" | awk '{print $1}')"
HOST_TESSELLATOR_SHA256="$(shasum -a 256 "$HOST_TESSELLATOR" | awk '{print $1}')"
HOST_DART_SHA256="$(shasum -a 256 "$DART_SDK/bin/dart" | awk '{print $1}')"
REPOSITORY_REVISION="${GITHUB_SHA:-$(git -C "$GITHUB_WORKSPACE" rev-parse HEAD)}"
PACKAGE_RESOLVED_SHA256="$(shasum -a 256 "$GITHUB_WORKSPACE/app/ios/Runner.xcworkspace/xcshareddata/swiftpm/Package.resolved" | awk '{print $1}')"
cat > "$PROFILE" <<EOF
repository_revision=$REPOSITORY_REVISION
package_resolved_sha256=$PACKAGE_RESOLVED_SHA256
flutter_version=$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["frameworkVersion"])' "$RUNNER_TEMP/flutter-version.json")
framework_revision=$FRAMEWORK_REVISION
engine_revision=$ENGINE_REVISION
engine_source_checkout_revision=$ACTUAL_ENGINE_SOURCE_CHECKOUT_REVISION
engine_source_tree_sha=$ENGINE_SOURCE_TREE_SHA
engine_version_engine_tree_sha=$ENGINE_VERSION_TREE_SHA
depot_tools_revision=$ACTUAL_DEPOT_TOOLS_REVISION
xcode=$XCODE_VERSION
ios_sdk=$IOS_SDK_VERSION
target_gn_args=--ios --runtime-mode=release --no-dart-secure-socket
host_gn_args=--runtime-mode=release --mac-cpu arm64 --no-build-engine-artifacts
host_engine_revision=$ACTUAL_HOST_ENGINE_REVISION
host_artifact_directory=out/host_release_arm64
host_artifact_source=pinned_engine_source
host_gn_targets=//flutter/impeller/compiler:impellerc,//flutter/impeller/tessellator:tessellator_shared
host_dart_sdk_version=$ACTUAL_DART_SDK_VERSION
host_dart_sha256=$HOST_DART_SHA256
host_impellerc_sha256=$HOST_IMPELLERC_SHA256
host_libtessellator_sha256=$HOST_TESSELLATOR_SHA256
ios_gen_snapshot_sha256=$IOS_GEN_SNAPSHOT_SHA256
engine_patch_sha256=$PATCH_SHA256
EOF
cat "$PROFILE" >> "$GITHUB_STEP_SUMMARY"
echo "FLUTTER_ENGINE_SRC_PATH=$ENGINE_SOURCE" >> "$GITHUB_ENV"
echo "FLUTTER_ENGINE_PROFILE=$PROFILE" >> "$GITHUB_ENV"
