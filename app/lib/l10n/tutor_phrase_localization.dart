import 'app_localizations.dart';
import '../tutor/tutor_phrase.dart';

/// Resolves the tutor's pure-Dart coaching descriptors at the UI boundary.
/// Nested phrases are localized independently before being interpolated, so
/// coaching remains locale-neutral and can be tested without Flutter.
String localizeTutorPhrase(AppLocalizations l10n, TutorPhrase phrase) {
  final part = phrase.parts
      .map((item) => localizeTutorPhrase(l10n, item))
      .join(' ');
  final points = phrase.points.join(', ');
  final count = phrase.count ?? 0;
  switch (phrase.id) {
    case TutorPhraseId.gameFinished:
      return l10n.tutorPhraseGameFinished;
    case TutorPhraseId.reviewFinishedGame:
      return l10n.tutorPhraseReviewFinishedGame;
    case TutorPhraseId.cubeOffered:
      return l10n.tutorPhraseCubeOffered;
    case TutorPhraseId.cubeDecisionPrompt:
      return l10n.tutorPhraseCubeDecisionPrompt;
    case TutorPhraseId.cubeScoreContext:
      return l10n.tutorPhraseCubeScoreContext;
    case TutorPhraseId.resignationOffered:
      return l10n.tutorPhraseResignationOffered;
    case TutorPhraseId.resignationDecisionPrompt:
      return l10n.tutorPhraseResignationDecisionPrompt;
    case TutorPhraseId.noLegalPlay:
      return l10n.tutorPhraseNoLegalPlay;
    case TutorPhraseId.forcedPassPrompt:
      return l10n.tutorPhraseForcedPassPrompt;
    case TutorPhraseId.onlyOneResult:
      return l10n.tutorPhraseOnlyOneResult;
    case TutorPhraseId.forcedTurnPrompt:
      return l10n.tutorPhraseForcedTurnPrompt;
    case TutorPhraseId.pipCountsLevel:
      return l10n.tutorPhrasePipCountsLevel;
    case TutorPhraseId.pipCountsAhead:
      return l10n.tutorPhrasePipCountsAhead(count);
    case TutorPhraseId.pipCountsBehind:
      return l10n.tutorPhrasePipCountsBehind(count);
    case TutorPhraseId.playerHasCheckersOnBar:
      return l10n.tutorPhrasePlayerHasCheckersOnBar(count);
    case TutorPhraseId.enterBeforeMoving:
      return l10n.tutorPhraseEnterBeforeMoving;
    case TutorPhraseId.opponentHomePoints:
      return l10n.tutorPhraseOpponentHomePoints(count);
    case TutorPhraseId.bearOffRace:
      return l10n.tutorPhraseBearOffRace;
    case TutorPhraseId.pureRace:
      return l10n.tutorPhrasePureRace;
    case TutorPhraseId.bearOffSpread:
      return l10n.tutorPhraseBearOffSpread;
    case TutorPhraseId.bringRearCheckersHome:
      return l10n.tutorPhraseBringRearCheckersHome;
    case TutorPhraseId.armiesHavePassed:
      return l10n.tutorPhraseArmiesHavePassed;
    case TutorPhraseId.contactStillMatters:
      return l10n.tutorPhraseContactStillMatters(part);
    case TutorPhraseId.opponentHasCheckersOnBar:
      return l10n.tutorPhraseOpponentHasCheckersOnBar(count);
    case TutorPhraseId.keepBoardClosed:
      return l10n.tutorPhraseKeepBoardClosed;
    case TutorPhraseId.buildOrPreserveHomeBoard:
      return l10n.tutorPhraseBuildOrPreserveHomeBoard;
    case TutorPhraseId.homePointsCloseEntries:
      return l10n.tutorPhraseHomePointsCloseEntries(count);
    case TutorPhraseId.primeContact:
      return l10n.tutorPhrasePrimeContact(count);
    case TutorPhraseId.extendPrimeOrKeepSpares:
      return l10n.tutorPhraseExtendPrimeOrKeepSpares;
    case TutorPhraseId.spareCheckersCanMove:
      return l10n.tutorPhraseSpareCheckersCanMove(count);
    case TutorPhraseId.anchorContact:
      return l10n.tutorPhraseAnchorContact(points);
    case TutorPhraseId.compareAnchorProgress:
      return phrase.ahead == true
          ? l10n.tutorPhraseCompareAnchorProgressAhead
          : l10n.tutorPhraseCompareAnchorProgressBehind;
    case TutorPhraseId.preserveAnchorFoothold:
      return l10n.tutorPhrasePreserveAnchorFoothold;
    case TutorPhraseId.contactThreats:
      return l10n.tutorPhraseContactThreats;
    case TutorPhraseId.lookForPointsAndSafety:
      return l10n.tutorPhraseLookForPointsAndSafety;
    case TutorPhraseId.homePointsAndBlots:
      return l10n.tutorPhraseHomePointsAndBlots(count, phrase.otherCount ?? 0);
    case TutorPhraseId.chooseCheckerPrompt:
      return l10n.tutorPhraseChooseCheckerPrompt;
    case TutorPhraseId.legalPlayPrompt:
      return l10n.tutorPhraseLegalPlayPrompt;
    case TutorPhraseId.stagedHit:
      return l10n.tutorPhraseStagedHit(count);
    case TutorPhraseId.stagedEnter:
      return l10n.tutorPhraseStagedEnter(count);
    case TutorPhraseId.stagedBearOff:
      return l10n.tutorPhraseStagedBearOff(count);
    case TutorPhraseId.stagedMakePoints:
      return l10n.tutorPhraseStagedMakePoints(points);
    case TutorPhraseId.stagedBlot:
      return l10n.tutorPhraseStagedBlot((phrase.point ?? 0) + 1);
    case TutorPhraseId.stagedSpare:
      return l10n.tutorPhraseStagedSpare((phrase.point ?? 0) + 1);
    case TutorPhraseId.stagedPartialPrompt:
      return l10n.tutorPhraseStagedPartialPrompt(part).trim();
    case TutorPhraseId.stagedAllCheckersOff:
      return l10n.tutorPhraseStagedAllCheckersOff;
    case TutorPhraseId.stagedHitShortPlan:
      return l10n.tutorPhraseStagedHitShortPlan;
    case TutorPhraseId.stagedEfficientBearOffPlan:
      return l10n.tutorPhraseStagedEfficientBearOffPlan;
    case TutorPhraseId.stagedRaceHomePlan:
      return l10n.tutorPhraseStagedRaceHomePlan;
    case TutorPhraseId.stagedBearOffContactPlan:
      return l10n.tutorPhraseStagedBearOffContactPlan;
    case TutorPhraseId.stagedReentryPlan:
      return l10n.tutorPhraseStagedReentryPlan;
    case TutorPhraseId.stagedHomeBoardPlan:
      return l10n.tutorPhraseStagedHomeBoardPlan;
    case TutorPhraseId.stagedPrimePlan:
      return l10n.tutorPhraseStagedPrimePlan;
    case TutorPhraseId.stagedLeaveAnchorPlan:
      return l10n.tutorPhraseStagedLeaveAnchorPlan;
    case TutorPhraseId.stagedNewAnchorPlan:
      return l10n.tutorPhraseStagedNewAnchorPlan;
    case TutorPhraseId.stagedCoverBlotPlan:
      return l10n.tutorPhraseStagedCoverBlotPlan;
    case TutorPhraseId.stagedSafetyTradeoffPlan:
      return l10n.tutorPhraseStagedSafetyTradeoffPlan;
    case TutorPhraseId.stagedCompletePrompt:
      return l10n.tutorPhraseStagedCompletePrompt(part).trim();
  }
}
