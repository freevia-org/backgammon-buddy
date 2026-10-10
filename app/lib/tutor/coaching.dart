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

  static const coach = TutorOptions();
  static const hintsOnly = TutorOptions(
    bestMoves: true,
    explanations: false,
    commentary: false,
    cubeAdvice: false,
  );
  static const tryFirstStyle = TutorOptions(tryFirst: true);

  TutorStyle? get style {
    if (this == coach) return TutorStyle.coach;
    if (this == hintsOnly) return TutorStyle.hintsOnly;
    if (this == tryFirstStyle) return TutorStyle.tryFirst;
    return null;
  }

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

enum TutorStyle { coach, hintsOnly, tryFirst }

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
  int get homePoints => board.points.take(6).where((n) => n >= 2).length;
  int get opponentHomePoints =>
      board.points.skip(18).where((n) => n <= -2).length;
  int get blots => board.points.where((n) => n == 1).length;
  bool get allHome =>
      board.whiteBar == 0 && !board.points.skip(6).any((n) => n > 0);
}

/// Counts the 36 equally likely ordered dice outcomes on which the opponent
/// has at least one legal hitting play. Includes indirect hits and obeys bar,
/// dice-usage and higher-die rules through the rules generator. This describes
/// opportunity, not the probability that the opponent chooses the hit.
int legalHittingRolls(BoardState board, Player mover) =>
    _replyThreat(board, mover).rolls;

class _ReplyThreat {
  const _ReplyThreat(this.rolls, this.example);
  final int rolls;
  final String? example;
}

final Map<BoardState, _ReplyThreat> _replyCache = {};

_ReplyThreat _replyThreat(BoardState board, Player mover) {
  final features = PositionFeatures(board, mover);
  final normalized = features.board;
  if (board.whiteOff == 15 || board.blackOff == 15 || features.isRace) {
    return const _ReplyThreat(0, null);
  }
  if (_replyCache.containsKey(normalized)) return _replyCache[normalized]!;
  var total = 0;
  String? example;
  for (var a = 1; a <= 6; a++) {
    for (var b = a; b <= 6; b++) {
      final legal = MoveGenerator.legalMoves(
        normalized,
        Player.black,
        Dice(a, b),
      );
      if (legal.any((m) => m.checkerMoves.any((h) => h.isHit))) {
        total += a == b ? 1 : 2;
        if (example == null) {
          final play = legal.firstWhere(
            (m) => m.checkerMoves.any((h) => h.isHit),
          );
          final hit = play.checkerMoves.firstWhere((h) => h.isHit);
          example =
              'For example, $a–$b allows a legal hit on your ${hit.to + 1}-point.';
        }
      }
    }
  }
  if (_replyCache.length >= 64) _replyCache.remove(_replyCache.keys.first);
  return _replyCache[normalized] = _ReplyThreat(total, example);
}

/// Explanations report engine estimates and observable changes separately.
/// Board motifs are teaching cues, never a claimed trace of the neural net.
class MoveExplanation {
  const MoveExplanation({
    required this.verdict,
    required this.estimate,
    required this.observations,
    required this.comparison,
    this.plan = '',
    this.comparisonReason,
    this.shortReason,
  });

