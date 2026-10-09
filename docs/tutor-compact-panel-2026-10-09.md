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

Exact signed-build delivery evidence will be recorded after the candidate is
built and checked. This source document does not establish Google Play
availability.
