import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';

import 'coaching.dart';
import 'move_assessment.dart';
import 'tutor_phrase.dart';

/// Semantic copy IDs for dynamic move assessments. The enum names describe
/// the teaching point; callers localize the ID and typed [arguments].
enum MoveExplanationCopyId {
  forcedVerdict,
  topVerdict,
  alternativeVerdict,
  outcomeEstimate,
  allCheckersOffPlan,
  hitPlan,
  raceBearOffPlan,
  raceHomePlan,
  contactBearOffPlan,
  reentryPlan,
  homeBoardPlan,
  primePlan,
  leaveAnchorPlan,
  newAnchorPlan,
  coverBlotPlan,
  safetyTradeoffPlan,
  observationNoLegalPlay,
  observationHit,
  observationEntry,
  observationBearOff,
  observationMadePoints,
  observationBrokenPoints,
  observationNoBlots,
  observationBlots,
  observationPrimeRun,
  observationPrimeSpares,
  observationAnchors,
  observationPureRace,
  observationNoReplyHit,
  observationReplyHit,
  observationOpponentBarHome,
  comparisonDetail,
  comparisonSummaryBar,
  comparisonSummaryHomeBoard,
  comparisonSummaryShots,
  comparisonSummaryPrime,
  comparisonSummaryAnchors,
  comparisonSummaryBearOff,
  comparisonSummaryBlots,
  comparisonSummarySafeAnchor,
  comparisonSummaryEntry,
  comparisonSummarySimilarRisks,
  comparisonFactorBar,
  comparisonFactorHomeBoard,
  comparisonFactorShots,
  comparisonFactorPrime,
  comparisonFactorAnchors,
  comparisonFactorBearOff,
  comparisonFactorSimilarRisks,
  positionSideEdge,
  positionEven,
}

/// Pure-Dart move-coaching copy plus its structured interpolation values.
///
/// The map contains only numeric/boolean domain values, metric enums, and
/// integer lists. Human-readable strings remain on [MoveExplanation]'s
/// compatibility getters; they are not smuggled into this localization model.
class MoveExplanationCopy {
  MoveExplanationCopy(
    this.id, {
    Map<String, Object?> arguments = const {},
    List<MoveExplanationCopy> parts = const [],
  }) : arguments = Map.unmodifiable(arguments),
       parts = List.unmodifiable(parts);

  final MoveExplanationCopyId id;
  final Map<String, Object?> arguments;
  final List<MoveExplanationCopy> parts;
}

/// Structured copy for each dynamic field exposed by [MoveExplanation].
class MoveExplanationCopySet {
  const MoveExplanationCopySet({
    required this.verdict,
    required this.estimate,
    required this.observations,
    required this.plan,
    required this.comparisonSummary,
    required this.comparisonDetail,
    required this.summaryReason,
    this.shortSummaryReason,
  });

  final MoveExplanationCopy verdict;
  final MoveExplanationCopy estimate;
  final List<MoveExplanationCopy> observations;
  final MoveExplanationCopy plan;
  final MoveExplanationCopy? comparisonSummary;
  final MoveExplanationCopy? comparisonDetail;
  final MoveExplanationCopy summaryReason;

  /// Short summary for compact tutor surfaces when no comparison exists.
  /// The full plan remains available separately.
  final TutorPhrase? shortSummaryReason;

