/// Stable semantic identifiers for transient tutor copy.
///
/// These describe what the tutor means, not how it evaluates a position. The
/// typed fields on [TutorPhrase] are the complete interpolation vocabulary;
/// UI localization can map each id to an ARB message without making the
/// coaching/evaluation layer depend on Flutter or a locale.
enum TutorPhraseId {
  gameFinished,
  reviewFinishedGame,
  cubeOffered,
  cubeDecisionPrompt,
  cubeScoreContext,
  resignationOffered,
  resignationDecisionPrompt,
  noLegalPlay,
  forcedPassPrompt,
  onlyOneResult,
  forcedTurnPrompt,
  pipCountsLevel,
  pipCountsAhead,
  pipCountsBehind,
  playerHasCheckersOnBar,
  enterBeforeMoving,
  opponentHomePoints,
  bearOffRace,
  pureRace,
  bearOffSpread,
  bringRearCheckersHome,
  armiesHavePassed,
  contactStillMatters,
  opponentHasCheckersOnBar,
  keepBoardClosed,
  buildOrPreserveHomeBoard,
  homePointsCloseEntries,
  primeContact,
  extendPrimeOrKeepSpares,
  spareCheckersCanMove,
  anchorContact,
  compareAnchorProgress,
  preserveAnchorFoothold,
  contactThreats,
  lookForPointsAndSafety,
  homePointsAndBlots,
  chooseCheckerPrompt,
  legalPlayPrompt,
  stagedHit,
  stagedEnter,
  stagedBearOff,
  stagedMakePoints,
  stagedBlot,
  stagedSpare,
  stagedPartialPrompt,
  stagedAllCheckersOff,
  stagedHitShortPlan,
  stagedEfficientBearOffPlan,
  stagedRaceHomePlan,
  stagedBearOffContactPlan,
  stagedReentryPlan,
  stagedHomeBoardPlan,
  stagedPrimePlan,
  stagedLeaveAnchorPlan,
  stagedNewAnchorPlan,
  stagedCoverBlotPlan,
  stagedSafetyTradeoffPlan,
  stagedCompletePrompt,
}

/// A localized-copy candidate with explicitly typed interpolation data.
///
/// Only the fields required by the selected [id] should be populated. Lists
/// are copied so a phrase cannot change after it has been handed to the UI.
/// `parts` lets a localized outer sentence contain already structured facts
/// (for example a partial staged move) without embedding English text.
class TutorPhrase {
  TutorPhrase(
    this.id, {
    this.count,
    this.otherCount,
    this.point,
    List<int> points = const [],
    this.ahead,
    List<TutorPhrase> parts = const [],
  }) : points = List.unmodifiable(points),
       parts = List.unmodifiable(parts);

  final TutorPhraseId id;
  final int? count;
  final int? otherCount;
  final int? point;
  final List<int> points;
  final bool? ahead;
  final List<TutorPhrase> parts;

  /// Compatibility rendering for existing English-only call sites and tests.
  /// Production localization should resolve [id] from AppLocalizations instead.
  String get english => renderEnglishTutorPhrase(this);
}

