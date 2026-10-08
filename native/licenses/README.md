# Native dependency and model notices

`python tool/generate_native_notices.py` resolves the locked Cargo graph for
Android ARM/ARM64, iOS ARM64 and Windows GNU x64. Run `cargo fetch --locked
--manifest-path native/engine_shim/Cargo.toml` first if the local crate cache is
incomplete. The generator itself runs offline. `--check` verifies deterministic
outputs. Normal/build dependencies are included; dev-only and unused platform
dependencies are excluded. This intentionally errs on including build tooling.

The generated inventory records all 119 selected crate versions, declared
license expressions and hashes of the corresponding texts. The app bundles 83
distinct text sections in `assets/licenses/native-dependencies.txt`. Upstream
fallback files missing from published crates are pinned in `upstream/sources.json`.
The MPL-2.0 `dyn-eq` crate is unmodified; its complete published source is also
bundled in `assets/licenses/dyn-eq-0.1.3-source.tar.gz` and available with this
repository. Preserve that source archive alongside distributed builds.

The production models have exact Git blob matches in the dedicated
[wildbg-training repository](https://github.com/carsten-wenderdel/wildbg-training/tree/3c9f2655bd7ca26e4991af24732004a2a425a061),
which dedicates the training code, models and data under CC0-1.0. Contact uses
`data/0017/contact.onnx` and race uses `data/0016/race.onnx`. The source blob IDs
are recorded in `app/assets/licenses/wildbg-NOTICES.txt` and enforced by
`tool/release_preflight.py`; the upstream CC0 text is bundled separately from the
engine's MIT/Apache licenses. This establishes the published upstream terms and
matching artifacts, without representing an independent audit of all training
inputs or authorship.

Flutter's registry supplies Dart package notices. The separate
[mobile native inventory](mobile/README.md) preserves Android and Apple SDK
notices and feeds two additional offline Licenses entries. It is generated from
actual resolved modules, exact artifact hashes and pinned Apple source notices;
CI rejects dependency changes until the corresponding notice review is updated.