  final String verdict;
  final String estimate;
  final List<String> observations;
  final String? comparison;
  final String plan;
  final String? comparisonReason;
  final String? shortReason;
  String get summaryReason => shortReason ?? comparisonReason ?? plan;

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
    final forced =
        before.phase == GamePhase.moving && before.legalMoves.length <= 1;
    final after = before.board.applyMove(before.turn, candidate.move);
    final comparison = isBest || forced
        ? null
        : _compare(before, candidate, best);
    return MoveExplanation(
      verdict: forced
          ? 'This roll leaves no checker-play choice; it is not graded as a decision.'
          : isBest
          ? 'A top choice for this position.'
          : 'The engine prefers another play here.',
      estimate:
          '${forced ? '' : 'Difference from the top play: ${formatAssessmentLoss(loss, metric)}. '}'
          'After this play: ${(p.win * 100).toStringAsFixed(1)}% wins, '
          '${(p.winGammon * 100).toStringAsFixed(1)}% gammon-or-better wins, '
          '${(p.loseGammon * 100).toStringAsFixed(1)}% gammon-or-worse losses. '
          'These are estimates from the mover’s perspective.'
          '${candidate.matchWinningChance == null ? '' : ' Estimated match-winning chance: ${(candidate.matchWinningChance! * 100).toStringAsFixed(2)}%.'}',
      observations: describeMove(before, candidate.move),
      comparison: comparison?.detail,
      comparisonReason: comparison?.summary,
      plan: _planAfter(before.board, after, before.turn),
      shortReason:
          comparison?.summary ??
          _shortPlanAfter(before.board, after, before.turn),
    );
  }

  static ({String detail, String summary}) _compare(
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
    final chosen = PositionFeatures(chosenBoard, Player.white);
    final top = PositionFeatures(bestBoard, Player.white);
    final differences = <String>[];
    final gains = <String>[];
    void add(String text, {required bool gain, required String summary}) {
      differences.add(text);
      if (gain) gains.add(summary);
    }

    if (bestBoard.blackBar != chosenBoard.blackBar) {
      add(
        'The top play leaves ${bestBoard.blackBar} opposing checkers '
        'on the bar instead of ${chosenBoard.blackBar}. A checker on the bar '
        'must re-enter before the opponent can move the others.',
        gain: bestBoard.blackBar > chosenBoard.blackBar,
        summary:
            'The top play puts more checkers on the bar, delaying the opponent’s other moves.',
      );
    }
    if (top.homePoints != chosen.homePoints) {
      add(
        'The top play holds ${top.homePoints} home-board points instead of '
        '${chosen.homePoints}, ${top.homePoints > chosen.homePoints ? 'closing more' : 'leaving more'} '
        'entry points after a hit.',
        gain: top.homePoints > chosen.homePoints,
        summary:
            'The top play closes more home-board points, making re-entry harder after a hit.',
      );
    }
    final topShots = legalHittingRolls(bestBoard, Player.white);
    final chosenShots = legalHittingRolls(chosenBoard, Player.white);
    if (topShots != chosenShots) {
      add(
        'The top play allows a reply hit on $topShots of 36 rolls instead of '
        '$chosenShots. ${topShots < chosenShots ? 'That reduces the immediate risk of being sent back.' : 'Compare that extra exposure with what the play gains elsewhere.'}',
        gain: topShots < chosenShots,
        summary:
            'The top play allows fewer immediate hitting rolls, reducing the risk of being sent back.',
      );
    }
    if (top.longestPrime != chosen.longestPrime) {
      add(
        'The top play’s longest run of closed points is ${top.longestPrime} '
        'rather than ${chosen.longestPrime}; compare the blockade with the '
        'checkers available to keep it intact.',
        gain: top.longestPrime > chosen.longestPrime,
        summary: 'The top play keeps a longer run of closed points.',
      );
    }
    if (top.anchors.join(',') != chosen.anchors.join(',')) {
      add(
        'The top play’s anchors are ${_points(top.anchors)} rather than '
        '${_points(chosen.anchors)}. Keeping an anchor preserves a safe landing '
        'point; leaving it brings those checkers nearer home.',
        gain: top.anchors.length > chosen.anchors.length,
        summary:
            'The top play keeps more safe anchors in the opponent’s home board.',
      );
    }
    if (bestBoard.whiteOff != chosenBoard.whiteOff) {
      add(
        'The top play has ${bestBoard.whiteOff} checkers off instead of '
        '${chosenBoard.whiteOff}. Each checker removed is one fewer to bear off later.',
        gain: bestBoard.whiteOff > chosenBoard.whiteOff,
        summary:
            'The top play takes more checkers off, leaving fewer to remove later.',
      );
    }
    if (differences.isEmpty) {
      differences.add(
        'Both plays leave the same immediate hit exposure, home-board '
        'points, anchors and checkers off. Compare the landing points: the '
        'next roll may use those checkers differently.',
      );
    }
    // The probability tradeoff is reported explicitly, never used as proof
    // that a particular board feature caused the neural ranking.
    final detail =
        '${differences.take(3).join(' ')} The top play’s estimated win chance is '
                '${delta.abs().toStringAsFixed(1)} percentage points $direction. '
                '${delta < 0 ? 'It can still rank higher because gammons and backgammons have different value at the current ${best.matchWinningChance == null ? 'stake' : 'match score'}.' : ''}'
            .trim();
    final onlyTopAnchors = top.anchors
        .where((point) => !chosen.anchors.contains(point))
        .toList();
    final summary = gains.isNotEmpty
        ? gains.first
        : chosen.blots > top.blots
        ? 'This play leaves ${chosen.blots} single checkers; the top play leaves ${top.blots}.'
        : onlyTopAnchors.isNotEmpty
        ? 'The top play keeps a safe anchor on point ${onlyTopAnchors.first}.'
        : chosen.homePoints < top.homePoints
        ? 'The top play closes more entry points in case one of your checkers is hit.'
        : chosenShots > topShots
        ? 'The top play leaves fewer chances for the opponent to hit back.'
        : 'The plays leave similar immediate risks; compare which landing points stay useful next roll.';
    return (detail: detail, summary: summary);
  }

  static MoveExplanation? forAssessment(GameState before, MoveAssessment a) {
    if (a.ranked.isEmpty) return null;
    // Cached assessments are derived data and may be stale or malformed. Map
    // every hop back to the legal representative for this exact position before
    // any board application; BoardState.applyMove assumes its input is legal.
    final played = before.canonicalPlay(a.played);
    if (played == null) return null;
    final ranked = <ScoredMove>[];
    for (final candidate in a.ranked) {
      final canonical = before.canonicalPlay(candidate.move);
      if (canonical == null) return null;
      ranked.add(
        ScoredMove(
          move: canonical,
          probabilities: candidate.probabilities,
          matchWinningChance: candidate.matchWinningChance,
        ),
      );
    }
    final selected = ranked.where((candidate) => candidate.move.sameAs(played));
    if (selected.isEmpty) return null;
    return forCandidate(before, selected.first, ranked.first);
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
        'Makes ${made.join(', ')}. Two or more checkers hold a safe point '
        'and block an opponent’s landing there.',
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
      '${blots == 0 ? 'Leaves no single checkers exposed' : 'Leaves $blots exposed single ${blots == 1 ? 'checker' : 'checkers'}'} '
      '(previously $oldBlots). ${blots == 0 ? 'There are no single checkers to hit.' : 'Check whether the opponent can reach them before choosing safety over another gain.'}',
    );
    if (afterFeatures.longestPrime >= 3 || beforeFeatures.longestPrime >= 3) {
      observations.add(
        'Longest run of made points: ${afterFeatures.longestPrime} '
        '(previously ${beforeFeatures.longestPrime}). ${afterFeatures.longestPrime >= 6 ? 'A six-point prime cannot be crossed while it stays closed.' : 'Keep builders nearby if you want to extend or preserve this run.'}',
      );
      observations.add(
        '${afterFeatures.spares} spare checkers sit above two on made points. '
        'Moving a spare can preserve the point; moving one of its last two opens it.',
      );
    }
    if (afterFeatures.anchors.isNotEmpty || beforeFeatures.anchors.isNotEmpty) {
      observations.add(
        'Anchors in the opponent’s home board: '
        '${afterFeatures.anchors.isEmpty ? 'none' : afterFeatures.anchors.join(', ')} '
        '(previously ${beforeFeatures.anchors.isEmpty ? 'none' : beforeFeatures.anchors.join(', ')}). '
        'Keeping an anchor protects those checkers from hits; leaving it trades '
        'that foothold for progress in the race.',
      );
    }
    if (afterFeatures.isRace) {
      observations.add(
        'Pure race: the armies have passed each other and neither '
        'side is on the bar. Hitting is no longer possible; bear-off efficiency matters.',
      );
    } else {
      final threat = _replyThreat(applied, side);
      observations.add(
        threat.rolls == 0
            ? 'No legal next roll lets the opponent hit a checker in this position. '
                  'Contact still remains, so later moves can create new shots.'
            : 'The opponent can hit on ${threat.rolls} of 36 rolls. '
                  '${threat.example} A hit is available, not guaranteed to be chosen.',
      );
      if (after.blackBar > 0) {
        observations.add(
          '${afterFeatures.homePoints} of your home-board points '
          'are closed. ${afterFeatures.homePoints == 6 ? 'The opponent cannot re-enter until a point opens.' : 'A roll using an open entry point can bring a checker back from the bar.'}',
        );
      }
    }
    return observations;
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

