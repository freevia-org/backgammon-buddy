# Code review and tutoring direction — 2026-10-08

AI Gammon has a substantial rules, engine, multiplayer and test foundation. The
largest product gap was that the tutor mostly exposed rankings and marks: a
learner needed comparisons, contextual feedback and control over when help is
revealed. This round adds those options and fixes correctness problems that could
undermine trust in the feedback. It is a stronger coaching app, with a personal
practice curriculum still to build.

Three parallel agents reviewed tutoring, game/engine correctness, and publishing;
the coordinating agent reviewed integration and ran the wider test suites. The
work stays in the current checkout; no version bump or publication was performed.

## Tutoring implemented

| Option | Behavior |
|---|---|
| Best-move hints | Reveal ranked legal plays while deciding; candidates can be previewed and compared. Can be disabled while retaining after-move coaching. |
| Move explanations | Show the estimated equity difference and win/gammon outcomes; describe hits, entries, points made/broken, blots and bear-offs. Compare an alternative with the top play. Available for live decisions and post-game analysis. |
| Game commentary | Offer position prompts and review recent decisions from both sides through the coaching panel. |
| Cube advice | Independently enable match-aware double/take/pass suggestions; disabled for cubeless games and outside the valid decision window. |

The options are per-match: set them in local-game setup or change them in the
standard game's coaching panel. They are not a persisted learner profile, and
Buddy's voice/perception screen remains a separate teaching surface.

Explanations deliberately distinguish **measured estimates** from **observable
board changes**. The neural evaluator does not expose a reasoning trace, so a
statement such as “this hits a blot” is not presented as proof that hitting caused
the higher equity. Checker rankings are currently cubeless and ignore match score
and future doubling; cube advice uses the match score. Close alternatives may be
effectively tied. These limits are visible alongside the explanations.

Sources: [coaching models](../app/lib/tutor/coaching.dart),
[option/explanation widgets](../app/lib/tutor/coaching_widgets.dart),
[hint panel](../app/lib/screens/game/hint_panel.dart),
[live game](../app/lib/screens/game_screen.dart),
[post-game analysis](../app/lib/screens/analysis_screen.dart).

## Findings fixed

P1 means a high-impact correctness/security problem; P2 means a material bug or
release reliability issue. The table describes pre-fix behavior and the landed
remedy, rather than treating these as remaining failures.

| Severity | Finding and remedy | Source |
|---|---|---|
| P1 | Empty or incomplete engine rankings could assign zero equity loss and **Best** to an unassessed move. Missing evidence now yields unavailable assessment. The analysis cache version is advanced so old false-Best results are recomputed; malformed caches also recover from the original event log. | [TutorService](../app/lib/tutor/tutor_service.dart), [GameAnalysis](../app/lib/tutor/game_analyzer.dart), [analysis loading](../app/lib/screens/analysis_screen.dart) |
| P1 | Engine request timeouts did not cover the initial worker handshake. A worker that never initialized could leave the app waiting forever. Startup now has a separate 60-second bound and failure cleanup. | [EngineService](../packages/engine_bindings/lib/src/engine_service.dart) |
| P1 | Multiplayer saves already queued at match/game end were skipped after the screen disposed its controller. Accepted persistence work now drains after disposal. | [NetMatchController persistence queue](../app/lib/net/net_match_controller.dart) |
| P1 | Mobile `workflow_run` jobs accepted a successful PR run if its head branch was named master, then checked out that head in a job with release secrets. Automatic jobs now require a same-repository master **push**, in addition to CI success. Maintainer-authorized manual dispatch remains intentional. | [Android workflow](../.github/workflows/android.yml), [iOS workflow](../.github/workflows/ios.yml) |
| P1 | Flutter's default split APK build included x86_64 while the Rust step compiled only ARMv7/ARM64, creating an APK with no matching engine. Explicit Flutter target platforms now match Rust, with checks inside the produced artifacts. | [Android build](../.github/workflows/android.yml) |
| P2 | Queued multiplayer persistence read the mutable match after later games advanced it, saving a later score for an earlier game. Each completed game now captures its own match snapshot. | [NetMatchController game completion](../app/lib/net/net_match_controller.dart) |
| P2 | Computer resignation responses evaluated the acceptor as the on-roll side even though the offerer keeps the turn. Evaluation now uses the offerer and inverts the result; Crawford outcomes use the post-Crawford equity table. | [AiAgent resignation response](../app/lib/game/player_agent.dart) |
| P2 | Delayed hint/cube results could outlive their position/offer/option gate. Stale results are discarded and cube advice respects cubeless play. | [TutorSync](../app/lib/screens/game/tutor_sync.dart), [GameScreen](../app/lib/screens/game_screen.dart), [HintPanel](../app/lib/screens/game/hint_panel.dart) |
| P2 | Hint “Loss” values used a negative sign and long panels had inadequate scroll bounds. Loss now reads as a nonnegative cost and panels scroll within the screen. | [HintPanel](../app/lib/screens/game/hint_panel.dart) |
| P2 | Missing signing credentials still allowed a debug-signed APK into automatic tester distribution, creating an update-identity trap. Distribution now requires release signing, while diagnostic build artifacts remain available. Flutter test/build jobs also share the same SDK pin. | [Android workflow](../.github/workflows/android.yml), [CI](../.github/workflows/ci.yml), [iOS workflow](../.github/workflows/ios.yml) |
| P2 | Native wildbg notices were not packaged or accessible in-app. Settings now opens Flutter's license page, with the exact upstream MIT/Apache-2.0 texts and engine/net provenance bundled and registered. Remaining transitive/model review is documented separately. | [Settings](../app/lib/screens/settings_screen.dart), [license collector](../app/lib/licensing/third_party_licenses.dart), [license assets](../app/assets/licenses/) |

