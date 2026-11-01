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
export PATH="$DEPOT_TOOLS:$PATH"
(
  cd "$FLUTTER_SOURCE"
  gclient sync --no-history --nohooks --verbose
  gclient runhooks
)
ACTUAL_FRAMEWORK_REVISION="$(git -C "$FLUTTER_SOURCE" rev-parse HEAD)"
ACTUAL_ENGINE_REVISION="$(cat "$FLUTTER_SOURCE/bin/internal/engine.version")"
if [ "$ACTUAL_FRAMEWORK_REVISION" != "$FRAMEWORK_REVISION" ]; then
  echo "Flutter framework checkout mismatch: expected $FRAMEWORK_REVISION, got $ACTUAL_FRAMEWORK_REVISION" >&2
  exit 1
fi
if [ "$ACTUAL_ENGINE_REVISION" != "$ENGINE_REVISION" ]; then
  echo "Engine version mismatch: Flutter SDK expects $ENGINE_REVISION, checkout has $ACTUAL_ENGINE_REVISION" >&2
  exit 1
fi

git -C "$ENGINE_SOURCE/flutter" apply --check \
  "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch"
git -C "$ENGINE_SOURCE/flutter" apply \
  "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch"
git -C "$ENGINE_SOURCE/flutter" diff --check

python3 "$ENGINE_SOURCE/flutter/tools/gn" \
  --ios --runtime-mode=release --no-dart-secure-socket
python3 "$ENGINE_SOURCE/flutter/tools/gn" \
  --runtime-mode=release --mac-cpu arm64
ninja -C "$ENGINE_SOURCE/out/ios_release"
ninja -C "$ENGINE_SOURCE/out/host_release_arm64"

XCODE_VERSION="$(xcodebuild -version | tr '\n' ' ')"
ACTUAL_DEPOT_TOOLS_REVISION="$(git -C "$DEPOT_TOOLS" rev-parse HEAD)"
IOS_SDK_VERSION="$(xcrun --sdk iphoneos --show-sdk-version)"
PATCH_SHA256="$(shasum -a 256 "$GITHUB_WORKSPACE/tool/patches/flutter-ios-commoncrypto-cache-hash.patch" | awk '{print $1}')"
REPOSITORY_REVISION="${GITHUB_SHA:-$(git -C "$GITHUB_WORKSPACE" rev-parse HEAD)}"
PACKAGE_RESOLVED_SHA256="$(shasum -a 256 "$GITHUB_WORKSPACE/app/ios/Runner.xcworkspace/xcshareddata/swiftpm/Package.resolved" | awk '{print $1}')"
cat > "$PROFILE" <<EOF
repository_revision=$REPOSITORY_REVISION
package_resolved_sha256=$PACKAGE_RESOLVED_SHA256
flutter_version=$(python3 -c 'import json,sys; print(json.load(open(sys.argv[1]))["frameworkVersion"])' "$RUNNER_TEMP/flutter-version.json")
framework_revision=$FRAMEWORK_REVISION
engine_revision=$ENGINE_REVISION
depot_tools_revision=$ACTUAL_DEPOT_TOOLS_REVISION
xcode=$XCODE_VERSION
ios_sdk=$IOS_SDK_VERSION
target_gn_args=--ios --runtime-mode=release --no-dart-secure-socket
host_gn_args=--runtime-mode=release --mac-cpu arm64
engine_patch_sha256=$PATCH_SHA256
EOF
cat "$PROFILE" >> "$GITHUB_STEP_SUMMARY"
echo "FLUTTER_ENGINE_SRC_PATH=$ENGINE_SOURCE" >> "$GITHUB_ENV"
echo "FLUTTER_ENGINE_PROFILE=$PROFILE" >> "$GITHUB_ENV"