String _points(List<int> points) => points.isEmpty ? 'none' : points.join(', ');

String _shortPlanAfter(BoardState before, BoardState after, Player side) {
  final old = PositionFeatures(before, side);
  final next = PositionFeatures(after, side);
  if (next.board.whiteOff == 15) {
    return 'All 15 checkers are off: the game is won.';
  }
  if (next.board.blackBar > old.board.blackBar) {
    return 'The hit gains time while the opponent works to re-enter.';
  }
  if (next.isRace) {
    return next.allHome
        ? 'An efficient bear-off removes checkers and leaves useful numbers for the next roll.'
        : 'The race plan is to bring the rear checkers home with useful bear-off landing points.';
  }
  if (next.board.whiteOff > old.board.whiteOff) {
    return 'Bearing off makes progress, but the remaining contact still leaves a risk of hits.';
  }
  if (next.board.whiteBar < old.board.whiteBar) {
    return 'Re-entry gets the checker back in play; finding a safe landing comes next.';
  }
  if (next.homePoints > old.homePoints) {
    return 'The new home-board point takes away an entry number after a future hit.';
  }
  if (next.longestPrime >= 3 && next.longestPrime > old.longestPrime) {
    return 'The longer run closes more landing points; spare checkers help keep it intact.';
  }
  if (old.anchors.any((point) => !next.anchors.contains(point))) {
    return 'Leaving the anchor gains ground but gives up a safe foothold.';
  }
  if (next.anchors.any((point) => !old.anchors.contains(point))) {
    return 'The new anchor gives the back checkers a safe foothold.';
  }
  if (next.blots < old.blots) {
    return 'Covering a blot removes a target for the opponent.';
  }
  return 'The tradeoff is development versus safety: useful builders can also become targets.';
}

