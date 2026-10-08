# Android device acceptance — 2026-10-09

Status: **signed initial candidate installed; core tutor/review/practice smoke passed**.
Testing briefly paused for a separate user-active task and resumed after explicit
device handback.
This is not final candidate, complete Buddy, or store acceptance.

## Baseline and preservation

The connected physical device is a OnePlus CPH2449 running Android 16, API 36,
with ARM64 support and **4096-byte pages**. Its screen is 1080 × 2412 at density
480, with system font scale 1.0. This device cannot establish 16 KB runtime
compatibility. Two ADB transports refer to this same phone; all actions targeted
one transport explicitly.

The installed legacy tester package reports version 0.13.0, version code
2025. Its certificate is Android Debug, SHA-256
`d950d95af28ddf99800941c4cf895855a26bb711759614bb30d2721b80bce3a4`.
The installed APK was copied to a local temporary evidence folder for certificate
comparison. No private application data was copied, cleared, or modified.

Launching the installed app reached its existing home screen. History displayed
five completed one-point computer matches. Camera permission was denied before
testing. History and baseline UI evidence is retained locally under
`%TEMP%/backgammon-buddy-device-acceptance-2026-10-09/`; device addresses and serial
identifiers are deliberately omitted from this report.

The app is **not debuggable**: an ADB `run-as` check of the legacy package
returned `package not debuggable`. A debug certificate does not imply a
debuggable executable. The installed generation has no History export/import
feature. There is therefore no demonstrated private-database backup and restore
path. The available production release certificate differs from this installed
certificate, so Android cannot perform a data-preserving in-place update using
that candidate. No uninstall or clear-data operation was attempted.

## Candidate checks still required

The owner has now selected `org.freevia.backgammonbuddy` as the real distribution
identity. Its signed candidate can be installed alongside the old package,
preserving all five old matches without an uninstall. This tests the actual new
store candidate, but does not establish migration of data from the old package.
The signed initial candidate was installed side-by-side successfully. No
uninstall, clear-data or legacy database operation was performed. A post-install
legacy History recheck still needs to be recorded.

## Initial candidate evidence

Source `1b17b39`, Android workflow `37856568143`, version 0.14.0/build 10011,
package `org.freevia.backgammonbuddy`. The local APK SHA-256 was independently
checked before installation:
`735ca26b43d022a974ab2bba344b03a26d093f85ca30de18fb9c32611eb2122c`.
The release verifier confirmed the Freevia upload certificate SHA-256
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.
This intermediate binary has online and optional telemetry unconfigured; the
final online configuration and native-notice changes require an update smoke.

## Updated candidate acceptance plan

The phone remains idle until the release verifier supplies the next signed APK.
Only the new `org.freevia.backgammonbuddy` package may be updated. Verify its APK
hash, version and Freevia signing certificate before `adb install -r`; preserve
both this package's saved practice/preferences and the untouched legacy app.

1. Reopen Learning and confirm the saved position, attempt and settings survived
   the update. Check home, a local tutor explanation, enlarged review actions and
   blind practice; capture clean app-only home/tutor/review/practice screenshots.
2. Reset only this test package's camera permission flags if necessary to repeat
   the first refusal. Refuse once, confirm a stable explanatory screen with no
   repeated prompt, then background/resume and leave/reenter the feature. Check
   package-scoped crash/exit records. Do not clear app data or reset global device
   permissions. A camera preview alone does not establish board recognition.
3. Open the local diagnostics report preview and Cancel. Confirm the app remains
   foreground and no GitHub/browser page was opened. Do not submit an issue.
4. Exercise the signed app's real Freevia online lobby with an isolated second
   client using the same shipped transport/controller. Check host/join, fair-dice
   event delivery, unassisted live-game controls, force-stop/rejoin with the same
   local identity, and the authenticated deletion confirmation. Keep cloud test
   identities isolated and submit their deletion requests; record counts only.
   Confirm cloud-access freeze separately from eventual scheduled deletion.
