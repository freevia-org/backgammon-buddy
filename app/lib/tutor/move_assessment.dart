import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';

/// A quality mark for a played move (or a cube action), ranked from [best]
/// (the top-equity play) down to [blunder] (a large equity give-up).
enum MoveMark { best, good, dubious, error, blunder }

/// The unit of every loss/value in an assessment. MWC is stored as a fraction
/// and displayed as percentage points; it is never mixed with cubeless points.
enum AssessmentMetric { cubelessEquity, matchWinningChance }

/// Whether the engine's cumulative game-outcome probabilities are internally
/// consistent. Shared by live scoring and saved-assessment decoding.
bool hasValidOutcomeProbabilities(Probabilities p) {
  final values = [
    p.win,
    p.winGammon,
    p.winBackgammon,
    p.loseGammon,
    p.loseBackgammon,
  ];
  return !values.any((v) => !v.isFinite || v < 0 || v > 1) &&
      p.winBackgammon <= p.winGammon &&
      p.winGammon <= p.win &&
      p.loseBackgammon <= p.loseGammon &&
      p.loseGammon <= 1 - p.win + 1e-6;
}

/// Product teaching bands, not a calibrated player rating or confidence level.
/// MWC bands are 0.05, 0.5, 1.5 and 3 percentage points, respectively.
MoveMark markForMetric(double loss, AssessmentMetric metric) {
  if (metric == AssessmentMetric.cubelessEquity) return markFor(loss);
  if (loss < 0.0005) return MoveMark.best;
  if (loss < 0.005) return MoveMark.good;
  if (loss < 0.015) return MoveMark.dubious;
  if (loss < 0.03) return MoveMark.error;
  return MoveMark.blunder;
}

String formatAssessmentLoss(double loss, AssessmentMetric metric) =>
    metric == AssessmentMetric.matchWinningChance
    ? '${(loss * 100).toStringAsFixed(2)} pp MWC'
    : '${loss.toStringAsFixed(3)} equity';

/// gnubg-inspired equity-loss thresholds, in cubeless equity points
/// (`[-3, 3]` scale). A move is marked by how much equity it gives up versus
/// the best play:
///
///  * `< best`    (`< 0.001`) -> [MoveMark.best]    — the top play (float fuzz).
///  * `< dubious` (`< 0.02`)  -> [MoveMark.good]     — a fine alternative.
///  * `< error`   (`< 0.05`)  -> [MoveMark.dubious]  — questionable ("?!").
///  * `< blunder` (`< 0.11`)  -> [MoveMark.error]    — an error ("?").
///  * `>= blunder`(`>= 0.11`) -> [MoveMark.blunder]  — a blunder ("??").
///
/// NOTE: an earlier plan sketch used slightly different bands; these are the
/// authoritative, documented values (close to gnubg's move-filter tiers).
class TutorThresholds {
  /// Below this the play is effectively the best (absorbs floating-point
  /// noise between two equal-equity plays).
  static const double best = 0.001;
  static const double dubious = 0.02;
  static const double error = 0.05;
  static const double blunder = 0.11;
}

/// Classifies an [equityLoss] (best-play equity minus played equity, always
/// `>= 0`) into a [MoveMark] using [TutorThresholds]. See that class for the
/// band definitions.
MoveMark markFor(double equityLoss) {
  if (equityLoss < TutorThresholds.best) return MoveMark.best;
  if (equityLoss < TutorThresholds.dubious) return MoveMark.good;
  if (equityLoss < TutorThresholds.error) return MoveMark.dubious;
  if (equityLoss < TutorThresholds.blunder) return MoveMark.error;
  return MoveMark.blunder;
}

// --- JSON helpers (shared by the assessment models) -------------------------
//
// Move is encoded as a list of [from, to, isHit] triples, mirroring the core
// event log (see GameEvent.moveToJson). Probabilities are a 5-double list in
// the canonical order [win, winGammon, winBackgammon, loseGammon,
// loseBackgammon].

