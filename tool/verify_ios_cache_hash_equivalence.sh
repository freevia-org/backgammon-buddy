#!/usr/bin/env bash
set -euo pipefail

OUTPUT="${RUNNER_TEMP:-/tmp}/bgb-cache-hash-equivalence"
xcrun clang++ -arch arm64 -std=c++17 \
  tool/verify_ios_cache_hash_equivalence.cc \
  -o "$OUTPUT"
"$OUTPUT"
