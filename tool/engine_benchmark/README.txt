Backgammon Buddy engine benchmark (14 October 2026)

This is an initial accuracy comparison, not a rating certificate or a phone
performance benchmark. It does not modify application behavior or models.
The first run uses 600 seeded positions: 200 money checker decisions, 200
five-point-match checker decisions, and 100 cube positions from each corpus.
Money cube probes are retained but excluded from app-policy headline comparisons.

Reference corpus: markbgsage/bgsage commit
98a6d848af3ed6cf528694ef42ce42e0f75e8931
data/money_benchmark/benchmark.json.gz
data/match_benchmark/5pt/benchmark.json.gz
Methodology: https://github.com/markbgsage/bgsage/blob/98a6d848af3ed6cf528694ef42ce42e0f75e8931/XG_COMPARISON.md
Reference equities combine deep search, truncated rollouts and full rollouts;
filtered inferior candidates can retain shallower values. They are estimates,
not exact truth, and the Sage-generated corpus can favor Sage. No live XG
evaluation was performed. The reported error score is not an official human PR.

Dependencies are private benchmark tools under app/build/engine-benchmark:
Python 3.13; bgsage 2.0.20260907 from PyPI (production model stage11); GNUbg
1.08.003 Windows 32-bit from https://ftp.gnu.org/gnu/gnubg/; Dart and Cargo.
Fetch the pinned Sage repository zip and extract it under deps/sage-source.
Install/extract GNUbg into deps/gnubg. These engines are not bundled into the app.

Run from the repository root (PowerShell; all paths below are workspace-local):

python -m venv app/build/engine-benchmark/venv
app/build/engine-benchmark/venv/Scripts/python.exe -m pip install bgsage==2.0.20260907
cargo build --release --locked --manifest-path native/engine_shim/Cargo.toml --target-dir app/build/engine-benchmark/native-target
app/build/engine-benchmark/venv/Scripts/python.exe tool/engine_benchmark/prepare.py --source app/build/engine-benchmark/deps/sage-source/markbgsage-bgsage-98a6d84 --output app/build/engine-benchmark/sample.json
dart --packages=packages/engine_bindings/.dart_tool/package_config.json tool/engine_benchmark/evaluate.dart app/build/engine-benchmark/sample.json app/build/engine-benchmark/native-target/release/aigammon_engine.dll app/assets/nets app/build/engine-benchmark/wildbg.jsonl
app/build/engine-benchmark/venv/Scripts/python.exe tool/engine_benchmark/references.py --sample app/build/engine-benchmark/sample.json --wildbg app/build/engine-benchmark/wildbg.jsonl --output app/build/engine-benchmark/sage1.jsonl --level 1ply
app/build/engine-benchmark/venv/Scripts/python.exe tool/engine_benchmark/references.py --sample app/build/engine-benchmark/sample.json --wildbg app/build/engine-benchmark/wildbg.jsonl --output app/build/engine-benchmark/sage2.jsonl --level 2ply
app/build/engine-benchmark/venv/Scripts/python.exe tool/engine_benchmark/gnu_reference.py --sample app/build/engine-benchmark/sample.json --wildbg app/build/engine-benchmark/wildbg.jsonl --output app/build/engine-benchmark/gnu2.jsonl --cli app/build/engine-benchmark/deps/gnubg/gnubg-cli.exe --plies 2 --workers 4
dart --packages=packages/engine_bindings/.dart_tool/package_config.json tool/engine_benchmark/cube_control.dart app/build/engine-benchmark/sample.json app/build/engine-benchmark/cube-control.json
app/build/engine-benchmark/venv/Scripts/python.exe tool/engine_benchmark/summarize.py --directory app/build/engine-benchmark

Validation: Dart checker totals are 15 per side; all 400 legal final-board sets
match independent Sage generation; all Sage and GNU picks are legal; a repeated
orientation-sensitive GNU probe rejects opening-turn leakage. GNU default move
filters stop at a shallower evaluation when only one plausible move survives;
actual returned labels are retained. In no-value owned-cube redouble cases GNU
suppresses the hint; the adapter records No double using the score/cube rule.
Raw GNU command/output files and every scored decision are retained. Confidence
intervals resample source games/matches (by seed) instead of treating correlated
positions as independent observations. GNU timings include CLI startup and
worker contention, so they do not measure its native evaluator speed.

The deployed AI uses Engine.rankMoves' cubeless ordering. The optional score-aware
checker pick emitted by evaluate.dart is exploratory and is not included in the
production-policy results. The cube control feeds reference probabilities into
the existing MatchCubeAdvisor without changing its formula.
