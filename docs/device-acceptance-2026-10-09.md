# Android device acceptance — 2026-10-09

Status: **signed build 10015 passed the core tutor, review, practice, permission,
diagnostics and real online flows; final build 10017 passed a data-preserving
update and focused smoke**. No remaining blocker was observed in these flows.
This does not establish complete physical Buddy, optical QR, audible speech,
16 KB runtime or store acceptance. The phone was released after testing with
its original display settings restored.

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

## Installation and data preservation

The owner has now selected `org.freevia.backgammonbuddy` as the real distribution
identity. Its signed candidate can be installed alongside the old package,
preserving all five old matches without an uninstall. This tests the actual new
store candidate, but does not establish migration of data from the old package.
The signed initial candidate was installed side-by-side successfully, then
updated in place to builds 10015 and 10017 using the same Freevia certificate.
No uninstall, clear-data or legacy database operation was performed. A
post-install legacy History recheck was not performed; preservation is supported
by the separate package identity and absence of destructive operations, not a
second inspection of its private records.

## Initial candidate evidence

Source `1b17b39`, Android workflow `37856568143`, version 0.14.0/build 10011,
package `org.freevia.backgammonbuddy`. The local APK SHA-256 was independently
checked before installation:
`735ca26b43d022a974ab2bba344b03a26d093f85ca30de18fb9c32611eb2122c`.
The release verifier confirmed the Freevia upload certificate SHA-256
`ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a`.
This intermediate binary had online and optional telemetry unconfigured. It
established the original saved local game and practice exercise used to verify
subsequent updates.

## Final candidate identity and update checks

Build **10015**, version 0.14.0, source
`9f92e47019aede6516a84a1939af0d9fdf69d7fc`, Android workflow `37861085772`:

- APK SHA-256:
  `813166d65c2e6a1432a671a2e0fc5f0512a4ccc0cd9386e975d5b3b6f344021e`.
- Installed in place over 10011 after an independent local hash check. The
  release verifier checked the certificate, both ARM ABIs, 16 KB ELF/ZIP
  alignment, all 14 bundled license assets and actual Freevia online settings.
  Optional native telemetry remained unconfigured.
- The original five-point local match, completed game, saved exercise and
  settings survived. Learning initially retained one attempt and one successful
  recall; the second manual practice attempt below increased both to two.

Final build **10017**, version 0.14.0, source `e6c8749`, Android workflow
`37863371662`, changes only the removal of two unused AdServices permissions:

- APK SHA-256:
  `57dac295d9bed3aeeaa2a4546b17df7dbb0b9e5ea7d8b11d44f58ddac96f5ba8`.
- Independently hash-checked and installed in place over 10015. The installed
  package reports version code 10017, minimum API 24 and target API 36.
- Installed-package permission inspection confirms no classic advertising-ID
  or AdServices permissions. Camera and microphone remained denied.
- Original local History, the completed online game and the saved exercise
  survived. Learning still shows **one position, two attempts and two successful
  recalls**. A new local game ran the native engine and displayed live ranked
  hints and an expanded strategic explanation.

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
  strip was usable but its phone text/tap area was small; the larger layout was
  subsequently verified in build 10015.

Camera refusal exposed a separate defect in this initial candidate: choosing
Don't allow reopened the native permission sheet, and a second refusal produced
repeated permission-result/lifecycle transitions. At 02:19:53 local time,
Android removed this app's MainActivity and returned to the previous task. The
app process remained alive; package-scoped crash logs and exit records did not
show a fatal exception or ANR. Testing stopped instead of repeating the prompt.
The camera lifecycle fix retains pending/refused results through `inactive`
permission-sheet events while still releasing a ready camera or a fully
backgrounded screen. Pending/granted/refused/late-event/disposal cases are
covered in focused widget regressions. The signed 10015 retest below closes this
observed defect. No microphone permission or audible-speech claim follows from
this camera test.

App-only screenshot/UI evidence is retained in the temporary evidence folder
above under `candidate-*`. No screenshots of unrelated apps were taken.

## Updated signed-build results

### Camera refusal and lifecycle — build 10015

The previously denied state opened a stable explanation that camera access must
be allowed in device settings and that the rest of the app remains usable.
Backgrounding and resuming retained this explanation. No repeated permission
sheet or unexpected activity exit occurred.

The phone rejected an ADB permission-flag reset for lack of the required system
privilege. Instead, the normal Android settings screen for this application
alone was used to select **Ask every time**. After returning to Buddy, refusing
the fresh native prompt once produced the same stable error screen. Subsequent
waits and navigation did not reopen the prompt. No app data or global permission
settings were reset. Package-scoped exit/crash checks showed no new fatal
exception or ANR; update termination and deliberate force-stops were expected.

The source fix also passed 84 focused calibration/lifecycle/Buddy tests and an
independent review. This physical result establishes refusal handling, not
camera preview, recognition or microphone behavior.

### Diagnostics, review and practice — build 10015

- Diagnostics displayed an empty error log. The report action opened the exact
  local report preview with version/platform information. **Cancel** returned
  to Diagnostics while the app remained foreground; no GitHub/browser page
  opened and no issue was sent.
- Detailed review retained the original one White/two Black checker decisions,
  separate mean MWC losses and correct pre-move position. Enlarged Explain and
  Save for practice controls measured 144 physical pixels at density 480,
  equivalent to 48 logical pixels, and were usable on the phone.
- Explain displayed score-aware MWC, current-stake, 0-ply and no-future-cube
  limits plus position-grounded observations.