## Highest-value next tutoring work

| Order | Improvement | Why it matters / acceptance direction |
|---|---|---|
| 1 | Decision-based review and practice | Turn an error into a saved position with the original dice/score. Let the learner retry before revealing alternatives, then revisit mistakes on a spaced schedule. Measure improvement on repeated decisions, not just games played. |
| 2 | Personal learning profile | Persist tutoring preferences and aggregate recurring themes (leaving shots, home-board construction, racing/bear-off, cube decisions). A post-game lesson should explain one or two recurring problems with examples from that game. |
| 3 | Score-aware checker ranking and confidence | Use the appropriate match utility for checker choices, or keep the current explicit cubeless limit. Expose search depth and near-tie uncertainty before calling advice authoritative. Compare behavior at gammon-go/gammon-save and Crawford scores. |
| 4 | Complete the post-game review | Include cube mistakes and separate forced passes from the denominator of decision-error statistics. A learner should not appear stronger merely because many turns had no choice. |
| 5 | Better strategic explanations | Add verifiable prime, anchor, race/contact, timing and direct-shot features. Compare the chosen play with the best counterfactual; test color symmetry and tactical exceptions. Avoid implying that a simple motif explains every neural preference. |
| 6 | Guided teaching cadence | Offer “try first, then reveal” practice, quieter commentary and progressive detail. Extend the same teaching choices to Buddy's spoken experience, with real-device usability checks. |
| 7 | Clear assistance agreement in multiplayer | Tutor assistance is local and can be enabled in network play. Define an explicit casual/coached-game agreement before presenting this as competitive unassisted play. |

## Remaining engineering and publishing risks

- Game persistence still records completed games; local in-progress resume is not
  implemented. `PersistenceHooks` writes the game record and score in separate
  operations; an atomic transaction would reduce partial-save states.
- The startup deadline bounds the caller's wait. Dart isolate termination cannot
  guarantee immediate interruption of a native FFI call that has hung inside the
  engine; an out-of-process engine would be a stronger isolation boundary.
- The standard game screen still coordinates many concerns. Prefer gradual
  extraction of coaching presentation/state behind tested boundaries over another
  broad rewrite while new teaching behavior settles.
- Mobile store release remains gated on public privacy information, dependency
  notices, signed artifacts, platform checks and real-device acceptance. The iOS
  ad-hoc distribution flow is not an App Store submission flow. The new Android
  bundle option prepares an artifact only.
- Buddy's camera dice reader is not reliable enough to advertise automatic dice
  reading. The committed certified-roll corpus remains 0/4 recognized and 0 wrong;
  typed dice remain the supported input path. Run the existing physical-board
  acceptance protocol before describing the feature as validated on devices.

See [release readiness](release-readiness.md) for the exact open gates, data
inventory, verified official store guidance and candidate acceptance sequence.

## Validation

The coordinating agent ran `dart analyze --fatal-infos` successfully for all six
packages. Package tests passed as follows:

| Suite | Passed |
|---|---:|
| backgammon_core | 140 |
| board_vision (including committed corpus) | 546 |
| match_transport | 104 |
| lan_play (`-P ci`) | 145 |
| online_client unit tests | 143 |
| engine_bindings unit tests | 62 |
| engine_bindings real-engine profile | 17 |
| **Package/native total** | **1,157** |

The native profile includes three real computer-vs-computer games. Focused bug
tests include startup-no-handshake/silent-exit cases, queued saves after disposal,
delayed score snapshots, and resignation turn/Crawford semantics. Release/config
checks passed **17 tests**, including the three new trust/signing/ABI guards. All
three workflow YAML files parsed successfully and all **41 shell run blocks**
passed `bash -n` syntax checks.

The licensing/Settings checks passed **13 tests**, covering asset exactness,
registration and navigation. These focused Flutter counts overlap with the final
whole-app suite and should not be added to it.

The full integrated Flutter suite passed **1,097 tests**, including the Windows
golden comparisons; **7 Firebase-emulator tests were skipped** because the
emulator was not running. `flutter analyze --no-pub` reported **no issues**.
Together with the package/native suites, this is **2,254 passing tests**; the
focused Flutter checks above are included in that total. `git diff --check`
also passed.

Firebase emulator E2E suites were **not run in this round**; backend rules were
unchanged. Signed/native mobile builds, device permission flows, 16 KB
compatibility and store submissions were also **not run**. Source assertions and
local tests do not certify those release gates.
