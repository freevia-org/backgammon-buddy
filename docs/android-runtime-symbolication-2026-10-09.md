# Android runtime and native-symbol evidence — 2026-10-09

## Scope and status

The signed `0.14.0+10017` APK/AAB have passed static 16 KB ELF/ZIP checks and
4 KB physical-device acceptance. Those checks do not establish execution on a
16 KB kernel. The replacement v1 release, with physical-board Buddy mode hidden,
must receive its own runtime test; **no Test Lab matrix has been submitted yet**.

The source-level native symbolication rehearsal below passed. It deliberately
does not claim an observed crash, stack unwinding, or crash-service ingestion.

## Free 16 KB runtime preparation

The existing Freevia project `backgammon-buddy-freevia` was checked through the
authenticated Google APIs at 09:10 UTC:

- Billing is disabled. The Test Lab Spark virtual quota has a limit of 10
  executions per day; ToolResults lists zero test histories, with no next page.
- Its actual device catalog includes `MediumPhone_ps16k.arm`, ARM64 only,
  Android API 36/37. The similarly named `backcompat` model is not selected.
- ToolResults was enabled in this project. `initializeSettings` created the
  Google-managed Test Lab results bucket, with an observed **60-day** object
  deletion lifecycle and US location. No billed customer bucket, billing account,
  service-account key, or additional project was created.
- A standalone self-instrumenting UI Automator harness builds successfully.
  It uses a disposable test anchor and installs the unchanged shipping APK as an
  additional app. Before driving its local game/tutor, it asserts page size
  `16384`, primary ABI `arm64-v8a`, version code, signing-certificate SHA-256, and
  the whole installed APK SHA-256. Its timeout is five minutes and no automatic
  retry is requested. See [the harness procedure](../tool/android-runtime-test/README.md).

Only the exact replacement release may close this gate. A catalog entry, harness
build, or quota setup is not runtime acceptance. Local Windows/Intel has no
installed Android emulator/system image or usable ARM64 virtual target; the
available phone has 4 KB pages. The optional ARM64/KVM runner capability probe
has not been dispatched because Test Lab offers a direct ARM64 16 KB target.

Local evidence is under `app/build/release-audit/runtime-16kb/`:
`testlab-catalog.json`, `testlab-quota.json`, `free-testlab-setup.json`, and
ToolResults setup metadata. These ignored files contain operational evidence,
not application data or credentials.

## Exact 10017 native symbolication rehearsal

Source: `e6c8749b39273604d0a1799f27083912f96b5bec`, Android workflow
[37863371662](https://github.com/freevia-org/backgammon-buddy/actions/runs/37863371662).

| Artifact | SHA-256 |
| --- | --- |
| Signed APK | `57dac295d9bed3aeeaa2a4546b17df7dbb0b9e5ea7d8b11d44f58ddac96f5ba8` |
| Signed AAB | `6fa0a1e86b195ba997f1dec3b0ec511ccf55fc48ec2ae6a50e38f89eac332cfa` |
| Retained ARM64 engine ELF | `0d2ddf91e123a03e49d4064e79d724c88f0bda58815f8f8c9301f2da948150ce` |
| Retained ARMv7 engine ELF | `8dbd172651eda7aca443430ac223d29f3b3cbc8c4fcfa62cc0bb5c76124fbd2c` |

`tool/verify_native_symbols.py` independently compares every allocated ELF section
by name, type, flags, virtual address, size, and bytes before resolving addresses.
All 24 ARM64 sections and all 23 ARMv7 sections match their corresponding retained
unstripped engine in **both** APK and AAB. The retained files include DWARF line
and symbol data. Five regression tests cover stripped-vs-debug acceptance,
changed/relocated executable code, wrong architecture, absent debug data,
malformed/out-of-bounds ELF structures, and incorrect symbolizer results.

NDK 28.2's `llvm-symbolizer` resolved an interior instruction in each exported
engine operation. Independent `ndk-stack` rehearsal then resolved the same four
explicitly synthetic frames for both ABIs:

| Operation | ARM64 PC | ARMv7 PC | Rust source line |
| --- | --- | --- | --- |
| `best_move` | `0x4b5fbc` | `0x1fcb3e` | `engine_shim/src/lib.rs:193` |
| `cube_info` | `0x4b65c0` | `0x1fd536` | `engine_shim/src/lib.rs:238` |
| `probabilities` | `0x4b6794` | `0x1fd782` | `engine_shim/src/lib.rs:226` |
| `wildbg_new_with_path` | `0x4b68ec` | `0x1fd932` | `engine_shim/src/lib.rs:272` |

The engine ELFs have no GNU build-ID note. This evidence therefore uses exact
allocated bytes/addresses and artifact hashes, **not** a build-ID match. Retain
the exact release artifacts with their symbols; automated server-side symbol
association remains unverified. No user's app was accessed or deliberately
crashed. The reproduction report and synthetic input/output stacks are in
`app/build/release-audit/android-e6c8749/native-symbolication.json` and
`synthetic-native-{arm64-v8a,armeabi-v7a}{,-symbolicated}.txt`.

The verifier is reusable against the replacement release. Rerun it with that
release's APK, AAB, and retained native symbols before transferring this evidence.

Primary references: [Android 16 KB testing](https://developer.android.com/guide/practices/page-sizes),
[Test Lab Spark quotas](https://firebase.google.com/docs/test-lab/usage-quotas-pricing),
[Test Lab device catalog API](https://firebase.google.com/docs/test-lab/reference/testing/rest/v1/testEnvironmentCatalog/get),
[managed result settings](https://firebase.google.com/docs/test-lab/reference/toolresults/rest/v1beta3/projects/initializeSettings),
and [NDK stack symbolication](https://developer.android.com/ndk/guides/ndk-stack).