- Saving the same decision deduplicated the existing exercise. The blind board
  preserved its original 0–0/to-five/cubeless context and showed no answer.
  Manually entering 24/20 24/23 and checking it produced Best / 0.00 pp MWC loss,
  consistent with the original review. Learning retained two attempts and two
  successful recalls after restart. An early repeat did not advance the due
  date or successful-due-review count.

### Real Freevia online service — build 10015

An isolated second client used the shipped `NetMatchController`,
`FirestoreTransport` and gRPC implementation against the production Freevia
project. Match events were generated through normal client actions, not forged
administrative records. Both peer harness runs ended successfully and closed
their transports. Only disposable test identities were used.

- **Phone hosts:** the peer joined a five-point match. Opening dice and legal
  moves synchronized. Force-stopping the phone app at a resolved pre-roll turn,
  relaunching and choosing Rejoin restored the same score, turn and event log.
  The phone then rolled, manually played and confirmed a legal move, and the
  peer reply synchronized: six events and three rolls in total.
- **Immediate deletion access block:** after that peer submitted its own
  authenticated deletion request, the phone's Rejoin attempt was rejected with
  “That match is not open to you.” This demonstrates blocked related-match
  access separately from the later administrative purge.
- **Phone joins:** a second isolated peer hosted a one-point cubeless match.
  The phone joined as Black, displayed Crawford/no doubling, manually played
  1/4 1/2 and received the peer's 24/18 24/20 reply. A single resignation and
  acceptance completed the match at White 1–0 Black. The phone reported Saved
  to History; the peer confirmed match completion with six events/two rolls.
- Live games had unassisted controls: no ranked tutor hint or teaching controls
  were exposed. The lobby explained the policy.
- Both peers submitted authenticated deletion requests. The phone's Privacy
  action then acknowledged its own request and sign-out. Local History and
  practice remained intact after restart and the 10017 upgrade.

The first natural scheduled cleanup, run `37859798046` at 23:30 UTC on
2026-10-08, previously proved actual deletion of two disposable accounts and
one match tree, with completed request markers. The newer phone-test batch is
separate: **three identities, two matches and 17 child documents** have accepted
deletion requests. As of the 2026-10-09 00:31 UTC check, the next scheduled run
had not appeared; independent reads still found all three accounts, both match
trees and three pending markers. No manual apply or administrative shortcut was
used. GitHub scheduling
is best effort; nominal `:17` execution is not an exact-time guarantee.

## Actual store screenshots and display restoration

Clean app-only screenshots were captured from actual signed app rendering.
For the required 9:16 shape, the device's logical display size was temporarily
overridden and restored in a `finally` path immediately after each capture.
The exact original size **1080 × 2412** and density **480** were read back after
the last capture. No screen was generated or cropped to invent app behavior.

At 1080 × 1920 (360 × 640 logical pixels at the same density), lower home
actions initially fall below the viewport. A real upward scroll revealed every
action, including History; none was inaccessible. The final larger home
capture fits all actions at once.

Files under `%TEMP%/backgammon-buddy-device-acceptance-2026-10-09/`:

| File | Signed build | Actual image size |
|---|---|---|
| `final-store-home-10017.png` | 10017 | 1800 × 3200 |
| `final-store-hints-10017.png` | 10017 | 1440 × 2560 |
| `final-store-live-explanation-10017.png` | 10017 | 1440 × 2560 |
| `final-store-review.png` | 10015 | 1440 × 2560 |
| `final-store-explanation.png` | 10015 | 1440 × 2560 |
| `final-store-practice-blind.png` | 10015 | 1440 × 2560 |
| `final-store-practice-result.png` | 10015 | 1440 × 2560 |

These views contain no cloud invite or identity identifiers. Acceptance-only
screenshots and UI evidence use the `final-*` prefix in the same local folder.

| Check | Evidence/status |
|---|---|
| Existing installation opens and History is readable | Observed on the physical phone; five completed matches visible |
| Old package and history preserved | New production identity installed side-by-side with no uninstall/clear-data; post-install old History recheck pending |
| Cross-package history migration | Unsupported; no import/export or private-database recovery path demonstrated |
| Native engine, ranked tutor hints, explanation and move confirmation | Initial full flow passed; native game/hints/explanation repeated successfully on final signed 10017 |
| Detailed replay, saved practice, settings persistence | 10015 passed enlarged controls and second manual recall; History/practice/settings retained through 10017 update |
| Background/resume and force-stop/relaunch | Observed; saved learning and selected defaults retained |
| Offline launch | Not performed; transport independence not established |
| Camera permission refusal | Initial defect fixed; stable fresh refusal and denied background/resume observed on signed 10015 |
| Diagnostics report preview/Cancel | Passed on 10015; no GitHub/browser navigation or issue submission |
| Real online host, join, rejoin, completed game and erasure request | Passed on 10015 against dedicated Freevia backend; immediate match access block observed; new batch's eventual purge remains pending verification |
| Final permission-clean package | 10017 installed and inspected; no advertising-ID or AdServices permissions |
| Physical board calibration, camera preview mapping, thrown dice, optical QR, microphone cadence, audible TTS | Not performed; requires physical setup and human observation |
| 16 KB Android runtime | Not performed on this 4 KB phone; separate target required |
| iPhone acceptance | Not performed; no iPhone target used |

Once a suitable target is available, run the tutor checks in
[release readiness](release-readiness.md) and the complete
[physical Buddy protocol](buddy-mode-test-protocol.md). Simulated camera frames,
widget tests and transcript text are not substitutes for physical board or
audible speech evidence.
