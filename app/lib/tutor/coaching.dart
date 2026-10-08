import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';

import 'move_assessment.dart';

/// Local, per-match choices. Turning off hints still permits reviewing a move
/// after it has been committed.
class TutorOptions {
  const TutorOptions({
    this.bestMoves = true,
    this.explanations = true,
    this.commentary = true,
    this.cubeAdvice = true,
  });

  final bool bestMoves;
  final bool explanations;
  final bool commentary;
  final bool cubeAdvice;

  TutorOptions copyWith({
    bool? bestMoves,
    bool? explanations,
    bool? commentary,
    bool? cubeAdvice,
  }) =>
      TutorOptions(
        bestMoves: bestMoves ?? this.bestMoves,
        explanations: explanations ?? this.explanations,
        commentary: commentary ?? this.commentary,
        cubeAdvice: cubeAdvice ?? this.cubeAdvice,
      );
}

/// Explanations report engine estimates and observable changes separately.
/// Board motifs are teaching cues, never a claimed trace of the neural net.
class MoveExplanation {
  const MoveExplanation({
    required this.verdict,
    required this.estimate,
    required this.observations,
    required this.comparison,
  });

  final String verdict;
  final String estimate;
  final List<String> observations;
  final String? comparison;

  static const limitations = 'Checker rankings estimate cubeless equity '
      '(expected points with a cube of 1); they do not account for the match '
      'score or future doubling. Board observations describe the play, not the '
      'neural engine’s internal reasoning. Close alternatives may be comparable.';

  static MoveExplanation forCandidate(
    GameState before,
    ScoredMove candidate,
    ScoredMove best,
  ) {
    final loss = (best.equity - candidate.equity).clamp(0.0, double.infinity);
    final p = candidate.probabilities;
    final isBest = loss < TutorThresholds.best;
    return MoveExplanation(
      verdict: isBest
          ? 'This play has the highest estimated equity (or is effectively tied).'
          : 'The engine estimates ${loss.toStringAsFixed(3)} less equity than '
              'its top play, ${best.move}.',
      estimate: 'After this play: ${(p.win * 100).toStringAsFixed(1)}% wins, '
          '${(p.winGammon * 100).toStringAsFixed(1)}% gammon-or-better wins, '
          '${(p.loseGammon * 100).toStringAsFixed(1)}% gammon-or-worse losses. '
          'These are estimates from the mover’s perspective.',
      observations: describeMove(before, candidate.move),
      comparison: isBest ? null : _compare(before, candidate, best),
    );
  }

  static String _compare(
    GameState before,
    ScoredMove candidate,
    ScoredMove best,
  ) {
    final delta = (best.probabilities.win - candidate.probabilities.win) * 100;
    final direction = delta < 0 ? 'lower' : 'higher';
    final side = before.turn;
    BoardState result(Move move) {
      final board = before.board.applyMove(side, move);
      return side == Player.white ? board : board.mirrored();
    }

    final chosenBoard = result(candidate.move), bestBoard = result(best.move);
    final differences = <String>[];
    void compare(String label, int chosen, int top) {
      if (chosen != top) differences.add('$label: $top versus $chosen');
    }

    compare(
      'blots left',
      chosenBoard.points.where((n) => n == 1).length,
      bestBoard.points.where((n) => n == 1).length,
    );
    compare(
      'made home-board points',
      chosenBoard.points.take(6).where((n) => n >= 2).length,
      bestBoard.points.take(6).where((n) => n >= 2).length,
    );
    compare(
      'opposing checkers on the bar',
      chosenBoard.blackBar,
      bestBoard.blackBar,
    );
    compare('checkers borne off', chosenBoard.whiteOff, bestBoard.whiteOff);
    final boardComparison = differences.isEmpty
        ? 'The plays have the same counts of blots, made home-board points, '
            'opposing checkers on the bar, and checkers borne off. Placement '
            'and future rolls can still change their value.'
        : 'Observable differences (top play versus this alternative): '
            '${differences.join('; ')}. These differences are not a proof of '
            'why the engine prefers the play.';
    return 'The top play’s estimated win chance is '
        '${delta.abs().toStringAsFixed(1)} percentage points $direction. '
        'Equity also counts gammons and backgammons, so win chance alone '
        'does not determine the ranking. $boardComparison';
  }

