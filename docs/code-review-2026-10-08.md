# Code review and tutoring direction — 2026-10-08

Backgammon Buddy has a substantial rules, engine, multiplayer and test foundation. The
largest product gap was that the tutor mostly exposed rankings and marks: a
learner needed comparisons, contextual feedback and control over when help is
revealed. This round adds those options and fixes correctness problems that could
undermine trust in the feedback. The completion round now adds persisted
preferences, personal learning review, saved-mistake practice and spaced reviews.

Three parallel agents reviewed tutoring, game/engine correctness, and publishing;
the coordinating agent reviewed integration and ran the wider test suites. The
work stays in the current checkout; no version bump or mobile store submission
was performed. Public source publication to
[Freevia's repository](https://github.com/freevia-org/backgammon-buddy) is
authorized and in progress.

## Tutoring implemented

| Option | Behavior |
|---|---|
| Best-move hints | Reveal ranked legal plays while deciding; candidates can be previewed and compared. Can be disabled while retaining after-move coaching. |
| Move explanations | Show the estimated equity difference and win/gammon outcomes; describe hits, entries, points made/broken, blots and bear-offs. Compare an alternative with the top play. Available for live decisions and post-game analysis. |
| Game commentary | Offer position prompts and review recent decisions from both sides through the coaching panel. |
| Cube advice | Independently enable match-aware double/take/pass suggestions; disabled for cubeless games and outside the valid decision window. |
| Try first | Require staging a full legal play before requesting live alternatives; practice hides the answer until commit or deliberate reveal. |
| Learning & practice | Human/local-decision profile, descriptive themes, saved replay mistakes, exact historical context, graded attempts and spaced review. |
| Buddy teaching | Concise retrospective spoken/text feedback after committed human plays; saved preferences and cadence limits apply. |

Options persist in Settings and can be adjusted in local-game setup/live coaching.
Local computer tutoring defaults on across all strengths; explicit overrides are
honored. Online/nearby live play is unassisted with a runtime guard, while saved
games remain reviewable. Learning can filter White/Black/both and defaults to
human/local decisions; comparison with other players is optional. Exercises save
the original roll, event prefix, score/Crawford/cube metadata. Reveal earns no
recall credit; wrong/revealed positions become due after 10 minutes and successful
due reviews progress through 1/3/7/14/30 days. Early repeats do not advance that
schedule. These intervals are a product choice, not validated pedagogy.

Explanations deliberately distinguish **measured estimates** from **observable
board changes**. The neural evaluator does not expose a reasoning trace, so a
statement such as “this hits a blot” is not presented as proof that hitting caused
the higher equity. Known match context converts exclusive outcome probabilities
to expected match-winning probability using the historical score and stake.
Unknown old history is explicitly labelled cubeless and skips cube judgments.
The static checker model excludes future cube decisions; cube review uses the
existing partial Janowski model. Depth/model/units are labelled and close
alternatives may be effectively tied. Forced passes and single-result plays are
excluded from decision-error averages; grades are teaching bands, not ratings.

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
| P2 | The configured iOS tester upload used a Docker action on a macOS runner, where container actions cannot run. It now uses exact-pinned Firebase CLI with temporary ADC credentials and cleanup; signing/ad-hoc gates are unchanged. | [iOS workflow](../.github/workflows/ios.yml), [workflow guide](../.github/workflows/README.md) |
| P1 | Configured mobile SDKs collected without an explicit in-app choice. Native defaults are now off, consent persists, forwarding is gated, and generation-aware initialization prevents delayed enable after withdrawal. | [telemetry controller](../app/lib/analytics/telemetry_controller.dart), [Firebase initialization](../app/lib/analytics/firebase_observability.dart), [privacy controls](../app/lib/privacy/privacy_settings_section.dart) |
| P2 | Game history and score were separate writes. Completed game/score/completion now commit atomically; practice/source deletion is transactional and migration tested. | [MatchRepository](../app/lib/data/match_repository.dart), [practice persistence](../app/lib/data/practice_repository.dart) |
| P2 | New-repository workflow counters restart, risking lower signed build numbers. Signed builds now require an owner-selected override or baseline verified against past uploads. | [build-number validator](../tool/release_build_number.py), [release workflows](../.github/workflows) |
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
| 1 | Validate learning outcomes | Saved practice/profile/spacing are implemented. Evaluate whether review improves repeated decisions; avoid treating descriptive themes as causal weaknesses. |
| 2 | Deeper analysis and confidence | Score-aware static ranking is implemented. Deeper search, rollouts and calibrated confidence remain future work; the match table caps at 25-away. |
| 3 | Extend practice content | Post-game cube review and forced-choice denominator fixes are implemented. Practice currently drills checker plays; cube drills remain a product extension. |
| 4 | Strategic explanation depth | Verified prime/anchor/race/spares and exact legal direct/indirect hitting opportunities are implemented. Timing plans and broader causal explanations require additional evidence. |
| 5 | Device teaching acceptance | Try-first and Buddy retrospective voice/text teaching are implemented. Validate cadence, camera/manual parity, TTS and performance on physical devices. |
| 6 | Optional coached multiplayer | Live assistance is disabled. A future bilateral coached protocol would need explicit agreement; no such feature is claimed now. |

## Remaining engineering and publishing risks

- Game persistence records completed games; local in-progress resume is not
  implemented. Finished game/score updates now use an atomic transaction.
- The startup deadline bounds the caller's wait. Dart isolate termination cannot
  guarantee immediate interruption of a native FFI call that has hung inside the
  engine; an out-of-process engine would be a stronger isolation boundary.
- The standard game screen still coordinates many concerns. Prefer gradual
  extraction of coaching presentation/state behind tested boundaries over another
  broad rewrite while new teaching behavior settles.
- Mobile store release remains gated on public privacy information, dependency
  native SDK manifests/notices, signed artifacts, service retention decisions and
  real-device acceptance. Android bundles and optional iOS App Store exports
  prepare artifacts only; they do not submit a release.
- Buddy's camera dice reader is not reliable enough to advertise automatic dice
  reading. The committed certified-roll corpus remains 0/4 recognized and 0 wrong;
  typed dice remain the supported input path. Run the existing physical-board
  acceptance protocol before describing the feature as validated on devices.

See [release readiness](release-readiness.md) for the exact open gates, data
inventory, verified official store guidance and candidate acceptance sequence.

## Validation

Final integrated completion checks include 21 focused privacy/consent/Settings
tests, 10 Freevia-feedback tests, 6 license/workflow tests and 7 MET tests; these
overlap the full suites below. Six additional Python artifact/profile/build-number
tests passed. Native notices regenerate deterministically offline and provenance
checks pass for 119 Rust components and both production models.

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
three workflow YAML files parsed successfully and all **48 shell run blocks**
passed `bash -n` syntax checks.

The licensing/Settings checks passed **13 tests**, covering asset exactness,
registration and navigation. These focused Flutter counts overlap with the final
whole-app suite and should not be added to it.

The final integrated Flutter suite passed **1,137 tests**, including the Windows
golden comparisons; **7 Firebase-emulator tests were skipped** because the
emulator was not running. `flutter analyze --no-pub` reported **no issues**.
Together with the package/native suites, this is **2,294 passing tests**; the
focused Flutter checks above are included in that total. `git diff --check`
also passed.

The Windows desktop integration test also passed against the real native engine,
advancing **five plies** through the app. This integration run is separate from
the **2,294** package/Flutter test count above; it is evidence of desktop runtime
operation, not mobile signing or clean-machine installer acceptance.

Firebase emulator E2E suites were **not run in this round**; backend rules were
unchanged. Signed/native mobile builds, device permission flows, 16 KB
compatibility and store submissions were also **not run**. Source assertions and
local tests do not certify those release gates.

An additional release-only follow-up validated four workflow boundary tests
(including the new macOS CLI distribution guard) after the integrated suite.
No signed upload was dispatched to validate credentials or native artifacts.
