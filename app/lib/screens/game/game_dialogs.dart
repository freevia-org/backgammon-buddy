import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';

import '../../game/match_controller.dart';
import '../../l10n/app_localizations.dart';
import '../../l10n/localization_lookup.dart';

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
  CardAction? summaryAction,
  required VoidCallback onNextGame,
}) => ModalCard(
  title: l10n.gameDialogGameOverTitle,
  message: '${gameEndSummary(result, l10n)}\n$score',
  actions: [
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
  required VoidCallback onDone,
}) => ModalCard(
  title: l10n.gameDialogMatchOverTitle,
  message:
      '${l10n.gameDialogMatchWinner(winner == null ? l10n.gameDialogNobody : playerName(winner, l10n))}\n$score',
  footnote: savedToHistory ? l10n.gameDialogSavedToHistory : null,
  actions: [
    ?summaryAction,
    CardAction(label: l10n.gameDialogDone, filled: true, onPressed: onDone),
  ],
);

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
  });

  final String title;
  final String message;
  final List<CardAction> actions;

  /// An optional subtle line (bodySmall) shown between the message and the
  /// action row — e.g. the match-end "Saved to History" reassurance.
  final String? footnote;

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

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Positioned.fill(
          child: ModalBarrier(color: Colors.black54, dismissible: false),
        ),
        Center(
          child: Material(
            borderRadius: BorderRadius.circular(12),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 360),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: Theme.of(context).textTheme.titleLarge),
                    const SizedBox(height: 12),
                    Text(message),
                    if (footnote != null) ...[
                      const SizedBox(height: 12),
                      Text(
                        footnote!,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                    const SizedBox(height: 24),
                    // Wrap (not Row) so a second action — e.g. the post-match
                    // "Match summary" link alongside "Next game" / "Done" — flows
                    // onto a new line rather than overflowing the narrow card.
                    Wrap(
                      alignment: WrapAlignment.end,
                      spacing: 12,
                      runSpacing: 4,
                      children: [
                        for (final action in actions) _actionButton(action),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