List<List<Object>> _moveToJson(Move m) => [
  for (final c in m.checkerMoves) [c.from, c.to, c.isHit],
];

Move _moveFromJson(List<dynamic> hops) {
  int coordinate(Object? value, {required bool from}) {
    if (value is! num || !value.isFinite || value != value.toInt()) {
      throw const FormatException('invalid checker coordinate');
    }
    final index = value.toInt();
    final valid = from
        ? index == CheckerMove.bar || (index >= 0 && index < 24)
        : index == CheckerMove.off || (index >= 0 && index < 24);
    if (!valid) throw const FormatException('checker coordinate out of range');
    return index;
  }

  return Move([
    for (final raw in hops)
      if (raw is List && raw.length == 3)
        CheckerMove(
          coordinate(raw[0], from: true),
          coordinate(raw[1], from: false),
          isHit: raw[2] as bool,
        )
      else
        throw const FormatException('invalid checker hop'),
  ]);
}

List<double> _probsToJson(Probabilities p) => [
  p.win,
  p.winGammon,
  p.winBackgammon,
  p.loseGammon,
  p.loseBackgammon,
];

double _finiteUnit(Object? value, String field) {
  if (value is! num || !value.isFinite || value < 0 || value > 1) {
    throw FormatException('invalid $field');
  }
  return value.toDouble();
}

Probabilities _probsFromJson(List<dynamic> values) {
  if (values.length != 5) {
    throw const FormatException('invalid outcome probability count');
  }
  final p = Probabilities(
    win: _finiteUnit(values[0], 'win probability'),
    winGammon: _finiteUnit(values[1], 'win gammon probability'),
    winBackgammon: _finiteUnit(values[2], 'win backgammon probability'),
    loseGammon: _finiteUnit(values[3], 'lose gammon probability'),
    loseBackgammon: _finiteUnit(values[4], 'lose backgammon probability'),
  );
  if (!hasValidOutcomeProbabilities(p)) {
    throw const FormatException('inconsistent outcome probabilities');
  }
  return p;
}

Map<String, dynamic> _scoredToJson(ScoredMove s) => {
  'move': _moveToJson(s.move),
  'probs': _probsToJson(s.probabilities),
  if (s.matchWinningChance != null) 'mwc': s.matchWinningChance,
};

ScoredMove _scoredFromJson(Map<String, dynamic> j) {
  final rawMwc = j['mwc'];
  return ScoredMove(
    move: _moveFromJson(j['move'] as List),
    probabilities: _probsFromJson(j['probs'] as List),
    matchWinningChance: rawMwc == null
        ? null
        : _finiteUnit(rawMwc, 'match winning chance'),
  );
}

/// The tutor's verdict on a single played move: what was played, the best
/// available play, the equity given up, the resulting [mark], and the full
/// ranking (for display).
class MoveAssessment {
  /// The move the player actually made.
  final Move played;

  /// The engine's top-ranked play. [Move.none] on a dance (no legal play).
  final Move best;

  /// Value given up versus [best] in [metric] units, always `>= 0`.
  final double equityLoss;
  final AssessmentMetric metric;

  /// False for a forced pass or a roll with only one legal resulting position.
  final bool isDecision;
  String get lossLabel => formatAssessmentLoss(equityLoss, metric);
  String get verdict => isDecision ? mark.name : 'forced';

  /// The mark derived from [equityLoss] via [markFor].
  final MoveMark mark;

  /// The full engine ranking of candidate plays, best first (for display).
  final List<ScoredMove> ranked;

  MoveAssessment({
    required this.played,
    required this.best,
    required this.equityLoss,
    required this.ranked,
    this.metric = AssessmentMetric.cubelessEquity,
    this.isDecision = true,
  }) : mark = markForMetric(equityLoss, metric);

  Map<String, dynamic> toJson() => {
    'played': _moveToJson(played),
    'best': _moveToJson(best),
    'equityLoss': equityLoss,
    'metric': metric.name,
    'isDecision': isDecision,
    'mark': mark.name,
    'ranked': [for (final s in ranked) _scoredToJson(s)],
  };