  static MoveExplanation? forAssessment(GameState before, MoveAssessment a) {
    if (a.ranked.isEmpty) return null;
    final resulting = before.board.applyMove(before.turn, a.played);
    for (final candidate in a.ranked) {
      if (candidate.move.sameAs(a.played) ||
          before.board.applyMove(before.turn, candidate.move) == resulting) {
        return forCandidate(before, candidate, a.ranked.first);
      }
    }
    return null;
  }

  static List<String> describeMove(GameState before, Move move) {
    final side = before.turn;
    final original =
        side == Player.white ? before.board : before.board.mirrored();
    final applied = before.board.applyMove(side, move);
    final after = side == Player.white ? applied : applied.mirrored();
    final observations = <String>[];
    final hits = after.blackBar - original.blackBar;
    if (hits > 0) {
      observations.add(
        'Hits $hits opposing ${hits == 1 ? 'checker' : 'checkers'}; '
        'the opponent must re-enter from the bar before moving other checkers.',
      );
    }
    final entered = original.whiteBar - after.whiteBar;
    if (entered > 0) observations.add('Enters $entered from the bar.');
    final off = after.whiteOff - original.whiteOff;
    if (off > 0) {
      observations.add('Bears off $off ${off == 1 ? 'checker' : 'checkers'}.');
    }
    final made = <int>[], broken = <int>[];
    for (var i = 0; i < 24; i++) {
      if (after.points[i] >= 2 && original.points[i] < 2) made.add(i + 1);
      if (after.points[i] < 2 && original.points[i] >= 2) broken.add(i + 1);
    }
    if (made.isNotEmpty) {
      observations.add(
        'Makes ${made.map((p) => '$p').join(', ')} '
        '(numbered from the mover’s home board). Made points block landings.',
      );
    }
    if (broken.isNotEmpty) {
      observations.add(
        'Gives up made ${broken.length == 1 ? 'point' : 'points'} '
        '${broken.join(', ')}. Those points no longer block the opponent.',
      );
    }
    final blots = after.points.where((n) => n == 1).length;
    final oldBlots = original.points.where((n) => n == 1).length;
    observations.add(
      'Leaves $blots ${blots == 1 ? 'blot' : 'blots'} '
      '(previously $oldBlots). A blot can be hit only if the opponent can '
      'reach it legally; this is not a count of hitting rolls.',
    );
    if (move.checkerMoves.isEmpty) {
      return const ['No legal checker play: the turn must pass.'];
    }
    return observations;
  }
}

/// Current-position prompts do not reveal a best move or require an engine.
String positionCommentary(GameState state) {
  final board = state.board;
  final side = state.turn;
  if (state.phase == GamePhase.gameOver) {
    return 'Game finished. Review the moves to find a decision to practise.';
  }
  if (state.phase == GamePhase.cubeOffered) {
    return 'The cube has been offered. Decide whether to take or pass before '
        'planning a checker play; match score changes the value of the cube.';
  }
  if (state.phase == GamePhase.resignOffered) {
    return 'A resignation has been offered. Compare the offered points with '
        'the position before accepting or continuing the game.';
  }
  if (state.phase == GamePhase.moving && state.legalMoves.isEmpty) {
    return 'No legal play with this roll. A forced pass is not a mistake.';
  }
  if (board.barFor(side) > 0) {
    return '${side == Player.white ? 'White' : 'Black'} has '
        '${board.barFor(side)} on the bar. Re-entry comes before any other move.';
  }
  final own = board.pipCount(side), other = board.pipCount(side.opponent);
  final lead = other - own;
  final race = lead == 0
      ? 'The pip counts are level.'
      : '${side == Player.white ? 'White' : 'Black'} is '
          '${lead.abs()} pips ${lead > 0 ? 'ahead' : 'behind'}.';
  return '$race Pip count measures distance, not the whole position. '
      'Compare safe points, exposed blots, and the opponent’s replies.';
}
