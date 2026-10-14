#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
variant="${1:-iphoneos}"
case "$variant" in
  iphoneos) ;;
  iphonesimulator) ;;
  *) echo "Expected iphoneos or iphonesimulator" >&2; exit 1 ;;
esac
cmake -S . -B "build/$variant" -DBUDDY_GNUBG_STATIC=ON \
  -DCMAKE_SYSTEM_NAME=iOS -DCMAKE_OSX_SYSROOT="$variant" \
  -DCMAKE_OSX_ARCHITECTURES=arm64 -DCMAKE_OSX_DEPLOYMENT_TARGET=13.0 \
  -DCMAKE_BUILD_TYPE=Release
cmake --build "build/$variant" --parallel 4
mkdir -p ../../app/ios/Frameworks
libtool -static -o ../../app/ios/Frameworks/libbuddy_gnubg.a \
  "build/$variant/libbuddy_gnubg.a" "build/$variant/vendor/expat-2.7.5/libexpat.a"
