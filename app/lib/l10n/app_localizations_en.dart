// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get homeTagline => 'Improve your game with a tutor';

  @override
  String get settings => 'Settings';

  @override
  String get playVsComputer => 'Play vs Computer';

  @override
  String get twoPlayers => 'Two Players';

  @override
  String get playNearby => 'Play Nearby';

  @override
  String get playOnline => 'Play Online';

  @override
  String get learningPractice => 'Learning & practice';

  @override
  String get gamesArchive => 'Games Archive';

  @override
  String get followSystem => 'Follow device language';

  @override
  String get white => 'White';

  @override
  String get black => 'Black';

  @override
  String get random => 'Random';

  @override
  String get startMatch => 'Start match';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'No moves — pass';

  @override
  String get undo => 'Undo';

  @override
  String get confirm => 'Confirm';

  @override
  String get roll => 'Roll';

  @override
  String get hint => 'Hint';

  @override
  String get tutoringStyle => 'Tutoring style';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Hints only';

  @override
  String get tutorStyleTryFirst => 'Try first';

  @override
  String get tutorCoachDescription =>
      'Position prompts, move feedback, hints, and cube advice.';

  @override
  String get tutorHintsDescription =>
      'Ranked plays on request. Live position prompts and automatic move feedback stay off.';

  @override
  String get tutorTryFirstDescription =>
      'Stage your current play before seeing ranked hints or its grade; board guidance stays on.';

  @override
  String get tutorCustomDescription =>
      'Custom mix. Adjust any of the options below.';

  @override
  String get tutorBestMoveHints => 'Best-move hints';

  @override
  String get tutorRevealRankedPlays => 'Reveal ranked plays while you decide';

  @override
  String get tutorMoveExplanations => 'Move explanations';

  @override
  String get tutorCompareEstimates =>
      'Compare estimates and changes on the board';

  @override
  String get tutorGameCommentary => 'Game commentary';

  @override
  String get tutorPositionPrompts =>
      'Position prompts and feedback after each play';

  @override
  String get tutorCubeAdvice => 'Cube advice';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Match-aware double, take, and pass suggestions';

  @override
  String get tutorTryMoveFirst => 'Try a move first';

  @override
  String get tutorStageBeforeHints =>
      'Stage your current play before revealing hints or its grade';

  @override
  String get tutorStaticEstimateNote =>
      'Quick static estimate (0-ply, no rollouts); notes describe board changes and possible replies, not a promise of what happens next.';

  @override
  String get tutorWhatToWatchNext => 'What to watch next';

  @override
  String get tutorMoreBoardDetails => 'More board details';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Estimates and how they work';

  @override
  String get tutorEstimateLimitations =>
      'Depth: static neural evaluation after each legal play (0-ply), without rollouts or a search of future replies. Score-aware MWC weights those outcome estimates by the match score and current cube; it does not model future cube actions. Cubeless equity is expected points at cube 1 when score is unavailable. Board observations describe the play, not the neural engine’s internal reasoning. Near ties are not a claim of certainty; there is no calibrated confidence interval.';

  @override
  String get tutorPointNumberNote =>
      'Point numbers in teaching notes are counted from the mover’s home board.';

  @override
  String get tutorHittingRollNote =>
      'Hitting-roll counts include all 36 ordered dice outcomes and legal direct or indirect hits; they are opportunities, not a prediction of the opponent’s choice.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'No evaluated alternatives are available for this play.';

  @override
  String get tutorForcedPassNoDecision =>
      'A forced pass does not involve a checker-play decision.';

  @override
  String get settingsReset => 'Reset';

  @override
  String get settingsAppLanguage => 'App language';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsAnimationSpeed => 'Animation speed';

  @override
  String get settingsAnimationNone => 'None';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Fast';

  @override
  String get settingsDiceRollAnimation => 'Dice roll animation';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Tumble the dice before each roll';

  @override
  String get settingsDefaultMatchLength => 'Default match length';

  @override
  String get settingsDefaultDifficulty => 'Default difficulty';

  @override
  String get settingsDifficultyEasy => 'Easy';

  @override
  String get settingsDifficultyMedium => 'Medium';

  @override
  String get settingsDifficultyHard => 'Hard';

  @override
  String get settingsDifficultyExpert => 'Expert';

  @override
  String get settingsTutorModeDefault => 'Tutor mode default';

  @override
  String get settingsTutorAuto => 'Auto';

  @override
  String get settingsTutorOn => 'On';

  @override
  String get settingsTutorOff => 'Off';

  @override
  String get settingsTutorModeHelp =>
      'Auto enables the tutor at every computer difficulty. On and Off set the starting choice for local matches. Nearby and online matches are unassisted; their saved games can be reviewed afterwards. Teaching preferences below are saved on this device.';

  @override
  String get settingsTutorPreferences => 'Tutor preferences';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Saved defaults for future matches';

  @override
  String get settingsTutorSaveError => 'Could not save tutor preferences.';

  @override
  String get settingsGameplay => 'Gameplay';

  @override
  String get settingsMoveHighlights => 'Move highlights';

  @override
  String get settingsMoveHighlightsHelp =>
      'Ring selectable checkers and light up destinations';

  @override
  String get settingsDragToMove => 'Drag to move';

  @override
  String get settingsDragToMoveHelp =>
      'Drag a checker to its destination (taps always work)';

  @override
  String get settingsCombinedMoves => 'Combined moves';

  @override
  String get settingsCombinedMovesHelp =>
      'One tap runs a checker through both dice';

  @override
  String get settingsRotateBoard => 'Rotate board between turns';

  @override
  String get settingsRotateBoardHelp =>
      'Hot-seat: flip the view for the active player';

  @override
  String get settingsPassDevice => 'Pass-device screen';

  @override
  String get settingsPassDeviceHelp => 'Cover the board between hot-seat turns';

  @override
  String get settingsShowScore => 'Show score';

  @override
  String get settingsShowScoreHelp =>
      'Display the running match score in the header';

  @override
  String get settingsBuddyMode => 'Buddy Mode';

  @override
  String get settingsBuddyTerse => 'Terse';

  @override
  String get settingsBuddyFriendly => 'Friendly';

  @override
  String get settingsBuddyTerseHelp =>
      'How Buddy words a play out loud: \"13/8, 24/22\" — notation, the way two players at a board actually talk.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'How Buddy words a play out loud: \"Move one checker from 13 to 8, and one from 24 to 22.\"';

  @override
  String get settingsListenForDice => 'Listen for the dice';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy looks at the board sooner when it hears a throw. Off changes nothing else.';

  @override
  String get settingsDiagnostics => 'Diagnostics';

  @override
  String get settingsErrorLog => 'Error log';

  @override
  String get settingsErrorLogHelp =>
      'Recent errors, ready to copy into a bug report';

  @override
  String get settingsReportBug => 'Report a bug';

  @override
  String get settingsReportBugHelp => 'Open a guided report on GitHub';

  @override
  String get settingsSuggestIdea => 'Suggest an idea';

  @override
  String get settingsSuggestIdeaHelp => 'Help us improve the tutor and game';

  @override
  String get settingsAbout => 'About';

  @override
  String get settingsOpenSourceLicenses => 'Open-source licenses';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Game finished.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Review the moves to find a decision to practise.';

  @override
  String get tutorPhraseCubeOffered => 'The cube has been offered.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Decide whether to take or pass before planning a checker play.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'The match score changes what the extra stake is worth.';

  @override
  String get tutorPhraseResignationOffered => 'A resignation has been offered.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Compare the offered points with the position before accepting or continuing.';

  @override
  String get tutorPhraseNoLegalPlay => 'No legal play with this roll.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'A forced pass is not a mistake; wait for the next roll.';

  @override
  String get tutorPhraseOnlyOneResult => 'Only one legal resulting position.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Play the forced turn. There is no choice to grade on this roll.';

  @override
  String get tutorPhrasePipCountsLevel => 'The pip counts are level.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'You are $count pips ahead.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'You are $count pips behind.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count on the bar: re-entry comes first.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Enter before moving any other checker; then look for a safe landing.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'The opponent has $count closed home-board points.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Bear-off race.';

  @override
  String get tutorPhrasePureRace => 'A pure race.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Remove checkers while leaving a useful spread for the next roll.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Bring the back checkers home without piling too many on one point.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'The armies have passed each other; no further hits are possible.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Contact still matters.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'The opponent has $count on the bar.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Keep the board closed while bringing the remaining checkers home.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Build or preserve your home board while the opponent tries to enter.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'You hold $count home-board points; each closes an entry number.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contact with a $count-point run.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Compare extending the run with keeping spare checkers to maintain it.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count spares can move without immediately opening their point.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contact with an anchor on $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Compare bringing the back checkers home with the safety of keeping your anchor.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Keep the safe foothold in mind while looking for a hit or improving your board.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'The anchor cannot be hit, but those checkers still have a long way home.';

  @override
  String get tutorPhraseContactThreats =>
      'Contact: both sides can still threaten hits.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Look for useful points, then compare the risk of leaving single checkers exposed.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'You hold $count home-board points and leave $otherCount blots.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Choose a checker to start your play.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Start a legal play to see commentary.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checkers',
      one: 'checker',
    );
    return 'You have hit $count opposing $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'You have entered $count from the bar.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checkers',
      one: 'checker',
    );
    return 'You have borne off $count $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'You have made $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'The checker on your $point-point is a blot for now.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'The spare on your $point-point can move later without opening the point.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Use the remaining playable dice before judging the whole play.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'All 15 checkers are off: the game is won.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'The hit gains time while the opponent works to re-enter.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'An efficient bear-off removes checkers and leaves useful numbers for the next roll.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'The race plan is to bring the rear checkers home with useful bear-off landing points.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Bearing off makes progress, but the remaining contact still leaves a risk of hits.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Re-entry gets the checker back in play; finding a safe landing comes next.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'The new home-board point takes away an entry number after a future hit.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'The longer run closes more landing points; spare checkers help keep it intact.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Leaving the anchor gains ground but gives up a safe foothold.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'The new anchor gives the back checkers a safe foothold.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Covering a blot removes a target for the opponent.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'The tradeoff is development versus safety: useful builders can also become targets.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part The full play is staged; Confirm commits it.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'This roll leaves no checker-play choice; it is not graded as a decision.';

  @override
  String get tutorMoveTopVerdict => 'A top choice for this position.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'The engine prefers another play here.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Difference from the top play: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'After this play: $winPercent% wins, $winGammonPercent% gammon-or-better wins, $loseGammonPercent% gammon-or-worse losses. These are estimates from the mover’s perspective.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Estimated match-winning chance: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'All 15 checkers are off: the game is won.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Use the hit to gain time while the opponent re-enters. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Keep your closed home-board points to make entry harder.';

  @override
  String get tutorMovePlanHitBuild =>
      'Build more home-board points to make future hits harder to recover from.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Work toward an efficient bear-off: remove checkers while leaving useful numbers for the next roll.';

  @override
  String get tutorMovePlanRaceHome =>
      'Bring the rear checkers home and spread them across useful landing points for the bear-off.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Take checkers out of the game, but keep watching the opponent’s back checkers: contact makes a loose bear-off checker a possible target.';

  @override
  String get tutorMovePlanReentry =>
      'Get back into play, then look for a safe point for the checker that entered.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Strengthen your home board. The new closed point gives a future hit more force by taking away an entry number.';

  @override
  String get tutorMovePlanPrime =>
      'Keep the run of closed points working together. Preserve spares so later rolls do not force you to open it.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Leaving an anchor advances your back checkers but gives up a safe foothold. Watch their exposure on the way home.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Use the new anchor as a safe foothold while you improve the rest of your position.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Consolidate your checkers. Covering a blot removes that target while keeping future landing points available.';

  @override
  String get tutorMovePlanSafety =>
      'Balance development with safety: bring builders toward useful points and check which single checkers can be hit.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'No legal checker play: the turn must pass.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checkers',
      one: 'checker',
    );
    return 'Hits $count opposing $_temp0; the opponent must re-enter from the bar before moving other checkers.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Enters $count from the bar.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checkers',
      one: 'checker',
    );
    return 'Bears off $count $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Makes $points. Two or more checkers hold a safe point and block an opponent’s landing there.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Gives up made $pointLabel $points. Those points no longer block the opponent.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Leaves no single checkers exposed (previously $previousCount). There are no single checkers to hit.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'checkers',
      one: 'checker',
    );
    return 'Leaves $count exposed single $_temp0 (previously $previousCount). Check whether the opponent can reach them before choosing safety over another gain.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Longest run of made points: $count (previously $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'A six-point prime cannot be crossed while it stays closed.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Keep builders nearby if you want to extend or preserve this run.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return '$count spare checkers sit above two on made points. Moving a spare can preserve the point; moving one of its last two opens it.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Anchors in the opponent’s home board: $points (previously $previousPoints). Keeping an anchor protects those checkers from hits; leaving it trades that foothold for progress in the race.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Pure race: the armies have passed each other and neither side is on the bar. Hitting is no longer possible; bear-off efficiency matters.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'No legal next roll lets the opponent hit a checker in this position. Contact still remains, so later moves can create new shots.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'The opponent can hit on $count of $total rolls. For example, $dieOne–$dieTwo allows a legal hit on your $point-point. A hit is available, not guaranteed to be chosen.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return '$closedPoints of your home-board points are closed. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'The opponent cannot re-enter until a point opens.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'A roll using an open entry point can bring a checker back from the bar.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors The top play’s estimated win chance is $delta percentage points $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'higher';

  @override
  String get tutorMoveComparisonLower => 'lower';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' It can still rank higher because gammons and backgammons have different value at the current $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'stake';

  @override
  String get tutorMoveComparisonMatchScore => 'match score';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'The top play leaves $bestCount opposing checkers on the bar instead of $playedCount. A checker on the bar must re-enter before the opponent can move the others.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'The top play holds $bestCount home-board points instead of $playedCount, $entryDifference entry points after a hit.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'closing more';

  @override
  String get tutorMoveComparisonLeavingMore => 'leaving more';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'The top play allows a reply hit on $bestCount of 36 rolls instead of $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'That reduces the immediate risk of being sent back.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Compare that extra exposure with what the play gains elsewhere.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'The top play’s longest run of closed points is $bestCount rather than $playedCount; compare the blockade with the checkers available to keep it intact.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'The top play’s anchors are $bestPoints rather than $playedPoints. Keeping an anchor preserves a safe landing point; leaving it brings those checkers nearer home.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'The top play has $bestCount checkers off instead of $playedCount. Each checker removed is one fewer to bear off later.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Both plays leave the same immediate hit exposure, home-board points, anchors and checkers off. Compare the landing points: the next roll may use those checkers differently.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'The top play puts more checkers on the bar, delaying the opponent’s other moves.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'The top play closes more home-board points, making re-entry harder after a hit.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'The top play allows fewer immediate hitting rolls, reducing the risk of being sent back.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'The top play keeps a longer run of closed points.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'The top play keeps more safe anchors in the opponent’s home board.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'The top play takes more checkers off, leaving fewer to remove later.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'This play leaves $playedCount single checkers; the top play leaves $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'The top play keeps a safe anchor on point $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'The top play closes more entry points in case one of your checkers is hit.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'The plays leave similar immediate risks; compare which landing points stay useful next roll.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value pp MWC';
  }

  @override
  String get tutorMovePointSingular => 'point';

  @override
  String get tutorMovePointPlural => 'points';

  @override
  String get tutorMoveNoPoints => 'none';

  @override
  String get gameTutorCommentaryOff => 'Game commentary is off.';

  @override
  String get gameTutorToolsAvailable =>
      'Open the tutor for the tools you have enabled.';

  @override
  String get gameTutorNextRoll => 'Roll next.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'No evaluated explanation is available for this recorded move.';

  @override
  String get gameTutorAnalysisUnavailable => 'analysis unavailable';

  @override
  String get gameTutorReviewing => 'reviewing…';

  @override
  String get gameTutorTryYourPlayFirst => 'Try your own play first.';

  @override
  String get gameTutorKeepBuilding => 'Keep building your play.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Stage a complete legal play before revealing coaching or hints.';

  @override
  String get gameTutorReadyToConfirm => 'Ready to confirm';

  @override
  String get gameTutorPlayTakingShape => 'Your play is taking shape.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Confirm to play it, or Undo to reconsider.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Finish the remaining dice, or Undo to reconsider.';

  @override
  String get gameTutorComputerConsidering =>
      'The computer is considering its play.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Its completed play will be reviewed here.';

  @override
  String get gameTutorYourPlay => 'Your play';

  @override
  String get gameTutorComputer => 'Computer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Your play: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'forced play';

  @override
  String get gameTutorTopChoice => 'top choice';

  @override
  String get gameTutorSoundPlay => 'sound play';

  @override
  String get gameTutorAnotherPlayMayFitBetter => 'another play may fit better';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'another play fits this position better';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'a clearly stronger play was available';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side has the estimated edge.';
  }

  @override
  String get gameTutorPositionEven => 'The position is roughly even.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Played: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Best: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Show ranked plays';

  @override
  String get tutorReviewRecordedMove =>
      'Tap a completed move in the log to review its decision here.';

  @override
  String get tutorTopPlays => 'Top plays';

  @override
  String get tutorNoHintsAvailable => 'No hints available.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tap a play to preview it on the board, then Confirm.';

  @override
  String get tutorTopChoiceForPosition => 'Top choice for this position';

  @override
  String get tutorAlternativePlay => 'Alternative play';

  @override
  String get tutorEngineEstimates => 'Engine estimates';

  @override
  String get tutorEstimateScope =>
      '0-ply estimate · current score and stake · no future cubes';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote => 'Near ties can change with deeper analysis.';

  @override
  String get tutorWhyThisPlay => 'Why this play?';

  @override
  String get tutorCompareAlternative => 'Compare this alternative';

  @override
  String get gameTutorCubeTake => 'Tutor: Take';

  @override
  String get gameTutorCubePass => 'Tutor: Pass';

  @override
  String get practiceScreenTitle => 'Practise a decision';

  @override
  String get practiceUnavailable =>
      'This practice position is no longer available.';

  @override
  String get practiceSubmitError =>
      'This attempt could not be evaluated or saved. Your progress was not changed. Try again.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side to play · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historical score unavailable; grading uses cubeless equity.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Score: $whiteLabel $whiteScore – $blackLabel $blackScore, to $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford game';

  @override
  String get practiceNoDoublingCube => 'No doubling cube.';

  @override
  String practiceCubeValue(int value) {
    return 'Cube $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown => 'Historical cube rules unknown.';

  @override
  String get practiceAfterBestPosition => 'Position after the best play';

  @override
  String get practiceAfterYourAnswerPosition => 'Position after your answer';

  @override
  String get practiceFindYourPlayPrompt =>
      'Find your play on the board, then check your answer. No hints are shown.';

  @override
  String get practiceUndo => 'Undo';

  @override
  String get practiceCheckAnswer => 'Check answer';

  @override
  String get practiceRevealNoCredit => 'Reveal answer (no credit)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Answer revealed — no recall credit.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Best: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Original game: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Your answer: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Your answer';

  @override
  String get practiceBestPlayChip => 'Best play';

  @override
  String practiceNextReview(Object date) {
    return 'Next review: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Best or good answers count as successful recall. Early repeats do not advance the schedule.';

  @override
  String get practiceBackToLearning => 'Back to learning';

  @override
  String get practiceMarkBest => 'Best';

  @override
  String get practiceMarkGood => 'Good';

  @override
  String get practiceMarkDubious => 'Dubious';

  @override
  String get practiceMarkError => 'Error';

  @override
  String get practiceMarkBlunder => 'Blunder';

  @override
  String get practiceMarkForced => 'Forced';

  @override
  String get newMatchYourSide => 'Your side';

  @override
  String get newMatchTutorMode => 'Tutor mode';

  @override
  String get newMatchTutorDescription =>
      'Learn with hints, explanations, and game commentary';

  @override
  String get newMatchTutoringOptions => 'Tutoring options';

  @override
  String get newMatchTutoringOptionsDescription =>
      'For this match; adjustable during play';

  @override
  String get setupMatchLength => 'Match length';

  @override
  String get setupDifficulty => 'Difficulty';

  @override
  String get setupDifficultyEasy => 'Easy';

  @override
  String get setupDifficultyMedium => 'Medium';

  @override
  String get setupDifficultyHard => 'Hard';

  @override
  String get setupDifficultyExpert => 'Expert';

  @override
  String get setupPlayWithoutCube => 'Play without cube';

  @override
  String get setupNoCubeThisMatch => 'No doubling cube this match';

  @override
  String get analysisTitle => 'Analysis';

  @override
  String get gameMatchSummary => 'Match summary';

  @override
  String get gameAnalyzeGame => 'Analyze game';

  @override
  String get analysisMetricsTooltip => 'What do these numbers mean?';

  @override
  String analysisError(Object error) {
    return 'Failed to analyse game: $error';
  }

  @override
  String get analysisNoPositions => 'This game has no positions to show.';

  @override
  String get analysisInProgress => 'Analysing game…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Played';

  @override
  String get analysisBest => 'Best';

  @override
  String get analysisPrevious => 'Previous';

  @override
  String get analysisNext => 'Next';

  @override
  String get analysisPositionBeforeCube => 'Position before the cube decision';

  @override
  String get analysisPositionAtPoint => 'Position at this point in the game';

  @override
  String get analysisShowingBestBefore =>
      'Showing the best move on the position before the move';

  @override
  String get analysisShowingBefore => 'Showing position before the move';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return '  −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · excluded from averages';

  @override
  String get analysisNoPlay => '(no play)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Best: $move';
  }

  @override
  String get analysisExplain => 'Explain';

  @override
  String get analysisSaveForPractice => 'Save for practice';

  @override
  String get analysisSaveError =>
      'Could not save this decision. Please try again.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · $loss loss';
  }

  @override
  String get analysisCubeDecision => 'Cube decision';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Played: $action ($percent% match win).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Best: $action ($percent% match win).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply estimate from the acting player’s perspective. Assumes an optimal take/pass response. Uses a 0.7 cube-life approximation on the taken-double branch, not a full future-recube search. Deeper analysis can change the answer.';

  @override
  String get analysisClose => 'Close';

  @override
  String get analysisMoves => 'Moves';

  @override
  String get analysisForced => 'Forced';

  @override
  String get analysisMarkBest => 'Best';

  @override
  String get analysisMarkGood => 'Good';

  @override
  String get analysisMarkDubious => 'Dubious';

  @override
  String get analysisMarkError => 'Error';

  @override
  String get analysisMarkBlunder => 'Blunder';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Mean loss $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count checker decisions';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Blunders $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Cube loss $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side rolls without doubling';
  }

  @override
  String get metricExplainerTitle => 'Understanding the metrics';

  @override
  String get metricExplainerTooltip => 'What do these numbers mean?';

  @override
  String get metricExplainerMwcTitle => 'Match-winning chance (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'When the score is known, checker plays are ranked by estimated chance of winning the match. Loss is in percentage points (pp): 1 pp means 51% falls to 50%. The current cube stake and gammon/backgammon outcomes are included. Forced passes and rolls with one legal resulting position are excluded from averages.';

  @override
  String get metricExplainerSearchTitle => 'Search and uncertainty';

  @override
  String get metricExplainerSearchBody =>
      'Checker rankings are 0-ply static after-play estimates, not rollouts. Match values use a match equity table and no future cube turns. Cube reviews use a partial 0.7 cube-life approximation on taken doubles. Neither is full cubeful search. Away scores above 25 use the table’s 25-away boundary. Near ties can change with deeper analysis; there is no calibrated confidence interval.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'If the score is unavailable, cubeless equity is how many points a position is worth on average — the expected result with the cube at 1. +1.0 means you expect to win one point; −0.5 means you expect to lose half a point.';

  @override
  String get metricExplainerEquityLossTitle => 'Equity loss (e.g. −0.016)';

  @override
  String get metricExplainerEquityLossBody =>
      'For each move we compare what you played against the engine’s best play. The equity loss is how much expected value your move gave up. −0.016 means the move was only 0.016 points worse than the best — a tiny slip. 0.000 means you found the best play.';

  @override
  String get metricExplainerErrorRateTitle => 'Error rate';

  @override
  String get metricExplainerErrorRateBody =>
      'Mean loss averages your graded checker decisions in the displayed unit. Cube decisions have their own average. Lower means closer to this engine’s top estimates; it is not a calibrated player rating.';

  @override
  String get metricExplainerMoveMarksTitle => 'Move marks';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC teaching bands: Best < 0.05 pp, Good < 0.5 pp, Dubious < 1.5 pp, Error < 3 pp, Blunder ≥ 3 pp. These are product teaching bands, not calibrated confidence or tournament ratings.\n\nCubeless equity teaching bands:';

  @override
  String get metricExplainerThresholdBest => 'lost < 0.001';

  @override
  String get metricExplainerThresholdGood => 'lost < 0.020';

  @override
  String get metricExplainerThresholdDubious => 'lost < 0.050';

  @override
  String get metricExplainerThresholdError => 'lost < 0.110';

  @override
  String get metricExplainerThresholdBlunder => 'lost ≥ 0.110';

  @override
  String get metricExplainerGotIt => 'Got it';

  @override
  String get historyTitle => 'Match history';

  @override
  String historyLoadFailed(Object error) {
    return 'Failed to load history:\n$error';
  }

  @override
  String get historyEmpty => 'No matches played yet.';

  @override
  String get historyDeleteConfirmTitle => 'Delete this match?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nThe match and every game recorded in it are removed permanently. This cannot be undone.';
  }

  @override
  String get actionCancel => 'Cancel';

  @override
  String get actionDelete => 'Delete';

  @override
  String get historyDeleteFailed => 'Could not delete that match.';

  @override
  String get historyComplete => 'Complete';

  @override
  String historyWinner(Object side) {
    return '$side won';
  }

  @override
  String get historyUnfinished => 'Unfinished';

  @override
  String get historyMatchTitle => 'Match';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Failed to load match:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Failed to load games:\n$error';
  }

  @override
  String get historyNoGames => 'No games recorded yet.';

  @override
  String historyGameTitle(int number) {
    return 'Game $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'White $whiteScore — $blackScore Black  (to $matchLength)';
  }

  @override
  String get historyModeComputer => 'vs Computer';

  @override
  String get historyModeTwoPlayers => 'Two players';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Play Nearby';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'In progress';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side wins $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'single';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Refresh learning progress';

  @override
  String get learningOptions => 'Learning options';

  @override
  String get learningResetMenu => 'Reset practice progress';

  @override
  String get learningLoadFailed => 'Could not load learning progress.';

  @override
  String get actionRetry => 'Retry';

  @override
  String get learningHeading => 'Learn from your decisions';

  @override
  String get learningIntro =>
      'Progress stays on this device. Review recurring themes, then retry saved positions without seeing the answer. White and Black can be reviewed separately.';

  @override
  String get learningBothSides => 'Both sides';

  @override
  String get learningHumansOnly => 'Human decisions only';

  @override
  String get learningHumanOnlyHelp =>
      'Turn off to include computer and remote-player decisions';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decisions · $mistakes to improve · $blunders blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Average loss ($decisions decisions): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Forced plays are excluded. These are engine estimates, not a tournament rating.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# saved games need analysis or refreshed analysis.',
      one: '# saved game needs analysis or refreshed analysis.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analyse saved games';

  @override
  String get learningEmptyProfile =>
      'Play and finish a game to build your learning profile. You can also save individual decisions from a game’s replay.';

  @override
  String get learningOpenHistory => 'Open match history';

  @override
  String get learningRecurringThemes => 'Recurring themes';

  @override
  String get learningNoThemes =>
      'No recurring mistake themes in this selection yet.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decisions to revisit. A position can have more than one theme.';
  }

  @override
  String get learningSaveMistakes => 'Save these mistakes for practice';

  @override
  String learningSavedMistakes(int count) {
    return '$count decisions are in your practice list. Existing saves are kept once.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Some decisions could not be saved. Completed saves are kept; retry safely.';

  @override
  String get learningSpacedPractice => 'Spaced practice';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due due now · $saved saved · $attempts attempts · $successes successful recalls';
  }

  @override
  String get learningIntervalsHelp =>
      'Successful due reviews return after 1, 3, 7, 14 and 30 days. Mistakes or revealed answers return after 10 minutes. Early repeats do not advance the interval.';

  @override
  String get learningAnswerContext =>
      'Practice results reflect your answers here, even when the original position belonged to an opponent.';

  @override
  String get learningNoSavedPositions =>
      'Save a decision from replay, or use the mistake button above.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '$side decision · game $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Review $date';
  }

  @override
  String get learningReadyToReview => 'Ready to review';

  @override
  String learningSuccessStreak(int count) {
    return '$count successful due reviews';
  }

  @override
  String get learningRemoveTooltip => 'Remove saved decision';

  @override
  String get learningRecentPractice => 'Recent practice';

  @override
  String get learningAnswerRevealed => 'Answer revealed';

  @override
  String get learningSuccessfulRecall => 'Successful recall';

  @override
  String get learningTryAgain => 'Try this decision again';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · saved position $positionId';
  }

  @override
  String get learningRemoveTitle => 'Remove this exercise?';

  @override
  String get learningRemoveBody =>
      'This removes its practice attempts. The original game remains in history.';

  @override
  String get actionRemove => 'Remove';

  @override
  String get learningRemoveFailed => 'Could not remove this exercise.';

  @override
  String get learningResetTitle => 'Reset practice progress?';

  @override
  String get learningResetBody =>
      'All practice attempts and review intervals will be removed. Your saved exercises and match history are kept; every exercise becomes due now.';

  @override
  String get learningResetAction => 'Reset progress';

  @override
  String get learningResetFailed => 'Could not reset practice progress.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analysed $completed games · $failed unavailable.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analysed $completed games.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analysed $completed games; $failed could not be analysed. Try again when the engine is ready.';
  }

  @override
  String get learningThemeHitting => 'Hitting and tempo';

  @override
  String get learningThemeSafety => 'Blots and safety';

  @override
  String get learningThemePointMaking => 'Making points';

  @override
  String get learningThemePrime => 'Primes and blockades';

  @override
  String get learningThemeAnchor => 'Anchors and escape';

  @override
  String get learningThemeRace => 'Racing efficiency';

  @override
  String get learningThemeBearOff => 'Bearing off';

  @override
  String get learningThemeBarEntry => 'Entering from the bar';

  @override
  String get learningThemeCube => 'Cube decisions';

  @override
  String get analysisCubeNoDouble => 'No double';

  @override
  String get analysisCubeDouble => 'Double';

  @override
  String get analysisCubeTake => 'Take';

  @override
  String get analysisCubePass => 'Pass';

  @override
  String get learningAnalysisStarting => 'Analysing saved games…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply cubeless estimate · score unavailable';

  @override
  String get tutorLossPp => 'Loss pp';

  @override
  String get tutorLoss => 'Loss';

  @override
  String get scoreSheetNoMoves => 'No moves yet';

  @override
  String get tutorOptions => 'Tutoring options';

  @override
  String get tutorCollapseTooltip => 'Collapse tutor';

  @override
  String get tutorExpandTooltip => 'Expand tutor';

  @override
  String get onlineTitle => 'Play Online';

  @override
  String get onlineUnassistedNote =>
      'Live online games are unassisted. Review your moves and practise mistakes after the match.';

  @override
  String get onlineNotConfiguredTitle =>
      'Online play isn’t configured in this build';

  @override
  String get onlineNotConfiguredBody =>
      'This build has no Firebase backend wired up, so create/join matches are unavailable.';

  @override
  String get onlineErrorNoMatch =>
      'No match with that code. Check it and try again.';

  @override
  String get onlineErrorSeatTaken =>
      'That match is no longer open — the seat has been taken.';

  @override
  String get onlineErrorPermission => 'That match is not open to you.';

  @override
  String get onlineErrorGeneric => 'Something went wrong. Please try again.';

  @override
  String get onlineMatchFinished =>
      'That match has finished — nothing left to rejoin.';

  @override
  String get onlineEnterCodeError => 'Enter a match code.';

  @override
  String get onlineOpponentShort => 'Opp';

  @override
  String get onlineMatchInProgress => 'Match in progress';

  @override
  String onlineResumePrompt(Object code) {
    return 'You were playing match $code.';
  }

  @override
  String get onlineRejoin => 'Rejoin';

  @override
  String get onlineForgetMatch => 'Forget this match';

  @override
  String get onlineCreateTitle => 'Create match';

  @override
  String get onlineMatchLength => 'Match length';

  @override
  String get onlineNoCubeTitle => 'Play without cube';

  @override
  String get onlineNoCubeSubtitle => 'No doubling cube this match';

  @override
  String get onlineCreate => 'Create';

  @override
  String get onlineWaitingOpponent => 'Waiting for opponent…';

  @override
  String get onlineShareCode => 'Share this code';

  @override
  String get onlineCopyCode => 'Copy code';

  @override
  String get onlineCodeCopied => 'Code copied';

  @override
  String get onlineJoinTitle => 'Join match';

  @override
  String get onlineRoomCode => 'Match code';

  @override
  String get onlineJoin => 'Join';

  @override
  String get lanTitle => 'Play Nearby';

  @override
  String get lanTabHost => 'Host';

  @override
  String get lanTabJoin => 'Join';

  @override
  String get lanUnassistedNote =>
      'Live nearby games are unassisted. Review your moves and practise mistakes after the match.';

  @override
  String get lanGameStartFailed =>
      'The game could not be started. The other device can try joining again.';

  @override
  String get lanHostPortInUse =>
      'Could not start hosting — the port is already in use. Close any other copy of Backgammon Buddy and try again.';

  @override
  String get lanHostStartFailed =>
      'Could not start hosting. Check your Wi-Fi connection and try again.';

  @override
  String get lanHostTitle => 'Host a game';

  @override
  String get lanStartHosting => 'Start hosting';

  @override
  String get lanHostHelp =>
      'Both devices must be on the same Wi-Fi. This one deals the dice and keeps the score.';

  @override
  String get lanWaitingPlayerTitle => 'Waiting for a player';

  @override
  String get lanRoomCodeInfo =>
      'Tell the other player this code. It is what lets them in — the app never sends it over the network.';

  @override
  String get lanWaitingPlayer => 'Waiting for a player…';

  @override
  String get lanStopHosting => 'Stop hosting';

  @override
  String lanFindNearbyPort(int port) {
    return 'Ask the other device to look for nearby games. Listening on port $port.';
  }

  @override
  String get lanOnNetwork => 'On this network';

  @override
  String get lanCopyAddress => 'Copy address';

  @override
  String get lanAddressCopied => 'Address copied';

  @override
  String get lanScanHostTitle => 'Scan the host';

  @override
  String get lanScanHostHelp =>
      'The other device shows a QR code on its Host screen. Scanning it fills in the address and the room code for you.';

  @override
  String get lanScanQr => 'Scan QR code';

  @override
  String get lanScannerUnavailable =>
      'The camera or its permission is unavailable. Enter the address and room code below instead.';

  @override
  String get lanInvalidQr =>
      'That QR code is not a Backgammon Buddy game. Scan the one on the other device’s Host screen.';

  @override
  String get lanScannerFailed =>
      'The scanner could not be opened. Enter the address and code below instead.';

  @override
  String get lanNearbyGames => 'Nearby games';

  @override
  String get lanSearching => 'Looking for nearby games…';

  @override
  String get lanNoGamesFound =>
      'No games found yet. Make sure the other device is hosting and both are on the same Wi-Fi — or enter its address below.';

  @override
  String get lanStillSearching => 'Still looking…';

  @override
  String get lanEnterAddress => 'Enter address';

  @override
  String get lanEnterAddressHelp =>
      'Automatic discovery does not work on every network (and on iOS it may be blocked entirely). The host screen shows this device what to type.';

  @override
  String get lanIpAddress => 'IP address';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Enter a port between 1 and 65535.';

  @override
  String get lanEnterAddressError =>
      'Enter the address shown on the other device.';

  @override
  String get lanEnterRoomCodeError =>
      'Enter the 4-digit code from the other device.';

  @override
  String get lanJoinWrongCode =>
      'Wrong room code. Check the four digits on the other device.';

  @override
  String get lanJoinVersionMismatch =>
      'The other device is running a different version of Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'That device did not answer the way Backgammon Buddy does. Check the address and port.';

  @override
  String get lanJoinFailed =>
      'Could not join. Check the address and room code, then try again.';

  @override
  String lanJoinTarget(Object name) {
    return 'Join $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Enter the 4-digit code shown on the other device.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Joining $name';
  }

  @override
  String get lanConnect => 'Connect';

  @override
  String get lanBack => 'Back';

  @override
  String get lanTryAgain => 'Try again';

  @override
  String get lanStatusBusy => 'Room in use — waiting…';

  @override
  String get lanStatusReconnecting => 'Lost the connection — retrying…';

  @override
  String get lanStatusConnected => 'Connected — starting the match…';

  @override
  String get lanStatusFailed => 'Could not join.';

  @override
  String get lanStatusConnecting => 'Connecting…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostics copied to clipboard';

  @override
  String get diagnosticsReviewTitle => 'Review diagnostic report';

  @override
  String get diagnosticsPrivacyNotice =>
      'Opening the draft sends the details below to GitHub, including the app version, platform and any error details. No public issue is posted until you submit it there. If these details contain private information, cancel and use Copy to prepare a report yourself.';

  @override
  String get diagnosticsCancel => 'Cancel';

  @override
  String get diagnosticsOpenGitHub => 'Open GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostics';

  @override
  String get diagnosticsReportTooltip => 'Report an issue on GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copy to clipboard';

  @override
  String get diagnosticsClearTooltip => 'Clear log';

  @override
  String get diagnosticsEmpty =>
      'No errors recorded.\n\nIf something goes wrong, it is logged here — come back and copy the details into a bug report.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · to $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · to $matchLength';
  }

  @override
  String get gameHudYou => 'You';

  @override
  String get gameHudAi => 'AI';

  @override
  String gameHudGameNumber(int number) {
    return 'Game $number';
  }

  @override
  String gameHudMatchContext(Object score, Object game) {
    return '$score · $game';
  }

  @override
  String gameHudHotSeatDetail(
    Object whiteLabel,
    Object blackLabel,
    Object pipsLabel,
    int whitePips,
    int blackPips,
  ) {
    return '$whiteLabel vs $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Double';

  @override
  String get gameHudMoreActions => 'More actions';

  @override
  String get gameHudSurrender => 'Surrender…';

  @override
  String get gameHudThinking => 'Thinking';

  @override
  String get gameHudDoubleBeforeRoll =>
      'You can only double before rolling, on your turn.';

  @override
  String get gameHudNoDoubleCrawford =>
      'No doubling in the Crawford game — this single game decides the match.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Only the cube owner can double, and the other side owns it right now.';

  @override
  String get gameHudDoubleUnavailable => 'Doubling is not available right now.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (to $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner wins this game ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner wins this game ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner wins this game ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner wins this game ($points) — $loser declined the double.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner wins this game ($points) — $loser resigned.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Pass the device';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name’s turn';
  }

  @override
  String get gameDialogTapToContinue => 'Tap to continue';

  @override
  String get gameDialogCubeOfferedTitle => 'Double offered';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler offers a double to $value. Take or pass?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Pass';

  @override
  String get gameDialogTake => 'Take';

  @override
  String get gameDialogResignationTitle => 'Resignation offered';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner offers to resign a $value. Accept or decline?';
  }

  @override
  String get gameDialogResignSingle => 'single game';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Decline';

  @override
  String get gameDialogAccept => 'Accept';

  @override
  String get gameDialogGameOverTitle => 'Game over';

  @override
  String get gameDialogNextGame => 'Next game';

  @override
  String get gameDialogMatchOverTitle => 'Match over';

  @override
  String get gameDialogNobody => 'Nobody';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner wins the match.';
  }

  @override
  String get gameDialogSavedToHistory => 'Saved to History';

  @override
  String get gameDialogDone => 'Done';

  @override
  String get gameTapNoLegalMove =>
      'No legal move for that checker with the remaining dice';

  @override
  String get gameTapNoLegalMoveUndo =>
      'No legal move for that checker with the remaining dice — try Undo';

  @override
  String get gameDragHint =>
      'Tip: drag checkers or tap them — change in Settings';

  @override
  String get commonGotIt => 'Got it';

  @override
  String get gameHintStageBeforeHint =>
      'Stage a complete legal play first, then ask for a hint.';

  @override
  String get surrenderTitle => 'Surrender';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player concedes the current game.';
  }

  @override
  String get surrenderConcedes => 'Concedes the current game.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Available at the start of $player’s turn';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Available at the start of your turn';

  @override
  String get commonCancel => 'Cancel';

  @override
  String get surrenderSingle => 'Single (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Who is conceding this game?';

  @override
  String get commonDone => 'Done';

  @override
  String get cubeDouble => 'Double';

  @override
  String get cubeBlockedOtherPlayersTurn =>
      'It’s the other player’s turn to act.';

  @override
  String get cubeBlockedCrawford =>
      'The cube is unavailable for the Crawford game.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Only the cube owner can double, and the other side owns it right now.';

  @override
  String get cubeBlockedUnavailable => 'Doubling is not available right now.';

  @override
  String get gameStatusRolling => 'Rolling…';

  @override
  String get gameStatusThinking => 'Thinking…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player’s turn';
  }

  @override
  String get cubeAdviceOpponentTake => 'Double — opponent should take';

  @override
  String get cubeAdviceOpponentPass => 'Double — opponent should pass';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Error: $error';
  }

  @override
  String get privacyTitle => 'Privacy and data';

  @override
  String get privacyAppTitle => 'Backgammon Buddy by Freevia';

  @override
  String get privacyIntro =>
      'This page describes how the current app handles your data.';

  @override
  String get privacyLocalTitle => 'Games and tutoring on your device';

  @override
  String get privacyLocalBody =>
      'Local matches, settings, analysis and practice progress are stored on this device. The backgammon engine and tutor explanations run here. Delete a saved match from History to remove its saved practice exercises and attempts too. Delete individual exercises or reset practice progress in Learning; clear local error reports in Settings → Diagnostics. Your device’s backup settings may also apply to game history. Online sign-in credentials are kept in the device’s protected storage.';

  @override
  String get privacyOnlineTitle => 'Online and nearby play';

  @override
  String get privacyOnlineBody =>
      'Online play sends an anonymous player identifier, match settings, moves and dice-handshake records to Google Firebase so both players can play the same match. Deleting History on this device does not delete online records. Hosted matches expire 30 days after creation; scheduled cleanup removes their cloud logs. Match records are stored in the EU; Firebase Authentication processes sign-in data in the United States. Online connections to Google use encryption in transit. Nearby play exchanges match information with the other device over an unencrypted local connection; use trusted Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle => 'Optional usage and crash diagnostics';

  @override
  String get privacyDiagnosticsBody =>
      'Sharing is off until you choose it in Settings. If enabled, Google Firebase receives usage events, app/device information, performance measurements and crash reports to help improve the app. Turn sharing off at any time to stop new optional collection. This does not erase data already sent. Local diagnostics and online matches work separately from this choice.';

  @override
  String get privacyCameraTitle => 'Camera for nearby QR codes';

  @override
  String get privacyCameraBody =>
      'The optional camera scans nearby game QR codes. Images are processed on your device and are not saved or uploaded. You can refuse camera access and enter the host address manually. This version does not use the microphone or provide physical-board play.';

  @override
  String get privacyFeedbackTitle => 'Feedback you choose to send';

  @override
  String get privacyFeedbackBody =>
      'Feedback opens a GitHub issue draft for you to review. Opening the draft sends its app version and platform to GitHub; feedback from Diagnostics may also send error details. No issue is posted until you submit it. Issues may be public, so remove private information before sending.';

  @override
  String get privacyContactTitle => 'Privacy contact';

  @override
  String get privacyReadPolicy => 'Read the privacy policy';

  @override
  String get privacyPolicyOpenFailed => 'Could not open the privacy policy.';

  @override
  String get privacySupportTitle => 'Help and support';

  @override
  String get privacySupportOpenFailed =>
      'Could not open support. Contact support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Delete online identity and data?';

  @override
  String get privacyDeleteConfirmBody =>
      'This immediately ends access to this identity’s cloud matches for both players and requests deletion of the identity and shared online match logs within 30 days. Google may take up to 180 days after account deletion to remove Authentication data from its live and backup systems. Local History and practice remain on this device. Previously sent optional diagnostics are separate; contact privacy@freevia.org about those. This request cannot be undone.';

  @override
  String get privacyRequestDeletion => 'Request deletion';

  @override
  String get privacyDeleteSectionTitle => 'Delete online data';

  @override
  String get privacyDeleteInstructions =>
      'Use this device’s saved sign-in to verify ownership. A player identifier or invite code alone does not prove ownership. Local-only players do not need an online account.';

  @override
  String get privacySendingRequest => 'Sending request…';

  @override
  String get privacyDeleteAction => 'Delete online identity and data';

  @override
  String get privacyDeleteRequested =>
      'Deletion requested. This online identity is signed out. Its cloud data will be deleted within 30 days. Starting online play again creates a new identity. Google’s Authentication data removal can take up to 180 days. Contact privacy@freevia.org for help.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Deletion requested. Its cloud data will be deleted within 30 days. The device could not clear the saved sign-in, but the online identity is blocked from further match access. Google’s Authentication data removal can take up to 180 days. Contact privacy@freevia.org for help.';

  @override
  String get privacyDeleteNoIdentity =>
      'No usable online identity is saved on this device. No new account was created. If you previously used online play, contact privacy@freevia.org for help; hosted matches expire after 30 days.';

  @override
  String get privacyDeleteRequestFailed =>
      'Could not confirm the deletion request. Check your connection and retry, or contact privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Share usage and crash diagnostics?';

  @override
  String get privacyConsentBody =>
      'This sends usage events, app/device information, crash reports and performance measurements to Google Firebase. Sharing is optional. Games and tutoring work with it off, and you can turn it off again in Settings.';

  @override
  String get privacyKeepOff => 'Keep off';

  @override
  String get privacyShareDiagnostics => 'Share diagnostics';

  @override
  String get privacySaveFailed =>
      'Could not save the privacy choice. Please try again.';

  @override
  String get privacySettingsSubtitle =>
      'What stays on your device and what is shared';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Share usage and crash diagnostics';

  @override
  String get privacyDiagnosticsSettingSubtitle => 'Optional · off by default';

  @override
  String get lanScanToJoin => 'Scan to join';

  @override
  String get lanScanHostCode => 'Scan the host’s code';

  @override
  String get lanEnterAddressInstead => 'Enter the address instead';

  @override
  String get lanQrAccessibilityLabel => 'QR code to join this game';

  @override
  String get lanJoinInstruction =>
      'On the other device, open Play Nearby, choose Join, then scan this QR code.';

  @override
  String get lanTorch => 'Torch';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy cannot use the camera. Allow camera access in device settings, or enter the address shown on the other device manually.';

  @override
  String get lanCameraUnsupported =>
      'This device cannot scan QR codes. Enter the address shown on the other device manually.';

  @override
  String get lanCameraStartFailed =>
      'The camera could not be started. Enter the address shown on the other device manually.';

  @override
  String get lanPointCameraAtQr =>
      'Point the camera at the QR code on the other device.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Physical-board play is not available in this version. On-screen games, tutoring and practice are available from Home.';

  @override
  String get homePlayWithBuddy => 'Play with Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammon board. $status';
  }

  @override
  String get boardWhiteToRoll => 'White to roll.';

  @override
  String get boardBlackToRoll => 'Black to roll.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'White to move, roll $die1 and $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Black to move, roll $die1 and $die2.';
  }

  @override
  String get boardDoubleOffered => 'A double is offered.';

  @override
  String get boardResignationOffered => 'A resignation is offered.';

  @override
  String get boardGameOver => 'The game is over.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Bug]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idea]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Replace this with a short description of what happened.';

  @override
  String get feedbackBugReproduction =>
      'Replace this with the steps that led to the problem.';

  @override
  String get feedbackBugExpected =>
      'Replace this with what you expected to happen.';

  @override
  String get feedbackIdeaNeed =>
      'Replace this with what you wanted to do or learn.';

  @override
  String get feedbackIdeaSuggestion =>
      'Replace this with the change you would find helpful.';

  @override
  String get feedbackExcerptTruncated =>
      '(truncated — use Copy to clipboard on the Diagnostics screen for the full log)';

  @override
  String get boardWhiteToMoveNoRoll => 'White to move.';

  @override
  String get boardBlackToMoveNoRoll => 'Black to move.';

  @override
  String get feedbackFieldVersion => 'App version';

  @override
  String get feedbackFieldPlatform => 'Platform';

  @override
  String get feedbackFieldSummary => 'What happened';

  @override
  String get feedbackFieldReproduction => 'Steps to reproduce';

  @override
  String get feedbackFieldExpected => 'Expected result';

  @override
  String get feedbackFieldNeed => 'What you wanted to do';

  @override
  String get feedbackFieldIdea => 'Suggested change';

  @override
  String get buddySetupTitle => 'Play with Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy plays';

  @override
  String get buddySetupSeatLabel => 'Your seat';

  @override
  String get buddySetupSeatNear => 'By the phone';

  @override
  String get buddySetupSeatFar => 'Opposite';

  @override
  String get buddySetupSeatHelp =>
      'Which side of the board you are on. It is how Buddy numbers the points, and how it tells your opening die from its own.';

  @override
  String get buddySetupVoiceLabel => 'How Buddy talks';

  @override
  String get buddySetupVoiceTerse => 'Terse';

  @override
  String get buddySetupVoiceFriendly => 'Friendly';

  @override
  String get buddySetupVoiceTerseHelp =>
      '“13/8, 24/22” — notation, the way two players at a board actually talk.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '“Move one checker from 13 to 8, and one from 24 to 22.”';

  @override
  String get buddySetupTutorHelp =>
      'Tutor commentary and move explanations follow your saved Tutor preferences in Settings. Buddy gives occasional feedback after your plays; typed dice and manual moves work the same way.';

  @override
  String get buddySetupCalibrate => 'Calibrate the board';

  @override
  String get buddyFixAim => 'Fix the aim';

  @override
  String get buddyWaitingForOpening =>
      'Buddy is waiting for the throw that starts the match.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy has lost the board. Fix the aim and the match carries on where it stopped.';

  @override
  String get buddyPromptWaitingPicture =>
      'Waiting for a picture Buddy can read. Nothing is lost.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy cannot find the dice. Type the roll instead.';

  @override
  String get buddyPromptPlay =>
      'Make your play on the board. Tap it out here if Buddy does not see it.';

  @override
  String get buddyPromptWhichPlay => 'Which play was it?';

  @override
  String get buddyPromptCube => 'Buddy doubles. Take or drop?';

  @override
  String get buddyPromptMakeMove =>
      'Make Buddy’s move on the board, then Buddy will carry on.';

  @override
  String get buddyPromptThinking => 'Buddy is thinking.';

  @override
  String get buddyPromptWaitingCalibration => 'Waiting for a calibration.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy still cannot see its move. The board below is the position it is holding.';

  @override
  String get buddyPromptNotLegal => 'That isn’t a legal play.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'That isn’t a legal play. $reason';
  }

  @override
  String get buddyThrowOpening => 'Throw the opening dice — one die each.';

  @override
  String get buddyThrowUser => 'Throw your dice.';

  @override
  String get buddyThrowBuddy => 'Throw Buddy’s dice.';

  @override
  String get buddyMatchOver => 'The match is over.';

  @override
  String get buddyYouWin => 'You win the match.';

  @override
  String get buddyBuddyWins => 'Buddy wins the match.';

  @override
  String get buddyDoubleNoGame =>
      'There is no game to double in yet — the opening throw comes first.';

  @override
  String get buddyDoubleBeforeRoll =>
      'You can only double before rolling, on your turn.';

  @override
  String get buddyDoubleCrawford =>
      'No doubling in the Crawford game — this single game decides the match.';

  @override
  String get buddyDoubleNotOwner =>
      'Only the cube owner can double, and the other side owns it right now.';

  @override
  String get buddyDoubleUnavailable => 'Doubling is not available right now.';

  @override
  String get buddyLookingAtBoard => 'Buddy is looking at the board.';

  @override
  String get buddyCameraPlayFallback =>
      'You can still play the match: type each roll on the dice pad and tap your plays out on the board below.';

  @override
  String get buddySkipCheck => 'Skip this check';

  @override
  String get buddyFixedIt => 'I’ve fixed it';

  @override
  String get buddyDrop => 'Drop';

  @override
  String get buddyTake => 'Take';

  @override
  String get buddyDone => 'Done';

  @override
  String get buddyTranscriptLabel => 'What Buddy said';

  @override
  String get buddyUndo => 'Undo';

  @override
  String get buddyConfirm => 'Confirm';

  @override
  String get buddyDice => 'Dice';

  @override
  String get buddyDouble => 'Double';

  @override
  String get buddyDicePadTitle => 'What did you throw?';

  @override
  String get buddyEnterRoll => 'Enter roll';

  @override
  String get buddyContextBeforeGame => 'Play with Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'You $you–$buddy Buddy · to $length · Game $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'The camera could not be started. Check permissions and try again.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy does not have permission to use the camera. Allow camera access in your device settings and try again.';

  @override
  String get buddyCalibrationTitle => 'Show Buddy the board';

  @override
  String get buddyCalibrationCornersFold =>
      'Drag the four outer handles onto the corners of the felt — not the wooden rim — and the four small ones onto the seams where the hinge meets the far and near edges.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Drag each handle onto a corner of the felt — the playing surface, not the wooden rim around it.';

  @override
  String get buddyCalibrationCheckLines =>
      'Then check the twelve lines down each half: every one should run along a point of your board. A line that misses its point is a handle that needs nudging.';

  @override
  String get buddyCalibrationSeatQuestion => 'Which half is your home board?';

  @override
  String get buddyCalibrationSeatHelp =>
      'The half nearest the bottom of the picture. This is what fixes the point numbers, so the lines above move with it.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Hold the phone still. Buddy is waiting for the picture to settle before it learns this board.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Is this your board?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy is looking at the board it just learned.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'The men drawn over the picture are what Buddy thinks is on the board. If any of them are in the wrong place, start over — it costs seconds now and a game later.';

  @override
  String get buddyCalibrationNext => 'Next';

  @override
  String get buddyCalibrationBack => 'Back';

  @override
  String get buddyCalibrationCapture => 'Capture';

  @override
  String get buddyCalibrationStartOver => 'Start over';

  @override
  String get buddyCalibrationLooksRight => 'Looks right';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Those four handles do not outline a board — one of them has crossed another. Drag them back to the corners of the felt.';

  @override
  String get buddyCalibrationPrepTitle => 'Three things first';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Take the dice off the board.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy learns the bare board now. A die left on the felt is learned as part of it, and then Buddy can never see the dice again this session.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Set the men up for the start of a game.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Thirty checkers in known places is how Buddy learns this board’s two colours without being told what they are.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Fit the whole playing field in the picture.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Then leave the phone where it is. If it moves, Buddy will say so and you can nudge the corners back.';

  @override
  String get buddyCalibrationBoardKind => 'What kind of board is it?';

  @override
  String get buddyCalibrationFlatBoard => 'Flat board';

  @override
  String get buddyCalibrationFoldingBoard => 'Folding case';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'A folding board needs four extra handles on the hinge seams.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy Mode watches a real board, so it cannot start without the camera. Everything else in the app is unaffected.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Hinge seam $number of 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Board corner $number of 4';
  }

  @override
  String get buddyNudgeLeft => 'Nudge left';

  @override
  String get buddyNudgeRight => 'Nudge right';

  @override
  String get buddyNudgeUp => 'Nudge up';

  @override
  String get buddyNudgeDown => 'Nudge down';

  @override
  String get buddyCalibrationProblemCorners =>
      'Those four corners do not outline a board. Drag each handle onto a corner of the playing field and try again.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Those eight points do not outline a folding board. Put four on the playing-field corners and four on the hinge seams, then try again.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'I cannot make out the board itself — every part of it is covered, or lost in shadow or glare. Clear the board, add some light, and try again.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'I cannot make out $region — something may be resting on it, or that corner of the board may be too dark to read. Clear it, or add some light, and try again.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'The two sets of checkers look too much alike from here. More light, or an angle with less glare on the board, usually fixes it.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'The checkers are not in the starting position — point $number is holding the wrong colour. Set the board up for the start of a game, then calibrate again.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'There is so much light on the board that its colours are washing into each other. Dim the light, or move the phone so the lamp is not shining straight back at it.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'I can read this board, but not as a game about to start. Set the men up for the start of a game, then calibrate again.';

  @override
  String get buddyCalibrationProblemStacks =>
      'I can read this board, but I cannot make out how far one checker sits behind another from here — so I would get the numbers wrong. A little more light on the near points, or a slightly higher camera angle, usually fixes it.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'I cannot see the whole board. Move the phone back, or drag the corners onto the playing field.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'I cannot see the whole board any more — $region is outside the picture. Line the camera up again, or re-check the corners.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'That looks like the starting position.';

  @override
  String get buddyConfirmNoCheckers =>
      'I cannot see a checker anywhere the game starts. Set the men up for the start of a game and try again.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'The board is not set up for the start of a game: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region looks empty, but the game starts with $side there';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region has $side on it, but the game starts with it empty';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region has $observed on it, where the game starts with $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Hold still a moment — I lose the board while the phone is moving.';

  @override
  String get buddyReadabilityWrongFrame =>
      'The picture I am being given is not the one this board was set up on, so I cannot line anything up in it. Set the board up again from here.';

  @override
  String get buddyReadabilityBlur =>
      'The picture is too soft to read the board from. Give the camera a moment to focus.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'The board is not where it was when I learned it. Line the corners up again and I will pick the game straight back up.';

  @override
  String get buddyReadabilityOccluded =>
      'Something is covering part of the board. I will carry on as soon as it is clear.';

  @override
  String get buddyReadabilityClear => 'I can see the board.';

  @override
  String get buddyReadabilityColorChanged =>
      'The light on the board has changed colour, so the board no longer looks like the one I learned. Line the corners up again under this light and I will pick the game straight back up.';

  @override
  String get buddyReadabilityTooDark =>
      'It is too dark to read the board. A little more light and I will carry on where we were.';

  @override
  String get buddyReadabilityTooBright =>
      'There is so much light on the board that its colours are running into each other. Dim it, or move the phone so the lamp is not shining straight back at it.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy still cannot see its move — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nYou can still play the match: type each roll on the dice pad and tap your plays out on the board below.';
  }

  @override
  String get buddyCameraGenericError =>
      'The camera could not be started. Check permissions and try again.';

  @override
  String buddyRegionPoint(int number) {
    return 'the $number-point';
  }

  @override
  String get buddyRegionBar => 'the bar';

  @override
  String get buddyRegionWhiteTray => 'White’s bear-off tray';

  @override
  String get buddyRegionBlackTray => 'Black’s bear-off tray';

  @override
  String get buddyRegionDiceZone => 'the middle of the board';

  @override
  String get buddyCalibrationProblemVisible =>
      'I cannot see the whole board. Move the phone back, or drag the corners onto the playing field.';

  @override
  String buddyConfirmMore(int number) {
    return ' (and $number more)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'One die each. Which face is whose is what decides who starts.';

  @override
  String get buddyDiceOpeningFirst => 'White’s die';

  @override
  String get buddyDiceOpeningSecond => 'Black’s die';

  @override
  String get buddyDiceRegularCaption =>
      'The two faces on the table, in either order.';

  @override
  String get buddyDiceRegularFirst => 'One die';

  @override
  String get buddyDiceRegularSecond => 'The other';

  @override
  String get evaluationEngine => 'Evaluation engine';

  @override
  String get parallelEngineAnalysis => 'Analyse with both engines';

  @override
  String get parallelEngineExplanation =>
      'Compare separate wildbg and GNUbg advice in the tutor.';

  @override
  String get engineComparison => 'Engine comparison';

  @override
  String get engineWinChance => 'Win chance';
}
