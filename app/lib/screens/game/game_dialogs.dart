import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';

import '../../game/match_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../l10n/localization_lookup.dart';
import '../../tutor/move_assessment.dart';

/// The game screen's declarative modals and the vocabulary they are written in.
///
/// Every modal is a plain widget, not a `showDialog` route: the screen picks at
/// most one of them per frame and drops it into its [Stack], so what is visible
/// is a pure function of state (see the screen's modal priority list). Nothing
/// here reads the controller beyond the values it is handed, so each builder can
/// be rendered from a test with a literal.

// --- Shared formatting -------------------------------------------------------

String playerName(Player p, AppLocalizations l10n) =>
    p == Player.white ? l10n.white : l10n.black;

String _resignName(ResignValue v, AppLocalizations l10n) => switch (v) {
  ResignValue.single => l10n.gameDialogResignSingle,
  ResignValue.gammon => l10n.gameDialogResignGammon,
  ResignValue.backgammon => l10n.gameDialogResignBackgammon,
};

/// The game-end dialog's one-line summary, in plain language.
///
/// Replaces the old jargon fold ("Black wins 1 (drop).", which read as a score
/// of 1 and a mystery word) with what actually happened and what it was worth:
/// "Black wins this game (+1) — White declined the double." / "White wins this
/// game (+2, gammon)." Terse by design — the running match score follows on the
/// next line.
String gameEndSummary(GameResult result, AppLocalizations l10n) {
  final winner = playerName(result.winner, l10n);
  final loser = playerName(result.winner.opponent, l10n);
  final points = '+${result.points}';
  return switch (result.outcome) {
    GameOutcome.single => l10n.gameDialogPlayerWon(winner, points),
    GameOutcome.gammon => l10n.gameDialogPlayerWonGammon(winner, points),
    GameOutcome.backgammon => l10n.gameDialogPlayerWonBackgammon(
      winner,
      points,
    ),
    GameOutcome.drop => l10n.gameDialogPlayerWonDrop(winner, points, loser),
    GameOutcome.resignation => l10n.gameDialogPlayerWonResignation(
      winner,
      points,
      loser,
    ),
  };
}

String scoreLine(MatchController c, AppLocalizations l10n) {
  final m = c.match;
  return l10n.gameDialogScoreLine(
    l10n.white,
    m.whiteScore,
    m.blackScore,
    l10n.black,
    m.matchLength,
  );
}

// --- Dialogs -----------------------------------------------------------------

/// The hot-seat pass-device cover: an opaque full-screen tap target naming the
/// player the device is being handed to.
Widget passDeviceOverlay(
  BuildContext context, {
  required Player turn,
  required VoidCallback onDismiss,
}) {
  final l10n = appLocalizationsOf(context);
  final titleStyle =
      Theme.of(context).textTheme.headlineSmall ??
      const TextStyle(fontSize: 20);
  final name = playerName(turn, l10n);
  return Positioned.fill(
    child: GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onDismiss,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(l10n.gameDialogPassDeviceTitle, style: titleStyle),
              const SizedBox(height: 12),
              Text(l10n.gameDialogPlayersTurn(name), style: titleStyle),
              const SizedBox(height: 24),
              Text(l10n.gameDialogTapToContinue),
            ],
          ),
        ),
      ),
    ),
  );
}

/// A human's answer to an opponent's double. [state] is the pending request's
/// state, whose `turn` is the DECIDER (the doubler is the opponent).
///
/// [tutorLine] is the caller's already-formatted take/pass advice, appended to
/// the message — empty where there is no tutor or the advice has not landed.
Widget cubeDialog({
  required AppLocalizations l10n,
  required GameState state,
  String tutorLine = '',
  required VoidCallback onPass,
  required VoidCallback onTake,
}) {
  final doubler = playerName(state.turn.opponent, l10n);
  final newValue = state.cube.value * 2;
  return ModalCard(
    title: l10n.gameDialogCubeOfferedTitle,
    message: l10n.gameDialogCubeOfferMessage(doubler, newValue, tutorLine),
    actions: [
      CardAction(label: l10n.gameDialogPass, onPressed: onPass),
      CardAction(label: l10n.gameDialogTake, filled: true, onPressed: onTake),
    ],
  );
}