  static MoveExplanationCopySet forCandidate(
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
    final forced =
        before.phase == GamePhase.moving && before.legalMoves.length <= 1;
    final isBest = markForMetric(loss, metric) == MoveMark.best;
    final applied = before.board.applyMove(before.turn, candidate.move);
    final mover = before.turn;
    final original = mover == Player.white
        ? before.board
        : before.board.mirrored();
    final after = mover == Player.white ? applied : applied.mirrored();
    final old = PositionFeatures(before.board, mover);
    final next = PositionFeatures(applied, mover);
    final plan = _plan(old, next);
    final comparison = isBest || forced
        ? null
        : _comparison(before, candidate, best);
    final observations = _observations(
      original,
      after,
      old,
      next,
      noLegalPlay: candidate.move.checkerMoves.isEmpty,
    );
    final summary = comparison != null && comparison.parts.isNotEmpty
        ? comparison.parts.first
        : plan;

    return MoveExplanationCopySet(
      verdict: MoveExplanationCopy(
        forced
            ? MoveExplanationCopyId.forcedVerdict
            : isBest
            ? MoveExplanationCopyId.topVerdict
            : MoveExplanationCopyId.alternativeVerdict,
      ),
      estimate: MoveExplanationCopy(
        MoveExplanationCopyId.outcomeEstimate,
        arguments: {
          'loss': loss,
          'metric': metric,
          'win': candidate.probabilities.win,
          'winGammon': candidate.probabilities.winGammon,
          'loseGammon': candidate.probabilities.loseGammon,
          'matchWinningChance': candidate.matchWinningChance,
          'forced': forced,
        },
      ),
      observations: List.unmodifiable(observations),
      plan: plan,
      comparisonSummary: comparison != null && comparison.parts.isNotEmpty
          ? comparison.parts.first
          : null,
      comparisonDetail: comparison,
      summaryReason: summary,
      shortSummaryReason: comparison == null
          ? shortPlanPhrase(before.board, applied, mover)
          : null,
    );
  }

