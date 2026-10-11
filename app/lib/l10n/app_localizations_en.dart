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
}
