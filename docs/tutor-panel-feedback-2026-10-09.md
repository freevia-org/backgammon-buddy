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
`git diff --check` also passes. Android delivery results will be recorded before
the replacement internal build is declared available. The previous build's Play
status is not evidence that this source update has shipped.
