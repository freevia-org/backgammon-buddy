# Android runtime and native-symbol evidence — 2026-10-09

## Scope and status

The signed replacement v1 APK `0.14.0+10018`, with physical-board Buddy mode
hidden, **passed actual 16 KB ARM64 execution and foreground offline tutoring**
in the existing Freevia Firebase project's Test Lab. The installed whole-APK
hash, signing certificate, and version matched the independently audited release.
One matrix ran once; no billing was enabled. This supplements the separate
static APK/AAB audit and earlier 4 KB physical-device acceptance.

The source-level native symbolication rehearsal below passed. It deliberately
does not claim an observed crash, stack unwinding, or crash-service ingestion.

## Exact 10018 runtime acceptance

Source: `b32a976427cfe49e34b05fbadcc3a743ec4793a5`, Android workflow
[37910032478](https://github.com/freevia-org/backgammon-buddy/actions/runs/37910032478).
Test Lab matrix `matrix-1grz0e5rpjqps` completed successfully on **9 October 2026
at 12:52:53 Kyiv time (09:52:53 UTC)**. Its
[authenticated results](https://console.firebase.google.com/project/backgammon-buddy-freevia/testlab/histories/bh.813025184b02081b/matrices/9136726721370232600)
show one successful attempt, one JUnit test, zero failures/errors/skips, and
10 seconds of test-process time (JUnit case: 9.026 seconds).

| Check | Observed result |
| --- | --- |
| Target | `MediumPhone_ps16k.arm`, Android API 36, primary ABI `arm64-v8a` |
| Actual kernel page size | `16384` bytes; no backcompat target or x86 translation |
| Installed version | `org.freevia.backgammonbuddy`, version code `10018` |
| Installed whole APK SHA-256 | `2ae2b79c87e6b0f2d38850449855b761d3b88614dd6ca6c2194d99a87ac4c5fa` |
| Installed certificate SHA-256 | `ec6b2f117457a10eb30f5ea366f31219569eb091c263c18c21d85fb6171e4c6a` |
| Home | Physical Buddy entry absent, visually confirmed in the captured screen |
| Real native tutor | Top plays displayed; `6/5 8/5` ranked first at `50.67` MWC |
| Explanation | Expanded “Why this play?” and “What changes on the board” |
| Move action | Best candidate previewed; enabled Confirm activated |
| Foreground offline core | No active network before app launch or after tutor; `offlineCoreVerified=true` |
| Restoration | Disposable-device network restore commands completed |

The probe tested the exact shipping APK as a separately installed app; it did
not rebuild or re-sign the product. `evidence.json`, successful JUnit XML, and
instrumentation output agree. The captured Home and explanation were inspected.
No product fatal exception, fatal signal, or native-link error was found in the
run's logcat. The local game and all test data belonged to the disposable cloud
device; no shared phone or player account was accessed.

This run covers the local engine, ranked hints, explanation, and move activation
on a 16 KB device while offline. It does not claim optical QR, online multiplayer,
all native plugins, an observed native crash/unwind, or a complete subsequent
turn. Physical-board camera/voice acceptance is deferred to v2 by release scope.
The unedited Home is 1080×2400 and is acceptance evidence only; the existing
9:16 tutor screenshots remain the Play listing assets.

All 13 result objects, including video, were downloaded under
`app/build/release-audit/runtime-16kb/results/MediumPhone_ps16k.arm-36-en-portrait/`.
The pulled probe evidence is below
`artifacts/sdcard/Android/data/org.freevia.runtimeprobe/files/runtime-evidence/`.
Matrix request/response, final matrix status, ToolResults step, and pre/postflight
checks are retained alongside them in the ignored audit directory. The final
postflight at 12:54 Kyiv (09:54 UTC) confirmed billing was still disabled.

## Free Test Lab setup

The existing Freevia project `backgammon-buddy-freevia` was checked through the
authenticated Google APIs at 09:10 UTC:

- Billing was disabled. The Test Lab Spark virtual quota had a limit of 10
  executions per day; ToolResults initially listed zero test histories, with no
  next page. The single run above used this existing free quota.
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

Local Windows/Intel has no installed Android emulator/system image or usable
ARM64 virtual target; the available phone has 4 KB pages. The unused ARM64/KVM
runner capability probe was removed after the direct Test Lab acceptance passed.
No runner probe or second matrix was needed.

An initial upload failed before matrix creation because the operator helper sent
an unnecessary requester-billing header naming the billing-disabled app project.
Removing that header allowed normal uploads to Google's managed Test Lab bucket.
No billing setting, access policy, bucket ownership, or project was changed.

Local evidence is under `app/build/release-audit/runtime-16kb/`:
`testlab-catalog.json`, `testlab-quota.json`, `free-testlab-setup.json`, and
ToolResults setup metadata. These ignored files contain operational evidence,
not application data or credentials.

## Exact 10018 native symbolication rehearsal

The verifier was rerun against the replacement release's APK, AAB, and retained
symbols. All allocated engine sections match exactly for both ABIs in both
packages (24 ARM64 sections, 23 ARMv7); architecture/class and DWARF are checked.
All four interior operation addresses per ABI resolve to positive source lines
in `native/engine_shim/src/lib.rs`. The retained ELF hashes and PCs are identical
to those listed for 10017 below. The exact 10018 reproduction report is
`app/build/release-audit/android-b32a976/native-symbolication.json`.

| Artifact | SHA-256 |
| --- | --- |
| Signed APK | `2ae2b79c87e6b0f2d38850449855b761d3b88614dd6ca6c2194d99a87ac4c5fa` |
| Signed AAB | `bff44c1fdeac1808b7209466c7a25720c4131bc87709a02ca45e8b4e7f21e1d5` |

This remains an offline synthetic known-PC rehearsal, separate from the actual
16 KB runtime test above. There is no GNU build-ID or observed crash/unwind, and
automated crash-service ingestion is not established.

## Earlier 10017 native symbolication rehearsal

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

The separate 10018 rerun above establishes the replacement artifact match; the
10017 evidence is retained here as historical provenance.

Primary references: [Android 16 KB testing](https://developer.android.com/guide/practices/page-sizes),
[Test Lab Spark quotas](https://firebase.google.com/docs/test-lab/usage-quotas-pricing),
[Test Lab device catalog API](https://firebase.google.com/docs/test-lab/reference/testing/rest/v1/testEnvironmentCatalog/get),
[managed result settings](https://firebase.google.com/docs/test-lab/reference/toolresults/rest/v1beta3/projects/initializeSettings),
and [NDK stack symbolication](https://developer.android.com/ndk/guides/ndk-stack).
