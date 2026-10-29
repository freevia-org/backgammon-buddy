# GNU Backgammon evaluator

This is the local, headless GNUbg 1.08.003 evaluator, not a desktop subprocess
or a reimplementation of its neural network. It runs in a separate Dart isolate
from wildbg. A process-wide mutex protects GNUbg's global evaluator state.
Initialized caches and networks live until process exit: upstream's static
initialization flag does not permit a safe shutdown/reopen cycle.

## Build

Windows (MinGW GCC, CMake and Ninja on PATH):

```
cmake -S native/gnubg -B native/gnubg/build/windows-mingw -G Ninja -DCMAKE_BUILD_TYPE=Release -DCMAKE_C_COMPILER=gcc -DCMAKE_CXX_COMPILER=g++
cmake --build native/gnubg/build/windows-mingw --parallel 4
```

The PowerShell staging script selects `gcc`/`g++` explicitly and uses a separate
`build/windows-mingw` directory. This keeps CMake from reusing an MSVC cache when
the Visual Studio environment is also needed for the Flutter app and Rust shim.

`native/gnubg/build-windows.ps1` also stages the DLL for Flutter packaging.
Build/stage wildbg with native/engine_shim/build-windows.ps1 as usual.

Android: Flutter/Gradle builds this CMake target for the APK/AAB ABIs using
NDK 28.2.13676358. The existing wildbg cargo-ndk staging step is still required.
The linker explicitly requests 16 KB pages. Test both engines on API 36's
16 KB emulator; packaging or an ELF-only check does not establish runtime safety.

iOS: `bash native/gnubg/build-ios.sh` stages a combined GNUbg/Expat static
archive in app/ios/Frameworks. Pass `iphonesimulator` for an arm64 simulator.
The Runner force-loads the FFI exports and uses DynamicLibrary.process().

## Evaluation and comparison

GNUbg is the default for new settings; saved engine choices are preserved.
Settings selects the primary engine for AI,
coaching and analysis. The independent “Analyse with both engines” switch
adds a comparison to the tutor's ranked-play panel. Both receive one captured
board, mover and dice; engine-specific results are displayed separately.
Comparisons are optional and do not choose the AI's move or average scores.

GNUbg requests deterministic 2-ply, cubeful search with its default move
filters. An obvious move may remain at a shallower depth; the actual depth
is returned with each candidate. Its native match-equity/cube calculations
receive scores, cube value/owner and Crawford status. The app's legacy
wildbg match-cube adapter remains in use for wildbg.
GNUbg's native search order is preserved. Grading passes the played position
back into GNUbg's analysis path so it and the best candidate are compared at
the same depth. Difficulty sampling uses candidates at the best move's depth.

Android runtime/UI verification from app/:

```
flutter drive --driver test_driver/dual_engine_driver.dart --target integration_test/dual_engine_test.dart -d emulator-5554 --no-dds
```

This uses the integration driver because this Flutter SDK's `flutter test`
device runner relies on a DDS golden-comparison stream and can stall native
worker startup. The driver exercises both actual native libraries and the
persisted settings/comparison UI on the emulator.

The ABI uses mover-relative 26-pip positions. GNUbg row 1 is on roll.
Cube/rank match values are converted from GNUbg's normalized equity to MWC
at the boundary; probabilities retain cumulative win/gammon/backgammon semantics.
Returned checker plays are matched against the core's legal resulting boards.
No silent fallback is performed when GNUbg fails.
Match scores are bounded by GNUbg's 64-away table and match cubes by its
gammon-price cache; invalid inputs fail before native table indexing.

## Verification

On Windows, all 110 engine-binding tests passed, including 40 independent
desktop-GNUbg reference decisions, asymmetric/bar orientation, comparable-depth
grading, invalid-context rejection and repeated native worker startup.
The 172 relevant app tests and 203 game-screen checks passed, covering
Back-navigation regressions, settings migration/persistence,
parallel request startup, stale-result suppression and corrupted-asset repair.
Both real native engines, grading and the comparison/settings UI passed the
integration-driver run on Android 16/API 36 with 16 KB pages. The APK includes
both engines for ARMv7, ARM64 and x86_64, and passed ELF/ZIP alignment checks.
The iOS build integration is provided; a macOS/Xcode validation run remains
required before shipping an iOS build.

## Sources and licensing

`upstream/` contains the evaluator subset and headers from the official source
archive: https://ftp.gnu.org/gnu/gnubg/gnubg-release-1.08.003-sources.tar.gz.
The only evaluation-source changes are EvalInitialise → BuddyEvalInitialise,
returning failure instead of exiting/asserting on bad networks, and checking
network dimensions before accepting initialization. The original GPL notices
are preserved. The private GLib subset adapter uses Expat for XML; it does not
replace the match-equity table or bearoff logic.

`vendor/expat-2.7.5` is from the official release archive:
https://github.com/libexpat/libexpat/releases/download/R_2_7_5/expat-2.7.5.tar.gz
SHA-256: 9931f9860d18e6cf72d183eb8f309bfb96196c00e1d40caa978e95bc9aa978b6.

Assets in app/assets/gnubg come from GNUbg's official Windows 1.08.003
distribution. Their SHA-256 values are enforced before native initialization
by GnuBgInstaller. Every distributed GNUbg-enabled app must provide the
combined GPL-3.0-or-later binary's corresponding source, assets and build
instructions for that exact release. See app/assets/licenses/gnubg-NOTICES.txt
and upstream/COPYING. Original MIT source notices remain intact.
