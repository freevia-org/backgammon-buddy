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
    this.tryFirst = false,
  });

  final bool bestMoves;
  final bool explanations;
  final bool commentary;
  final bool cubeAdvice;
  final bool tryFirst;

  TutorOptions copyWith({
    bool? bestMoves,
    bool? explanations,
    bool? commentary,
    bool? cubeAdvice,
    bool? tryFirst,
  }) => TutorOptions(
    bestMoves: bestMoves ?? this.bestMoves,
    explanations: explanations ?? this.explanations,
    commentary: commentary ?? this.commentary,
    cubeAdvice: cubeAdvice ?? this.cubeAdvice,
    tryFirst: tryFirst ?? this.tryFirst,
  );

  @override
  bool operator ==(Object other) =>
      other is TutorOptions &&
      bestMoves == other.bestMoves &&
      explanations == other.explanations &&
      commentary == other.commentary &&
      cubeAdvice == other.cubeAdvice &&
      tryFirst == other.tryFirst;
  @override
  int get hashCode =>
      Object.hash(bestMoves, explanations, commentary, cubeAdvice, tryFirst);
}

enum CoachingTheme {
  hitting,
  safety,
  pointMaking,
  prime,
  anchor,
  race,
  bearOff,
  barEntry,
  cube,
}

/// Board facts, normalized to the mover's 24-to-1 direction. These are observed
/// features, not an explanation of the neural network's internal decision.
class PositionFeatures {
  PositionFeatures(BoardState board, Player mover)
    : board = mover == Player.white ? board : board.mirrored();
  final BoardState board;
  bool get isRace {
    if (board.whiteBar > 0 || board.blackBar > 0) return false;
    final lastOwn = board.points.lastIndexWhere((n) => n > 0);
    final firstOpponent = board.points.indexWhere((n) => n < 0);
    return lastOwn < 0 || firstOpponent < 0 || lastOwn < firstOpponent;
  }

  List<int> get anchors => [
    for (var i = 18; i < 24; i++)
      if (board.points[i] >= 2) i + 1,
  ];
  int get longestPrime {
    var longest = 0, run = 0;
    for (final n in board.points) {
      run = n >= 2 ? run + 1 : 0;
      if (run > longest) longest = run;
    }
    return longest;
  }

  int get spares => board.points.fold(0, (sum, n) => sum + (n > 2 ? n - 2 : 0));
}