String _planAfter(BoardState before, BoardState after, Player side) {
  final old = PositionFeatures(before, side);
  final next = PositionFeatures(after, side);
  if (next.board.whiteOff == 15) {
    return 'All 15 checkers are off: the game is won.';
  }
  if (next.board.blackBar > old.board.blackBar) {
    return 'Use the hit to gain time while the opponent re-enters. '
        '${next.homePoints >= 3 ? 'Keep your closed home-board points to make entry harder.' : 'Build more home-board points to make future hits harder to recover from.'}';
  }
  if (next.isRace) {
    return next.allHome
        ? 'Work toward an efficient bear-off: remove checkers while leaving useful numbers for the next roll.'
        : 'Bring the rear checkers home and spread them across useful landing points for the bear-off.';
  }
  if (next.board.whiteOff > old.board.whiteOff) {
    return 'Take checkers out of the game, but keep watching the opponent’s '
        'back checkers: contact makes a loose bear-off checker a possible target.';
  }
  if (next.board.whiteBar < old.board.whiteBar) {
    return 'Get back into play, then look for a safe point for the checker that entered.';
  }
  if (next.homePoints > old.homePoints) {
    return 'Strengthen your home board. The new closed point gives a future hit more force by taking away an entry number.';
  }
  if (next.longestPrime >= 3 && next.longestPrime > old.longestPrime) {
    return 'Keep the run of closed points working together. Preserve spares so later rolls do not force you to open it.';
  }
  if (old.anchors.any((point) => !next.anchors.contains(point))) {
    return 'Leaving an anchor advances your back checkers but gives up a safe foothold. Watch their exposure on the way home.';
  }
  if (next.anchors.any((point) => !old.anchors.contains(point))) {
    return 'Use the new anchor as a safe foothold while you improve the rest of your position.';
  }
  if (next.blots < old.blots) {
    return 'Consolidate your checkers. Covering a blot removes that target while keeping future landing points available.';
  }
  return 'Balance development with safety: bring builders toward useful points and check which single checkers can be hit.';
}