/// A human's answer to an opponent's resignation offer.
Widget resignDialog({
  required AppLocalizations l10n,
  required GameState state,
  required ResignValue value,
  required VoidCallback onDecline,
  required VoidCallback onAccept,
}) {
  final resigner = playerName(state.turn.opponent, l10n);
  return ModalCard(
    title: l10n.gameDialogResignationTitle,
    message: l10n.gameDialogResignationMessage(
      resigner,
      _resignName(value, l10n),
    ),
    actions: [
      CardAction(label: l10n.gameDialogDecline, onPressed: onDecline),
      CardAction(
        label: l10n.gameDialogAccept,
        filled: true,
        onPressed: onAccept,
      ),
    ],
  );
}

/// The end-of-game card: what happened, the running match score, and the way
/// on. [summaryAction] is the optional "Analyze game" link, present only for a
/// persisted match.
Widget gameEndDialog({
  required AppLocalizations l10n,
  required GameResult result,
  required String score,
  required int gameNumber,
  required int whiteRolls,
  required int blackRolls,
  required int whitePips,
  required int blackPips,
  required Map<Player, List<MoveAssessment>> assessmentsByPlayer,
  required int expectedMoveAssessments,
  required AssessmentMetric metric,
  CardAction? summaryAction,
  required VoidCallback onClose,
  required VoidCallback onNextGame,
}) => ModalCard(
  title: l10n.gameDialogGameOverTitle,
  message: l10n.gameResultMatchScore(score),
  leading: _OutcomeBanner(result: result, l10n: l10n),
  details: _GameResultDetails(
    l10n: l10n,
    gameNumber: gameNumber,
    whiteRolls: whiteRolls,
    blackRolls: blackRolls,
    whitePips: whitePips,
    blackPips: blackPips,
    assessmentsByPlayer: assessmentsByPlayer,
    expectedMoveAssessments: expectedMoveAssessments,
    metric: metric,
  ),
  actions: [
    CardAction(label: l10n.analysisClose, onPressed: onClose),
    ?summaryAction,
    CardAction(
      label: l10n.gameDialogNextGame,
      filled: true,
      onPressed: onNextGame,
    ),
  ],
);

/// The end-of-match card. [savedToHistory] adds the subtle reassurance that a
/// finished match can be revisited later from the home screen's History, even
/// after this dialog is dismissed.
Widget matchEndDialog({
  required AppLocalizations l10n,
  required Player? winner,
  required String score,
  required bool savedToHistory,
  CardAction? summaryAction,
  CardAction? rematchAction,
  required VoidCallback onDone,
}) => ModalCard(
  title: l10n.gameDialogMatchOverTitle,
  message:
      '${l10n.gameDialogMatchWinner(winner == null ? l10n.gameDialogNobody : playerName(winner, l10n))}\n$score',
  leading: winner == null
      ? null
      : _MatchOutcomeBanner(winner: winner, l10n: l10n),
  footnote: savedToHistory ? l10n.gameDialogSavedToHistory : null,
  actions: [
    ?summaryAction,
    ?rematchAction,
    CardAction(label: l10n.gameDialogDone, filled: true, onPressed: onDone),
  ],
);