/// Counts the 36 equally likely ordered dice outcomes on which the opponent
/// has at least one legal hitting play. Includes indirect hits and obeys bar,
/// dice-usage and higher-die rules through the rules generator. This describes
/// opportunity, not the probability that the opponent chooses the hit.
int legalHittingRolls(BoardState board, Player mover) {
  if (board.whiteOff == 15 || board.blackOff == 15) return 0;
  if (PositionFeatures(board, mover).isRace) return 0;
  var total = 0;
  for (var a = 1; a <= 6; a++) {
    for (var b = a; b <= 6; b++) {
      final legal = MoveGenerator.legalMoves(board, mover.opponent, Dice(a, b));
      if (legal.any((m) => m.checkerMoves.any((h) => h.isHit))) {
        total += a == b ? 1 : 2;
      }
    }
  }
  return total;
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

  static const limitations =
      'Depth: static neural evaluation after each legal '
      'play (0-ply), without rollouts or a search of future replies. Score-aware '
      'MWC weights those outcome estimates by the match score and current cube; '
      'it does not model future cube actions. Cubeless equity is expected points '
      'at cube 1 when score is unavailable. Board observations describe the play, '
      'not the neural engine’s internal reasoning. Near ties are not a claim '
      'of certainty; there is no calibrated confidence interval.';

  static MoveExplanation forCandidate(
    GameState before,
    ScoredMove candidate,
    ScoredMove best,
  ) {
    final loss = (best.rankingValue - candidate.rankingValue).clamp(
      0.0,
      double.infinity,
    );
    final metric = candidate.matchWinningChance == null
        ? AssessmentMetric.cubelessEquity
        : AssessmentMetric.matchWinningChance;
    final p = candidate.probabilities;
    final isBest = markForMetric(loss, metric) == MoveMark.best;
    return MoveExplanation(
      verdict: isBest
          ? 'This play has the highest estimated value (or is a near tie).'
          : 'The engine estimates ${metric == AssessmentMetric.cubelessEquity ? loss.toStringAsFixed(3) : formatAssessmentLoss(loss, metric)} less ${metric == AssessmentMetric.cubelessEquity ? 'equity' : 'match value'} than '
                'its top play, ${best.move}.',
      estimate:
          'After this play: ${(p.win * 100).toStringAsFixed(1)}% wins, '
          '${(p.winGammon * 100).toStringAsFixed(1)}% gammon-or-better wins, '
          '${(p.loseGammon * 100).toStringAsFixed(1)}% gammon-or-worse losses. '
          'These are estimates from the mover’s perspective.'
          '${candidate.matchWinningChance == null ? '' : ' Estimated match-winning chance: ${(candidate.matchWinningChance! * 100).toStringAsFixed(2)}%.'}',
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
        'The objective also values gammons and backgammons according to the '
        '${best.matchWinningChance == null ? 'cubeless points' : 'match score'}, so game win chance alone '
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
    if (move.checkerMoves.isEmpty) {
      return const ['No legal checker play: the turn must pass.'];
    }
    final side = before.turn;
    final original = side == Player.white
        ? before.board
        : before.board.mirrored();
    final applied = before.board.applyMove(side, move);
    final after = side == Player.white ? applied : applied.mirrored();
    final beforeFeatures = PositionFeatures(before.board, side);
    final afterFeatures = PositionFeatures(applied, side);
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
    if (afterFeatures.longestPrime >= 3 || beforeFeatures.longestPrime >= 3) {
      observations.add(
        'Longest run of made points: ${afterFeatures.longestPrime} '
        '(previously ${beforeFeatures.longestPrime}). A six-point prime cannot '
        'be crossed while all six points remain closed.',
      );
      observations.add(
        'Spare checkers above two on made points: ${afterFeatures.spares} '
        '(previously ${beforeFeatures.spares}). These are a timing resource '
        'for moving without immediately breaking a point, not a timing forecast.',
      );
    }
    if (afterFeatures.anchors.isNotEmpty || beforeFeatures.anchors.isNotEmpty) {
      observations.add(
        'Anchors in the opponent’s home board: '
        '${afterFeatures.anchors.isEmpty ? 'none' : afterFeatures.anchors.join(', ')} '
        '(previously ${beforeFeatures.anchors.isEmpty ? 'none' : beforeFeatures.anchors.join(', ')}). '
        'An anchor is a made point that opposing checkers cannot hit.',
      );
    }
    if (afterFeatures.isRace) {
      observations.add(
        'Pure race: the armies have passed each other and neither '
        'side is on the bar. Hitting is no longer possible; bear-off efficiency matters.',
      );
    } else {
      final shots = _cachedShots(applied, side);
      observations.add(
        'The opponent has a legal hitting play on $shots of 36 '
        'dice outcomes (direct and indirect hits). This counts opportunities, '
        'not the chance they will choose to hit.',
      );
    }
    return observations;
  }

  static final Map<(BoardState, Player), int> _shotCache = {};
  static int _cachedShots(BoardState board, Player side) {
    final key = (board, side);
    if (_shotCache.containsKey(key)) return _shotCache[key]!;
    if (_shotCache.length >= 64) _shotCache.remove(_shotCache.keys.first);
    return _shotCache[key] = legalHittingRolls(board, side);
  }

  static Set<CoachingTheme> themeTags(
    GameState before,
    Move played, {
    Move? best,
  }) {
    final tags = <CoachingTheme>{};
    final side = before.turn;
    final original = PositionFeatures(before.board, side);
    for (final move in [played, ?best]) {
      final applied = before.board.applyMove(side, move);
      final result = PositionFeatures(applied, side);
      if (result.board.blackBar > original.board.blackBar) {
        tags.add(CoachingTheme.hitting);
      }
      if (result.board.whiteBar < original.board.whiteBar) {
        tags.add(CoachingTheme.barEntry);
      }
      if (result.board.whiteOff > original.board.whiteOff) {
        tags.add(CoachingTheme.bearOff);
      }
      if (result.isRace) tags.add(CoachingTheme.race);
      if (result.anchors.isNotEmpty || original.anchors.isNotEmpty) {
        tags.add(CoachingTheme.anchor);
      }
      if (result.longestPrime >= 3 || original.longestPrime >= 3) {
        tags.add(CoachingTheme.prime);
      }
      if (result.board.points.where((n) => n == 1).isNotEmpty) {
        tags.add(CoachingTheme.safety);
      }
      for (var i = 0; i < 24; i++) {
        if (result.board.points[i] >= 2 && original.board.points[i] < 2) {
          tags.add(CoachingTheme.pointMaking);
        }
      }
    }
    return tags;
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
  if (state.phase == GamePhase.moving && state.legalMoves.length == 1) {
    return 'Only one legal resulting position is available. This roll is '
        'excluded from your decision error average.';
  }
  final features = PositionFeatures(board, side);
  final own = board.pipCount(side), other = board.pipCount(side.opponent);
  final lead = other - own;
  final race = lead == 0
      ? 'The pip counts are level.'
      : '${side == Player.white ? 'White' : 'Black'} is '
            '${lead.abs()} pips ${lead > 0 ? 'ahead' : 'behind'}.';
  if (features.isRace) {
    return '$race This is a pure race: no further hits are possible. '
        'Compare how efficiently each play brings checkers home and bears them off.';
  }
  if (features.longestPrime >= 3) {
    return '$race Contact remains. Your longest run covers ${features.longestPrime} '
        'made points, with ${features.spares} spare checkers above two on made points. '
        'Compare keeping the blockade with preserving checkers you can move safely.';
  }
  if (features.anchors.isNotEmpty) {
    return '$race Contact remains, with an anchor on ${features.anchors.join(', ')}. '
        'Compare the safety of keeping it with the race cost of leaving checkers back.';
  }
  return '$race Pip count measures distance, not the whole contact position. '
      'Compare safe points, exposed blots, and the opponent’s replies.';
}