/// A short, factual assessment from the player-to-move's perspective. It does
/// not reveal a best move or infer a winning probability from a pip lead.
class PositionCoaching {
  const PositionCoaching({
    required this.summary,
    required this.plan,
    this.reasons = const [],
  });
  final String summary;
  final String plan;
  final List<String> reasons;

  factory PositionCoaching.forState(GameState state) {
    if (state.phase == GamePhase.gameOver) {
      return const PositionCoaching(
        summary: 'Game finished.',
        plan: 'Review the moves to find a decision to practise.',
      );
    }
    if (state.phase == GamePhase.cubeOffered) {
      return const PositionCoaching(
        summary: 'The cube has been offered.',
        plan: 'Decide whether to take or pass before planning a checker play.',
        reasons: ['The match score changes what the extra stake is worth.'],
      );
    }
    if (state.phase == GamePhase.resignOffered) {
      return const PositionCoaching(
        summary: 'A resignation has been offered.',
        plan:
            'Compare the offered points with the position before accepting or continuing.',
      );
    }
    if (state.phase == GamePhase.moving) {
      final count = state.legalMoves.length;
      if (count == 0) {
        return const PositionCoaching(
          summary: 'No legal play with this roll.',
          plan: 'A forced pass is not a mistake; wait for the next roll.',
        );
      }
      if (count == 1) {
        return const PositionCoaching(
          summary: 'Only one legal resulting position.',
          plan:
              'Play the forced turn. There is no choice to grade on this roll.',
        );
      }
    }
    final features = PositionFeatures(state.board, state.turn);
    final board = features.board;
    final lead = board.pipCount(Player.black) - board.pipCount(Player.white);
    final race = lead == 0
        ? 'The pip counts are level.'
        : 'You are ${lead.abs()} pips ${lead > 0 ? 'ahead' : 'behind'}.';
    if (board.whiteBar > 0) {
      return PositionCoaching(
        summary: '${board.whiteBar} on the bar: re-entry comes first.',
        plan:
            'Enter before moving any other checker; then look for a safe landing.',
        reasons: [
          'The opponent has ${features.opponentHomePoints} closed home-board points.',
        ],
      );
    }
    if (features.isRace) {
      return PositionCoaching(
        summary: features.allHome ? 'Bear-off race.' : 'A pure race.',
        plan: features.allHome
            ? 'Remove checkers while leaving a useful spread for the next roll.'
            : 'Bring the back checkers home without piling too many on one point.',
        reasons: [
          race,
          'The armies have passed each other; no further hits are possible.',
        ],
      );
    }
    if (board.blackBar > 0) {
      return PositionCoaching(
        summary: 'The opponent has ${board.blackBar} on the bar.',
        plan: features.homePoints == 6
            ? 'Keep the board closed while bringing the remaining checkers home.'
            : 'Build or preserve your home board while the opponent tries to enter.',
        reasons: [
          'You hold ${features.homePoints} home-board points; each closes an entry number.',
        ],
      );
    }
    if (features.longestPrime >= 3) {
      return PositionCoaching(
        summary: 'Contact with a ${features.longestPrime}-point run.',
        plan:
            'Compare extending the run with keeping spare checkers to maintain it.',
        reasons: [
          '$race Contact still matters.',
          '${features.spares} spares can move without immediately opening their point.',
        ],
      );
    }
    if (features.anchors.isNotEmpty) {
      return PositionCoaching(
        summary: 'Contact with an anchor on ${_points(features.anchors)}.',
        plan: lead > 0
            ? 'Compare bringing the back checkers home with the safety of keeping your anchor.'
            : 'Keep the safe foothold in mind while looking for a hit or improving your board.',
        reasons: [
          race,
          'The anchor cannot be hit, but those checkers still have a long way home.',
        ],
      );
    }
    return PositionCoaching(
      summary: 'Contact: both sides can still threaten hits.',
      plan:
          'Look for useful points, then compare the risk of leaving single checkers exposed.',
      reasons: [
        race,
        'You hold ${features.homePoints} home-board points and leave ${features.blots} blots.',
      ],
    );
  }
}