class _OutcomeBanner extends StatelessWidget {
  const _OutcomeBanner({required this.result, required this.l10n});
  final GameResult result;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = result.winner == Player.white
        ? theme.colorScheme.primary
        : theme.colorScheme.tertiary;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(Icons.emoji_events_rounded, size: 34, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              gameEndSummary(result, l10n),
              style: theme.textTheme.titleMedium?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MatchOutcomeBanner extends StatelessWidget {
  const _MatchOutcomeBanner({required this.winner, required this.l10n});
  final Player winner;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = winner == Player.white
        ? theme.colorScheme.primary
        : theme.colorScheme.tertiary;
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(Icons.emoji_events_rounded, size: 34, color: color),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              playerName(winner, l10n),
              style: theme.textTheme.titleMedium?.copyWith(
                color: color,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _GameResultDetails extends StatelessWidget {
  const _GameResultDetails({
    required this.l10n,
    required this.gameNumber,
    required this.whiteRolls,
    required this.blackRolls,
    required this.whitePips,
    required this.blackPips,
    required this.assessmentsByPlayer,
    required this.expectedMoveAssessments,
    required this.metric,
  });

  final AppLocalizations l10n;
  final int gameNumber;
  final int whiteRolls;
  final int blackRolls;
  final int whitePips;
  final int blackPips;
  final Map<Player, List<MoveAssessment>> assessmentsByPlayer;
  final int expectedMoveAssessments;
  final AssessmentMetric metric;

  @override
  Widget build(BuildContext context) {
    final decisionsByPlayer = {
      for (final player in Player.values)
        player: (assessmentsByPlayer[player] ?? const <MoveAssessment>[])
            .where((a) => a.isDecision)
            .toList(),
    };
    final assessmentCount = assessmentsByPlayer.values.fold<int>(
      0,
      (sum, assessments) => sum + assessments.length,
    );
    final complete =
        expectedMoveAssessments > 0 &&
        assessmentCount == expectedMoveAssessments;
    final totalRolls = whiteRolls + blackRolls;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(l10n.gameResultGameNumber(gameNumber)),
        const SizedBox(height: 12),
        Row(
          children: [
            const Icon(Icons.casino_outlined, size: 18),
            const SizedBox(width: 6),
            Flexible(child: Text('${l10n.gameResultRolls}: $totalRolls')),
          ],
        ),
        const SizedBox(height: 8),
        _DiceAverage(
          label: l10n.white,
          l10n: l10n,
          count: whiteRolls,
          pips: whitePips,
        ),
        const SizedBox(height: 4),
        _DiceAverage(
          label: l10n.black,
          l10n: l10n,
          count: blackRolls,
          pips: blackPips,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('2', style: Theme.of(context).textTheme.labelSmall),
              Text('7', style: Theme.of(context).textTheme.labelSmall),
              Text('12', style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
        const SizedBox(height: 6),
        Text(
          l10n.gameResultDiceNote,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const Divider(height: 24),
        Text(l10n.metricExplainerErrorRateTitle),
        if (!complete)
          Text(l10n.gameResultRatingNotAvailable)
        else ...[
          for (final player in Player.values) ...[
            Text(playerName(player, l10n)),
            if (decisionsByPlayer[player]!.isEmpty)
              Text(l10n.gameResultRatingNotAvailable)
            else ...[
              Text(
                l10n.analysisSummaryMeanLoss(
                  formatAssessmentLoss(
                    decisionsByPlayer[player]!.fold<double>(
                          0,
                          (sum, a) => sum + a.equityLoss,
                        ) /
                        decisionsByPlayer[player]!.length,
                    metric,
                  ),
                ),
              ),
              Text(
                l10n.analysisSummaryCheckerDecisions(
                  decisionsByPlayer[player]!.length,
                ),
              ),
            ],
          ],
          Text(
            l10n.learningForcedDisclaimer,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ],
    );
  }
}

class _DiceAverage extends StatelessWidget {
  const _DiceAverage({
    required this.label,
    required this.l10n,
    required this.count,
    required this.pips,
  });
  final String label;
  final AppLocalizations l10n;
  final int count;
  final int pips;

  @override
  Widget build(BuildContext context) {
    final average = count == 0 ? 7.0 : pips / count;
    final averageLabel = count == 0
        ? '$label. ${l10n.gameResultDiceNote} ${l10n.gameResultRolls}: 0.'
        : '$label. ${l10n.gameResultDiceNote} '
              '${l10n.gameResultRolls}: $count; '
              '${average.toStringAsFixed(1)}.';
    return Semantics(
      container: true,
      label: averageLabel,
      child: ExcludeSemantics(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(child: Text(label)),
                Flexible(
                  child: Text(
                    count == 0
                        ? '— · n=0'
                        : '${average.toStringAsFixed(1)} · n=$count',
                    textAlign: TextAlign.end,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            LayoutBuilder(
              builder: (context, constraints) {
                final expected = constraints.maxWidth * 0.5;
                final actual =
                    constraints.maxWidth * ((average - 2) / 10).clamp(0.0, 1.0);
                return SizedBox(
                  height: 14,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: Theme.of(
                              context,
                            ).colorScheme.surfaceContainerHighest,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                      Positioned(
                        left: expected,
                        top: 0,
                        bottom: 0,
                        child: Container(
                          width: 2,
                          color: Theme.of(context).colorScheme.onSurface,
                        ),
                      ),
                      if (count > 0)
                        Positioned(
                          left: (actual - 5).clamp(
                            0.0,
                            constraints.maxWidth - 10,
                          ),
                          top: 2,
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// --- Declarative modal card --------------------------------------------------

class CardAction {
  const CardAction({
    required this.label,
    required this.onPressed,
    this.filled = false,
    this.busy = false,
  });

  final String label;

  /// Null disables the button (e.g. while [busy] awaits an async action).
  final VoidCallback? onPressed;
  final bool filled;

  /// When true the button shows a small spinner in place of its label.
  final bool busy;
}

/// A declarative modal: an opaque [ModalBarrier] plus a centred [Material] card.
/// No route, no animation — visibility is a pure function of the caller's state.
class ModalCard extends StatelessWidget {
  const ModalCard({
    super.key,
    required this.title,
    required this.message,
    required this.actions,
    this.footnote,
    this.leading,
    this.details,
  });

  final String title;
  final String message;
  final List<CardAction> actions;

  /// An optional subtle line (bodySmall) shown between the message and the
  /// action row — e.g. the match-end "Saved to History" reassurance.
  final String? footnote;
  final Widget? leading;
  final Widget? details;

  /// Renders one action as a filled or text button, showing a small spinner in
  /// place of the label while [CardAction.busy].
  Widget _actionButton(CardAction action) {
    final child = action.busy
        ? const SizedBox(
            height: 18,
            width: 18,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : Text(action.label);
    return action.filled
        ? FilledButton(onPressed: action.onPressed, child: child)
        : TextButton(onPressed: action.onPressed, child: child);
  }

  Widget _actionWrap(Iterable<CardAction> actions) => Wrap(
    alignment: WrapAlignment.end,
    spacing: 12,
    runSpacing: 4,
    children: [for (final action in actions) _actionButton(action)],
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: ModalBarrier(color: Colors.black54, dismissible: false),
        ),
        Semantics(
          container: true,
          explicitChildNodes: true,
          scopesRoute: true,
          namesRoute: true,
          label: title,
          child: BlockSemantics(
            child: FocusScope(
              autofocus: true,
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final maxHeight = (constraints.maxHeight - 32)
                      .clamp(0.0, 640.0)
                      .toDouble();
                  // Large translated action labels can wrap into several rows.
                  // On short displays, keep the primary action pinned and let
                  // details plus secondary actions scroll together.
                  final compactActions =
                      maxHeight < 520 &&
                      MediaQuery.textScalerOf(context).scale(1) >= 2;
                  final secondaryActions = compactActions
                      ? actions.where((action) => !action.filled).toList()
                      : const <CardAction>[];
                  final pinnedActions = compactActions
                      ? actions.where((action) => action.filled).toList()
                      : actions;
                  final content = Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ?leading,
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const SizedBox(height: 12),
                      Text(message),
                      if (details != null) ...[
                        const SizedBox(height: 12),
                        details!,
                      ],
                      if (footnote case final note?) ...[
                        const SizedBox(height: 12),
                        Text(
                          note,
                          style: Theme.of(context).textTheme.bodySmall
                              ?.copyWith(
                                color: Theme.of(
                                  context,
                                ).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                      if (secondaryActions.isNotEmpty) ...[
                        const SizedBox(height: 24),
                        _actionWrap(secondaryActions),
                      ],
                    ],
                  );
                  return Center(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxWidth: 420,
                        maxHeight: maxHeight,
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(12),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Flexible(
                              fit: FlexFit.loose,
                              child: SingleChildScrollView(
                                padding: EdgeInsets.fromLTRB(
                                  24,
                                  24,
                                  24,
                                  compactActions ? 24 : 0,
                                ),
                                child: content,
                              ),
                            ),
                            if (pinnedActions.isNotEmpty)
                              Padding(
                                padding: EdgeInsets.fromLTRB(
                                  24,
                                  compactActions ? 8 : 24,
                                  24,
                                  compactActions ? 16 : 24,
                                ),
                                child: _actionWrap(pinnedActions),
                              ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