/// Renders the current tutor catalog in the exact English wording used before
/// these phrases were extracted. It remains pure Dart and is intentionally
/// independent of the game's evaluation and persistence models.
String renderEnglishTutorPhrase(TutorPhrase phrase) {
  final n = phrase.count;
  final m = phrase.otherCount;
  final p = phrase.point;
  final points = phrase.points.isEmpty ? 'none' : phrase.points.join(', ');
  final parts = phrase.parts.map(renderEnglishTutorPhrase).join(' ');
  switch (phrase.id) {
    case TutorPhraseId.gameFinished:
      return 'Game finished.';
    case TutorPhraseId.reviewFinishedGame:
      return 'Review the moves to find a decision to practise.';
    case TutorPhraseId.cubeOffered:
      return 'The cube has been offered.';
    case TutorPhraseId.cubeDecisionPrompt:
      return 'Decide whether to take or pass before planning a checker play.';
    case TutorPhraseId.cubeScoreContext:
      return 'The match score changes what the extra stake is worth.';
    case TutorPhraseId.resignationOffered:
      return 'A resignation has been offered.';
    case TutorPhraseId.resignationDecisionPrompt:
      return 'Compare the offered points with the position before accepting or continuing.';
    case TutorPhraseId.noLegalPlay:
      return 'No legal play with this roll.';
    case TutorPhraseId.forcedPassPrompt:
      return 'A forced pass is not a mistake; wait for the next roll.';
    case TutorPhraseId.onlyOneResult:
      return 'Only one legal resulting position.';
    case TutorPhraseId.forcedTurnPrompt:
      return 'Play the forced turn. There is no choice to grade on this roll.';
    case TutorPhraseId.pipCountsLevel:
      return 'The pip counts are level.';
    case TutorPhraseId.pipCountsAhead:
      return 'You are $n pips ahead.';
    case TutorPhraseId.pipCountsBehind:
      return 'You are $n pips behind.';
    case TutorPhraseId.playerHasCheckersOnBar:
      return '$n on the bar: re-entry comes first.';
    case TutorPhraseId.enterBeforeMoving:
      return 'Enter before moving any other checker; then look for a safe landing.';
    case TutorPhraseId.opponentHomePoints:
      return 'The opponent has $n closed home-board points.';
    case TutorPhraseId.bearOffRace:
      return 'Bear-off race.';
    case TutorPhraseId.pureRace:
      return 'A pure race.';
    case TutorPhraseId.bearOffSpread:
      return 'Remove checkers while leaving a useful spread for the next roll.';
    case TutorPhraseId.bringRearCheckersHome:
      return 'Bring the back checkers home without piling too many on one point.';
    case TutorPhraseId.armiesHavePassed:
      return 'The armies have passed each other; no further hits are possible.';
    case TutorPhraseId.opponentHasCheckersOnBar:
      return 'The opponent has $n on the bar.';
    case TutorPhraseId.keepBoardClosed:
      return 'Keep the board closed while bringing the remaining checkers home.';
    case TutorPhraseId.buildOrPreserveHomeBoard:
      return 'Build or preserve your home board while the opponent tries to enter.';
    case TutorPhraseId.homePointsCloseEntries:
      return 'You hold $n home-board points; each closes an entry number.';
    case TutorPhraseId.primeContact:
      return 'Contact with a $n-point run.';
    case TutorPhraseId.extendPrimeOrKeepSpares:
      return 'Compare extending the run with keeping spare checkers to maintain it.';
    case TutorPhraseId.spareCheckersCanMove:
      return '$n spares can move without immediately opening their point.';
    case TutorPhraseId.contactStillMatters:
      return '$parts Contact still matters.';
    case TutorPhraseId.anchorContact:
      return 'Contact with an anchor on $points.';
    case TutorPhraseId.compareAnchorProgress:
      return phrase.ahead == true
          ? 'Compare bringing the back checkers home with the safety of keeping your anchor.'
          : 'Keep the safe foothold in mind while looking for a hit or improving your board.';
    case TutorPhraseId.preserveAnchorFoothold:
      return 'The anchor cannot be hit, but those checkers still have a long way home.';
    case TutorPhraseId.contactThreats:
      return 'Contact: both sides can still threaten hits.';
    case TutorPhraseId.lookForPointsAndSafety:
      return 'Look for useful points, then compare the risk of leaving single checkers exposed.';
    case TutorPhraseId.homePointsAndBlots:
      return 'You hold $n home-board points and leave $m blots.';
    case TutorPhraseId.chooseCheckerPrompt:
      return 'Choose a checker to start your play.';
    case TutorPhraseId.legalPlayPrompt:
      return 'Start a legal play to see commentary.';
    case TutorPhraseId.stagedHit:
      return 'You have hit $n opposing ${n == 1 ? 'checker' : 'checkers'}.';
    case TutorPhraseId.stagedEnter:
      return 'You have entered $n from the bar.';
    case TutorPhraseId.stagedBearOff:
      return 'You have borne off $n ${n == 1 ? 'checker' : 'checkers'}.';
    case TutorPhraseId.stagedMakePoints:
      return 'You have made $points.';
    case TutorPhraseId.stagedBlot:
      return 'The checker on your ${p! + 1}-point is a blot for now.';
    case TutorPhraseId.stagedSpare:
      return 'The spare on your ${p! + 1}-point can move later without opening the point.';
    case TutorPhraseId.stagedPartialPrompt:
      return '$parts Use the remaining playable dice before judging the whole play.'
          .trim();
    case TutorPhraseId.stagedAllCheckersOff:
      return 'All 15 checkers are off: the game is won.';
    case TutorPhraseId.stagedHitShortPlan:
      return 'The hit gains time while the opponent works to re-enter.';
    case TutorPhraseId.stagedEfficientBearOffPlan:
      return 'An efficient bear-off removes checkers and leaves useful numbers for the next roll.';
    case TutorPhraseId.stagedRaceHomePlan:
      return 'The race plan is to bring the rear checkers home with useful bear-off landing points.';
    case TutorPhraseId.stagedBearOffContactPlan:
      return 'Bearing off makes progress, but the remaining contact still leaves a risk of hits.';
    case TutorPhraseId.stagedReentryPlan:
      return 'Re-entry gets the checker back in play; finding a safe landing comes next.';
    case TutorPhraseId.stagedHomeBoardPlan:
      return 'The new home-board point takes away an entry number after a future hit.';
    case TutorPhraseId.stagedPrimePlan:
      return 'The longer run closes more landing points; spare checkers help keep it intact.';
    case TutorPhraseId.stagedLeaveAnchorPlan:
      return 'Leaving the anchor gains ground but gives up a safe foothold.';
    case TutorPhraseId.stagedNewAnchorPlan:
      return 'The new anchor gives the back checkers a safe foothold.';
    case TutorPhraseId.stagedCoverBlotPlan:
      return 'Covering a blot removes a target for the opponent.';
    case TutorPhraseId.stagedSafetyTradeoffPlan:
      return 'The tradeoff is development versus safety: useful builders can also become targets.';
    case TutorPhraseId.stagedCompletePrompt:
      return '$parts The full play is staged; Confirm commits it.'.trim();
  }
}