  /// Rebuilds from [toJson]. [mark] is recomputed from [equityLoss] (the
  /// stored `mark` string is display metadata and is not trusted here).
  factory MoveAssessment.fromJson(Map<String, dynamic> j) {
    final metric = AssessmentMetric.values.byName(
      j['metric'] as String? ?? 'cubelessEquity',
    );
    final loss = j['equityLoss'];
    if (loss is! num ||
        !loss.isFinite ||
        loss < 0 ||
        (metric == AssessmentMetric.matchWinningChance && loss > 1)) {
      throw const FormatException('invalid assessment loss');
    }
    return MoveAssessment(
      played: _moveFromJson(j['played'] as List),
      best: _moveFromJson(j['best'] as List),
      equityLoss: loss.toDouble(),
      metric: metric,
      isDecision: j['isDecision'] as bool? ?? true,
      ranked: [
        for (final s in (j['ranked'] as List))
          _scoredFromJson(s as Map<String, dynamic>),
      ],
    );
  }
}

/// The tutor's verdict on a pre-roll cube decision: what the player did (or
/// considered), the advisor's verdict, and the match-equity given up.
///
/// Cube losses are match-winning probabilities in `[0, 1]`. They use the same
/// MWC teaching bands as score-aware checker moves, never cubeless-point bands.
class CubeAssessment {
  /// What the player did (or is considering): `true` = doubled, `false` =
  /// rolled on without doubling.
  final bool actionWasDouble;

  /// The advisor's verdict for this decision point.
  final MatchCubeAdvice advice;

  const CubeAssessment({required this.actionWasDouble, required this.advice});

  /// The mover's match-winning probability after the OPTIMAL double, i.e. the
  /// branch the opponent would choose (the worse one for the mover):
  /// `min(equityDoubleTake, equityDoubleDrop)`.
  double get bestDoubledEquity =>
      advice.equityDoubleTake < advice.equityDoubleDrop
      ? advice.equityDoubleTake
      : advice.equityDoubleDrop;

  /// Match-equity given up by the player's action versus the advisor's verdict.
  ///
  ///  * Advisor says DOUBLE but the player rolled on:
  ///    `bestDoubledEquity - equityNoDouble` (positive — doubling was better).
  ///  * Advisor says NO-DOUBLE but the player doubled:
  ///    `equityNoDouble - bestDoubledEquity` (positive — holding was better).
  ///  * The action matches the advice: `0`.
  double get equityLoss {
    if (advice.shouldDouble && !actionWasDouble) {
      return bestDoubledEquity - advice.equityNoDouble;
    }
    if (!advice.shouldDouble && actionWasDouble) {
      return advice.equityNoDouble - bestDoubledEquity;
    }
    return 0;
  }

  /// The mark derived from [equityLoss] in match-winning probability units.
  MoveMark get mark =>
      markForMetric(equityLoss, AssessmentMetric.matchWinningChance);

  Map<String, dynamic> toJson() => {
    'actionWasDouble': actionWasDouble,
    'advice': {
      'shouldDouble': advice.shouldDouble,
      'shouldTake': advice.shouldTake,
      'equityNoDouble': advice.equityNoDouble,
      'equityDoubleTake': advice.equityDoubleTake,
      'equityDoubleDrop': advice.equityDoubleDrop,
    },
  };

  factory CubeAssessment.fromJson(Map<String, dynamic> j) {
    final a = j['advice'] as Map<String, dynamic>;
    return CubeAssessment(
      actionWasDouble: j['actionWasDouble'] as bool,
      advice: MatchCubeAdvice(
        shouldDouble: a['shouldDouble'] as bool,
        shouldTake: a['shouldTake'] as bool,
        equityNoDouble: (a['equityNoDouble'] as num).toDouble(),
        equityDoubleTake: (a['equityDoubleTake'] as num).toDouble(),
        equityDoubleDrop: (a['equityDoubleDrop'] as num).toDouble(),
      ),
    );
  }
}
