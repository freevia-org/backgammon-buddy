# Compact tutor follow-up — 2026-10-09

This revision follows the user's layout correction after internal build 10020.
Build 10020 remains documented separately in
`tutor-panel-feedback-2026-10-09.md`.

## Behavior

- The tutor icon, `Tutor:` label and short prompt share the left-hand header.
  The short analysis appears underneath, with a centered handle at the top.
- The collapsed panel uses 128 logical pixels at normal text size. Tapping the
  label or handle, or dragging upward, reveals details on the same surface.
  The summary retains its layout as the panel moves upward.
- Roll stays at the panel's bottom right in both states. It remains visible
  and is disabled while rolling is unavailable. Hint, Undo and Confirm occupy
  a compact row above the collapsed panel; expansion covers that row.
- A selected historical move keeps a Live control beside Roll. Tutor settings
  remain behind the expanded panel's top-right cog.
- Longer verdicts wrap in expanded details so the complete assessment remains
  readable when the compact header cannot fit it.
- Position, staged-move, Undo, computer-reply and historical analysis continue
  to follow the current selection. Online play remains unassisted, and the
  physical-board camera experience remains deferred to version 2.

## Validation and delivery

The complete `flutter test` run passed **1,224 tests**, with seven skipped and
no failures. `flutter analyze` and `git diff --check` passed. Archived generated
evidence is excluded from local analysis because its copied render harness has
source-relative imports; the application and live test harnesses are analyzed.

Focused tests cover fixed Roll geometry through expansion, staged moves, Undo,
computer turns and subsequent rolls. Layout tests cover 320x568 portrait and
640x360 landscape at normal and double text size, including the grip, settings,
history/Live and scrollable details. Real-font 390x844 widget renders were
inspected for current position, staged play, Undo, computer reply, history and
expansion. These deterministic test agents establish UI behavior, not native
engine strength or acceptance of a Play-installed build.

Source `b037dd302c56c8a3d67aa215dcc949c47948d040` passed all 11 jobs in
[CI 37924567323](https://github.com/freevia-org/backgammon-buddy/actions/runs/37924567323).
A supplemental history-review layout check also passed all four size/text-scale
combinations, verifying that the rendered expanded verdict is not truncated.

## Exact signed Android candidate

[Android workflow 37924614290](https://github.com/freevia-org/backgammon-buddy/actions/runs/37924614290)
produced signed **0.14.0+10022**, package `org.freevia.backgammonbuddy`, from the
source above. Independent inspection of the downloaded artifacts passed.

| Artifact | Bytes | SHA-256 |
| --- | ---: | --- |
| APK | 77,447,748 | `3c3c67e1f9fd5825887bba174804b8cac3208d4f0973ea0ddb1997b8cf3d20a6` |
| AAB | 73,232,634 | `f5b588c4bd7249ac846c0cea9c7f53ea939ce1f3a4a27caf67827b9ec9377ef9` |

The audit verified package/version identity, the expected Freevia upload signer,
APK/JAR signatures, dedicated Freevia configuration, absence of legacy branding,
license assets and resolved dependency inventory, ARM ABI packaging, permissions,
bundletool validity, 16 KB ELF/ZIP alignment and matching native debug symbols.
All 14 non-Dart native libraries are byte-identical to build 10018. This is static
artifact evidence; build 10022 has no new physical-device or Test Lab acceptance
claim. The separately documented build 10018 runtime result remains historical.

## Internal delivery

Google Play published internal release 4, **0.14.0 — compact tutor controls**,
at **14:49 Kyiv on 2026-10-09 (11:49 UTC)**. The release preview had no errors or
warnings; Console then confirmed Active, Available to internal testers, and
version code 10022. The selected two-account tester list is unchanged.

The [internal opt-in link](https://play.google.com/apps/internaltest/4701280291485247000)
is unchanged. No invitations were sent and no new legal terms were accepted.
Production and the store listing were not changed. This establishes internal
availability, not an independently observed Play-delivered installation.

Ready-preview, publication and tester-list screenshots and DOM records are
preserved under `app/build/release-audit/play-console/internal-10022-*`.

## Preserved release evidence

The durable archive is
`E:/Users/anton/Documents/Freevia/Releases/backgammon-buddy/0.14.0-10022/`.
It contains **186 payload/evidence files totaling 482,209,934 bytes**, plus
`SHA256SUMS.txt`. Every copied file and manifest entry was hash-verified, with
no extra files. The manifest SHA-256 is
`870cd3665560b3f301fb34f5b8f07695f7dacfba1b09f73aa31097101d42735b`.

The archive retains all five workflow artifacts, static and symbol audits,
CI/build logs, six final compact renders and their harness, the full local test
and analysis logs, the supplemental four-case verdict test, and all six Play
proof files. Credentials and private fixtures were excluded. The earlier 10018
and 10020 archives and their manifest hashes are unchanged.
