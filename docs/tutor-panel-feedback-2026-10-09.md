# Tutor panel feedback — 2026-10-09

This follow-up implements feedback from playing the internal Android release
10018. It changes on-screen tutoring; physical-board Buddy remains deferred to
version 2.

## Behavior

- The tutor sits above the action bar, with its label at the top right. Tapping
  the label or swiping upward over the header or summary expands the same
  surface upward without resizing the board. The expanded panel adds details
  below the existing summary and exposes the tutoring settings cog.
- The collapsed view assesses the current position and gives a short plan.
  Static engine outlook describes an estimated edge; pip count alone is never
  treated as a winning probability.
- Checker entry updates the feedback, including intermediate steps during
  doubles. Undo restores the preceding staged position or original outlook.
  Partial turns receive factual commentary rather than a full-turn grade.
- After the computer plays, its decision and a Roll prompt appear together.
  Rolling returns the tutor to the current position. Logged moves select
  historical analysis in the collapsed panel, with an always-visible Live
  control and a highlighted log entry.
- Explanations lead with plans, tradeoffs and legal reply examples. Technical
  estimates and methodology are optional disclosures. Short summaries use
  neutral third-person wording so a computer advantage is not described as the
  user's advantage.
- Try-first and independent tutoring choices remain enforced. History/Live,
  Undo, replacement games and changed options fence delayed engine results.
  Failed analysis is marked unavailable; online games remain unassisted.

## Validation

The focused tests cover complete turn workflows, partial doubles, delayed
answers, history/Live, error handling, try-first and asymmetric board positions.
Integrated layouts cover 320x568 portrait and 640x360 landscape at normal and
double text size. Rendered 390x844 screens were inspected for current-position,
staged, Undo, computer reply, historical and expanded states. The render harness
uses deterministic test agents, so these images verify layout and behavior,
not native engine strength or a Play-installed build.

`flutter analyze` passes. The complete `flutter test` run, including Windows
golden comparisons, passed 1,224 tests with seven skipped and no failures.
`git diff --check` also passes. The exact Android delivery results below identify
the source and artifact bytes that shipped to internal testing.

## Exact Android build and internal delivery

Source `d0da10b2945007fdda8957625f72775c6228297d` passed all 11 jobs in
[CI 37921732739](https://github.com/freevia-org/backgammon-buddy/actions/runs/37921732739).
[Android workflow 37921800569](https://github.com/freevia-org/backgammon-buddy/actions/runs/37921800569)
produced signed version **0.14.0+10020**, package
`org.freevia.backgammonbuddy`.

| Artifact | Bytes | SHA-256 |
| --- | ---: | --- |
| APK | 77,431,364 | `8978b8064390665e4bad8a9636cc7771c7e80bbc15141d17f35381f60ff82e71` |
| AAB | 73,223,504 | `beae6b89243c4d7422ace3e536904f02545b6ab1cf3671595b16c668a61166d2` |

Independent inspection of these downloaded bytes verified the expected Freevia
RSA-3072 upload certificate, APK v2/AAB JAR signatures, bundletool validity,
ARMv7/ARM64-only payloads, minimum API 24/target 36, ZIP integrity, and 16 KB
static ELF/ZIP alignment. All 14 license assets match the named source commit;
the native notices match the resolved 131 Android modules. Both Dart binaries
contain the dedicated Freevia project. Native telemetry remains unconfigured
with collection and advertising defaults disabled. The merged manifests have
no microphone, advertising-ID or AdServices permissions; camera access remains
for nearby QR joining. No legacy publisher string was found in archive entry
names or decompressed ASCII/UTF-16 content. Exact artifact hashes also match
the build's dependency inventory.

Retained native symbols match every allocated engine ELF section and resolve
four known interior instruction addresses per ABI to engine source lines. This
is an offline symbolication rehearsal, not an observed crash. All 14 non-Dart
native libraries are byte-identical to build 10018; the two Dart application
libraries contain the new tutoring code. The earlier genuine 16 KB runtime
result remains baseline evidence. **Build 10020 has not been exercised on a
physical device or through a new Test Lab run**, and the local widget renders
are not presented as device acceptance.

Google Play internal release **10020** was published at **14:22 Kyiv on
2026-10-09 (11:22 UTC)**. The release agent verified Active / Available to
internal testers, version 10020, and the existing selected two-account tester
list. Publication proof and tester-list proof were retained. The
[internal opt-in link](https://play.google.com/apps/internaltest/4701280291485247000)
is unchanged; production distribution and the public listing were not changed.
This establishes internal availability, not an observed Play-delivered install.

## Preserved release evidence

The separate local archive is
`E:/Users/anton/Documents/Freevia/Releases/backgammon-buddy/0.14.0-10020/`.
It contains **182 files totaling 482,139,157 bytes**, plus `SHA256SUMS.txt`:
signed APK/AAB, Dart and native symbols, complete dependency/POM evidence,
reproducible audit scripts/reports, public build/CI logs, six accepted widget
renders with their harness and final local test log, and six Play delivery
screenshots/DOM records. Every copy was compared with its source hash and every
manifest entry was verified. Credentials, signing keys, private device fixtures
and stale failed test logs were excluded.

The final `SHA256SUMS.txt` SHA-256 is
`f7812ef19fe849e9b85d770cd984129227c6c8c304fc692f6bc74994dcda01c2`.
The existing 10018 archive was not overwritten; its manifest hash remains
`7f1700fb84c0659fac5d643c606a60495ec43f5ff207b195f40d9bd20d657c59`.
