import 'package:aigammon_app/l10n/app_localizations_en.dart';
import 'package:aigammon_app/l10n/move_explanation_localization.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:aigammon_app/tutor/move_explanation_copy.dart';
import 'package:aigammon_app/tutor/tutor_phrase.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final english = AppLocalizationsEn();

  test('estimate descriptor interpolates equity and outcome values', () {
    final copy = MoveExplanationCopy(
      MoveExplanationCopyId.outcomeEstimate,
      arguments: {
        'loss': .123,
        'metric': AssessmentMetric.cubelessEquity,
        'win': .6,
        'winGammon': .3,
        'loseGammon': .1,
        'matchWinningChance': null,
        'forced': false,
      },
    );

    expect(
      localizeMoveExplanationCopy(english, copy),
      'Difference from the top play: 0.123 equity. '
      'After this play: 60.0% wins, 30.0% gammon-or-better wins, '
      '10.0% gammon-or-worse losses. These are estimates from the mover’s perspective.',
    );
  });

  test('match-winning chance and its units come from localized messages', () {
    final copy = MoveExplanationCopy(
      MoveExplanationCopyId.outcomeEstimate,
      arguments: {
        'loss': .125,
        'metric': AssessmentMetric.matchWinningChance,
        'win': .5,
        'winGammon': .2,
        'loseGammon': .15,
        'matchWinningChance': .7,
        'forced': false,
      },
    );

    final text = localizeMoveExplanationCopy(english, copy);
    expect(text, contains('12.50 pp MWC'));
    expect(text, contains('Estimated match-winning chance: 70.0%.'));
  });

  test('point labels and empty anchor lists are localized', () {
    final brokenPoints = MoveExplanationCopy(
      MoveExplanationCopyId.observationBrokenPoints,
      arguments: {
        'points': [4, 9],
      },
    );
    final anchors = MoveExplanationCopy(
      MoveExplanationCopyId.observationAnchors,
      arguments: {'points': <int>[], 'previousPoints': <int>[]},
    );

    expect(
      localizeMoveExplanationCopy(english, brokenPoints),
      'Gives up made points 4, 9. Those points no longer block the opponent.',
    );
    expect(
      localizeMoveExplanationCopy(english, anchors),
      contains('none (previously none)'),
    );
  });

  test('comparison renders structured factors and can omit its summary', () {
    final copy = MoveExplanationCopy(
      MoveExplanationCopyId.comparisonDetail,
      arguments: {
        'winChanceDeltaPercentagePoints': 5.0,
        'winChanceIsHigher': true,
        'metric': AssessmentMetric.cubelessEquity,
        'matchScoreAware': false,
        'gammonsCanChangeRanking': false,
      },
      parts: [
        MoveExplanationCopy(MoveExplanationCopyId.comparisonSummaryHomeBoard),
        MoveExplanationCopy(
          MoveExplanationCopyId.comparisonFactorHomeBoard,
          arguments: {'bestCount': 4, 'playedCount': 2, 'closesMore': true},
        ),
      ],
    );

    expect(
      localizeMoveExplanationCopy(english, copy, includeSummary: false),
      'The top play holds 4 home-board points instead of 2, closing more '
      'entry points after a hit. The top play’s estimated win chance is '
      '5.0 percentage points higher.',
    );
  });

  test('position assessment chooses a localized player name', () {
    final white = MoveExplanationCopy(
      MoveExplanationCopyId.positionSideEdge,
      arguments: {'side': Player.white},
    );
    final even = MoveExplanationCopy(MoveExplanationCopyId.positionEven);

    expect(
      localizeMoveExplanationCopy(english, white),
      'White has the estimated edge.',
    );
    expect(
      localizeMoveExplanationCopy(english, even),
      'The position is roughly even.',
    );
  });

  test('compact summary stays shorter than the full move plan', () {
    final plan = MoveExplanationCopy(
      MoveExplanationCopyId.hitPlan,
      arguments: {'homePoints': 2, 'homePointsForExtraGuidance': 3},
    );
    final copy = MoveExplanationCopySet(
      verdict: MoveExplanationCopy(MoveExplanationCopyId.topVerdict),
      estimate: MoveExplanationCopy(MoveExplanationCopyId.outcomeEstimate),
      observations: const [],
      plan: plan,
      comparisonSummary: null,
      comparisonDetail: null,
      summaryReason: plan,
      shortSummaryReason: TutorPhrase(TutorPhraseId.stagedHitShortPlan),
    );

    expect(
      localizeMoveExplanationSummary(english, copy),
      'The hit gains time while the opponent works to re-enter.',
    );
    expect(
      localizeMoveExplanationSummary(english, copy),
      isNot(localizeMoveExplanationCopy(english, copy.plan)),
    );
  });
}
