import 'package:intl/intl.dart' as intl;
import 'package:backgammon_core/backgammon_core.dart';

import '../tutor/move_assessment.dart';
import '../tutor/move_explanation_copy.dart';
import 'app_localizations.dart';
import 'tutor_phrase_localization.dart';

/// Render domain move-coaching descriptors using the active locale catalog.
String localizeMoveExplanationCopy(
  AppLocalizations l10n,
  MoveExplanationCopy copy, {
  bool includeSummary = true,
}) {
  final a = copy.arguments;
  int integer(String name) => a[name] as int? ?? 0;
  double number(String name) => (a[name] as num?)?.toDouble() ?? 0;
  bool flag(String name) => a[name] as bool? ?? false;
  String points(String name) => (a[name] as List<int>? ?? const []).join(', ');
  final percent = intl.NumberFormat('0.0', l10n.localeName);
  switch (copy.id) {
    case MoveExplanationCopyId.forcedVerdict:
      return l10n.tutorMoveForcedVerdict;
    case MoveExplanationCopyId.topVerdict:
      return l10n.tutorMoveTopVerdict;
    case MoveExplanationCopyId.alternativeVerdict:
      return l10n.tutorMoveAlternativeVerdict;
    case MoveExplanationCopyId.outcomeEstimate:
      final buffer = StringBuffer();
      if (!flag('forced')) {
        final metric = a['metric'] as AssessmentMetric;
        final loss = metric == AssessmentMetric.matchWinningChance
            ? l10n.tutorMoveAssessmentMwcLoss(
                intl.NumberFormat(
                  '0.00',
                  l10n.localeName,
                ).format(number('loss') * 100),
              )
            : l10n.tutorMoveAssessmentEquityLoss(
                intl.NumberFormat(
                  '0.000',
                  l10n.localeName,
                ).format(number('loss')),
              );
        buffer.write(l10n.tutorMoveEstimateDifference(loss));
        buffer.write(' ');
      }
      buffer.write(
        l10n.tutorMoveEstimateOutcomes(
          percent.format(number('win') * 100),
          percent.format(number('winGammon') * 100),
          percent.format(number('loseGammon') * 100),
        ),
      );
      final mwc = a['matchWinningChance'] as double?;
      if (mwc != null) {
        buffer.write(' ');
        buffer.write(
          l10n.tutorMoveEstimateMatchChance(percent.format(mwc * 100)),
        );
      }
      return buffer.toString();
    case MoveExplanationCopyId.allCheckersOffPlan:
      return l10n.tutorMovePlanAllCheckersOff;
    case MoveExplanationCopyId.hitPlan:
      return l10n.tutorMovePlanHit(
        integer('homePoints') >= integer('homePointsForExtraGuidance')
            ? l10n.tutorMovePlanHitClosed
            : l10n.tutorMovePlanHitBuild,
      );
    case MoveExplanationCopyId.raceBearOffPlan:
      return l10n.tutorMovePlanRaceBearOff;
    case MoveExplanationCopyId.raceHomePlan:
      return l10n.tutorMovePlanRaceHome;
    case MoveExplanationCopyId.contactBearOffPlan:
      return l10n.tutorMovePlanContactBearOff;
    case MoveExplanationCopyId.reentryPlan:
      return l10n.tutorMovePlanReentry;
    case MoveExplanationCopyId.homeBoardPlan:
      return l10n.tutorMovePlanHomeBoard;
    case MoveExplanationCopyId.primePlan:
      return l10n.tutorMovePlanPrime;
    case MoveExplanationCopyId.leaveAnchorPlan:
      return l10n.tutorMovePlanLeaveAnchor;
    case MoveExplanationCopyId.newAnchorPlan:
      return l10n.tutorMovePlanNewAnchor;
    case MoveExplanationCopyId.coverBlotPlan:
      return l10n.tutorMovePlanCoverBlot;
    case MoveExplanationCopyId.safetyTradeoffPlan:
      return l10n.tutorMovePlanSafety;
    case MoveExplanationCopyId.observationNoLegalPlay:
      return l10n.tutorMoveObservationNoLegalPlay;
    case MoveExplanationCopyId.observationHit:
      return l10n.tutorMoveObservationHit(integer('count'));
    case MoveExplanationCopyId.observationEntry:
      return l10n.tutorMoveObservationEntry(integer('count'));
    case MoveExplanationCopyId.observationBearOff:
      return l10n.tutorMoveObservationBearOff(integer('count'));
    case MoveExplanationCopyId.observationMadePoints:
      return l10n.tutorMoveObservationMadePoints(points('points'));
    case MoveExplanationCopyId.observationBrokenPoints:
      return l10n.tutorMoveObservationBrokenPoints(
        (a['points'] as List<int>? ?? const []).length == 1
            ? l10n.tutorMovePointSingular
            : l10n.tutorMovePointPlural,
        points('points'),
      );
    case MoveExplanationCopyId.observationNoBlots:
      return l10n.tutorMoveObservationNoBlots(integer('previousCount'));
    case MoveExplanationCopyId.observationBlots:
      return l10n.tutorMoveObservationBlots(
        integer('count'),
        integer('previousCount'),
      );
    case MoveExplanationCopyId.observationPrimeRun:
      return l10n.tutorMoveObservationPrimeRun(
        integer('count'),
        integer('previousCount'),
        integer('count') >= 6
            ? l10n.tutorMoveObservationPrimeSix
            : l10n.tutorMoveObservationPrimeBuild,
      );
    case MoveExplanationCopyId.observationPrimeSpares:
      return l10n.tutorMoveObservationPrimeSpares(integer('count'));
    case MoveExplanationCopyId.observationAnchors:
      return l10n.tutorMoveObservationAnchors(
        points('points').isEmpty ? l10n.tutorMoveNoPoints : points('points'),
        points('previousPoints').isEmpty
            ? l10n.tutorMoveNoPoints
            : points('previousPoints'),
      );
    case MoveExplanationCopyId.observationPureRace:
      return l10n.tutorMoveObservationPureRace;
    case MoveExplanationCopyId.observationNoReplyHit:
      return l10n.tutorMoveObservationNoReplyHit;
    case MoveExplanationCopyId.observationReplyHit:
      return l10n.tutorMoveObservationReplyHit(
        integer('count'),
        integer('total'),
        integer('exampleDieOne'),
        integer('exampleDieTwo'),
        integer('examplePoint'),
      );
    case MoveExplanationCopyId.observationOpponentBarHome:
      return l10n.tutorMoveObservationOpponentBarHome(
        integer('closedPoints'),
        flag('allClosed')
            ? l10n.tutorMoveObservationAllEntriesClosed
            : l10n.tutorMoveObservationOpenEntry,
      );
    case MoveExplanationCopyId.comparisonDetail:
      final factors = copy.parts
          .skip(includeSummary ? 0 : 1)
          .map((part) => localizeMoveExplanationCopy(l10n, part))
          .join(' ');
      final scoreContext = flag('gammonsCanChangeRanking')
          ? l10n.tutorMoveComparisonScoreContext(
              flag('matchScoreAware')
                  ? l10n.tutorMoveComparisonMatchScore
                  : l10n.tutorMoveComparisonStake,
            )
          : '';
      return l10n.tutorMoveComparisonDetail(
        factors,
        percent.format(number('winChanceDeltaPercentagePoints')),
        flag('winChanceIsHigher')
            ? l10n.tutorMoveComparisonHigher
            : l10n.tutorMoveComparisonLower,
        scoreContext,
      );
    case MoveExplanationCopyId.comparisonSummaryBar:
      return l10n.tutorMoveComparisonSummaryBar;
    case MoveExplanationCopyId.comparisonSummaryHomeBoard:
      return l10n.tutorMoveComparisonSummaryHomeBoard;
    case MoveExplanationCopyId.comparisonSummaryShots:
      return l10n.tutorMoveComparisonSummaryShots;
    case MoveExplanationCopyId.comparisonSummaryPrime:
      return l10n.tutorMoveComparisonSummaryPrime;
    case MoveExplanationCopyId.comparisonSummaryAnchors:
      return l10n.tutorMoveComparisonSummaryAnchors;
    case MoveExplanationCopyId.comparisonSummaryBearOff:
      return l10n.tutorMoveComparisonSummaryBearOff;
    case MoveExplanationCopyId.comparisonSummaryBlots:
      return l10n.tutorMoveComparisonSummaryBlots(
        integer('playedCount'),
        integer('bestCount'),
      );
    case MoveExplanationCopyId.comparisonSummarySafeAnchor:
      return l10n.tutorMoveComparisonSummarySafeAnchor(integer('point'));
    case MoveExplanationCopyId.comparisonSummaryEntry:
      return l10n.tutorMoveComparisonSummaryEntry;
    case MoveExplanationCopyId.comparisonSummarySimilarRisks:
      return l10n.tutorMoveComparisonSummarySimilarRisks;
    case MoveExplanationCopyId.comparisonFactorBar:
      return l10n.tutorMoveComparisonFactorBar(
        integer('bestCount'),
        integer('playedCount'),
      );
    case MoveExplanationCopyId.comparisonFactorHomeBoard:
      return l10n.tutorMoveComparisonFactorHomeBoard(
        integer('bestCount'),
        integer('playedCount'),
        flag('closesMore')
            ? l10n.tutorMoveComparisonClosingMore
            : l10n.tutorMoveComparisonLeavingMore,
      );
    case MoveExplanationCopyId.comparisonFactorShots:
      return l10n.tutorMoveComparisonFactorShots(
        integer('bestCount'),
        integer('playedCount'),
        flag('reducesRisk')
            ? l10n.tutorMoveComparisonReducesRisk
            : l10n.tutorMoveComparisonExtraExposure,
      );
    case MoveExplanationCopyId.comparisonFactorPrime:
      return l10n.tutorMoveComparisonFactorPrime(
        integer('bestCount'),
        integer('playedCount'),
      );
    case MoveExplanationCopyId.comparisonFactorAnchors:
      return l10n.tutorMoveComparisonFactorAnchors(
        points('bestPoints').isEmpty
            ? l10n.tutorMoveNoPoints
            : points('bestPoints'),
        points('playedPoints').isEmpty
            ? l10n.tutorMoveNoPoints
            : points('playedPoints'),
      );
    case MoveExplanationCopyId.comparisonFactorBearOff:
      return l10n.tutorMoveComparisonFactorBearOff(
        integer('bestCount'),
        integer('playedCount'),
      );
    case MoveExplanationCopyId.comparisonFactorSimilarRisks:
      return l10n.tutorMoveComparisonFactorSimilarRisks;
    case MoveExplanationCopyId.positionSideEdge:
      final side = a['side'] as Player;
      return l10n.gameTutorPositionEdge(
        side == Player.white ? l10n.white : l10n.black,
      );
    case MoveExplanationCopyId.positionEven:
      return l10n.gameTutorPositionEven;
  }
}

/// Render the concise summary used by the collapsed live-tutor panel.
String localizeMoveExplanationSummary(
  AppLocalizations l10n,
  MoveExplanationCopySet copy,
) => copy.shortSummaryReason == null
    ? localizeMoveExplanationCopy(l10n, copy.summaryReason)
    : localizeTutorPhrase(l10n, copy.shortSummaryReason!);
