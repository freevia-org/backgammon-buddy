import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../board/board_view.dart';
import '../data/practice_repository.dart';
import '../engine/engine_provider.dart';
import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
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
      final due = await ref
          .read(practiceRepositoryProvider)
          .recordAttempt(
            positionId: widget.positionId,
            assessment: answer,
            revealed: move == null,
          );
      if (!mounted) return;
      setState(() {
        _answer = answer;
        _revealed = move == null;
        _showBest = move == null;
        _due = due;
      });
    } catch (_) {
      if (mounted) {
        setState(
          () => _error = appLocalizationsOf(context).practiceSubmitError,
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.practiceScreenTitle)),
      body: FutureBuilder<SavedPractice>(
        future: _position,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(l10n.practiceUnavailable),
              ),
            );
          }
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final saved = snapshot.data!;
          final reviewed = _answer != null || _revealed;
          final assessment = _answer ?? saved.original;
          final reviewedMove = _showBest ? assessment.best : assessment.played;
          // Saved analysis is derived data and may be stale or corrupted.
          // Canonicalize against the exact position before applying it;
          // BoardState.applyMove assumes its input is legal.
          Move? canonicalReviewedMove;
          ScoredMove? canonicalBest;
          try {
            if (reviewed) {
              canonicalReviewedMove = saved.before.canonicalPlay(reviewedMove);
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
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Text(l10n.practiceUnavailable),
              ),
            );
          }
          final boardState = reviewed
              ? saved.before.play(canonicalReviewedMove!)
              : saved.before;
          MoveExplanation? explanation;
          if (reviewed) {
            try {
              explanation = _showBest
                  ? MoveExplanation.forCandidate(
                      saved.before,
                      canonicalBest!,
                      canonicalBest,
                    )
                  : MoveExplanation.forAssessment(saved.before, assessment);
            } catch (_) {
              explanation = null;
            }
          }
          final side = saved.before.turn == Player.white
              ? l10n.white
              : l10n.black;
          return SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(12),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n.practiceTurnLabel(
                          side,
                          saved.before.dice.toString(),
                        ),
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        saved.context == null
                            ? l10n.practiceHistoricalScoreUnavailable
                            : '${l10n.practiceScoreLine(l10n.white, saved.row.whiteScore!, l10n.black, saved.row.blackScore!, saved.row.matchLength!)}${saved.row.isCrawford ? l10n.practiceCrawfordGame : ''}. '
                                  '${saved.row.cubeless == true
                                      ? l10n.practiceNoDoublingCube
                                      : saved.row.cubeless == false
                                      ? l10n.practiceCubeValue(saved.before.cube.value)
                                      : l10n.practiceHistoricalCubeUnknown}',
                      ),
                      const SizedBox(height: 8),
                      Text(
                        reviewed
                            ? (_showBest
                                  ? l10n.practiceAfterBestPosition
                                  : l10n.practiceAfterYourAnswerPosition)
                            : l10n.practiceFindYourPlayPrompt,
                      ),
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
                            enableDrag: true,
                          ),
                          onMoveCommitted: (move) => _submit(saved, move),
                        ),
                      ),
                      const SizedBox(height: 12),
                      if (_error != null)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            _error!,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.error,
                            ),
                          ),
                        ),
                      if (_busy) const LinearProgressIndicator(),
                      if (!reviewed)
                        ListenableBuilder(
                          listenable: _entry,
                          builder: (context, _) => Wrap(
                            spacing: 8,
                            runSpacing: 8,
                            children: [
                              OutlinedButton(
                                onPressed: !_busy && _entry.canUndo
                                    ? _entry.undo
                                    : null,
                                child: Text(l10n.practiceUndo),
                              ),
                              FilledButton(
                                onPressed: !_busy && _entry.canConfirm
                                    ? _entry.confirm
                                    : null,
                                child: Text(l10n.practiceCheckAnswer),
                              ),
                              TextButton(
                                onPressed: _busy
                                    ? null
                                    : () => _submit(saved, null),
                                child: Text(l10n.practiceRevealNoCredit),
                              ),
                            ],
                          ),
                        ),
                      if (reviewed) ...[
                        Text(
                          _revealed
                              ? l10n.practiceAnswerRevealedNoCredit
                              : l10n.practiceGradeLine(
                                  _markLabel(l10n, assessment),
                                  _lossLabel(l10n, assessment),
                                ),
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          l10n.practiceBestMoveLine(assessment.best.toString()),
                        ),
                        Text(
                          l10n.practiceOriginalGameLine(
                            saved.original.played.toString(),
                            _lossLabel(l10n, saved.original),
                          ),
                        ),
                        if (!_revealed) ...[
                          Text(
                            l10n.practiceYourAnswerLine(
                              assessment.played.toString(),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Wrap(
                            spacing: 8,
                            children: [
                              ChoiceChip(
                                label: Text(l10n.practiceYourAnswerChip),
                                selected: !_showBest,
                                onSelected: (_) =>
                                    setState(() => _showBest = false),
                              ),
                              ChoiceChip(
                                label: Text(l10n.practiceBestPlayChip),
                                selected: _showBest,
                                onSelected: (_) =>
                                    setState(() => _showBest = true),
                              ),
                            ],
                          ),
                        ],
                        if (explanation != null) ...[
                          const SizedBox(height: 16),
                          MoveExplanationView(explanation: explanation),
                        ],
                        const SizedBox(height: 16),
                        Text(
                          '${l10n.practiceNextReview(_formatDate(context, _due!))} '
                          '${l10n.practiceRecallCredit}',
                        ),
                        const SizedBox(height: 12),
                        FilledButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(l10n.practiceBackToLearning),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

String _formatDate(BuildContext context, DateTime value) {
  final local = value.toLocal();
  final material = MaterialLocalizations.of(context);
  final time = TimeOfDay.fromDateTime(local);
  return '${material.formatMediumDate(local)} ${material.formatTimeOfDay(time, alwaysUse24HourFormat: MediaQuery.alwaysUse24HourFormatOf(context))}';
}

String _markLabel(AppLocalizations l10n, MoveAssessment assessment) {
  if (!assessment.isDecision) return l10n.practiceMarkForced;
  return switch (assessment.mark) {
    MoveMark.best => l10n.practiceMarkBest,
    MoveMark.good => l10n.practiceMarkGood,
    MoveMark.dubious => l10n.practiceMarkDubious,
    MoveMark.error => l10n.practiceMarkError,
    MoveMark.blunder => l10n.practiceMarkBlunder,
  };
}

String _lossLabel(AppLocalizations l10n, MoveAssessment assessment) =>
    assessment.metric == AssessmentMetric.matchWinningChance
    ? l10n.tutorMoveAssessmentMwcLoss(
        (assessment.equityLoss * 100).toStringAsFixed(2),
      )
    : l10n.tutorMoveAssessmentEquityLoss(
        assessment.equityLoss.toStringAsFixed(3),
      );