5. Recheck local saved practice after online erasure. Record candidate-specific
   results, remaining limitations and exact screenshot paths. No physical-board,
   optical-QR, audible-speech, offline-network or 16 KB-runtime pass is inferred
   from automated/unit tests.

## Observed initial-candidate behavior

Observed in the signed app on the phone:

- Home opened with Backgammon Buddy branding and Learning & practice entry.
- A five-point cubeless game against Medium AI initialized the native engine;
  AI played the opening and replied after the human move.
- Hint displayed five ranked plays, MWC percentages, percentage-point losses,
  `0-ply` depth/current-stake/no-future-cubes caveat and near-tie warning.
- Expanding the best play showed mover-relative probabilities and concrete
  point/blot/anchor/hitting-opportunity observations. The panel scrolled.
- Selecting a hint staged the move, enabled Undo/Confirm and waited for explicit
  confirmation. Confirm committed it; the AI response and turn-associated
  commentary appeared.
- Surrendering a single ended game one with the correct Black +1 result. Detailed
  review showed the correct separate counts (one White/two Black decisions),
  MWC losses and position before the selected White move.
- Save for practice opened a blind board with the original 0–0/to-five/cubeless
  context. Manually entering 24/20 24/23 and checking the answer produced
  `best · 0.00 pp MWC loss`, matching the live hint and original review.
- Force-stop/relaunch preserved the exercise and Learning showed one saved
  position, one attempt and one successful recall; computer decisions were
  excluded by the human-only default.
- Match length and Try a move first preferences persisted through restart. A
  new one-point match correctly displayed Crawford/no doubling, and asking for
  a hint before staging a complete move showed the try-first prompt.
- Returning from another app preserved the review route. No crash or visible
  lost state was observed in that flow. The compact Explain/Save for practice
  strip was usable but its phone text/tap area is small; a larger layout is
  included in the next candidate.

Camera refusal exposed a separate defect in this initial candidate: choosing
Don't allow reopened the native permission sheet, and a second refusal produced
repeated permission-result/lifecycle transitions. At 02:19:53 local time,
Android removed this app's MainActivity and returned to the previous task. The
app process remained alive; package-scoped crash logs and exit records did not
show a fatal exception or ANR. Testing stopped instead of repeating the prompt.
The camera lifecycle fix retains pending/refused results through `inactive`
permission-sheet events while still releasing a ready camera or a fully
backgrounded screen. Pending/granted/refused/late-event/disposal cases are
covered in focused widget regressions; actual refusal must be retested in the
updated signed binary. No microphone permission or audible-speech claim follows
from this camera test.

App-only screenshot/UI evidence is retained in the temporary evidence folder
above under `candidate-*`. No screenshots of unrelated apps were taken.

| Check | Evidence/status |
|---|---|
| Existing installation opens and History is readable | Observed on the physical phone; five completed matches visible |
| Old package and history preserved | New production identity installed side-by-side with no uninstall/clear-data; post-install old History recheck pending |
| Cross-package history migration | Unsupported; no import/export or private-database recovery path demonstrated |
| Native engine, ranked tutor hints, explanation and move confirmation | Observed working in signed initial candidate 1b17b39 |
| Detailed replay, saved practice, settings persistence | Observed working in signed initial candidate; one successful manual recall retained through restart |
| Background/resume and force-stop/relaunch | Observed; saved learning and selected defaults retained |
| Offline launch | Not performed; transport independence not established |
| Camera permission refusal | Failed on initial candidate: repeated prompt followed by OS activity removal; source fix passes 84 focused lifecycle/calibration/Buddy tests, updated-device retest pending |
| Physical board calibration, camera preview mapping, thrown dice, microphone cadence, audible TTS | Not performed; requires physical setup and human observation |
| 16 KB Android runtime | Not performed on this 4 KB phone; separate target required |
| iPhone acceptance | Not performed; no iPhone target used |

Once a suitable target is available, run the tutor checks in
[release readiness](release-readiness.md) and the complete
[physical Buddy protocol](buddy-mode-test-protocol.md). Simulated camera frames,
widget tests and transcript text are not substitutes for physical board or
audible speech evidence.