/// Compatibility text for callers that do not render the individual sections.
String positionCommentary(GameState state) {
  final coaching = PositionCoaching.forState(state);
  return [coaching.summary, coaching.plan, ...coaching.reasons].join(' ');
}

/// Comments only on a validated, ordered prefix. A partial turn must never get
/// a quality grade or an opponent-reply forecast as though it were complete.
String stagedMoveCommentary(
  GameState before,
  Move staged, {
  required bool isComplete,
}) {
  if (staged.checkerMoves.isEmpty) {
    return 'Choose a checker to start your play.';
  }
  final builder = MoveBuilder.forState(before);
  try {
    for (final hop in staged.checkerMoves) {
      builder.addHop(hop.from, hop.to);
    }
  } on StateError {
    return 'Start a legal play to see commentary.';
  } on ArgumentError {
    return 'Start a legal play to see commentary.';
  }
  final complete = isComplete && builder.isComplete;
  final after = before.board.applyMove(before.turn, staged);
  final old = PositionFeatures(before.board, before.turn).board;
  final next = PositionFeatures(after, before.turn).board;
  final facts = <String>[];
  final hits = next.blackBar - old.blackBar;
  final entered = old.whiteBar - next.whiteBar;
  final off = next.whiteOff - old.whiteOff;
  if (hits > 0) {
    facts.add(
      'You have hit $hits opposing ${hits == 1 ? 'checker' : 'checkers'}.',
    );
  }
  if (entered > 0) facts.add('You have entered $entered from the bar.');
  if (off > 0) {
    facts.add('You have borne off $off ${off == 1 ? 'checker' : 'checkers'}.');
  }
  final made = [
    for (var i = 0; i < 24; i++)
      if (next.points[i] >= 2 && old.points[i] < 2) i + 1,
  ];
  if (made.isNotEmpty) facts.add('You have made ${made.join(', ')}.');
  final landing = staged.checkerMoves.last.to;
  if (landing != CheckerMove.off) {
    final point = before.turn == Player.white ? landing : 23 - landing;
    if (next.points[point] == 1) {
      facts.add('The checker on your ${point + 1}-point is a blot for now.');
    } else if (next.points[point] > 2 && !made.contains(point + 1)) {
      facts.add(
        'The spare on your ${point + 1}-point can move later without opening the point.',
      );
    }
  }
  if (!complete) {
    return '${facts.take(1).join(' ')} Use the remaining playable dice before judging the whole play.'
        .trim();
  }
  return '${_shortPlanAfter(before.board, after, before.turn)} '
          'The full play is staged; Confirm commits it.'
      .trim();
}
