import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../board/board_view.dart';
import '../data/practice_repository.dart';
import '../engine/engine_provider.dart';
import '../tutor/coaching.dart';
import '../tutor/coaching_widgets.dart';
import '../tutor/move_assessment.dart';
import '../tutor/tutor_service.dart';

/// Deliberate practice: no ranking, original move or teaching cues are visible
/// until the player commits an answer (or explicitly gives up for no credit).
class PracticeScreen extends ConsumerStatefulWidget {
  const PracticeScreen({super.key, required this.positionId, this.tutor});
  final int positionId;
  final TutorService? tutor;

  @override
  ConsumerState<PracticeScreen> createState() => _PracticeScreenState();
}

class _PracticeScreenState extends ConsumerState<PracticeScreen> {
  late Future<SavedPractice> _position;
  final _entry = BoardEntryController();
  MoveAssessment? _answer;
  bool _revealed = false;
  bool _busy = false;
  bool _showBest = false;
  DateTime? _due;
  String? _error;

  @override
  void initState() {
    super.initState();
    _position = ref.read(practiceRepositoryProvider).load(widget.positionId);
  }

  @override
  void dispose() {
    _entry.dispose();
    super.dispose();
  }

  Future<void> _submit(SavedPractice saved, Move? move) async {
    if (_busy || _answer != null || _revealed) return;
    setState(() {
      _busy = true;
      _error = null;
    });
    try {
      MoveAssessment? answer;
      if (move != null) {
        // Validate against this exact saved roll before consulting the engine.
        saved.before.play(move);
        answer =
            await (widget.tutor ?? TutorService(ref.read(engineFacadeProvider)))
                .assess(saved.before, move, context: saved.context);
      }
      if (!mounted) return;
      final due = await ref.read(practiceRepositoryProvider).recordAttempt(
          positionId: widget.positionId,
          assessment: answer,
          revealed: move == null);
      if (!mounted) return;
      setState(() {
        _answer = answer;
        _revealed = move == null;
        _showBest = move == null;
        _due = due;
      });
    } catch (_) {
      if (mounted) {
        setState(() => _error =
            'This attempt could not be evaluated or saved. Your progress was not changed. Try again.');
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: const Text('Practise a decision')),
        body: FutureBuilder<SavedPractice>(
            future: _position,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Center(
                    child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                            'This practice position is no longer available.')));
              }
              if (!snapshot.hasData) {
                return const Center(child: CircularProgressIndicator());
              }
              final saved = snapshot.data!;
              final reviewed = _answer != null || _revealed;
              final assessment = _answer ?? saved.original;
              final reviewedMove =
                  _showBest ? assessment.best : assessment.played;
              // Saved analysis is derived data and may be stale or corrupted.
              // Canonicalize against the exact position before applying it;
              // BoardState.applyMove assumes its input is legal.
              Move? canonicalReviewedMove;
              ScoredMove? canonicalBest;
              try {
                if (reviewed) {
                  canonicalReviewedMove =
                      saved.before.canonicalPlay(reviewedMove);
                  if (_showBest && assessment.ranked.isNotEmpty) {
                    final best = assessment.ranked.first;
                    final canonical = saved.before.canonicalPlay(best.move);
                    if (canonical != null) {
                      canonicalBest = ScoredMove(
                        move: canonical,
                        probabilities: best.probabilities,
                        matchWinningChance: best.matchWinningChance,
                      );
                    }
                  }
                }
              } catch (_) {
                canonicalReviewedMove = null;
                canonicalBest = null;
              }
              if (reviewed &&
                  (canonicalReviewedMove == null ||
                      (_showBest && canonicalBest == null))) {
                return const Center(
                    child: Padding(
                        padding: EdgeInsets.all(24),
                        child: Text(
                            'This practice position is no longer available.')));
              }
              final boardState = reviewed
                  ? saved.before.play(canonicalReviewedMove!)
                  : saved.before;
              MoveExplanation? explanation;
              if (reviewed) {
                try {
                  explanation = _showBest
                      ? MoveExplanation.forCandidate(
                          saved.before, canonicalBest!, canonicalBest)
                      : MoveExplanation.forAssessment(saved.before, assessment);
                } catch (_) {
                  explanation = null;
                }
              }
              final side =
                  saved.before.turn == Player.white ? 'White' : 'Black';
              return SafeArea(
                  child: SingleChildScrollView(
                padding: const EdgeInsets.all(12),
                child: Center(
                    child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('$side to play · ${saved.before.dice}',
                            style: Theme.of(context).textTheme.titleMedium),
                        const SizedBox(height: 6),
                        Text(saved.context == null
                            ? 'Historical score unavailable; grading uses cubeless equity.'
                            : 'Score: White ${saved.row.whiteScore} – Black ${saved.row.blackScore}, '
                                'to ${saved.row.matchLength}${saved.row.isCrawford ? ' · Crawford game' : ''}. '
                                '${saved.row.cubeless == true ? 'No doubling cube.' : saved.row.cubeless == false ? 'Cube ${saved.before.cube.value}.' : 'Historical cube rules unknown.'}'),
                        const SizedBox(height: 8),
                        Text(reviewed
                            ? (_showBest
                                ? 'Position after the best play'
                                : 'Position after your answer')
                            : 'Find your play on the board, then check your answer. No hints are shown.'),
                        const SizedBox(height: 8),
                        SizedBox(
                            height: 360,
                            child: BoardView(
                              key: ValueKey(reviewed),
                              state: boardState,
                              interactive: !reviewed && !_busy,
                              whiteAtBottom: saved.before.turn == Player.white,
                              showCube: saved.row.cubeless != true,
                              activeDiceSide: saved.before.turn,
                              whiteDice: saved.before.turn == Player.white
                                  ? saved.before.dice
                                  : null,
                              blackDice: saved.before.turn == Player.black
                                  ? saved.before.dice
                                  : null,
                              entryControl: _entry,
                              interactionOptions: const BoardInteractionOptions(
                                  enableDrag: true),
                              onMoveCommitted: (move) => _submit(saved, move),
                            )),
                        const SizedBox(height: 12),
                        if (_error != null)
                          Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: Text(_error!,
                                  style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .error))),
                        if (_busy) const LinearProgressIndicator(),
                        if (!reviewed)
                          ListenableBuilder(
                              listenable: _entry,
                              builder: (context, _) =>
                                  Wrap(spacing: 8, runSpacing: 8, children: [
                                    OutlinedButton(
                                        onPressed: !_busy && _entry.canUndo
                                            ? _entry.undo
                                            : null,
                                        child: const Text('Undo')),
                                    FilledButton(
                                        onPressed: !_busy && _entry.canConfirm
                                            ? _entry.confirm
                                            : null,
                                        child: const Text('Check answer')),
                                    TextButton(
                                        onPressed: _busy
                                            ? null
                                            : () => _submit(saved, null),
                                        child: const Text(
                                            'Reveal answer (no credit)')),
                                  ])),
                        if (reviewed) ...[
                          Text(
                              _revealed
                                  ? 'Answer revealed — no recall credit.'
                                  : '${assessment.verdict} · ${assessment.lossLabel} loss',
                              style: Theme.of(context).textTheme.titleMedium),
                          const SizedBox(height: 8),
                          Text('Best: ${assessment.best}'),
                          Text(
                              'Original game: ${saved.original.played} · ${saved.original.lossLabel} loss'),
                          if (!_revealed) ...[
                            Text('Your answer: ${assessment.played}'),
                            const SizedBox(height: 8),
                            Wrap(spacing: 8, children: [
                              ChoiceChip(
                                  label: const Text('Your answer'),
                                  selected: !_showBest,
                                  onSelected: (_) =>
                                      setState(() => _showBest = false)),
                              ChoiceChip(
                                  label: const Text('Best play'),
                                  selected: _showBest,
                                  onSelected: (_) =>
                                      setState(() => _showBest = true)),
                            ]),
                          ],
                          if (explanation != null) ...[
                            const SizedBox(height: 16),
                            MoveExplanationView(explanation: explanation),
                          ],
                          const SizedBox(height: 16),
                          Text('Next review: ${_formatDate(_due!)}. '
                              'Best or good answers count as successful recall. Early repeats do not advance the schedule.'),
                          const SizedBox(height: 12),
                          FilledButton(
                              onPressed: () => Navigator.of(context).pop(),
                              child: const Text('Back to learning')),
                        ],
                      ]),
                )),
              ));
            }),
      );
}

String _formatDate(DateTime value) {
  final d = value.toLocal();
  return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')} '
      '${d.hour.toString().padLeft(2, '0')}:${d.minute.toString().padLeft(2, '0')}';
}
