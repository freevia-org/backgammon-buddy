#!/usr/bin/env bash
# Builds an XCFramework for iOS device + simulator. macOS only (CI).
# PREREQUISITES: Xcode CLT; rustup target add aarch64-apple-ios aarch64-apple-ios-sim
set -euo pipefail
cd "$(dirname "$0")"
IPHONEOS_DEPLOYMENT_TARGET="${IPHONEOS_DEPLOYMENT_TARGET:-15.0}" cargo build --release --target aarch64-apple-ios
IPHONEOS_DEPLOYMENT_TARGET="${IPHONEOS_DEPLOYMENT_TARGET:-15.0}" cargo build --release --target aarch64-apple-ios-sim
OUT=../../packages/engine_bindings/native/ios
mkdir -p "$OUT"
# -create-xcframework refuses to overwrite: drop the previous run's output.
rm -rf "$OUT/aigammon_engine.xcframework"
# Honour a redirected cargo target directory, as ios.yml does.
TARGET_DIR="${CARGO_TARGET_DIR:-target}"
xcodebuild -create-xcframework \
  -library "$TARGET_DIR/aarch64-apple-ios/release/libaigammon_engine.a" \
  -library "$TARGET_DIR/aarch64-apple-ios-sim/release/libaigammon_engine.a" \
  -output "$OUT/aigammon_engine.xcframework"
echo "Staged XCFramework -> $OUT"