  static MoveExplanationCopy _plan(
    PositionFeatures before,
    PositionFeatures after,
  ) {
    if (after.board.whiteOff == 15) {
      return MoveExplanationCopy(MoveExplanationCopyId.allCheckersOffPlan);
    }
    if (after.board.blackBar > before.board.blackBar) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.hitPlan,
        arguments: {
          'opponentBar': after.board.blackBar,
          'homePoints': after.homePoints,
          'homePointsForExtraGuidance': 3,
        },
      );
    }
    if (after.isRace) {
      return MoveExplanationCopy(
        after.allHome
            ? MoveExplanationCopyId.raceBearOffPlan
            : MoveExplanationCopyId.raceHomePlan,
      );
    }
    if (after.board.whiteOff > before.board.whiteOff) {
      return MoveExplanationCopy(MoveExplanationCopyId.contactBearOffPlan);
    }
    if (after.board.whiteBar < before.board.whiteBar) {
      return MoveExplanationCopy(MoveExplanationCopyId.reentryPlan);
    }
    if (after.homePoints > before.homePoints) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.homeBoardPlan,
        arguments: {'homePoints': after.homePoints},
      );
    }
    if (after.longestPrime >= 3 && after.longestPrime > before.longestPrime) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.primePlan,
        arguments: {'primeLength': after.longestPrime, 'spares': after.spares},
      );
    }
    if (before.anchors.any((point) => !after.anchors.contains(point))) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.leaveAnchorPlan,
        arguments: {
          'anchorsBefore': before.anchors,
          'anchorsAfter': after.anchors,
        },
      );
    }
    if (after.anchors.any((point) => !before.anchors.contains(point))) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.newAnchorPlan,
        arguments: {'anchors': after.anchors},
      );
    }
    if (after.blots < before.blots) {
      return MoveExplanationCopy(
        MoveExplanationCopyId.coverBlotPlan,
        arguments: {'blotsBefore': before.blots, 'blotsAfter': after.blots},
      );
    }
    return MoveExplanationCopy(MoveExplanationCopyId.safetyTradeoffPlan);
  }

  static List<MoveExplanationCopy> _observations(
    BoardState original,
    BoardState after,
    PositionFeatures before,
    PositionFeatures next, {
    required bool noLegalPlay,
  }) {
    if (noLegalPlay) {
      return [
        MoveExplanationCopy(MoveExplanationCopyId.observationNoLegalPlay),
      ];
    }
    final result = <MoveExplanationCopy>[];
    final hits = after.blackBar - original.blackBar;
    if (hits > 0) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationHit,
          arguments: {'count': hits},
        ),
      );
    }
    final entered = original.whiteBar - after.whiteBar;
    if (entered > 0) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationEntry,
          arguments: {'count': entered},
        ),
      );
    }
    final off = after.whiteOff - original.whiteOff;
    if (off > 0) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationBearOff,
          arguments: {'count': off},
        ),
      );
    }
    final made = <int>[], broken = <int>[];
    for (var i = 0; i < 24; i++) {
      if (after.points[i] >= 2 && original.points[i] < 2) made.add(i + 1);
      if (after.points[i] < 2 && original.points[i] >= 2) broken.add(i + 1);
    }
    if (made.isNotEmpty) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationMadePoints,
          arguments: {'points': made},
        ),
      );
    }
    if (broken.isNotEmpty) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationBrokenPoints,
          arguments: {'points': broken},
        ),
      );
    }
    final blots = after.points.where((n) => n == 1).length;
    final oldBlots = original.points.where((n) => n == 1).length;
    result.add(
      MoveExplanationCopy(
        blots == 0
            ? MoveExplanationCopyId.observationNoBlots
            : MoveExplanationCopyId.observationBlots,
        arguments: {'count': blots, 'previousCount': oldBlots},
      ),
    );
    if (next.longestPrime >= 3 || before.longestPrime >= 3) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationPrimeRun,
          arguments: {
            'count': next.longestPrime,
            'previousCount': before.longestPrime,
          },
        ),
      );
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationPrimeSpares,
          arguments: {'count': next.spares},
        ),
      );
    }
    if (next.anchors.isNotEmpty || before.anchors.isNotEmpty) {
      result.add(
        MoveExplanationCopy(
          MoveExplanationCopyId.observationAnchors,
          arguments: {'points': next.anchors, 'previousPoints': before.anchors},
        ),
      );
    }
    if (next.isRace) {
      result.add(
        MoveExplanationCopy(MoveExplanationCopyId.observationPureRace),
      );
    } else {
      final shots = legalHittingRolls(after, Player.white);
      final example = shots == 0 ? null : _firstHitExample(after);
      result.add(
        MoveExplanationCopy(
          shots == 0
              ? MoveExplanationCopyId.observationNoReplyHit
              : MoveExplanationCopyId.observationReplyHit,
          arguments: {
            'count': shots,
            'total': 36,
            'exampleDieOne': example?.$1,
            'exampleDieTwo': example?.$2,
            'examplePoint': example?.$3,
          },
        ),
      );
      if (after.blackBar > 0) {
        result.add(
          MoveExplanationCopy(
            MoveExplanationCopyId.observationOpponentBarHome,
            arguments: {
              'closedPoints': next.homePoints,
              'allClosed': next.homePoints == 6,
            },
          ),
        );
      }
    }
    return result;
  }

  static MoveExplanationCopy? _comparison(
    GameState before,
    ScoredMove candidate,
    ScoredMove best,
  ) {
    final side = before.turn;
    BoardState result(Move move) {
      final board = before.board.applyMove(side, move);
      return side == Player.white ? board : board.mirrored();
    }

    final chosenBoard = result(candidate.move), bestBoard = result(best.move);
    final chosen = PositionFeatures(chosenBoard, Player.white);
    final top = PositionFeatures(bestBoard, Player.white);
    final factors = <MoveExplanationCopy>[];
    final gains = <MoveExplanationCopy>[];
    void add(
      MoveExplanationCopy factor, {
      required bool gain,
      required MoveExplanationCopy summary,
    }) {
      factors.add(factor);
      if (gain) gains.add(summary);
    }

    if (bestBoard.blackBar != chosenBoard.blackBar) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorBar,
          arguments: {
            'bestCount': bestBoard.blackBar,
            'playedCount': chosenBoard.blackBar,
          },
        ),
        gain: bestBoard.blackBar > chosenBoard.blackBar,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryBar,
          arguments: {'bestCount': bestBoard.blackBar},
        ),
      );
    }
    if (top.homePoints != chosen.homePoints) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorHomeBoard,
          arguments: {
            'bestCount': top.homePoints,
            'playedCount': chosen.homePoints,
            'closesMore': top.homePoints > chosen.homePoints,
          },
        ),
        gain: top.homePoints > chosen.homePoints,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryHomeBoard,
          arguments: {'bestCount': top.homePoints},
        ),
      );
    }
    final topShots = legalHittingRolls(bestBoard, Player.white);
    final chosenShots = legalHittingRolls(chosenBoard, Player.white);
    if (topShots != chosenShots) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorShots,
          arguments: {
            'bestCount': topShots,
            'playedCount': chosenShots,
            'reducesRisk': topShots < chosenShots,
          },
        ),
        gain: topShots < chosenShots,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryShots,
          arguments: {'bestCount': topShots},
        ),
      );
    }
    if (top.longestPrime != chosen.longestPrime) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorPrime,
          arguments: {
            'bestCount': top.longestPrime,
            'playedCount': chosen.longestPrime,
          },
        ),
        gain: top.longestPrime > chosen.longestPrime,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryPrime,
          arguments: {'bestCount': top.longestPrime},
        ),
      );
    }
    if (!_samePoints(top.anchors, chosen.anchors)) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorAnchors,
          arguments: {
            'bestPoints': top.anchors,
            'playedPoints': chosen.anchors,
          },
        ),
        gain: top.anchors.length > chosen.anchors.length,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryAnchors,
          arguments: {'bestPoints': top.anchors},
        ),
      );
    }
    if (bestBoard.whiteOff != chosenBoard.whiteOff) {
      add(
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorBearOff,
          arguments: {
            'bestCount': bestBoard.whiteOff,
            'playedCount': chosenBoard.whiteOff,
          },
        ),
        gain: bestBoard.whiteOff > chosenBoard.whiteOff,
        summary: MoveExplanationCopy(
          MoveExplanationCopyId.comparisonSummaryBearOff,
          arguments: {'bestCount': bestBoard.whiteOff},
        ),
      );
    }
    if (factors.isEmpty) {
      factors.add(
        MoveExplanationCopy(MoveExplanationCopyId.comparisonFactorSimilarRisks),
      );
    }
    final summary = gains.isNotEmpty
        ? gains.first
        : chosen.blots > top.blots
        ? MoveExplanationCopy(
            MoveExplanationCopyId.comparisonSummaryBlots,
            arguments: {'playedCount': chosen.blots, 'bestCount': top.blots},
          )
        : top.anchors.any((point) => !chosen.anchors.contains(point))
        ? MoveExplanationCopy(
            MoveExplanationCopyId.comparisonSummarySafeAnchor,
            arguments: {
              'point': top.anchors.firstWhere(
                (point) => !chosen.anchors.contains(point),
              ),
            },
          )
        : chosen.homePoints < top.homePoints
        ? MoveExplanationCopy(
            MoveExplanationCopyId.comparisonSummaryEntry,
            arguments: {'bestCount': top.homePoints},
          )
        : chosenShots > topShots
        ? MoveExplanationCopy(
            MoveExplanationCopyId.comparisonSummaryShots,
            arguments: {'bestCount': topShots},
          )
        : MoveExplanationCopy(
            MoveExplanationCopyId.comparisonSummarySimilarRisks,
          );
    final delta = (best.probabilities.win - candidate.probabilities.win) * 100;
    return MoveExplanationCopy(
      MoveExplanationCopyId.comparisonDetail,
      arguments: {
        'winChanceDeltaPercentagePoints': delta.abs(),
        'winChanceIsHigher': delta >= 0,
        'metric': candidate.matchWinningChance == null
            ? AssessmentMetric.cubelessEquity
            : AssessmentMetric.matchWinningChance,
        'matchScoreAware': best.matchWinningChance != null,
        'gammonsCanChangeRanking': delta < 0,
      },
      parts: [summary, ...factors.take(3)],
    );
  }

  static (int, int, int)? _firstHitExample(BoardState board) {
    for (var first = 1; first <= 6; first++) {
      for (var second = first; second <= 6; second++) {
        final plays = MoveGenerator.legalMoves(
          board,
          Player.black,
          Dice(first, second),
        );
        for (final play in plays) {
          for (final step in play.checkerMoves) {
            if (step.isHit) return (first, second, step.to + 1);
          }
        }
      }
    }
    return null;
  }

  static bool _samePoints(List<int> a, List<int> b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }
}
