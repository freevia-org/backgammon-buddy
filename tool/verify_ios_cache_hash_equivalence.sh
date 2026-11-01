#!/usr/bin/env bash
set -euo pipefail

DERIVED_DATA="$HOME/Library/Developer/Xcode/DerivedData"
BSSL_SLICE="$(find "$DERIVED_DATA" \
  -path '*/SourcePackages/artifacts/grpc-binary/openssl_grpc/openssl_grpc.xcframework/macos-arm64_x86_64' \
  -type d -print -quit)"
if [ -z "$BSSL_SLICE" ]; then
  echo 'Pinned grpc-binary BoringSSL macOS slice was not found in Xcode SourcePackages.' >&2
  exit 1
fi

FRAMEWORK="$BSSL_SLICE/openssl_grpc.framework"
BINARY="$FRAMEWORK/Versions/A/openssl_grpc"
if ! xcrun nm -arch arm64 -g "$BINARY" | rg ' T _GRPC_SHA1$' > /dev/null; then
  echo 'Pinned BoringSSL framework does not export the expected GRPC_SHA1 symbol.' >&2
  exit 1
fi

OUTPUT="${RUNNER_TEMP:-/tmp}/bgb-cache-hash-equivalence"
xcrun clang++ -arch arm64 -std=c++17 \
  -F "$BSSL_SLICE" \
  tool/verify_ios_cache_hash_equivalence.cc \
  -framework openssl_grpc \
  -o "$OUTPUT"
"$OUTPUT"
