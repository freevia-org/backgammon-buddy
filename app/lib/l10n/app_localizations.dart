import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_bg.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_el.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_et.dart';
import 'app_localizations_fi.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_ga.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_hu.dart';
import 'app_localizations_it.dart';
import 'app_localizations_lt.dart';
import 'app_localizations_lv.dart';
import 'app_localizations_mt.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sk.dart';
import 'app_localizations_sl.dart';
import 'app_localizations_sr.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('bg'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('el'),
    Locale('en'),
    Locale('es'),
    Locale('et'),
    Locale('fi'),
    Locale('fr'),
    Locale('ga'),
    Locale('hr'),
    Locale('hu'),
    Locale('it'),
    Locale('lt'),
    Locale('lv'),
    Locale('mt'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sk'),
    Locale('sl'),
    Locale('sr'),
    Locale('sv'),
    Locale('tr'),
    Locale('uk'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy'**
  String get appTitle;

  /// No description provided for @homeTagline.
  ///
  /// In en, this message translates to:
  /// **'Improve your game with a tutor'**
  String get homeTagline;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @playVsComputer.
  ///
  /// In en, this message translates to:
  /// **'Play vs Computer'**
  String get playVsComputer;

  /// No description provided for @twoPlayers.
  ///
  /// In en, this message translates to:
  /// **'Two Players'**
  String get twoPlayers;

  /// No description provided for @playNearby.
  ///
  /// In en, this message translates to:
  /// **'Play Nearby'**
  String get playNearby;

  /// No description provided for @playOnline.
  ///
  /// In en, this message translates to:
  /// **'Play Online'**
  String get playOnline;

  /// No description provided for @learningPractice.
  ///
  /// In en, this message translates to:
  /// **'Learning & practice'**
  String get learningPractice;

  /// No description provided for @gamesArchive.
  ///
  /// In en, this message translates to:
  /// **'Games Archive'**
  String get gamesArchive;

  /// No description provided for @followSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow device language'**
  String get followSystem;

  /// No description provided for @white.
  ///
  /// In en, this message translates to:
  /// **'White'**
  String get white;

  /// No description provided for @black.
  ///
  /// In en, this message translates to:
  /// **'Black'**
  String get black;

  /// No description provided for @random.
  ///
  /// In en, this message translates to:
  /// **'Random'**
  String get random;

  /// No description provided for @startMatch.
  ///
  /// In en, this message translates to:
  /// **'Start match'**
  String get startMatch;

  /// No description provided for @tutor.
  ///
  /// In en, this message translates to:
  /// **'Tutor'**
  String get tutor;

  /// No description provided for @noMovesPass.
  ///
  /// In en, this message translates to:
  /// **'No moves — pass'**
  String get noMovesPass;

  /// No description provided for @undo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get undo;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @roll.
  ///
  /// In en, this message translates to:
  /// **'Roll'**
  String get roll;

  /// No description provided for @hint.
  ///
  /// In en, this message translates to:
  /// **'Hint'**
  String get hint;

  /// No description provided for @tutoringStyle.
  ///
  /// In en, this message translates to:
  /// **'Tutoring style'**
  String get tutoringStyle;

  /// No description provided for @tutorStyleCoach.
  ///
  /// In en, this message translates to:
  /// **'Coach'**
  String get tutorStyleCoach;

  /// No description provided for @tutorStyleHintsOnly.
  ///
  /// In en, this message translates to:
  /// **'Hints only'**
  String get tutorStyleHintsOnly;

  /// No description provided for @tutorStyleTryFirst.
  ///
  /// In en, this message translates to:
  /// **'Try first'**
  String get tutorStyleTryFirst;

  /// No description provided for @tutorCoachDescription.
  ///
  /// In en, this message translates to:
  /// **'Position prompts, move feedback, hints, and cube advice.'**
  String get tutorCoachDescription;

  /// No description provided for @tutorHintsDescription.
  ///
  /// In en, this message translates to:
  /// **'Ranked plays on request. Live position prompts and automatic move feedback stay off.'**
  String get tutorHintsDescription;

  /// No description provided for @tutorTryFirstDescription.
  ///
  /// In en, this message translates to:
  /// **'Stage your current play before seeing ranked hints or its grade; board guidance stays on.'**
  String get tutorTryFirstDescription;

  /// No description provided for @tutorCustomDescription.
  ///
  /// In en, this message translates to:
  /// **'Custom mix. Adjust any of the options below.'**
  String get tutorCustomDescription;

  /// No description provided for @tutorBestMoveHints.
  ///
  /// In en, this message translates to:
  /// **'Best-move hints'**
  String get tutorBestMoveHints;

  /// No description provided for @tutorRevealRankedPlays.
  ///
  /// In en, this message translates to:
  /// **'Reveal ranked plays while you decide'**
  String get tutorRevealRankedPlays;

  /// No description provided for @tutorMoveExplanations.
  ///
  /// In en, this message translates to:
  /// **'Move explanations'**
  String get tutorMoveExplanations;

  /// No description provided for @tutorCompareEstimates.
  ///
  /// In en, this message translates to:
  /// **'Compare estimates and changes on the board'**
  String get tutorCompareEstimates;

  /// No description provided for @tutorGameCommentary.
  ///
  /// In en, this message translates to:
  /// **'Game commentary'**
  String get tutorGameCommentary;

  /// No description provided for @tutorPositionPrompts.
  ///
  /// In en, this message translates to:
  /// **'Position prompts and feedback after each play'**
  String get tutorPositionPrompts;

  /// No description provided for @tutorCubeAdvice.
  ///
  /// In en, this message translates to:
  /// **'Cube advice'**
  String get tutorCubeAdvice;

  /// No description provided for @tutorMatchAwareCubeAdvice.
  ///
  /// In en, this message translates to:
  /// **'Match-aware double, take, and pass suggestions'**
  String get tutorMatchAwareCubeAdvice;

  /// No description provided for @tutorTryMoveFirst.
  ///
  /// In en, this message translates to:
  /// **'Try a move first'**
  String get tutorTryMoveFirst;

  /// No description provided for @tutorStageBeforeHints.
  ///
  /// In en, this message translates to:
  /// **'Stage your current play before revealing hints or its grade'**
  String get tutorStageBeforeHints;

  /// No description provided for @tutorStaticEstimateNote.
  ///
  /// In en, this message translates to:
  /// **'Quick static estimate (0-ply, no rollouts); notes describe board changes and possible replies, not a promise of what happens next.'**
  String get tutorStaticEstimateNote;

  /// No description provided for @tutorWhatToWatchNext.
  ///
  /// In en, this message translates to:
  /// **'What to watch next'**
  String get tutorWhatToWatchNext;

  /// No description provided for @tutorMoreBoardDetails.
  ///
  /// In en, this message translates to:
  /// **'More board details'**
  String get tutorMoreBoardDetails;

  /// No description provided for @tutorEstimatesAndHowTheyWork.
  ///
  /// In en, this message translates to:
  /// **'Estimates and how they work'**
  String get tutorEstimatesAndHowTheyWork;

  /// No description provided for @tutorEstimateLimitations.
  ///
  /// In en, this message translates to:
  /// **'Depth: static neural evaluation after each legal play (0-ply), without rollouts or a search of future replies. Score-aware MWC weights those outcome estimates by the match score and current cube; it does not model future cube actions. Cubeless equity is expected points at cube 1 when score is unavailable. Board observations describe the play, not the neural engine’s internal reasoning. Near ties are not a claim of certainty; there is no calibrated confidence interval.'**
  String get tutorEstimateLimitations;

  /// No description provided for @tutorPointNumberNote.
  ///
  /// In en, this message translates to:
  /// **'Point numbers in teaching notes are counted from the mover’s home board.'**
  String get tutorPointNumberNote;

  /// No description provided for @tutorHittingRollNote.
  ///
  /// In en, this message translates to:
  /// **'Hitting-roll counts include all 36 ordered dice outcomes and legal direct or indirect hits; they are opportunities, not a prediction of the opponent’s choice.'**
  String get tutorHittingRollNote;

  /// No description provided for @tutorNoEvaluatedAlternatives.
  ///
  /// In en, this message translates to:
  /// **'No evaluated alternatives are available for this play.'**
  String get tutorNoEvaluatedAlternatives;

  /// No description provided for @tutorForcedPassNoDecision.
  ///
  /// In en, this message translates to:
  /// **'A forced pass does not involve a checker-play decision.'**
  String get tutorForcedPassNoDecision;

  /// No description provided for @settingsReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get settingsReset;

  /// No description provided for @settingsAppLanguage.
  ///
  /// In en, this message translates to:
  /// **'App language'**
  String get settingsAppLanguage;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsAnimationSpeed.
  ///
  /// In en, this message translates to:
  /// **'Animation speed'**
  String get settingsAnimationSpeed;

  /// No description provided for @settingsAnimationNone.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get settingsAnimationNone;

  /// No description provided for @settingsAnimationNormal.
  ///
  /// In en, this message translates to:
  /// **'Normal'**
  String get settingsAnimationNormal;

  /// No description provided for @settingsAnimationFast.
  ///
  /// In en, this message translates to:
  /// **'Fast'**
  String get settingsAnimationFast;

  /// No description provided for @settingsDiceRollAnimation.
  ///
  /// In en, this message translates to:
  /// **'Dice roll animation'**
  String get settingsDiceRollAnimation;

  /// No description provided for @settingsDiceRollAnimationHelp.
  ///
  /// In en, this message translates to:
  /// **'Tumble the dice before each roll'**
  String get settingsDiceRollAnimationHelp;

  /// No description provided for @settingsDefaultMatchLength.
  ///
  /// In en, this message translates to:
  /// **'Default match length'**
  String get settingsDefaultMatchLength;

  /// No description provided for @settingsDefaultDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Default difficulty'**
  String get settingsDefaultDifficulty;

  /// No description provided for @settingsDifficultyEasy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get settingsDifficultyEasy;

  /// No description provided for @settingsDifficultyMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get settingsDifficultyMedium;

  /// No description provided for @settingsDifficultyHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get settingsDifficultyHard;

  /// No description provided for @settingsDifficultyExpert.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get settingsDifficultyExpert;

  /// No description provided for @settingsTutorModeDefault.
  ///
  /// In en, this message translates to:
  /// **'Tutor mode default'**
  String get settingsTutorModeDefault;

  /// No description provided for @settingsTutorAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get settingsTutorAuto;

  /// No description provided for @settingsTutorOn.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get settingsTutorOn;

  /// No description provided for @settingsTutorOff.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get settingsTutorOff;

  /// No description provided for @settingsTutorModeHelp.
  ///
  /// In en, this message translates to:
  /// **'Auto enables the tutor at every computer difficulty. On and Off set the starting choice for local matches. Nearby and online matches are unassisted; their saved games can be reviewed afterwards. Teaching preferences below are saved on this device.'**
  String get settingsTutorModeHelp;

  /// No description provided for @settingsTutorPreferences.
  ///
  /// In en, this message translates to:
  /// **'Tutor preferences'**
  String get settingsTutorPreferences;

  /// No description provided for @settingsTutorPreferencesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Saved defaults for future matches'**
  String get settingsTutorPreferencesSubtitle;

  /// No description provided for @settingsTutorSaveError.
  ///
  /// In en, this message translates to:
  /// **'Could not save tutor preferences.'**
  String get settingsTutorSaveError;

  /// No description provided for @settingsGameplay.
  ///
  /// In en, this message translates to:
  /// **'Gameplay'**
  String get settingsGameplay;

  /// No description provided for @settingsMoveHighlights.
  ///
  /// In en, this message translates to:
  /// **'Move highlights'**
  String get settingsMoveHighlights;

  /// No description provided for @settingsMoveHighlightsHelp.
  ///
  /// In en, this message translates to:
  /// **'Ring selectable checkers and light up destinations'**
  String get settingsMoveHighlightsHelp;

  /// No description provided for @settingsDragToMove.
  ///
  /// In en, this message translates to:
  /// **'Drag to move'**
  String get settingsDragToMove;

  /// No description provided for @settingsDragToMoveHelp.
  ///
  /// In en, this message translates to:
  /// **'Drag a checker to its destination (taps always work)'**
  String get settingsDragToMoveHelp;

  /// No description provided for @settingsCombinedMoves.
  ///
  /// In en, this message translates to:
  /// **'Combined moves'**
  String get settingsCombinedMoves;

  /// No description provided for @settingsCombinedMovesHelp.
  ///
  /// In en, this message translates to:
  /// **'One tap runs a checker through both dice'**
  String get settingsCombinedMovesHelp;

  /// No description provided for @settingsRotateBoard.
  ///
  /// In en, this message translates to:
  /// **'Rotate board between turns'**
  String get settingsRotateBoard;

  /// No description provided for @settingsRotateBoardHelp.
  ///
  /// In en, this message translates to:
  /// **'Hot-seat: flip the view for the active player'**
  String get settingsRotateBoardHelp;

  /// No description provided for @settingsPassDevice.
  ///
  /// In en, this message translates to:
  /// **'Pass-device screen'**
  String get settingsPassDevice;

  /// No description provided for @settingsPassDeviceHelp.
  ///
  /// In en, this message translates to:
  /// **'Cover the board between hot-seat turns'**
  String get settingsPassDeviceHelp;

  /// No description provided for @settingsShowScore.
  ///
  /// In en, this message translates to:
  /// **'Show score'**
  String get settingsShowScore;

  /// No description provided for @settingsShowScoreHelp.
  ///
  /// In en, this message translates to:
  /// **'Display the running match score in the header'**
  String get settingsShowScoreHelp;

  /// No description provided for @settingsBuddyMode.
  ///
  /// In en, this message translates to:
  /// **'Buddy Mode'**
  String get settingsBuddyMode;

  /// No description provided for @settingsBuddyTerse.
  ///
  /// In en, this message translates to:
  /// **'Terse'**
  String get settingsBuddyTerse;

  /// No description provided for @settingsBuddyFriendly.
  ///
  /// In en, this message translates to:
  /// **'Friendly'**
  String get settingsBuddyFriendly;

  /// No description provided for @settingsBuddyTerseHelp.
  ///
  /// In en, this message translates to:
  /// **'How Buddy words a play out loud: \"13/8, 24/22\" — notation, the way two players at a board actually talk.'**
  String get settingsBuddyTerseHelp;

  /// No description provided for @settingsBuddyFriendlyHelp.
  ///
  /// In en, this message translates to:
  /// **'How Buddy words a play out loud: \"Move one checker from 13 to 8, and one from 24 to 22.\"'**
  String get settingsBuddyFriendlyHelp;

  /// No description provided for @settingsListenForDice.
  ///
  /// In en, this message translates to:
  /// **'Listen for the dice'**
  String get settingsListenForDice;

  /// No description provided for @settingsListenForDiceHelp.
  ///
  /// In en, this message translates to:
  /// **'Buddy looks at the board sooner when it hears a throw. Off changes nothing else.'**
  String get settingsListenForDiceHelp;

  /// No description provided for @settingsDiagnostics.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get settingsDiagnostics;

  /// No description provided for @settingsErrorLog.
  ///
  /// In en, this message translates to:
  /// **'Error log'**
  String get settingsErrorLog;

  /// No description provided for @settingsErrorLogHelp.
  ///
  /// In en, this message translates to:
  /// **'Recent errors, ready to copy into a bug report'**
  String get settingsErrorLogHelp;

  /// No description provided for @settingsReportBug.
  ///
  /// In en, this message translates to:
  /// **'Report a bug'**
  String get settingsReportBug;

  /// No description provided for @settingsReportBugHelp.
  ///
  /// In en, this message translates to:
  /// **'Open a guided report on GitHub'**
  String get settingsReportBugHelp;

  /// No description provided for @settingsSuggestIdea.
  ///
  /// In en, this message translates to:
  /// **'Suggest an idea'**
  String get settingsSuggestIdea;

  /// No description provided for @settingsSuggestIdeaHelp.
  ///
  /// In en, this message translates to:
  /// **'Help us improve the tutor and game'**
  String get settingsSuggestIdeaHelp;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @settingsOpenSourceLicenses.
  ///
  /// In en, this message translates to:
  /// **'Open-source licenses'**
  String get settingsOpenSourceLicenses;

  /// No description provided for @settingsAppVersion.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy {version}'**
  String settingsAppVersion(Object version);

  /// No description provided for @tutorPhraseGameFinished.
  ///
  /// In en, this message translates to:
  /// **'Game finished.'**
  String get tutorPhraseGameFinished;

  /// No description provided for @tutorPhraseReviewFinishedGame.
  ///
  /// In en, this message translates to:
  /// **'Review the moves to find a decision to practise.'**
  String get tutorPhraseReviewFinishedGame;

  /// No description provided for @tutorPhraseCubeOffered.
  ///
  /// In en, this message translates to:
  /// **'The cube has been offered.'**
  String get tutorPhraseCubeOffered;

  /// No description provided for @tutorPhraseCubeDecisionPrompt.
  ///
  /// In en, this message translates to:
  /// **'Decide whether to take or pass before planning a checker play.'**
  String get tutorPhraseCubeDecisionPrompt;

  /// No description provided for @tutorPhraseCubeScoreContext.
  ///
  /// In en, this message translates to:
  /// **'The match score changes what the extra stake is worth.'**
  String get tutorPhraseCubeScoreContext;

  /// No description provided for @tutorPhraseResignationOffered.
  ///
  /// In en, this message translates to:
  /// **'A resignation has been offered.'**
  String get tutorPhraseResignationOffered;

  /// No description provided for @tutorPhraseResignationDecisionPrompt.
  ///
  /// In en, this message translates to:
  /// **'Compare the offered points with the position before accepting or continuing.'**
  String get tutorPhraseResignationDecisionPrompt;

  /// No description provided for @tutorPhraseNoLegalPlay.
  ///
  /// In en, this message translates to:
  /// **'No legal play with this roll.'**
  String get tutorPhraseNoLegalPlay;

  /// No description provided for @tutorPhraseForcedPassPrompt.
  ///
  /// In en, this message translates to:
  /// **'A forced pass is not a mistake; wait for the next roll.'**
  String get tutorPhraseForcedPassPrompt;

  /// No description provided for @tutorPhraseOnlyOneResult.
  ///
  /// In en, this message translates to:
  /// **'Only one legal resulting position.'**
  String get tutorPhraseOnlyOneResult;

  /// No description provided for @tutorPhraseForcedTurnPrompt.
  ///
  /// In en, this message translates to:
  /// **'Play the forced turn. There is no choice to grade on this roll.'**
  String get tutorPhraseForcedTurnPrompt;

  /// No description provided for @tutorPhrasePipCountsLevel.
  ///
  /// In en, this message translates to:
  /// **'The pip counts are level.'**
  String get tutorPhrasePipCountsLevel;

  /// No description provided for @tutorPhrasePipCountsAhead.
  ///
  /// In en, this message translates to:
  /// **'You are {count} pips ahead.'**
  String tutorPhrasePipCountsAhead(int count);

  /// No description provided for @tutorPhrasePipCountsBehind.
  ///
  /// In en, this message translates to:
  /// **'You are {count} pips behind.'**
  String tutorPhrasePipCountsBehind(int count);

  /// No description provided for @tutorPhrasePlayerHasCheckersOnBar.
  ///
  /// In en, this message translates to:
  /// **'{count} on the bar: re-entry comes first.'**
  String tutorPhrasePlayerHasCheckersOnBar(int count);

  /// No description provided for @tutorPhraseEnterBeforeMoving.
  ///
  /// In en, this message translates to:
  /// **'Enter before moving any other checker; then look for a safe landing.'**
  String get tutorPhraseEnterBeforeMoving;

  /// No description provided for @tutorPhraseOpponentHomePoints.
  ///
  /// In en, this message translates to:
  /// **'The opponent has {count} closed home-board points.'**
  String tutorPhraseOpponentHomePoints(int count);

  /// No description provided for @tutorPhraseBearOffRace.
  ///
  /// In en, this message translates to:
  /// **'Bear-off race.'**
  String get tutorPhraseBearOffRace;

  /// No description provided for @tutorPhrasePureRace.
  ///
  /// In en, this message translates to:
  /// **'A pure race.'**
  String get tutorPhrasePureRace;

  /// No description provided for @tutorPhraseBearOffSpread.
  ///
  /// In en, this message translates to:
  /// **'Remove checkers while leaving a useful spread for the next roll.'**
  String get tutorPhraseBearOffSpread;

  /// No description provided for @tutorPhraseBringRearCheckersHome.
  ///
  /// In en, this message translates to:
  /// **'Bring the back checkers home without piling too many on one point.'**
  String get tutorPhraseBringRearCheckersHome;

  /// No description provided for @tutorPhraseArmiesHavePassed.
  ///
  /// In en, this message translates to:
  /// **'The armies have passed each other; no further hits are possible.'**
  String get tutorPhraseArmiesHavePassed;

  /// No description provided for @tutorPhraseContactStillMatters.
  ///
  /// In en, this message translates to:
  /// **'{part} Contact still matters.'**
  String tutorPhraseContactStillMatters(Object part);

  /// No description provided for @tutorPhraseOpponentHasCheckersOnBar.
  ///
  /// In en, this message translates to:
  /// **'The opponent has {count} on the bar.'**
  String tutorPhraseOpponentHasCheckersOnBar(int count);

  /// No description provided for @tutorPhraseKeepBoardClosed.
  ///
  /// In en, this message translates to:
  /// **'Keep the board closed while bringing the remaining checkers home.'**
  String get tutorPhraseKeepBoardClosed;

  /// No description provided for @tutorPhraseBuildOrPreserveHomeBoard.
  ///
  /// In en, this message translates to:
  /// **'Build or preserve your home board while the opponent tries to enter.'**
  String get tutorPhraseBuildOrPreserveHomeBoard;

  /// No description provided for @tutorPhraseHomePointsCloseEntries.
  ///
  /// In en, this message translates to:
  /// **'You hold {count} home-board points; each closes an entry number.'**
  String tutorPhraseHomePointsCloseEntries(int count);

  /// No description provided for @tutorPhrasePrimeContact.
  ///
  /// In en, this message translates to:
  /// **'Contact with a {count}-point run.'**
  String tutorPhrasePrimeContact(int count);

  /// No description provided for @tutorPhraseExtendPrimeOrKeepSpares.
  ///
  /// In en, this message translates to:
  /// **'Compare extending the run with keeping spare checkers to maintain it.'**
  String get tutorPhraseExtendPrimeOrKeepSpares;

  /// No description provided for @tutorPhraseSpareCheckersCanMove.
  ///
  /// In en, this message translates to:
  /// **'{count} spares can move without immediately opening their point.'**
  String tutorPhraseSpareCheckersCanMove(int count);

  /// No description provided for @tutorPhraseAnchorContact.
  ///
  /// In en, this message translates to:
  /// **'Contact with an anchor on {points}.'**
  String tutorPhraseAnchorContact(Object points);

  /// No description provided for @tutorPhraseCompareAnchorProgressAhead.
  ///
  /// In en, this message translates to:
  /// **'Compare bringing the back checkers home with the safety of keeping your anchor.'**
  String get tutorPhraseCompareAnchorProgressAhead;

  /// No description provided for @tutorPhraseCompareAnchorProgressBehind.
  ///
  /// In en, this message translates to:
  /// **'Keep the safe foothold in mind while looking for a hit or improving your board.'**
  String get tutorPhraseCompareAnchorProgressBehind;

  /// No description provided for @tutorPhrasePreserveAnchorFoothold.
  ///
  /// In en, this message translates to:
  /// **'The anchor cannot be hit, but those checkers still have a long way home.'**
  String get tutorPhrasePreserveAnchorFoothold;

  /// No description provided for @tutorPhraseContactThreats.
  ///
  /// In en, this message translates to:
  /// **'Contact: both sides can still threaten hits.'**
  String get tutorPhraseContactThreats;

  /// No description provided for @tutorPhraseLookForPointsAndSafety.
  ///
  /// In en, this message translates to:
  /// **'Look for useful points, then compare the risk of leaving single checkers exposed.'**
  String get tutorPhraseLookForPointsAndSafety;

  /// No description provided for @tutorPhraseHomePointsAndBlots.
  ///
  /// In en, this message translates to:
  /// **'You hold {count} home-board points and leave {otherCount} blots.'**
  String tutorPhraseHomePointsAndBlots(int count, int otherCount);

  /// No description provided for @tutorPhraseChooseCheckerPrompt.
  ///
  /// In en, this message translates to:
  /// **'Choose a checker to start your play.'**
  String get tutorPhraseChooseCheckerPrompt;

  /// No description provided for @tutorPhraseLegalPlayPrompt.
  ///
  /// In en, this message translates to:
  /// **'Start a legal play to see commentary.'**
  String get tutorPhraseLegalPlayPrompt;

  /// No description provided for @tutorPhraseStagedHit.
  ///
  /// In en, this message translates to:
  /// **'You have hit {count} opposing {count, plural, one{checker} other{checkers}}.'**
  String tutorPhraseStagedHit(int count);

  /// No description provided for @tutorPhraseStagedEnter.
  ///
  /// In en, this message translates to:
  /// **'You have entered {count} from the bar.'**
  String tutorPhraseStagedEnter(int count);

  /// No description provided for @tutorPhraseStagedBearOff.
  ///
  /// In en, this message translates to:
  /// **'You have borne off {count} {count, plural, one{checker} other{checkers}}.'**
  String tutorPhraseStagedBearOff(int count);

  /// No description provided for @tutorPhraseStagedMakePoints.
  ///
  /// In en, this message translates to:
  /// **'You have made {points}.'**
  String tutorPhraseStagedMakePoints(Object points);

  /// No description provided for @tutorPhraseStagedBlot.
  ///
  /// In en, this message translates to:
  /// **'The checker on your {point}-point is a blot for now.'**
  String tutorPhraseStagedBlot(int point);

  /// No description provided for @tutorPhraseStagedSpare.
  ///
  /// In en, this message translates to:
  /// **'The spare on your {point}-point can move later without opening the point.'**
  String tutorPhraseStagedSpare(int point);

  /// No description provided for @tutorPhraseStagedPartialPrompt.
  ///
  /// In en, this message translates to:
  /// **'{part} Use the remaining playable dice before judging the whole play.'**
  String tutorPhraseStagedPartialPrompt(Object part);

  /// No description provided for @tutorPhraseStagedAllCheckersOff.
  ///
  /// In en, this message translates to:
  /// **'All 15 checkers are off: the game is won.'**
  String get tutorPhraseStagedAllCheckersOff;

  /// No description provided for @tutorPhraseStagedHitShortPlan.
  ///
  /// In en, this message translates to:
  /// **'The hit gains time while the opponent works to re-enter.'**
  String get tutorPhraseStagedHitShortPlan;

  /// No description provided for @tutorPhraseStagedEfficientBearOffPlan.
  ///
  /// In en, this message translates to:
  /// **'An efficient bear-off removes checkers and leaves useful numbers for the next roll.'**
  String get tutorPhraseStagedEfficientBearOffPlan;

  /// No description provided for @tutorPhraseStagedRaceHomePlan.
  ///
  /// In en, this message translates to:
  /// **'The race plan is to bring the rear checkers home with useful bear-off landing points.'**
  String get tutorPhraseStagedRaceHomePlan;

  /// No description provided for @tutorPhraseStagedBearOffContactPlan.
  ///
  /// In en, this message translates to:
  /// **'Bearing off makes progress, but the remaining contact still leaves a risk of hits.'**
  String get tutorPhraseStagedBearOffContactPlan;

  /// No description provided for @tutorPhraseStagedReentryPlan.
  ///
  /// In en, this message translates to:
  /// **'Re-entry gets the checker back in play; finding a safe landing comes next.'**
  String get tutorPhraseStagedReentryPlan;

  /// No description provided for @tutorPhraseStagedHomeBoardPlan.
  ///
  /// In en, this message translates to:
  /// **'The new home-board point takes away an entry number after a future hit.'**
  String get tutorPhraseStagedHomeBoardPlan;

  /// No description provided for @tutorPhraseStagedPrimePlan.
  ///
  /// In en, this message translates to:
  /// **'The longer run closes more landing points; spare checkers help keep it intact.'**
  String get tutorPhraseStagedPrimePlan;

  /// No description provided for @tutorPhraseStagedLeaveAnchorPlan.
  ///
  /// In en, this message translates to:
  /// **'Leaving the anchor gains ground but gives up a safe foothold.'**
  String get tutorPhraseStagedLeaveAnchorPlan;

  /// No description provided for @tutorPhraseStagedNewAnchorPlan.
  ///
  /// In en, this message translates to:
  /// **'The new anchor gives the back checkers a safe foothold.'**
  String get tutorPhraseStagedNewAnchorPlan;

  /// No description provided for @tutorPhraseStagedCoverBlotPlan.
  ///
  /// In en, this message translates to:
  /// **'Covering a blot removes a target for the opponent.'**
  String get tutorPhraseStagedCoverBlotPlan;

  /// No description provided for @tutorPhraseStagedSafetyTradeoffPlan.
  ///
  /// In en, this message translates to:
  /// **'The tradeoff is development versus safety: useful builders can also become targets.'**
  String get tutorPhraseStagedSafetyTradeoffPlan;

  /// No description provided for @tutorPhraseStagedCompletePrompt.
  ///
  /// In en, this message translates to:
  /// **'{part} The full play is staged; Confirm commits it.'**
  String tutorPhraseStagedCompletePrompt(Object part);

  /// No description provided for @tutorMoveForcedVerdict.
  ///
  /// In en, this message translates to:
  /// **'This roll leaves no checker-play choice; it is not graded as a decision.'**
  String get tutorMoveForcedVerdict;

  /// No description provided for @tutorMoveTopVerdict.
  ///
  /// In en, this message translates to:
  /// **'A top choice for this position.'**
  String get tutorMoveTopVerdict;

  /// No description provided for @tutorMoveAlternativeVerdict.
  ///
  /// In en, this message translates to:
  /// **'The engine prefers another play here.'**
  String get tutorMoveAlternativeVerdict;

  /// No description provided for @tutorMoveEstimateDifference.
  ///
  /// In en, this message translates to:
  /// **'Difference from the top play: {loss}.'**
  String tutorMoveEstimateDifference(Object loss);

  /// No description provided for @tutorMoveEstimateOutcomes.
  ///
  /// In en, this message translates to:
  /// **'After this play: {winPercent}% wins, {winGammonPercent}% gammon-or-better wins, {loseGammonPercent}% gammon-or-worse losses. These are estimates from the mover’s perspective.'**
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  );

  /// No description provided for @tutorMoveEstimateMatchChance.
  ///
  /// In en, this message translates to:
  /// **'Estimated match-winning chance: {percent}%.'**
  String tutorMoveEstimateMatchChance(Object percent);

  /// No description provided for @tutorMovePlanAllCheckersOff.
  ///
  /// In en, this message translates to:
  /// **'All 15 checkers are off: the game is won.'**
  String get tutorMovePlanAllCheckersOff;

  /// No description provided for @tutorMovePlanHit.
  ///
  /// In en, this message translates to:
  /// **'Use the hit to gain time while the opponent re-enters. {homeBoardAdvice}'**
  String tutorMovePlanHit(Object homeBoardAdvice);

  /// No description provided for @tutorMovePlanHitClosed.
  ///
  /// In en, this message translates to:
  /// **'Keep your closed home-board points to make entry harder.'**
  String get tutorMovePlanHitClosed;

  /// No description provided for @tutorMovePlanHitBuild.
  ///
  /// In en, this message translates to:
  /// **'Build more home-board points to make future hits harder to recover from.'**
  String get tutorMovePlanHitBuild;

  /// No description provided for @tutorMovePlanRaceBearOff.
  ///
  /// In en, this message translates to:
  /// **'Work toward an efficient bear-off: remove checkers while leaving useful numbers for the next roll.'**
  String get tutorMovePlanRaceBearOff;

  /// No description provided for @tutorMovePlanRaceHome.
  ///
  /// In en, this message translates to:
  /// **'Bring the rear checkers home and spread them across useful landing points for the bear-off.'**
  String get tutorMovePlanRaceHome;

  /// No description provided for @tutorMovePlanContactBearOff.
  ///
  /// In en, this message translates to:
  /// **'Take checkers out of the game, but keep watching the opponent’s back checkers: contact makes a loose bear-off checker a possible target.'**
  String get tutorMovePlanContactBearOff;

  /// No description provided for @tutorMovePlanReentry.
  ///
  /// In en, this message translates to:
  /// **'Get back into play, then look for a safe point for the checker that entered.'**
  String get tutorMovePlanReentry;

  /// No description provided for @tutorMovePlanHomeBoard.
  ///
  /// In en, this message translates to:
  /// **'Strengthen your home board. The new closed point gives a future hit more force by taking away an entry number.'**
  String get tutorMovePlanHomeBoard;

  /// No description provided for @tutorMovePlanPrime.
  ///
  /// In en, this message translates to:
  /// **'Keep the run of closed points working together. Preserve spares so later rolls do not force you to open it.'**
  String get tutorMovePlanPrime;

  /// No description provided for @tutorMovePlanLeaveAnchor.
  ///
  /// In en, this message translates to:
  /// **'Leaving an anchor advances your back checkers but gives up a safe foothold. Watch their exposure on the way home.'**
  String get tutorMovePlanLeaveAnchor;

  /// No description provided for @tutorMovePlanNewAnchor.
  ///
  /// In en, this message translates to:
  /// **'Use the new anchor as a safe foothold while you improve the rest of your position.'**
  String get tutorMovePlanNewAnchor;

  /// No description provided for @tutorMovePlanCoverBlot.
  ///
  /// In en, this message translates to:
  /// **'Consolidate your checkers. Covering a blot removes that target while keeping future landing points available.'**
  String get tutorMovePlanCoverBlot;

  /// No description provided for @tutorMovePlanSafety.
  ///
  /// In en, this message translates to:
  /// **'Balance development with safety: bring builders toward useful points and check which single checkers can be hit.'**
  String get tutorMovePlanSafety;

  /// No description provided for @tutorMoveObservationNoLegalPlay.
  ///
  /// In en, this message translates to:
  /// **'No legal checker play: the turn must pass.'**
  String get tutorMoveObservationNoLegalPlay;

  /// No description provided for @tutorMoveObservationHit.
  ///
  /// In en, this message translates to:
  /// **'Hits {count} opposing {count, plural, one{checker} other{checkers}}; the opponent must re-enter from the bar before moving other checkers.'**
  String tutorMoveObservationHit(int count);

  /// No description provided for @tutorMoveObservationEntry.
  ///
  /// In en, this message translates to:
  /// **'Enters {count} from the bar.'**
  String tutorMoveObservationEntry(int count);

  /// No description provided for @tutorMoveObservationBearOff.
  ///
  /// In en, this message translates to:
  /// **'Bears off {count} {count, plural, one{checker} other{checkers}}.'**
  String tutorMoveObservationBearOff(int count);

  /// No description provided for @tutorMoveObservationMadePoints.
  ///
  /// In en, this message translates to:
  /// **'Makes {points}. Two or more checkers hold a safe point and block an opponent’s landing there.'**
  String tutorMoveObservationMadePoints(Object points);

  /// No description provided for @tutorMoveObservationBrokenPoints.
  ///
  /// In en, this message translates to:
  /// **'Gives up made {pointLabel} {points}. Those points no longer block the opponent.'**
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points);

  /// No description provided for @tutorMoveObservationNoBlots.
  ///
  /// In en, this message translates to:
  /// **'Leaves no single checkers exposed (previously {previousCount}). There are no single checkers to hit.'**
  String tutorMoveObservationNoBlots(int previousCount);

  /// No description provided for @tutorMoveObservationBlots.
  ///
  /// In en, this message translates to:
  /// **'Leaves {count} exposed single {count, plural, one{checker} other{checkers}} (previously {previousCount}). Check whether the opponent can reach them before choosing safety over another gain.'**
  String tutorMoveObservationBlots(int count, int previousCount);

  /// No description provided for @tutorMoveObservationPrimeRun.
  ///
  /// In en, this message translates to:
  /// **'Longest run of made points: {count} (previously {previousCount}). {primeAdvice}'**
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  );

  /// No description provided for @tutorMoveObservationPrimeSix.
  ///
  /// In en, this message translates to:
  /// **'A six-point prime cannot be crossed while it stays closed.'**
  String get tutorMoveObservationPrimeSix;

  /// No description provided for @tutorMoveObservationPrimeBuild.
  ///
  /// In en, this message translates to:
  /// **'Keep builders nearby if you want to extend or preserve this run.'**
  String get tutorMoveObservationPrimeBuild;

  /// No description provided for @tutorMoveObservationPrimeSpares.
  ///
  /// In en, this message translates to:
  /// **'{count} spare checkers sit above two on made points. Moving a spare can preserve the point; moving one of its last two opens it.'**
  String tutorMoveObservationPrimeSpares(int count);

  /// No description provided for @tutorMoveObservationAnchors.
  ///
  /// In en, this message translates to:
  /// **'Anchors in the opponent’s home board: {points} (previously {previousPoints}). Keeping an anchor protects those checkers from hits; leaving it trades that foothold for progress in the race.'**
  String tutorMoveObservationAnchors(Object points, Object previousPoints);

  /// No description provided for @tutorMoveObservationPureRace.
  ///
  /// In en, this message translates to:
  /// **'Pure race: the armies have passed each other and neither side is on the bar. Hitting is no longer possible; bear-off efficiency matters.'**
  String get tutorMoveObservationPureRace;

  /// No description provided for @tutorMoveObservationNoReplyHit.
  ///
  /// In en, this message translates to:
  /// **'No legal next roll lets the opponent hit a checker in this position. Contact still remains, so later moves can create new shots.'**
  String get tutorMoveObservationNoReplyHit;

  /// No description provided for @tutorMoveObservationReplyHit.
  ///
  /// In en, this message translates to:
  /// **'The opponent can hit on {count} of {total} rolls. For example, {dieOne}–{dieTwo} allows a legal hit on your {point}-point. A hit is available, not guaranteed to be chosen.'**
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  );

  /// No description provided for @tutorMoveObservationOpponentBarHome.
  ///
  /// In en, this message translates to:
  /// **'{closedPoints} of your home-board points are closed. {entryAdvice}'**
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  );

  /// No description provided for @tutorMoveObservationAllEntriesClosed.
  ///
  /// In en, this message translates to:
  /// **'The opponent cannot re-enter until a point opens.'**
  String get tutorMoveObservationAllEntriesClosed;

  /// No description provided for @tutorMoveObservationOpenEntry.
  ///
  /// In en, this message translates to:
  /// **'A roll using an open entry point can bring a checker back from the bar.'**
  String get tutorMoveObservationOpenEntry;

  /// No description provided for @tutorMoveComparisonDetail.
  ///
  /// In en, this message translates to:
  /// **'{factors} The top play’s estimated win chance is {delta} percentage points {direction}.{scoreContext}'**
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  );

  /// No description provided for @tutorMoveComparisonHigher.
  ///
  /// In en, this message translates to:
  /// **'higher'**
  String get tutorMoveComparisonHigher;

  /// No description provided for @tutorMoveComparisonLower.
  ///
  /// In en, this message translates to:
  /// **'lower'**
  String get tutorMoveComparisonLower;

  /// No description provided for @tutorMoveComparisonScoreContext.
  ///
  /// In en, this message translates to:
  /// **' It can still rank higher because gammons and backgammons have different value at the current {scoreContext}.'**
  String tutorMoveComparisonScoreContext(Object scoreContext);

  /// No description provided for @tutorMoveComparisonStake.
  ///
  /// In en, this message translates to:
  /// **'stake'**
  String get tutorMoveComparisonStake;

  /// No description provided for @tutorMoveComparisonMatchScore.
  ///
  /// In en, this message translates to:
  /// **'match score'**
  String get tutorMoveComparisonMatchScore;

  /// No description provided for @tutorMoveComparisonFactorBar.
  ///
  /// In en, this message translates to:
  /// **'The top play leaves {bestCount} opposing checkers on the bar instead of {playedCount}. A checker on the bar must re-enter before the opponent can move the others.'**
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount);

  /// No description provided for @tutorMoveComparisonFactorHomeBoard.
  ///
  /// In en, this message translates to:
  /// **'The top play holds {bestCount} home-board points instead of {playedCount}, {entryDifference} entry points after a hit.'**
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  );

  /// No description provided for @tutorMoveComparisonClosingMore.
  ///
  /// In en, this message translates to:
  /// **'closing more'**
  String get tutorMoveComparisonClosingMore;

  /// No description provided for @tutorMoveComparisonLeavingMore.
  ///
  /// In en, this message translates to:
  /// **'leaving more'**
  String get tutorMoveComparisonLeavingMore;

  /// No description provided for @tutorMoveComparisonFactorShots.
  ///
  /// In en, this message translates to:
  /// **'The top play allows a reply hit on {bestCount} of 36 rolls instead of {playedCount}. {riskDifference}'**
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  );

  /// No description provided for @tutorMoveComparisonReducesRisk.
  ///
  /// In en, this message translates to:
  /// **'That reduces the immediate risk of being sent back.'**
  String get tutorMoveComparisonReducesRisk;

  /// No description provided for @tutorMoveComparisonExtraExposure.
  ///
  /// In en, this message translates to:
  /// **'Compare that extra exposure with what the play gains elsewhere.'**
  String get tutorMoveComparisonExtraExposure;

  /// No description provided for @tutorMoveComparisonFactorPrime.
  ///
  /// In en, this message translates to:
  /// **'The top play’s longest run of closed points is {bestCount} rather than {playedCount}; compare the blockade with the checkers available to keep it intact.'**
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount);

  /// No description provided for @tutorMoveComparisonFactorAnchors.
  ///
  /// In en, this message translates to:
  /// **'The top play’s anchors are {bestPoints} rather than {playedPoints}. Keeping an anchor preserves a safe landing point; leaving it brings those checkers nearer home.'**
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  );

  /// No description provided for @tutorMoveComparisonFactorBearOff.
  ///
  /// In en, this message translates to:
  /// **'The top play has {bestCount} checkers off instead of {playedCount}. Each checker removed is one fewer to bear off later.'**
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount);

  /// No description provided for @tutorMoveComparisonFactorSimilarRisks.
  ///
  /// In en, this message translates to:
  /// **'Both plays leave the same immediate hit exposure, home-board points, anchors and checkers off. Compare the landing points: the next roll may use those checkers differently.'**
  String get tutorMoveComparisonFactorSimilarRisks;

  /// No description provided for @tutorMoveComparisonSummaryBar.
  ///
  /// In en, this message translates to:
  /// **'The top play puts more checkers on the bar, delaying the opponent’s other moves.'**
  String get tutorMoveComparisonSummaryBar;

  /// No description provided for @tutorMoveComparisonSummaryHomeBoard.
  ///
  /// In en, this message translates to:
  /// **'The top play closes more home-board points, making re-entry harder after a hit.'**
  String get tutorMoveComparisonSummaryHomeBoard;

  /// No description provided for @tutorMoveComparisonSummaryShots.
  ///
  /// In en, this message translates to:
  /// **'The top play allows fewer immediate hitting rolls, reducing the risk of being sent back.'**
  String get tutorMoveComparisonSummaryShots;

  /// No description provided for @tutorMoveComparisonSummaryPrime.
  ///
  /// In en, this message translates to:
  /// **'The top play keeps a longer run of closed points.'**
  String get tutorMoveComparisonSummaryPrime;

  /// No description provided for @tutorMoveComparisonSummaryAnchors.
  ///
  /// In en, this message translates to:
  /// **'The top play keeps more safe anchors in the opponent’s home board.'**
  String get tutorMoveComparisonSummaryAnchors;

  /// No description provided for @tutorMoveComparisonSummaryBearOff.
  ///
  /// In en, this message translates to:
  /// **'The top play takes more checkers off, leaving fewer to remove later.'**
  String get tutorMoveComparisonSummaryBearOff;

  /// No description provided for @tutorMoveComparisonSummaryBlots.
  ///
  /// In en, this message translates to:
  /// **'This play leaves {playedCount} single checkers; the top play leaves {bestCount}.'**
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount);

  /// No description provided for @tutorMoveComparisonSummarySafeAnchor.
  ///
  /// In en, this message translates to:
  /// **'The top play keeps a safe anchor on point {point}.'**
  String tutorMoveComparisonSummarySafeAnchor(int point);

  /// No description provided for @tutorMoveComparisonSummaryEntry.
  ///
  /// In en, this message translates to:
  /// **'The top play closes more entry points in case one of your checkers is hit.'**
  String get tutorMoveComparisonSummaryEntry;

  /// No description provided for @tutorMoveComparisonSummarySimilarRisks.
  ///
  /// In en, this message translates to:
  /// **'The plays leave similar immediate risks; compare which landing points stay useful next roll.'**
  String get tutorMoveComparisonSummarySimilarRisks;

  /// No description provided for @tutorMoveAssessmentEquityLoss.
  ///
  /// In en, this message translates to:
  /// **'{value} equity'**
  String tutorMoveAssessmentEquityLoss(Object value);

  /// No description provided for @tutorMoveAssessmentMwcLoss.
  ///
  /// In en, this message translates to:
  /// **'{value} pp MWC'**
  String tutorMoveAssessmentMwcLoss(Object value);

  /// No description provided for @tutorMovePointSingular.
  ///
  /// In en, this message translates to:
  /// **'point'**
  String get tutorMovePointSingular;

  /// No description provided for @tutorMovePointPlural.
  ///
  /// In en, this message translates to:
  /// **'points'**
  String get tutorMovePointPlural;

  /// No description provided for @tutorMoveNoPoints.
  ///
  /// In en, this message translates to:
  /// **'none'**
  String get tutorMoveNoPoints;

  /// No description provided for @gameTutorCommentaryOff.
  ///
  /// In en, this message translates to:
  /// **'Game commentary is off.'**
  String get gameTutorCommentaryOff;

  /// No description provided for @gameTutorToolsAvailable.
  ///
  /// In en, this message translates to:
  /// **'Open the tutor for the tools you have enabled.'**
  String get gameTutorToolsAvailable;

  /// No description provided for @gameTutorNextRoll.
  ///
  /// In en, this message translates to:
  /// **'Roll next.'**
  String get gameTutorNextRoll;

  /// No description provided for @gameTutorNoEvaluatedReview.
  ///
  /// In en, this message translates to:
  /// **'No evaluated explanation is available for this recorded move.'**
  String get gameTutorNoEvaluatedReview;

  /// No description provided for @gameTutorAnalysisUnavailable.
  ///
  /// In en, this message translates to:
  /// **'analysis unavailable'**
  String get gameTutorAnalysisUnavailable;

  /// No description provided for @gameTutorReviewing.
  ///
  /// In en, this message translates to:
  /// **'reviewing…'**
  String get gameTutorReviewing;

  /// No description provided for @gameTutorTryYourPlayFirst.
  ///
  /// In en, this message translates to:
  /// **'Try your own play first.'**
  String get gameTutorTryYourPlayFirst;

  /// No description provided for @gameTutorKeepBuilding.
  ///
  /// In en, this message translates to:
  /// **'Keep building your play.'**
  String get gameTutorKeepBuilding;

  /// No description provided for @gameTutorStageCompleteBeforeCoaching.
  ///
  /// In en, this message translates to:
  /// **'Stage a complete legal play before revealing coaching or hints.'**
  String get gameTutorStageCompleteBeforeCoaching;

  /// No description provided for @gameTutorReadyToConfirm.
  ///
  /// In en, this message translates to:
  /// **'Ready to confirm'**
  String get gameTutorReadyToConfirm;

  /// No description provided for @gameTutorPlayTakingShape.
  ///
  /// In en, this message translates to:
  /// **'Your play is taking shape.'**
  String get gameTutorPlayTakingShape;

  /// No description provided for @gameTutorConfirmOrUndo.
  ///
  /// In en, this message translates to:
  /// **'Confirm to play it, or Undo to reconsider.'**
  String get gameTutorConfirmOrUndo;

  /// No description provided for @gameTutorFinishDiceOrUndo.
  ///
  /// In en, this message translates to:
  /// **'Finish the remaining dice, or Undo to reconsider.'**
  String get gameTutorFinishDiceOrUndo;

  /// No description provided for @gameTutorComputerConsidering.
  ///
  /// In en, this message translates to:
  /// **'The computer is considering its play.'**
  String get gameTutorComputerConsidering;

  /// No description provided for @gameTutorComputerPlayReviewed.
  ///
  /// In en, this message translates to:
  /// **'Its completed play will be reviewed here.'**
  String get gameTutorComputerPlayReviewed;

  /// No description provided for @gameTutorYourPlay.
  ///
  /// In en, this message translates to:
  /// **'Your play'**
  String get gameTutorYourPlay;

  /// No description provided for @gameTutorComputer.
  ///
  /// In en, this message translates to:
  /// **'Computer'**
  String get gameTutorComputer;

  /// No description provided for @gameTutorPlayQuality.
  ///
  /// In en, this message translates to:
  /// **'Your play: {quality}'**
  String gameTutorPlayQuality(Object quality);

  /// No description provided for @gameTutorForcedPlay.
  ///
  /// In en, this message translates to:
  /// **'forced play'**
  String get gameTutorForcedPlay;

  /// No description provided for @gameTutorTopChoice.
  ///
  /// In en, this message translates to:
  /// **'top choice'**
  String get gameTutorTopChoice;

  /// No description provided for @gameTutorSoundPlay.
  ///
  /// In en, this message translates to:
  /// **'sound play'**
  String get gameTutorSoundPlay;

  /// No description provided for @gameTutorAnotherPlayMayFitBetter.
  ///
  /// In en, this message translates to:
  /// **'another play may fit better'**
  String get gameTutorAnotherPlayMayFitBetter;

  /// No description provided for @gameTutorAnotherPlayFitsBetter.
  ///
  /// In en, this message translates to:
  /// **'another play fits this position better'**
  String get gameTutorAnotherPlayFitsBetter;

  /// No description provided for @gameTutorStrongerPlayAvailable.
  ///
  /// In en, this message translates to:
  /// **'a clearly stronger play was available'**
  String get gameTutorStrongerPlayAvailable;

  /// No description provided for @gameTutorPositionEdge.
  ///
  /// In en, this message translates to:
  /// **'{side} has the estimated edge.'**
  String gameTutorPositionEdge(Object side);

  /// No description provided for @gameTutorPositionEven.
  ///
  /// In en, this message translates to:
  /// **'The position is roughly even.'**
  String get gameTutorPositionEven;

  /// No description provided for @tutorPlayedMove.
  ///
  /// In en, this message translates to:
  /// **'Played: {move}'**
  String tutorPlayedMove(Object move);

  /// No description provided for @tutorBestMove.
  ///
  /// In en, this message translates to:
  /// **'Best: {move}'**
  String tutorBestMove(Object move);

  /// No description provided for @tutorShowRankedPlays.
  ///
  /// In en, this message translates to:
  /// **'Show ranked plays'**
  String get tutorShowRankedPlays;

  /// No description provided for @tutorReviewRecordedMove.
  ///
  /// In en, this message translates to:
  /// **'Tap a completed move in the log to review its decision here.'**
  String get tutorReviewRecordedMove;

  /// No description provided for @tutorTopPlays.
  ///
  /// In en, this message translates to:
  /// **'Top plays'**
  String get tutorTopPlays;

  /// No description provided for @tutorNoHintsAvailable.
  ///
  /// In en, this message translates to:
  /// **'No hints available.'**
  String get tutorNoHintsAvailable;

  /// No description provided for @tutorPreviewThenConfirm.
  ///
  /// In en, this message translates to:
  /// **'Tap a play to preview it on the board, then Confirm.'**
  String get tutorPreviewThenConfirm;

  /// No description provided for @tutorTopChoiceForPosition.
  ///
  /// In en, this message translates to:
  /// **'Top choice for this position'**
  String get tutorTopChoiceForPosition;

  /// No description provided for @tutorAlternativePlay.
  ///
  /// In en, this message translates to:
  /// **'Alternative play'**
  String get tutorAlternativePlay;

  /// No description provided for @tutorEngineEstimates.
  ///
  /// In en, this message translates to:
  /// **'Engine estimates'**
  String get tutorEngineEstimates;

  /// No description provided for @tutorEstimateScope.
  ///
  /// In en, this message translates to:
  /// **'0-ply estimate · current score and stake · no future cubes'**
  String get tutorEstimateScope;

  /// No description provided for @tutorEquity.
  ///
  /// In en, this message translates to:
  /// **'Equity'**
  String get tutorEquity;

  /// No description provided for @tutorMwcPercent.
  ///
  /// In en, this message translates to:
  /// **'MWC %'**
  String get tutorMwcPercent;

  /// No description provided for @tutorNearTiesNote.
  ///
  /// In en, this message translates to:
  /// **'Near ties can change with deeper analysis.'**
  String get tutorNearTiesNote;

  /// No description provided for @tutorWhyThisPlay.
  ///
  /// In en, this message translates to:
  /// **'Why this play?'**
  String get tutorWhyThisPlay;

  /// No description provided for @tutorCompareAlternative.
  ///
  /// In en, this message translates to:
  /// **'Compare this alternative'**
  String get tutorCompareAlternative;

  /// No description provided for @gameTutorCubeTake.
  ///
  /// In en, this message translates to:
  /// **'Tutor: Take'**
  String get gameTutorCubeTake;

  /// No description provided for @gameTutorCubePass.
  ///
  /// In en, this message translates to:
  /// **'Tutor: Pass'**
  String get gameTutorCubePass;

  /// No description provided for @practiceScreenTitle.
  ///
  /// In en, this message translates to:
  /// **'Practise a decision'**
  String get practiceScreenTitle;

  /// No description provided for @practiceUnavailable.
  ///
  /// In en, this message translates to:
  /// **'This practice position is no longer available.'**
  String get practiceUnavailable;

  /// No description provided for @practiceSubmitError.
  ///
  /// In en, this message translates to:
  /// **'This attempt could not be evaluated or saved. Your progress was not changed. Try again.'**
  String get practiceSubmitError;

  /// No description provided for @practiceTurnLabel.
  ///
  /// In en, this message translates to:
  /// **'{side} to play · {dice}'**
  String practiceTurnLabel(Object side, Object dice);

  /// No description provided for @practiceHistoricalScoreUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Historical score unavailable; grading uses cubeless equity.'**
  String get practiceHistoricalScoreUnavailable;

  /// No description provided for @practiceScoreLine.
  ///
  /// In en, this message translates to:
  /// **'Score: {whiteLabel} {whiteScore} – {blackLabel} {blackScore}, to {matchLength}'**
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  );

  /// No description provided for @practiceCrawfordGame.
  ///
  /// In en, this message translates to:
  /// **' · Crawford game'**
  String get practiceCrawfordGame;

  /// No description provided for @practiceNoDoublingCube.
  ///
  /// In en, this message translates to:
  /// **'No doubling cube.'**
  String get practiceNoDoublingCube;

  /// No description provided for @practiceCubeValue.
  ///
  /// In en, this message translates to:
  /// **'Cube {value}.'**
  String practiceCubeValue(int value);

  /// No description provided for @practiceHistoricalCubeUnknown.
  ///
  /// In en, this message translates to:
  /// **'Historical cube rules unknown.'**
  String get practiceHistoricalCubeUnknown;

  /// No description provided for @practiceAfterBestPosition.
  ///
  /// In en, this message translates to:
  /// **'Position after the best play'**
  String get practiceAfterBestPosition;

  /// No description provided for @practiceAfterYourAnswerPosition.
  ///
  /// In en, this message translates to:
  /// **'Position after your answer'**
  String get practiceAfterYourAnswerPosition;

  /// No description provided for @practiceFindYourPlayPrompt.
  ///
  /// In en, this message translates to:
  /// **'Find your play on the board, then check your answer. No hints are shown.'**
  String get practiceFindYourPlayPrompt;

  /// No description provided for @practiceUndo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get practiceUndo;

  /// No description provided for @practiceCheckAnswer.
  ///
  /// In en, this message translates to:
  /// **'Check answer'**
  String get practiceCheckAnswer;

  /// No description provided for @practiceRevealNoCredit.
  ///
  /// In en, this message translates to:
  /// **'Reveal answer (no credit)'**
  String get practiceRevealNoCredit;

  /// No description provided for @practiceAnswerRevealedNoCredit.
  ///
  /// In en, this message translates to:
  /// **'Answer revealed — no recall credit.'**
  String get practiceAnswerRevealedNoCredit;

  /// No description provided for @practiceGradeLine.
  ///
  /// In en, this message translates to:
  /// **'{verdict} · {loss}'**
  String practiceGradeLine(Object verdict, Object loss);

  /// No description provided for @practiceBestMoveLine.
  ///
  /// In en, this message translates to:
  /// **'Best: {move}'**
  String practiceBestMoveLine(Object move);

  /// No description provided for @practiceOriginalGameLine.
  ///
  /// In en, this message translates to:
  /// **'Original game: {move} · {loss}'**
  String practiceOriginalGameLine(Object move, Object loss);

  /// No description provided for @practiceYourAnswerLine.
  ///
  /// In en, this message translates to:
  /// **'Your answer: {move}'**
  String practiceYourAnswerLine(Object move);

  /// No description provided for @practiceYourAnswerChip.
  ///
  /// In en, this message translates to:
  /// **'Your answer'**
  String get practiceYourAnswerChip;

  /// No description provided for @practiceBestPlayChip.
  ///
  /// In en, this message translates to:
  /// **'Best play'**
  String get practiceBestPlayChip;

  /// No description provided for @practiceNextReview.
  ///
  /// In en, this message translates to:
  /// **'Next review: {date}.'**
  String practiceNextReview(Object date);

  /// No description provided for @practiceRecallCredit.
  ///
  /// In en, this message translates to:
  /// **'Best or good answers count as successful recall. Early repeats do not advance the schedule.'**
  String get practiceRecallCredit;

  /// No description provided for @practiceBackToLearning.
  ///
  /// In en, this message translates to:
  /// **'Back to learning'**
  String get practiceBackToLearning;

  /// No description provided for @practiceMarkBest.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get practiceMarkBest;

  /// No description provided for @practiceMarkGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get practiceMarkGood;

  /// No description provided for @practiceMarkDubious.
  ///
  /// In en, this message translates to:
  /// **'Dubious'**
  String get practiceMarkDubious;

  /// No description provided for @practiceMarkError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get practiceMarkError;

  /// No description provided for @practiceMarkBlunder.
  ///
  /// In en, this message translates to:
  /// **'Blunder'**
  String get practiceMarkBlunder;

  /// No description provided for @practiceMarkForced.
  ///
  /// In en, this message translates to:
  /// **'Forced'**
  String get practiceMarkForced;

  /// No description provided for @newMatchYourSide.
  ///
  /// In en, this message translates to:
  /// **'Your side'**
  String get newMatchYourSide;

  /// No description provided for @newMatchTutorMode.
  ///
  /// In en, this message translates to:
  /// **'Tutor mode'**
  String get newMatchTutorMode;

  /// No description provided for @newMatchTutorDescription.
  ///
  /// In en, this message translates to:
  /// **'Learn with hints, explanations, and game commentary'**
  String get newMatchTutorDescription;

  /// No description provided for @newMatchTutoringOptions.
  ///
  /// In en, this message translates to:
  /// **'Tutoring options'**
  String get newMatchTutoringOptions;

  /// No description provided for @newMatchTutoringOptionsDescription.
  ///
  /// In en, this message translates to:
  /// **'For this match; adjustable during play'**
  String get newMatchTutoringOptionsDescription;

  /// No description provided for @setupMatchLength.
  ///
  /// In en, this message translates to:
  /// **'Match length'**
  String get setupMatchLength;

  /// No description provided for @setupDifficulty.
  ///
  /// In en, this message translates to:
  /// **'Difficulty'**
  String get setupDifficulty;

  /// No description provided for @setupDifficultyEasy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get setupDifficultyEasy;

  /// No description provided for @setupDifficultyMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get setupDifficultyMedium;

  /// No description provided for @setupDifficultyHard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get setupDifficultyHard;

  /// No description provided for @setupDifficultyExpert.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get setupDifficultyExpert;

  /// No description provided for @setupPlayWithoutCube.
  ///
  /// In en, this message translates to:
  /// **'Play without cube'**
  String get setupPlayWithoutCube;

  /// No description provided for @setupNoCubeThisMatch.
  ///
  /// In en, this message translates to:
  /// **'No doubling cube this match'**
  String get setupNoCubeThisMatch;

  /// No description provided for @analysisTitle.
  ///
  /// In en, this message translates to:
  /// **'Analysis'**
  String get analysisTitle;

  /// No description provided for @gameMatchSummary.
  ///
  /// In en, this message translates to:
  /// **'Match summary'**
  String get gameMatchSummary;

  /// No description provided for @gameAnalyzeGame.
  ///
  /// In en, this message translates to:
  /// **'Analyze game'**
  String get gameAnalyzeGame;

  /// No description provided for @analysisMetricsTooltip.
  ///
  /// In en, this message translates to:
  /// **'What do these numbers mean?'**
  String get analysisMetricsTooltip;

  /// No description provided for @analysisError.
  ///
  /// In en, this message translates to:
  /// **'Failed to analyse game: {error}'**
  String analysisError(Object error);

  /// No description provided for @analysisNoPositions.
  ///
  /// In en, this message translates to:
  /// **'This game has no positions to show.'**
  String get analysisNoPositions;

  /// No description provided for @analysisInProgress.
  ///
  /// In en, this message translates to:
  /// **'Analysing game…'**
  String get analysisInProgress;

  /// No description provided for @analysisPercent.
  ///
  /// In en, this message translates to:
  /// **'{percent}%'**
  String analysisPercent(int percent);

  /// No description provided for @analysisPlayed.
  ///
  /// In en, this message translates to:
  /// **'Played'**
  String get analysisPlayed;

  /// No description provided for @analysisBest.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get analysisBest;

  /// No description provided for @analysisPrevious.
  ///
  /// In en, this message translates to:
  /// **'Previous'**
  String get analysisPrevious;

  /// No description provided for @analysisNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get analysisNext;

  /// No description provided for @analysisPositionBeforeCube.
  ///
  /// In en, this message translates to:
  /// **'Position before the cube decision'**
  String get analysisPositionBeforeCube;

  /// No description provided for @analysisPositionAtPoint.
  ///
  /// In en, this message translates to:
  /// **'Position at this point in the game'**
  String get analysisPositionAtPoint;

  /// No description provided for @analysisShowingBestBefore.
  ///
  /// In en, this message translates to:
  /// **'Showing the best move on the position before the move'**
  String get analysisShowingBestBefore;

  /// No description provided for @analysisShowingBefore.
  ///
  /// In en, this message translates to:
  /// **'Showing position before the move'**
  String get analysisShowingBefore;

  /// No description provided for @analysisVerdictLine.
  ///
  /// In en, this message translates to:
  /// **'{side}: {verdict}{loss}'**
  String analysisVerdictLine(Object side, Object verdict, Object loss);

  /// No description provided for @analysisMoveLoss.
  ///
  /// In en, this message translates to:
  /// **'  −{loss}'**
  String analysisMoveLoss(Object loss);

  /// No description provided for @analysisExcludedFromAverages.
  ///
  /// In en, this message translates to:
  /// **' · excluded from averages'**
  String get analysisExcludedFromAverages;

  /// No description provided for @analysisNoPlay.
  ///
  /// In en, this message translates to:
  /// **'(no play)'**
  String get analysisNoPlay;

  /// No description provided for @analysisBestMoveLine.
  ///
  /// In en, this message translates to:
  /// **'Best: {move}'**
  String analysisBestMoveLine(Object move);

  /// No description provided for @analysisExplain.
  ///
  /// In en, this message translates to:
  /// **'Explain'**
  String get analysisExplain;

  /// No description provided for @analysisSaveForPractice.
  ///
  /// In en, this message translates to:
  /// **'Save for practice'**
  String get analysisSaveForPractice;

  /// No description provided for @analysisSaveError.
  ///
  /// In en, this message translates to:
  /// **'Could not save this decision. Please try again.'**
  String get analysisSaveError;

  /// No description provided for @analysisCubeInfo.
  ///
  /// In en, this message translates to:
  /// **'{side}: {action} · {mark} · {loss} loss'**
  String analysisCubeInfo(Object side, Object action, Object mark, Object loss);

  /// No description provided for @analysisCubeDecision.
  ///
  /// In en, this message translates to:
  /// **'Cube decision'**
  String get analysisCubeDecision;

  /// No description provided for @analysisCubePlayed.
  ///
  /// In en, this message translates to:
  /// **'Played: {action} ({percent}% match win).'**
  String analysisCubePlayed(Object action, Object percent);

  /// No description provided for @analysisCubeBest.
  ///
  /// In en, this message translates to:
  /// **'Best: {action} ({percent}% match win).'**
  String analysisCubeBest(Object action, Object percent);

  /// No description provided for @analysisCubeEstimate.
  ///
  /// In en, this message translates to:
  /// **'0-ply estimate from the acting player’s perspective. Assumes an optimal take/pass response. Uses a 0.7 cube-life approximation on the taken-double branch, not a full future-recube search. Deeper analysis can change the answer.'**
  String get analysisCubeEstimate;

  /// No description provided for @analysisClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get analysisClose;

  /// No description provided for @analysisMoves.
  ///
  /// In en, this message translates to:
  /// **'Moves'**
  String get analysisMoves;

  /// No description provided for @analysisForced.
  ///
  /// In en, this message translates to:
  /// **'Forced'**
  String get analysisForced;

  /// No description provided for @analysisMarkBest.
  ///
  /// In en, this message translates to:
  /// **'Best'**
  String get analysisMarkBest;

  /// No description provided for @analysisMarkGood.
  ///
  /// In en, this message translates to:
  /// **'Good'**
  String get analysisMarkGood;

  /// No description provided for @analysisMarkDubious.
  ///
  /// In en, this message translates to:
  /// **'Dubious'**
  String get analysisMarkDubious;

  /// No description provided for @analysisMarkError.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get analysisMarkError;

  /// No description provided for @analysisMarkBlunder.
  ///
  /// In en, this message translates to:
  /// **'Blunder'**
  String get analysisMarkBlunder;

  /// No description provided for @analysisSummaryMeanLoss.
  ///
  /// In en, this message translates to:
  /// **'Mean loss {loss}'**
  String analysisSummaryMeanLoss(Object loss);

  /// No description provided for @analysisSummaryCheckerDecisions.
  ///
  /// In en, this message translates to:
  /// **'{count} checker decisions'**
  String analysisSummaryCheckerDecisions(int count);

  /// No description provided for @analysisSummaryBlunders.
  ///
  /// In en, this message translates to:
  /// **'Blunders {count}'**
  String analysisSummaryBlunders(int count);

  /// No description provided for @analysisSummaryCubeLoss.
  ///
  /// In en, this message translates to:
  /// **'Cube loss {loss}'**
  String analysisSummaryCubeLoss(Object loss);

  /// No description provided for @analysisRollWithoutDoubling.
  ///
  /// In en, this message translates to:
  /// **'{side} rolls without doubling'**
  String analysisRollWithoutDoubling(Object side);

  /// No description provided for @metricExplainerTitle.
  ///
  /// In en, this message translates to:
  /// **'Understanding the metrics'**
  String get metricExplainerTitle;

  /// No description provided for @metricExplainerTooltip.
  ///
  /// In en, this message translates to:
  /// **'What do these numbers mean?'**
  String get metricExplainerTooltip;

  /// No description provided for @metricExplainerMwcTitle.
  ///
  /// In en, this message translates to:
  /// **'Match-winning chance (MWC)'**
  String get metricExplainerMwcTitle;

  /// No description provided for @metricExplainerMwcBody.
  ///
  /// In en, this message translates to:
  /// **'When the score is known, checker plays are ranked by estimated chance of winning the match. Loss is in percentage points (pp): 1 pp means 51% falls to 50%. The current cube stake and gammon/backgammon outcomes are included. Forced passes and rolls with one legal resulting position are excluded from averages.'**
  String get metricExplainerMwcBody;

  /// No description provided for @metricExplainerSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Search and uncertainty'**
  String get metricExplainerSearchTitle;

  /// No description provided for @metricExplainerSearchBody.
  ///
  /// In en, this message translates to:
  /// **'Checker rankings are 0-ply static after-play estimates, not rollouts. Match values use a match equity table and no future cube turns. Cube reviews use a partial 0.7 cube-life approximation on taken doubles. Neither is full cubeful search. Away scores above 25 use the table’s 25-away boundary. Near ties can change with deeper analysis; there is no calibrated confidence interval.'**
  String get metricExplainerSearchBody;

  /// No description provided for @metricExplainerEquityTitle.
  ///
  /// In en, this message translates to:
  /// **'Equity'**
  String get metricExplainerEquityTitle;

  /// No description provided for @metricExplainerEquityBody.
  ///
  /// In en, this message translates to:
  /// **'If the score is unavailable, cubeless equity is how many points a position is worth on average — the expected result with the cube at 1. +1.0 means you expect to win one point; −0.5 means you expect to lose half a point.'**
  String get metricExplainerEquityBody;

  /// No description provided for @metricExplainerEquityLossTitle.
  ///
  /// In en, this message translates to:
  /// **'Equity loss (e.g. −0.016)'**
  String get metricExplainerEquityLossTitle;

  /// No description provided for @metricExplainerEquityLossBody.
  ///
  /// In en, this message translates to:
  /// **'For each move we compare what you played against the engine’s best play. The equity loss is how much expected value your move gave up. −0.016 means the move was only 0.016 points worse than the best — a tiny slip. 0.000 means you found the best play.'**
  String get metricExplainerEquityLossBody;

  /// No description provided for @metricExplainerErrorRateTitle.
  ///
  /// In en, this message translates to:
  /// **'Error rate'**
  String get metricExplainerErrorRateTitle;

  /// No description provided for @metricExplainerErrorRateBody.
  ///
  /// In en, this message translates to:
  /// **'Mean loss averages your graded checker decisions in the displayed unit. Cube decisions have their own average. Lower means closer to this engine’s top estimates; it is not a calibrated player rating.'**
  String get metricExplainerErrorRateBody;

  /// No description provided for @metricExplainerMoveMarksTitle.
  ///
  /// In en, this message translates to:
  /// **'Move marks'**
  String get metricExplainerMoveMarksTitle;

  /// No description provided for @metricExplainerMoveMarksBody.
  ///
  /// In en, this message translates to:
  /// **'MWC teaching bands: Best < 0.05 pp, Good < 0.5 pp, Dubious < 1.5 pp, Error < 3 pp, Blunder ≥ 3 pp. These are product teaching bands, not calibrated confidence or tournament ratings.\n\nCubeless equity teaching bands:'**
  String get metricExplainerMoveMarksBody;

  /// No description provided for @metricExplainerThresholdBest.
  ///
  /// In en, this message translates to:
  /// **'lost < 0.001'**
  String get metricExplainerThresholdBest;

  /// No description provided for @metricExplainerThresholdGood.
  ///
  /// In en, this message translates to:
  /// **'lost < 0.020'**
  String get metricExplainerThresholdGood;

  /// No description provided for @metricExplainerThresholdDubious.
  ///
  /// In en, this message translates to:
  /// **'lost < 0.050'**
  String get metricExplainerThresholdDubious;

  /// No description provided for @metricExplainerThresholdError.
  ///
  /// In en, this message translates to:
  /// **'lost < 0.110'**
  String get metricExplainerThresholdError;

  /// No description provided for @metricExplainerThresholdBlunder.
  ///
  /// In en, this message translates to:
  /// **'lost ≥ 0.110'**
  String get metricExplainerThresholdBlunder;

  /// No description provided for @metricExplainerGotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get metricExplainerGotIt;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'Match history'**
  String get historyTitle;

  /// No description provided for @historyLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load history:\n{error}'**
  String historyLoadFailed(Object error);

  /// No description provided for @historyEmpty.
  ///
  /// In en, this message translates to:
  /// **'No matches played yet.'**
  String get historyEmpty;

  /// No description provided for @historyDeleteConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete this match?'**
  String get historyDeleteConfirmTitle;

  /// No description provided for @historyDeleteConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'{scoreLine}\n\nThe match and every game recorded in it are removed permanently. This cannot be undone.'**
  String historyDeleteConfirmBody(Object scoreLine);

  /// No description provided for @actionCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get actionCancel;

  /// No description provided for @actionDelete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get actionDelete;

  /// No description provided for @historyDeleteFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not delete that match.'**
  String get historyDeleteFailed;

  /// No description provided for @historyComplete.
  ///
  /// In en, this message translates to:
  /// **'Complete'**
  String get historyComplete;

  /// No description provided for @historyWinner.
  ///
  /// In en, this message translates to:
  /// **'{side} won'**
  String historyWinner(Object side);

  /// No description provided for @historyUnfinished.
  ///
  /// In en, this message translates to:
  /// **'Unfinished'**
  String get historyUnfinished;

  /// No description provided for @historyMatchTitle.
  ///
  /// In en, this message translates to:
  /// **'Match'**
  String get historyMatchTitle;

  /// No description provided for @historyMatchLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load match:\n{error}'**
  String historyMatchLoadFailed(Object error);

  /// No description provided for @historyGamesLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load games:\n{error}'**
  String historyGamesLoadFailed(Object error);

  /// No description provided for @historyNoGames.
  ///
  /// In en, this message translates to:
  /// **'No games recorded yet.'**
  String get historyNoGames;

  /// No description provided for @historyGameTitle.
  ///
  /// In en, this message translates to:
  /// **'Game {number}'**
  String historyGameTitle(int number);

  /// No description provided for @historyCrawford.
  ///
  /// In en, this message translates to:
  /// **'Crawford'**
  String get historyCrawford;

  /// No description provided for @historyScoreLine.
  ///
  /// In en, this message translates to:
  /// **'White {whiteScore} — {blackScore} Black  (to {matchLength})'**
  String historyScoreLine(int whiteScore, int blackScore, int matchLength);

  /// No description provided for @historyModeComputer.
  ///
  /// In en, this message translates to:
  /// **'vs Computer'**
  String get historyModeComputer;

  /// No description provided for @historyModeTwoPlayers.
  ///
  /// In en, this message translates to:
  /// **'Two players'**
  String get historyModeTwoPlayers;

  /// No description provided for @historyModeOnline.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get historyModeOnline;

  /// No description provided for @historyModeNearby.
  ///
  /// In en, this message translates to:
  /// **'Play Nearby'**
  String get historyModeNearby;

  /// No description provided for @historyModeBuddy.
  ///
  /// In en, this message translates to:
  /// **'Buddy'**
  String get historyModeBuddy;

  /// No description provided for @historyGameInProgress.
  ///
  /// In en, this message translates to:
  /// **'In progress'**
  String get historyGameInProgress;

  /// No description provided for @historyGameResult.
  ///
  /// In en, this message translates to:
  /// **'{side} wins {points} ({outcome})'**
  String historyGameResult(Object side, int points, Object outcome);

  /// No description provided for @historyOutcomeSingle.
  ///
  /// In en, this message translates to:
  /// **'single'**
  String get historyOutcomeSingle;

  /// No description provided for @historyOutcomeGammon.
  ///
  /// In en, this message translates to:
  /// **'gammon'**
  String get historyOutcomeGammon;

  /// No description provided for @historyOutcomeBackgammon.
  ///
  /// In en, this message translates to:
  /// **'backgammon'**
  String get historyOutcomeBackgammon;

  /// No description provided for @learningRefreshTooltip.
  ///
  /// In en, this message translates to:
  /// **'Refresh learning progress'**
  String get learningRefreshTooltip;

  /// No description provided for @learningOptions.
  ///
  /// In en, this message translates to:
  /// **'Learning options'**
  String get learningOptions;

  /// No description provided for @learningResetMenu.
  ///
  /// In en, this message translates to:
  /// **'Reset practice progress'**
  String get learningResetMenu;

  /// No description provided for @learningLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not load learning progress.'**
  String get learningLoadFailed;

  /// No description provided for @actionRetry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get actionRetry;

  /// No description provided for @learningHeading.
  ///
  /// In en, this message translates to:
  /// **'Learn from your decisions'**
  String get learningHeading;

  /// No description provided for @learningIntro.
  ///
  /// In en, this message translates to:
  /// **'Progress stays on this device. Review recurring themes, then retry saved positions without seeing the answer. White and Black can be reviewed separately.'**
  String get learningIntro;

  /// No description provided for @learningBothSides.
  ///
  /// In en, this message translates to:
  /// **'Both sides'**
  String get learningBothSides;

  /// No description provided for @learningHumansOnly.
  ///
  /// In en, this message translates to:
  /// **'Human decisions only'**
  String get learningHumansOnly;

  /// No description provided for @learningHumanOnlyHelp.
  ///
  /// In en, this message translates to:
  /// **'Turn off to include computer and remote-player decisions'**
  String get learningHumanOnlyHelp;

  /// No description provided for @learningDecisionSummary.
  ///
  /// In en, this message translates to:
  /// **'{decisions} decisions · {mistakes} to improve · {blunders} blunders'**
  String learningDecisionSummary(int decisions, int mistakes, int blunders);

  /// No description provided for @learningAverageLoss.
  ///
  /// In en, this message translates to:
  /// **'Average loss ({decisions} decisions): {loss}'**
  String learningAverageLoss(int decisions, Object loss);

  /// No description provided for @learningForcedDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Forced plays are excluded. These are engine estimates, not a tournament rating.'**
  String get learningForcedDisclaimer;

  /// No description provided for @learningGamesNeedingAnalysis.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, one{{count} saved game needs analysis or refreshed analysis.} other{{count} saved games need analysis or refreshed analysis.}}'**
  String learningGamesNeedingAnalysis(int count);

  /// No description provided for @learningAnalyseSavedGames.
  ///
  /// In en, this message translates to:
  /// **'Analyse saved games'**
  String get learningAnalyseSavedGames;

  /// No description provided for @learningEmptyProfile.
  ///
  /// In en, this message translates to:
  /// **'Play and finish a game to build your learning profile. You can also save individual decisions from a game’s replay.'**
  String get learningEmptyProfile;

  /// No description provided for @learningOpenHistory.
  ///
  /// In en, this message translates to:
  /// **'Open match history'**
  String get learningOpenHistory;

  /// No description provided for @learningRecurringThemes.
  ///
  /// In en, this message translates to:
  /// **'Recurring themes'**
  String get learningRecurringThemes;

  /// No description provided for @learningNoThemes.
  ///
  /// In en, this message translates to:
  /// **'No recurring mistake themes in this selection yet.'**
  String get learningNoThemes;

  /// No description provided for @learningThemeDecisions.
  ///
  /// In en, this message translates to:
  /// **'{count} decisions to revisit. A position can have more than one theme.'**
  String learningThemeDecisions(int count);

  /// No description provided for @learningSaveMistakes.
  ///
  /// In en, this message translates to:
  /// **'Save these mistakes for practice'**
  String get learningSaveMistakes;

  /// No description provided for @learningSavedMistakes.
  ///
  /// In en, this message translates to:
  /// **'{count} decisions are in your practice list. Existing saves are kept once.'**
  String learningSavedMistakes(int count);

  /// No description provided for @learningSaveMistakesFailed.
  ///
  /// In en, this message translates to:
  /// **'Some decisions could not be saved. Completed saves are kept; retry safely.'**
  String get learningSaveMistakesFailed;

  /// No description provided for @learningSpacedPractice.
  ///
  /// In en, this message translates to:
  /// **'Spaced practice'**
  String get learningSpacedPractice;

  /// No description provided for @learningPracticeCounts.
  ///
  /// In en, this message translates to:
  /// **'{due} due now · {saved} saved · {attempts} attempts · {successes} successful recalls'**
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  );

  /// No description provided for @learningIntervalsHelp.
  ///
  /// In en, this message translates to:
  /// **'Successful due reviews return after 1, 3, 7, 14 and 30 days. Mistakes or revealed answers return after 10 minutes. Early repeats do not advance the interval.'**
  String get learningIntervalsHelp;

  /// No description provided for @learningAnswerContext.
  ///
  /// In en, this message translates to:
  /// **'Practice results reflect your answers here, even when the original position belonged to an opponent.'**
  String get learningAnswerContext;

  /// No description provided for @learningNoSavedPositions.
  ///
  /// In en, this message translates to:
  /// **'Save a decision from replay, or use the mistake button above.'**
  String get learningNoSavedPositions;

  /// No description provided for @learningPositionTitle.
  ///
  /// In en, this message translates to:
  /// **'{side} decision · game {gameId}'**
  String learningPositionTitle(Object side, int gameId);

  /// No description provided for @learningReviewDue.
  ///
  /// In en, this message translates to:
  /// **'Review {date}'**
  String learningReviewDue(Object date);

  /// No description provided for @learningReadyToReview.
  ///
  /// In en, this message translates to:
  /// **'Ready to review'**
  String get learningReadyToReview;

  /// No description provided for @learningSuccessStreak.
  ///
  /// In en, this message translates to:
  /// **'{count} successful due reviews'**
  String learningSuccessStreak(int count);

  /// No description provided for @learningRemoveTooltip.
  ///
  /// In en, this message translates to:
  /// **'Remove saved decision'**
  String get learningRemoveTooltip;

  /// No description provided for @learningRecentPractice.
  ///
  /// In en, this message translates to:
  /// **'Recent practice'**
  String get learningRecentPractice;

  /// No description provided for @learningAnswerRevealed.
  ///
  /// In en, this message translates to:
  /// **'Answer revealed'**
  String get learningAnswerRevealed;

  /// No description provided for @learningSuccessfulRecall.
  ///
  /// In en, this message translates to:
  /// **'Successful recall'**
  String get learningSuccessfulRecall;

  /// No description provided for @learningTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try this decision again'**
  String get learningTryAgain;

  /// No description provided for @learningAttemptSubtitle.
  ///
  /// In en, this message translates to:
  /// **'{date} · saved position {positionId}'**
  String learningAttemptSubtitle(Object date, int positionId);

  /// No description provided for @learningRemoveTitle.
  ///
  /// In en, this message translates to:
  /// **'Remove this exercise?'**
  String get learningRemoveTitle;

  /// No description provided for @learningRemoveBody.
  ///
  /// In en, this message translates to:
  /// **'This removes its practice attempts. The original game remains in history.'**
  String get learningRemoveBody;

  /// No description provided for @actionRemove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get actionRemove;

  /// No description provided for @learningRemoveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not remove this exercise.'**
  String get learningRemoveFailed;

  /// No description provided for @learningResetTitle.
  ///
  /// In en, this message translates to:
  /// **'Reset practice progress?'**
  String get learningResetTitle;

  /// No description provided for @learningResetBody.
  ///
  /// In en, this message translates to:
  /// **'All practice attempts and review intervals will be removed. Your saved exercises and match history are kept; every exercise becomes due now.'**
  String get learningResetBody;

  /// No description provided for @learningResetAction.
  ///
  /// In en, this message translates to:
  /// **'Reset progress'**
  String get learningResetAction;

  /// No description provided for @learningResetFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not reset practice progress.'**
  String get learningResetFailed;

  /// No description provided for @learningAnalysisProgress.
  ///
  /// In en, this message translates to:
  /// **'Analysed {completed} games · {failed} unavailable.'**
  String learningAnalysisProgress(int completed, int failed);

  /// No description provided for @learningAnalysisComplete.
  ///
  /// In en, this message translates to:
  /// **'Analysed {completed} games.'**
  String learningAnalysisComplete(int completed);

  /// No description provided for @learningAnalysisCompleteWithErrors.
  ///
  /// In en, this message translates to:
  /// **'Analysed {completed} games; {failed} could not be analysed. Try again when the engine is ready.'**
  String learningAnalysisCompleteWithErrors(int completed, int failed);

  /// No description provided for @learningThemeHitting.
  ///
  /// In en, this message translates to:
  /// **'Hitting and tempo'**
  String get learningThemeHitting;

  /// No description provided for @learningThemeSafety.
  ///
  /// In en, this message translates to:
  /// **'Blots and safety'**
  String get learningThemeSafety;

  /// No description provided for @learningThemePointMaking.
  ///
  /// In en, this message translates to:
  /// **'Making points'**
  String get learningThemePointMaking;

  /// No description provided for @learningThemePrime.
  ///
  /// In en, this message translates to:
  /// **'Primes and blockades'**
  String get learningThemePrime;

  /// No description provided for @learningThemeAnchor.
  ///
  /// In en, this message translates to:
  /// **'Anchors and escape'**
  String get learningThemeAnchor;

  /// No description provided for @learningThemeRace.
  ///
  /// In en, this message translates to:
  /// **'Racing efficiency'**
  String get learningThemeRace;

  /// No description provided for @learningThemeBearOff.
  ///
  /// In en, this message translates to:
  /// **'Bearing off'**
  String get learningThemeBearOff;

  /// No description provided for @learningThemeBarEntry.
  ///
  /// In en, this message translates to:
  /// **'Entering from the bar'**
  String get learningThemeBarEntry;

  /// No description provided for @learningThemeCube.
  ///
  /// In en, this message translates to:
  /// **'Cube decisions'**
  String get learningThemeCube;

  /// No description provided for @analysisCubeNoDouble.
  ///
  /// In en, this message translates to:
  /// **'No double'**
  String get analysisCubeNoDouble;

  /// No description provided for @analysisCubeDouble.
  ///
  /// In en, this message translates to:
  /// **'Double'**
  String get analysisCubeDouble;

  /// No description provided for @analysisCubeTake.
  ///
  /// In en, this message translates to:
  /// **'Take'**
  String get analysisCubeTake;

  /// No description provided for @analysisCubePass.
  ///
  /// In en, this message translates to:
  /// **'Pass'**
  String get analysisCubePass;

  /// No description provided for @learningAnalysisStarting.
  ///
  /// In en, this message translates to:
  /// **'Analysing saved games…'**
  String get learningAnalysisStarting;

  /// No description provided for @tutorCubelessEstimateScope.
  ///
  /// In en, this message translates to:
  /// **'0-ply cubeless estimate · score unavailable'**
  String get tutorCubelessEstimateScope;

  /// No description provided for @tutorLossPp.
  ///
  /// In en, this message translates to:
  /// **'Loss pp'**
  String get tutorLossPp;

  /// No description provided for @tutorLoss.
  ///
  /// In en, this message translates to:
  /// **'Loss'**
  String get tutorLoss;

  /// No description provided for @scoreSheetNoMoves.
  ///
  /// In en, this message translates to:
  /// **'No moves yet'**
  String get scoreSheetNoMoves;

  /// No description provided for @tutorOptions.
  ///
  /// In en, this message translates to:
  /// **'Tutoring options'**
  String get tutorOptions;

  /// No description provided for @tutorCollapseTooltip.
  ///
  /// In en, this message translates to:
  /// **'Collapse tutor'**
  String get tutorCollapseTooltip;

  /// No description provided for @tutorExpandTooltip.
  ///
  /// In en, this message translates to:
  /// **'Expand tutor'**
  String get tutorExpandTooltip;

  /// No description provided for @onlineTitle.
  ///
  /// In en, this message translates to:
  /// **'Play Online'**
  String get onlineTitle;

  /// No description provided for @onlineUnassistedNote.
  ///
  /// In en, this message translates to:
  /// **'Live online games are unassisted. Review your moves and practise mistakes after the match.'**
  String get onlineUnassistedNote;

  /// No description provided for @onlineNotConfiguredTitle.
  ///
  /// In en, this message translates to:
  /// **'Online play isn’t configured in this build'**
  String get onlineNotConfiguredTitle;

  /// No description provided for @onlineNotConfiguredBody.
  ///
  /// In en, this message translates to:
  /// **'This build has no Firebase backend wired up, so create/join matches are unavailable.'**
  String get onlineNotConfiguredBody;

  /// No description provided for @onlineErrorNoMatch.
  ///
  /// In en, this message translates to:
  /// **'No match with that code. Check it and try again.'**
  String get onlineErrorNoMatch;

  /// No description provided for @onlineErrorSeatTaken.
  ///
  /// In en, this message translates to:
  /// **'That match is no longer open — the seat has been taken.'**
  String get onlineErrorSeatTaken;

  /// No description provided for @onlineErrorPermission.
  ///
  /// In en, this message translates to:
  /// **'That match is not open to you.'**
  String get onlineErrorPermission;

  /// No description provided for @onlineErrorGeneric.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get onlineErrorGeneric;

  /// No description provided for @onlineMatchFinished.
  ///
  /// In en, this message translates to:
  /// **'That match has finished — nothing left to rejoin.'**
  String get onlineMatchFinished;

  /// No description provided for @onlineEnterCodeError.
  ///
  /// In en, this message translates to:
  /// **'Enter a match code.'**
  String get onlineEnterCodeError;

  /// No description provided for @onlineOpponentShort.
  ///
  /// In en, this message translates to:
  /// **'Opp'**
  String get onlineOpponentShort;

  /// No description provided for @onlineMatchInProgress.
  ///
  /// In en, this message translates to:
  /// **'Match in progress'**
  String get onlineMatchInProgress;

  /// No description provided for @onlineResumePrompt.
  ///
  /// In en, this message translates to:
  /// **'You were playing match {code}.'**
  String onlineResumePrompt(Object code);

  /// No description provided for @onlineRejoin.
  ///
  /// In en, this message translates to:
  /// **'Rejoin'**
  String get onlineRejoin;

  /// No description provided for @onlineForgetMatch.
  ///
  /// In en, this message translates to:
  /// **'Forget this match'**
  String get onlineForgetMatch;

  /// No description provided for @onlineCreateTitle.
  ///
  /// In en, this message translates to:
  /// **'Create match'**
  String get onlineCreateTitle;

  /// No description provided for @onlineMatchLength.
  ///
  /// In en, this message translates to:
  /// **'Match length'**
  String get onlineMatchLength;

  /// No description provided for @onlineNoCubeTitle.
  ///
  /// In en, this message translates to:
  /// **'Play without cube'**
  String get onlineNoCubeTitle;

  /// No description provided for @onlineNoCubeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'No doubling cube this match'**
  String get onlineNoCubeSubtitle;

  /// No description provided for @onlineCreate.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get onlineCreate;

  /// No description provided for @onlineWaitingOpponent.
  ///
  /// In en, this message translates to:
  /// **'Waiting for opponent…'**
  String get onlineWaitingOpponent;

  /// No description provided for @onlineShareCode.
  ///
  /// In en, this message translates to:
  /// **'Share this code'**
  String get onlineShareCode;

  /// No description provided for @onlineCopyCode.
  ///
  /// In en, this message translates to:
  /// **'Copy code'**
  String get onlineCopyCode;

  /// No description provided for @onlineCodeCopied.
  ///
  /// In en, this message translates to:
  /// **'Code copied'**
  String get onlineCodeCopied;

  /// No description provided for @onlineJoinTitle.
  ///
  /// In en, this message translates to:
  /// **'Join match'**
  String get onlineJoinTitle;

  /// No description provided for @onlineRoomCode.
  ///
  /// In en, this message translates to:
  /// **'Match code'**
  String get onlineRoomCode;

  /// No description provided for @onlineJoin.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get onlineJoin;

  /// No description provided for @lanTitle.
  ///
  /// In en, this message translates to:
  /// **'Play Nearby'**
  String get lanTitle;

  /// No description provided for @lanTabHost.
  ///
  /// In en, this message translates to:
  /// **'Host'**
  String get lanTabHost;

  /// No description provided for @lanTabJoin.
  ///
  /// In en, this message translates to:
  /// **'Join'**
  String get lanTabJoin;

  /// No description provided for @lanUnassistedNote.
  ///
  /// In en, this message translates to:
  /// **'Live nearby games are unassisted. Review your moves and practise mistakes after the match.'**
  String get lanUnassistedNote;

  /// No description provided for @lanGameStartFailed.
  ///
  /// In en, this message translates to:
  /// **'The game could not be started. The other device can try joining again.'**
  String get lanGameStartFailed;

  /// No description provided for @lanHostPortInUse.
  ///
  /// In en, this message translates to:
  /// **'Could not start hosting — the port is already in use. Close any other copy of Backgammon Buddy and try again.'**
  String get lanHostPortInUse;

  /// No description provided for @lanHostStartFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not start hosting. Check your Wi-Fi connection and try again.'**
  String get lanHostStartFailed;

  /// No description provided for @lanHostTitle.
  ///
  /// In en, this message translates to:
  /// **'Host a game'**
  String get lanHostTitle;

  /// No description provided for @lanStartHosting.
  ///
  /// In en, this message translates to:
  /// **'Start hosting'**
  String get lanStartHosting;

  /// No description provided for @lanHostHelp.
  ///
  /// In en, this message translates to:
  /// **'Both devices must be on the same Wi-Fi. This one deals the dice and keeps the score.'**
  String get lanHostHelp;

  /// No description provided for @lanWaitingPlayerTitle.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a player'**
  String get lanWaitingPlayerTitle;

  /// No description provided for @lanRoomCodeInfo.
  ///
  /// In en, this message translates to:
  /// **'Tell the other player this code. It is what lets them in — the app never sends it over the network.'**
  String get lanRoomCodeInfo;

  /// No description provided for @lanWaitingPlayer.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a player…'**
  String get lanWaitingPlayer;

  /// No description provided for @lanStopHosting.
  ///
  /// In en, this message translates to:
  /// **'Stop hosting'**
  String get lanStopHosting;

  /// No description provided for @lanFindNearbyPort.
  ///
  /// In en, this message translates to:
  /// **'Ask the other device to look for nearby games. Listening on port {port}.'**
  String lanFindNearbyPort(int port);

  /// No description provided for @lanOnNetwork.
  ///
  /// In en, this message translates to:
  /// **'On this network'**
  String get lanOnNetwork;

  /// No description provided for @lanCopyAddress.
  ///
  /// In en, this message translates to:
  /// **'Copy address'**
  String get lanCopyAddress;

  /// No description provided for @lanAddressCopied.
  ///
  /// In en, this message translates to:
  /// **'Address copied'**
  String get lanAddressCopied;

  /// No description provided for @lanScanHostTitle.
  ///
  /// In en, this message translates to:
  /// **'Scan the host'**
  String get lanScanHostTitle;

  /// No description provided for @lanScanHostHelp.
  ///
  /// In en, this message translates to:
  /// **'The other device shows a QR code on its Host screen. Scanning it fills in the address and the room code for you.'**
  String get lanScanHostHelp;

  /// No description provided for @lanScanQr.
  ///
  /// In en, this message translates to:
  /// **'Scan QR code'**
  String get lanScanQr;

  /// No description provided for @lanScannerUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The camera or its permission is unavailable. Enter the address and room code below instead.'**
  String get lanScannerUnavailable;

  /// No description provided for @lanInvalidQr.
  ///
  /// In en, this message translates to:
  /// **'That QR code is not a Backgammon Buddy game. Scan the one on the other device’s Host screen.'**
  String get lanInvalidQr;

  /// No description provided for @lanScannerFailed.
  ///
  /// In en, this message translates to:
  /// **'The scanner could not be opened. Enter the address and code below instead.'**
  String get lanScannerFailed;

  /// No description provided for @lanNearbyGames.
  ///
  /// In en, this message translates to:
  /// **'Nearby games'**
  String get lanNearbyGames;

  /// No description provided for @lanSearching.
  ///
  /// In en, this message translates to:
  /// **'Looking for nearby games…'**
  String get lanSearching;

  /// No description provided for @lanNoGamesFound.
  ///
  /// In en, this message translates to:
  /// **'No games found yet. Make sure the other device is hosting and both are on the same Wi-Fi — or enter its address below.'**
  String get lanNoGamesFound;

  /// No description provided for @lanStillSearching.
  ///
  /// In en, this message translates to:
  /// **'Still looking…'**
  String get lanStillSearching;

  /// No description provided for @lanEnterAddress.
  ///
  /// In en, this message translates to:
  /// **'Enter address'**
  String get lanEnterAddress;

  /// No description provided for @lanEnterAddressHelp.
  ///
  /// In en, this message translates to:
  /// **'Automatic discovery does not work on every network (and on iOS it may be blocked entirely). The host screen shows this device what to type.'**
  String get lanEnterAddressHelp;

  /// No description provided for @lanIpAddress.
  ///
  /// In en, this message translates to:
  /// **'IP address'**
  String get lanIpAddress;

  /// No description provided for @lanPort.
  ///
  /// In en, this message translates to:
  /// **'Port'**
  String get lanPort;

  /// No description provided for @lanInvalidPort.
  ///
  /// In en, this message translates to:
  /// **'Enter a port between 1 and 65535.'**
  String get lanInvalidPort;

  /// No description provided for @lanEnterAddressError.
  ///
  /// In en, this message translates to:
  /// **'Enter the address shown on the other device.'**
  String get lanEnterAddressError;

  /// No description provided for @lanEnterRoomCodeError.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code from the other device.'**
  String get lanEnterRoomCodeError;

  /// No description provided for @lanJoinWrongCode.
  ///
  /// In en, this message translates to:
  /// **'Wrong room code. Check the four digits on the other device.'**
  String get lanJoinWrongCode;

  /// No description provided for @lanJoinVersionMismatch.
  ///
  /// In en, this message translates to:
  /// **'The other device is running a different version of Backgammon Buddy.'**
  String get lanJoinVersionMismatch;

  /// No description provided for @lanJoinHandshakeFailed.
  ///
  /// In en, this message translates to:
  /// **'That device did not answer the way Backgammon Buddy does. Check the address and port.'**
  String get lanJoinHandshakeFailed;

  /// No description provided for @lanJoinFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not join. Check the address and room code, then try again.'**
  String get lanJoinFailed;

  /// No description provided for @lanJoinTarget.
  ///
  /// In en, this message translates to:
  /// **'Join {name}'**
  String lanJoinTarget(Object name);

  /// No description provided for @lanJoinTargetHelp.
  ///
  /// In en, this message translates to:
  /// **'Enter the 4-digit code shown on the other device.'**
  String get lanJoinTargetHelp;

  /// No description provided for @lanJoiningTarget.
  ///
  /// In en, this message translates to:
  /// **'Joining {name}'**
  String lanJoiningTarget(Object name);

  /// No description provided for @lanConnect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get lanConnect;

  /// No description provided for @lanBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get lanBack;

  /// No description provided for @lanTryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get lanTryAgain;

  /// No description provided for @lanStatusBusy.
  ///
  /// In en, this message translates to:
  /// **'Room in use — waiting…'**
  String get lanStatusBusy;

  /// No description provided for @lanStatusReconnecting.
  ///
  /// In en, this message translates to:
  /// **'Lost the connection — retrying…'**
  String get lanStatusReconnecting;

  /// No description provided for @lanStatusConnected.
  ///
  /// In en, this message translates to:
  /// **'Connected — starting the match…'**
  String get lanStatusConnected;

  /// No description provided for @lanStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not join.'**
  String get lanStatusFailed;

  /// No description provided for @lanStatusConnecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting…'**
  String get lanStatusConnecting;

  /// No description provided for @diagnosticsCopySuccess.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics copied to clipboard'**
  String get diagnosticsCopySuccess;

  /// No description provided for @diagnosticsReviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Review diagnostic report'**
  String get diagnosticsReviewTitle;

  /// No description provided for @diagnosticsPrivacyNotice.
  ///
  /// In en, this message translates to:
  /// **'Opening the draft sends the details below to GitHub, including the app version, platform and any error details. No public issue is posted until you submit it there. If these details contain private information, cancel and use Copy to prepare a report yourself.'**
  String get diagnosticsPrivacyNotice;

  /// No description provided for @diagnosticsCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get diagnosticsCancel;

  /// No description provided for @diagnosticsOpenGitHub.
  ///
  /// In en, this message translates to:
  /// **'Open GitHub'**
  String get diagnosticsOpenGitHub;

  /// No description provided for @diagnosticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Diagnostics'**
  String get diagnosticsTitle;

  /// No description provided for @diagnosticsReportTooltip.
  ///
  /// In en, this message translates to:
  /// **'Report an issue on GitHub'**
  String get diagnosticsReportTooltip;

  /// No description provided for @diagnosticsCopyTooltip.
  ///
  /// In en, this message translates to:
  /// **'Copy to clipboard'**
  String get diagnosticsCopyTooltip;

  /// No description provided for @diagnosticsClearTooltip.
  ///
  /// In en, this message translates to:
  /// **'Clear log'**
  String get diagnosticsClearTooltip;

  /// No description provided for @diagnosticsEmpty.
  ///
  /// In en, this message translates to:
  /// **'No errors recorded.\n\nIf something goes wrong, it is logged here — come back and copy the details into a bug report.'**
  String get diagnosticsEmpty;

  /// No description provided for @gameHudNeutralScore.
  ///
  /// In en, this message translates to:
  /// **'{whiteLabel} {whiteScore}–{blackScore} {blackLabel} · to {matchLength}'**
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  );

  /// No description provided for @gameHudPlayerScore.
  ///
  /// In en, this message translates to:
  /// **'{you} {mine}–{theirs} {opponent} · to {matchLength}'**
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  );

  /// No description provided for @gameHudYou.
  ///
  /// In en, this message translates to:
  /// **'You'**
  String get gameHudYou;

  /// No description provided for @gameHudAi.
  ///
  /// In en, this message translates to:
  /// **'AI'**
  String get gameHudAi;

  /// No description provided for @gameHudGameNumber.
  ///
  /// In en, this message translates to:
  /// **'Game {number}'**
  String gameHudGameNumber(int number);

  /// No description provided for @gameHudMatchContext.
  ///
  /// In en, this message translates to:
  /// **'{score} · {game}'**
  String gameHudMatchContext(Object score, Object game);

  /// No description provided for @gameHudHotSeatDetail.
  ///
  /// In en, this message translates to:
  /// **'{whiteLabel} vs {blackLabel} · {pipsLabel} {whitePips}–{blackPips}'**
  String gameHudHotSeatDetail(
    Object whiteLabel,
    Object blackLabel,
    Object pipsLabel,
    int whitePips,
    int blackPips,
  );

  /// No description provided for @gameHudOpponentDetail.
  ///
  /// In en, this message translates to:
  /// **'vs {opponent} · {pipsLabel} {mine}–{theirs}'**
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  );

  /// No description provided for @gameHudOpponentDetailWithLevel.
  ///
  /// In en, this message translates to:
  /// **'vs {opponent} · {level} · {pipsLabel} {mine}–{theirs}'**
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  );

  /// No description provided for @gameHudPips.
  ///
  /// In en, this message translates to:
  /// **'Pips'**
  String get gameHudPips;

  /// No description provided for @gameHudCrawford.
  ///
  /// In en, this message translates to:
  /// **'Crawford'**
  String get gameHudCrawford;

  /// No description provided for @gameHudDouble.
  ///
  /// In en, this message translates to:
  /// **'Double'**
  String get gameHudDouble;

  /// No description provided for @gameHudMoreActions.
  ///
  /// In en, this message translates to:
  /// **'More actions'**
  String get gameHudMoreActions;

  /// No description provided for @gameHudSurrender.
  ///
  /// In en, this message translates to:
  /// **'Surrender…'**
  String get gameHudSurrender;

  /// No description provided for @gameHudThinking.
  ///
  /// In en, this message translates to:
  /// **'Thinking'**
  String get gameHudThinking;

  /// No description provided for @gameHudDoubleBeforeRoll.
  ///
  /// In en, this message translates to:
  /// **'You can only double before rolling, on your turn.'**
  String get gameHudDoubleBeforeRoll;

  /// No description provided for @gameHudNoDoubleCrawford.
  ///
  /// In en, this message translates to:
  /// **'No doubling in the Crawford game — this single game decides the match.'**
  String get gameHudNoDoubleCrawford;

  /// No description provided for @gameHudOnlyCubeOwner.
  ///
  /// In en, this message translates to:
  /// **'Only the cube owner can double, and the other side owns it right now.'**
  String get gameHudOnlyCubeOwner;

  /// No description provided for @gameHudDoubleUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Doubling is not available right now.'**
  String get gameHudDoubleUnavailable;

  /// No description provided for @gameDialogScoreLine.
  ///
  /// In en, this message translates to:
  /// **'{whiteLabel} {whiteScore} — {blackScore} {blackLabel} (to {matchLength})'**
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  );

  /// No description provided for @gameDialogPlayerWon.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins this game ({points}).'**
  String gameDialogPlayerWon(Object winner, Object points);

  /// No description provided for @gameDialogPlayerWonGammon.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins this game ({points}, gammon).'**
  String gameDialogPlayerWonGammon(Object winner, Object points);

  /// No description provided for @gameDialogPlayerWonBackgammon.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins this game ({points}, backgammon).'**
  String gameDialogPlayerWonBackgammon(Object winner, Object points);

  /// No description provided for @gameDialogPlayerWonDrop.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins this game ({points}) — {loser} declined the double.'**
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser);

  /// No description provided for @gameDialogPlayerWonResignation.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins this game ({points}) — {loser} resigned.'**
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  );

  /// No description provided for @gameDialogPassDeviceTitle.
  ///
  /// In en, this message translates to:
  /// **'Pass the device'**
  String get gameDialogPassDeviceTitle;

  /// No description provided for @gameDialogPlayersTurn.
  ///
  /// In en, this message translates to:
  /// **'{name}’s turn'**
  String gameDialogPlayersTurn(Object name);

  /// No description provided for @gameDialogTapToContinue.
  ///
  /// In en, this message translates to:
  /// **'Tap to continue'**
  String get gameDialogTapToContinue;

  /// No description provided for @gameDialogCubeOfferedTitle.
  ///
  /// In en, this message translates to:
  /// **'Double offered'**
  String get gameDialogCubeOfferedTitle;

  /// No description provided for @gameDialogCubeOfferMessage.
  ///
  /// In en, this message translates to:
  /// **'{doubler} offers a double to {value}. Take or pass?{tutorLine}'**
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  );

  /// No description provided for @gameDialogPass.
  ///
  /// In en, this message translates to:
  /// **'Pass'**
  String get gameDialogPass;

  /// No description provided for @gameDialogTake.
  ///
  /// In en, this message translates to:
  /// **'Take'**
  String get gameDialogTake;

  /// No description provided for @gameDialogResignationTitle.
  ///
  /// In en, this message translates to:
  /// **'Resignation offered'**
  String get gameDialogResignationTitle;

  /// No description provided for @gameDialogResignationMessage.
  ///
  /// In en, this message translates to:
  /// **'{resigner} offers to resign a {value}. Accept or decline?'**
  String gameDialogResignationMessage(Object resigner, Object value);

  /// No description provided for @gameDialogResignSingle.
  ///
  /// In en, this message translates to:
  /// **'single game'**
  String get gameDialogResignSingle;

  /// No description provided for @gameDialogResignGammon.
  ///
  /// In en, this message translates to:
  /// **'gammon'**
  String get gameDialogResignGammon;

  /// No description provided for @gameDialogResignBackgammon.
  ///
  /// In en, this message translates to:
  /// **'backgammon'**
  String get gameDialogResignBackgammon;

  /// No description provided for @gameDialogDecline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get gameDialogDecline;

  /// No description provided for @gameDialogAccept.
  ///
  /// In en, this message translates to:
  /// **'Accept'**
  String get gameDialogAccept;

  /// No description provided for @gameDialogGameOverTitle.
  ///
  /// In en, this message translates to:
  /// **'Game over'**
  String get gameDialogGameOverTitle;

  /// No description provided for @gameDialogNextGame.
  ///
  /// In en, this message translates to:
  /// **'Next game'**
  String get gameDialogNextGame;

  /// No description provided for @gameDialogMatchOverTitle.
  ///
  /// In en, this message translates to:
  /// **'Match over'**
  String get gameDialogMatchOverTitle;

  /// No description provided for @gameDialogNobody.
  ///
  /// In en, this message translates to:
  /// **'Nobody'**
  String get gameDialogNobody;

  /// No description provided for @gameDialogMatchWinner.
  ///
  /// In en, this message translates to:
  /// **'{winner} wins the match.'**
  String gameDialogMatchWinner(Object winner);

  /// No description provided for @gameDialogSavedToHistory.
  ///
  /// In en, this message translates to:
  /// **'Saved to History'**
  String get gameDialogSavedToHistory;

  /// No description provided for @gameDialogDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get gameDialogDone;

  /// No description provided for @gameTapNoLegalMove.
  ///
  /// In en, this message translates to:
  /// **'No legal move for that checker with the remaining dice'**
  String get gameTapNoLegalMove;

  /// No description provided for @gameTapNoLegalMoveUndo.
  ///
  /// In en, this message translates to:
  /// **'No legal move for that checker with the remaining dice — try Undo'**
  String get gameTapNoLegalMoveUndo;

  /// No description provided for @gameDragHint.
  ///
  /// In en, this message translates to:
  /// **'Tip: drag checkers or tap them — change in Settings'**
  String get gameDragHint;

  /// No description provided for @commonGotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get commonGotIt;

  /// No description provided for @gameHintStageBeforeHint.
  ///
  /// In en, this message translates to:
  /// **'Stage a complete legal play first, then ask for a hint.'**
  String get gameHintStageBeforeHint;

  /// No description provided for @surrenderTitle.
  ///
  /// In en, this message translates to:
  /// **'Surrender'**
  String get surrenderTitle;

  /// No description provided for @surrenderNamedConcedes.
  ///
  /// In en, this message translates to:
  /// **'{player} concedes the current game.'**
  String surrenderNamedConcedes(String player);

  /// No description provided for @surrenderConcedes.
  ///
  /// In en, this message translates to:
  /// **'Concedes the current game.'**
  String get surrenderConcedes;

  /// No description provided for @surrenderAvailableAtNamedTurn.
  ///
  /// In en, this message translates to:
  /// **'Available at the start of {player}’s turn'**
  String surrenderAvailableAtNamedTurn(String player);

  /// No description provided for @surrenderAvailableAtYourTurn.
  ///
  /// In en, this message translates to:
  /// **'Available at the start of your turn'**
  String get surrenderAvailableAtYourTurn;

  /// No description provided for @commonCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get commonCancel;

  /// No description provided for @surrenderSingle.
  ///
  /// In en, this message translates to:
  /// **'Single (1)'**
  String get surrenderSingle;

  /// No description provided for @surrenderGammon.
  ///
  /// In en, this message translates to:
  /// **'Gammon (2)'**
  String get surrenderGammon;

  /// No description provided for @surrenderBackgammon.
  ///
  /// In en, this message translates to:
  /// **'Backgammon (3)'**
  String get surrenderBackgammon;

  /// No description provided for @surrenderChoosePlayer.
  ///
  /// In en, this message translates to:
  /// **'Who is conceding this game?'**
  String get surrenderChoosePlayer;

  /// No description provided for @commonDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get commonDone;

  /// No description provided for @cubeDouble.
  ///
  /// In en, this message translates to:
  /// **'Double'**
  String get cubeDouble;

  /// No description provided for @cubeBlockedOtherPlayersTurn.
  ///
  /// In en, this message translates to:
  /// **'It’s the other player’s turn to act.'**
  String get cubeBlockedOtherPlayersTurn;

  /// No description provided for @cubeBlockedCrawford.
  ///
  /// In en, this message translates to:
  /// **'The cube is unavailable for the Crawford game.'**
  String get cubeBlockedCrawford;

  /// No description provided for @cubeBlockedOwnedByOther.
  ///
  /// In en, this message translates to:
  /// **'Only the cube owner can double, and the other side owns it right now.'**
  String get cubeBlockedOwnedByOther;

  /// No description provided for @cubeBlockedUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Doubling is not available right now.'**
  String get cubeBlockedUnavailable;

  /// No description provided for @gameStatusRolling.
  ///
  /// In en, this message translates to:
  /// **'Rolling…'**
  String get gameStatusRolling;

  /// No description provided for @gameStatusThinking.
  ///
  /// In en, this message translates to:
  /// **'Thinking…'**
  String get gameStatusThinking;

  /// No description provided for @gameStatusPlayersTurn.
  ///
  /// In en, this message translates to:
  /// **'{player}’s turn'**
  String gameStatusPlayersTurn(String player);

  /// No description provided for @cubeAdviceOpponentTake.
  ///
  /// In en, this message translates to:
  /// **'Double — opponent should take'**
  String get cubeAdviceOpponentTake;

  /// No description provided for @cubeAdviceOpponentPass.
  ///
  /// In en, this message translates to:
  /// **'Double — opponent should pass'**
  String get cubeAdviceOpponentPass;

  /// No description provided for @gameErrorBannerLabel.
  ///
  /// In en, this message translates to:
  /// **'Error: {error}'**
  String gameErrorBannerLabel(Object error);

  /// No description provided for @privacyTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy and data'**
  String get privacyTitle;

  /// No description provided for @privacyAppTitle.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy by Freevia'**
  String get privacyAppTitle;

  /// No description provided for @privacyIntro.
  ///
  /// In en, this message translates to:
  /// **'This page describes how the current app handles your data.'**
  String get privacyIntro;

  /// No description provided for @privacyLocalTitle.
  ///
  /// In en, this message translates to:
  /// **'Games and tutoring on your device'**
  String get privacyLocalTitle;

  /// No description provided for @privacyLocalBody.
  ///
  /// In en, this message translates to:
  /// **'Local matches, settings, analysis and practice progress are stored on this device. The backgammon engine and tutor explanations run here. Delete a saved match from History to remove its saved practice exercises and attempts too. Delete individual exercises or reset practice progress in Learning; clear local error reports in Settings → Diagnostics. Your device’s backup settings may also apply to game history. Online sign-in credentials are kept in the device’s protected storage.'**
  String get privacyLocalBody;

  /// No description provided for @privacyOnlineTitle.
  ///
  /// In en, this message translates to:
  /// **'Online and nearby play'**
  String get privacyOnlineTitle;

  /// No description provided for @privacyOnlineBody.
  ///
  /// In en, this message translates to:
  /// **'Online play sends an anonymous player identifier, match settings, moves and dice-handshake records to Google Firebase so both players can play the same match. Deleting History on this device does not delete online records. Hosted matches expire 30 days after creation; scheduled cleanup removes their cloud logs. Match records are stored in the EU; Firebase Authentication processes sign-in data in the United States. Online connections to Google use encryption in transit. Nearby play exchanges match information with the other device over an unencrypted local connection; use trusted Wi-Fi.'**
  String get privacyOnlineBody;

  /// No description provided for @privacyDiagnosticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Optional usage and crash diagnostics'**
  String get privacyDiagnosticsTitle;

  /// No description provided for @privacyDiagnosticsBody.
  ///
  /// In en, this message translates to:
  /// **'Sharing is off until you choose it in Settings. If enabled, Google Firebase receives usage events, app/device information, performance measurements and crash reports to help improve the app. Turn sharing off at any time to stop new optional collection. This does not erase data already sent. Local diagnostics and online matches work separately from this choice.'**
  String get privacyDiagnosticsBody;

  /// No description provided for @privacyCameraTitle.
  ///
  /// In en, this message translates to:
  /// **'Camera for nearby QR codes'**
  String get privacyCameraTitle;

  /// No description provided for @privacyCameraBody.
  ///
  /// In en, this message translates to:
  /// **'The optional camera scans nearby game QR codes. Images are processed on your device and are not saved or uploaded. You can refuse camera access and enter the host address manually. This version does not use the microphone or provide physical-board play.'**
  String get privacyCameraBody;

  /// No description provided for @privacyFeedbackTitle.
  ///
  /// In en, this message translates to:
  /// **'Feedback you choose to send'**
  String get privacyFeedbackTitle;

  /// No description provided for @privacyFeedbackBody.
  ///
  /// In en, this message translates to:
  /// **'Feedback opens a GitHub issue draft for you to review. Opening the draft sends its app version and platform to GitHub; feedback from Diagnostics may also send error details. No issue is posted until you submit it. Issues may be public, so remove private information before sending.'**
  String get privacyFeedbackBody;

  /// No description provided for @privacyContactTitle.
  ///
  /// In en, this message translates to:
  /// **'Privacy contact'**
  String get privacyContactTitle;

  /// No description provided for @privacyReadPolicy.
  ///
  /// In en, this message translates to:
  /// **'Read the privacy policy'**
  String get privacyReadPolicy;

  /// No description provided for @privacyPolicyOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open the privacy policy.'**
  String get privacyPolicyOpenFailed;

  /// No description provided for @privacySupportTitle.
  ///
  /// In en, this message translates to:
  /// **'Help and support'**
  String get privacySupportTitle;

  /// No description provided for @privacySupportOpenFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not open support. Contact support@freevia.org.'**
  String get privacySupportOpenFailed;

  /// No description provided for @privacyDeleteConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete online identity and data?'**
  String get privacyDeleteConfirmTitle;

  /// No description provided for @privacyDeleteConfirmBody.
  ///
  /// In en, this message translates to:
  /// **'This immediately ends access to this identity’s cloud matches for both players and requests deletion of the identity and shared online match logs within 30 days. Google may take up to 180 days after account deletion to remove Authentication data from its live and backup systems. Local History and practice remain on this device. Previously sent optional diagnostics are separate; contact privacy@freevia.org about those. This request cannot be undone.'**
  String get privacyDeleteConfirmBody;

  /// No description provided for @privacyRequestDeletion.
  ///
  /// In en, this message translates to:
  /// **'Request deletion'**
  String get privacyRequestDeletion;

  /// No description provided for @privacyDeleteSectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Delete online data'**
  String get privacyDeleteSectionTitle;

  /// No description provided for @privacyDeleteInstructions.
  ///
  /// In en, this message translates to:
  /// **'Use this device’s saved sign-in to verify ownership. A player identifier or invite code alone does not prove ownership. Local-only players do not need an online account.'**
  String get privacyDeleteInstructions;

  /// No description provided for @privacySendingRequest.
  ///
  /// In en, this message translates to:
  /// **'Sending request…'**
  String get privacySendingRequest;

  /// No description provided for @privacyDeleteAction.
  ///
  /// In en, this message translates to:
  /// **'Delete online identity and data'**
  String get privacyDeleteAction;

  /// No description provided for @privacyDeleteRequested.
  ///
  /// In en, this message translates to:
  /// **'Deletion requested. This online identity is signed out. Its cloud data will be deleted within 30 days. Starting online play again creates a new identity. Google’s Authentication data removal can take up to 180 days. Contact privacy@freevia.org for help.'**
  String get privacyDeleteRequested;

  /// No description provided for @privacyDeleteRequestedSignOutFailed.
  ///
  /// In en, this message translates to:
  /// **'Deletion requested. Its cloud data will be deleted within 30 days. The device could not clear the saved sign-in, but the online identity is blocked from further match access. Google’s Authentication data removal can take up to 180 days. Contact privacy@freevia.org for help.'**
  String get privacyDeleteRequestedSignOutFailed;

  /// No description provided for @privacyDeleteNoIdentity.
  ///
  /// In en, this message translates to:
  /// **'No usable online identity is saved on this device. No new account was created. If you previously used online play, contact privacy@freevia.org for help; hosted matches expire after 30 days.'**
  String get privacyDeleteNoIdentity;

  /// No description provided for @privacyDeleteRequestFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not confirm the deletion request. Check your connection and retry, or contact privacy@freevia.org.'**
  String get privacyDeleteRequestFailed;

  /// No description provided for @privacyConsentTitle.
  ///
  /// In en, this message translates to:
  /// **'Share usage and crash diagnostics?'**
  String get privacyConsentTitle;

  /// No description provided for @privacyConsentBody.
  ///
  /// In en, this message translates to:
  /// **'This sends usage events, app/device information, crash reports and performance measurements to Google Firebase. Sharing is optional. Games and tutoring work with it off, and you can turn it off again in Settings.'**
  String get privacyConsentBody;

  /// No description provided for @privacyKeepOff.
  ///
  /// In en, this message translates to:
  /// **'Keep off'**
  String get privacyKeepOff;

  /// No description provided for @privacyShareDiagnostics.
  ///
  /// In en, this message translates to:
  /// **'Share diagnostics'**
  String get privacyShareDiagnostics;

  /// No description provided for @privacySaveFailed.
  ///
  /// In en, this message translates to:
  /// **'Could not save the privacy choice. Please try again.'**
  String get privacySaveFailed;

  /// No description provided for @privacySettingsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'What stays on your device and what is shared'**
  String get privacySettingsSubtitle;

  /// No description provided for @privacyDiagnosticsSettingTitle.
  ///
  /// In en, this message translates to:
  /// **'Share usage and crash diagnostics'**
  String get privacyDiagnosticsSettingTitle;

  /// No description provided for @privacyDiagnosticsSettingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Optional · off by default'**
  String get privacyDiagnosticsSettingSubtitle;

  /// No description provided for @lanScanToJoin.
  ///
  /// In en, this message translates to:
  /// **'Scan to join'**
  String get lanScanToJoin;

  /// No description provided for @lanScanHostCode.
  ///
  /// In en, this message translates to:
  /// **'Scan the host’s code'**
  String get lanScanHostCode;

  /// No description provided for @lanEnterAddressInstead.
  ///
  /// In en, this message translates to:
  /// **'Enter the address instead'**
  String get lanEnterAddressInstead;

  /// No description provided for @lanQrAccessibilityLabel.
  ///
  /// In en, this message translates to:
  /// **'QR code to join this game'**
  String get lanQrAccessibilityLabel;

  /// No description provided for @lanJoinInstruction.
  ///
  /// In en, this message translates to:
  /// **'On the other device, open Play Nearby, choose Join, then scan this QR code.'**
  String get lanJoinInstruction;

  /// No description provided for @lanTorch.
  ///
  /// In en, this message translates to:
  /// **'Torch'**
  String get lanTorch;

  /// No description provided for @lanCameraPermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy cannot use the camera. Allow camera access in device settings, or enter the address shown on the other device manually.'**
  String get lanCameraPermissionDenied;

  /// No description provided for @lanCameraUnsupported.
  ///
  /// In en, this message translates to:
  /// **'This device cannot scan QR codes. Enter the address shown on the other device manually.'**
  String get lanCameraUnsupported;

  /// No description provided for @lanCameraStartFailed.
  ///
  /// In en, this message translates to:
  /// **'The camera could not be started. Enter the address shown on the other device manually.'**
  String get lanCameraStartFailed;

  /// No description provided for @lanPointCameraAtQr.
  ///
  /// In en, this message translates to:
  /// **'Point the camera at the QR code on the other device.'**
  String get lanPointCameraAtQr;

  /// No description provided for @physicalBuddyUnavailableTitle.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy'**
  String get physicalBuddyUnavailableTitle;

  /// No description provided for @physicalBuddyUnavailableBody.
  ///
  /// In en, this message translates to:
  /// **'Physical-board play is not available in this version. On-screen games, tutoring and practice are available from Home.'**
  String get physicalBuddyUnavailableBody;

  /// No description provided for @homePlayWithBuddy.
  ///
  /// In en, this message translates to:
  /// **'Play with Buddy'**
  String get homePlayWithBuddy;

  /// No description provided for @homeBuddyShort.
  ///
  /// In en, this message translates to:
  /// **'Buddy'**
  String get homeBuddyShort;

  /// No description provided for @boardSemanticsLabel.
  ///
  /// In en, this message translates to:
  /// **'Backgammon board. {status}'**
  String boardSemanticsLabel(Object status);

  /// No description provided for @boardWhiteToRoll.
  ///
  /// In en, this message translates to:
  /// **'White to roll.'**
  String get boardWhiteToRoll;

  /// No description provided for @boardBlackToRoll.
  ///
  /// In en, this message translates to:
  /// **'Black to roll.'**
  String get boardBlackToRoll;

  /// No description provided for @boardWhiteToMove.
  ///
  /// In en, this message translates to:
  /// **'White to move, roll {die1} and {die2}.'**
  String boardWhiteToMove(Object die1, Object die2);

  /// No description provided for @boardBlackToMove.
  ///
  /// In en, this message translates to:
  /// **'Black to move, roll {die1} and {die2}.'**
  String boardBlackToMove(Object die1, Object die2);

  /// No description provided for @boardDoubleOffered.
  ///
  /// In en, this message translates to:
  /// **'A double is offered.'**
  String get boardDoubleOffered;

  /// No description provided for @boardResignationOffered.
  ///
  /// In en, this message translates to:
  /// **'A resignation is offered.'**
  String get boardResignationOffered;

  /// No description provided for @boardGameOver.
  ///
  /// In en, this message translates to:
  /// **'The game is over.'**
  String get boardGameOver;

  /// No description provided for @feedbackBugTitle.
  ///
  /// In en, this message translates to:
  /// **'[Bug]: Backgammon Buddy {version} ({platform})'**
  String feedbackBugTitle(Object version, Object platform);

  /// No description provided for @feedbackIdeaTitle.
  ///
  /// In en, this message translates to:
  /// **'[Idea]: Backgammon Buddy'**
  String get feedbackIdeaTitle;

  /// No description provided for @feedbackBugSummary.
  ///
  /// In en, this message translates to:
  /// **'Replace this with a short description of what happened.'**
  String get feedbackBugSummary;

  /// No description provided for @feedbackBugReproduction.
  ///
  /// In en, this message translates to:
  /// **'Replace this with the steps that led to the problem.'**
  String get feedbackBugReproduction;

  /// No description provided for @feedbackBugExpected.
  ///
  /// In en, this message translates to:
  /// **'Replace this with what you expected to happen.'**
  String get feedbackBugExpected;

  /// No description provided for @feedbackIdeaNeed.
  ///
  /// In en, this message translates to:
  /// **'Replace this with what you wanted to do or learn.'**
  String get feedbackIdeaNeed;

  /// No description provided for @feedbackIdeaSuggestion.
  ///
  /// In en, this message translates to:
  /// **'Replace this with the change you would find helpful.'**
  String get feedbackIdeaSuggestion;

  /// No description provided for @feedbackExcerptTruncated.
  ///
  /// In en, this message translates to:
  /// **'(truncated — use Copy to clipboard on the Diagnostics screen for the full log)'**
  String get feedbackExcerptTruncated;

  /// No description provided for @boardWhiteToMoveNoRoll.
  ///
  /// In en, this message translates to:
  /// **'White to move.'**
  String get boardWhiteToMoveNoRoll;

  /// No description provided for @boardBlackToMoveNoRoll.
  ///
  /// In en, this message translates to:
  /// **'Black to move.'**
  String get boardBlackToMoveNoRoll;

  /// No description provided for @feedbackFieldVersion.
  ///
  /// In en, this message translates to:
  /// **'App version'**
  String get feedbackFieldVersion;

  /// No description provided for @feedbackFieldPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get feedbackFieldPlatform;

  /// No description provided for @feedbackFieldSummary.
  ///
  /// In en, this message translates to:
  /// **'What happened'**
  String get feedbackFieldSummary;

  /// No description provided for @feedbackFieldReproduction.
  ///
  /// In en, this message translates to:
  /// **'Steps to reproduce'**
  String get feedbackFieldReproduction;

  /// No description provided for @feedbackFieldExpected.
  ///
  /// In en, this message translates to:
  /// **'Expected result'**
  String get feedbackFieldExpected;

  /// No description provided for @feedbackFieldNeed.
  ///
  /// In en, this message translates to:
  /// **'What you wanted to do'**
  String get feedbackFieldNeed;

  /// No description provided for @feedbackFieldIdea.
  ///
  /// In en, this message translates to:
  /// **'Suggested change'**
  String get feedbackFieldIdea;

  /// No description provided for @buddySetupTitle.
  ///
  /// In en, this message translates to:
  /// **'Play with Buddy'**
  String get buddySetupTitle;

  /// No description provided for @buddySetupSideLabel.
  ///
  /// In en, this message translates to:
  /// **'Buddy plays'**
  String get buddySetupSideLabel;

  /// No description provided for @buddySetupSeatLabel.
  ///
  /// In en, this message translates to:
  /// **'Your seat'**
  String get buddySetupSeatLabel;

  /// No description provided for @buddySetupSeatNear.
  ///
  /// In en, this message translates to:
  /// **'By the phone'**
  String get buddySetupSeatNear;

  /// No description provided for @buddySetupSeatFar.
  ///
  /// In en, this message translates to:
  /// **'Opposite'**
  String get buddySetupSeatFar;

  /// No description provided for @buddySetupSeatHelp.
  ///
  /// In en, this message translates to:
  /// **'Which side of the board you are on. It is how Buddy numbers the points, and how it tells your opening die from its own.'**
  String get buddySetupSeatHelp;

  /// No description provided for @buddySetupVoiceLabel.
  ///
  /// In en, this message translates to:
  /// **'How Buddy talks'**
  String get buddySetupVoiceLabel;

  /// No description provided for @buddySetupVoiceTerse.
  ///
  /// In en, this message translates to:
  /// **'Terse'**
  String get buddySetupVoiceTerse;

  /// No description provided for @buddySetupVoiceFriendly.
  ///
  /// In en, this message translates to:
  /// **'Friendly'**
  String get buddySetupVoiceFriendly;

  /// No description provided for @buddySetupVoiceTerseHelp.
  ///
  /// In en, this message translates to:
  /// **'“13/8, 24/22” — notation, the way two players at a board actually talk.'**
  String get buddySetupVoiceTerseHelp;

  /// No description provided for @buddySetupVoiceFriendlyHelp.
  ///
  /// In en, this message translates to:
  /// **'“Move one checker from 13 to 8, and one from 24 to 22.”'**
  String get buddySetupVoiceFriendlyHelp;

  /// No description provided for @buddySetupTutorHelp.
  ///
  /// In en, this message translates to:
  /// **'Tutor commentary and move explanations follow your saved Tutor preferences in Settings. Buddy gives occasional feedback after your plays; typed dice and manual moves work the same way.'**
  String get buddySetupTutorHelp;

  /// No description provided for @buddySetupCalibrate.
  ///
  /// In en, this message translates to:
  /// **'Calibrate the board'**
  String get buddySetupCalibrate;

  /// No description provided for @buddyFixAim.
  ///
  /// In en, this message translates to:
  /// **'Fix the aim'**
  String get buddyFixAim;

  /// No description provided for @buddyWaitingForOpening.
  ///
  /// In en, this message translates to:
  /// **'Buddy is waiting for the throw that starts the match.'**
  String get buddyWaitingForOpening;

  /// No description provided for @buddyPromptLostBoard.
  ///
  /// In en, this message translates to:
  /// **'Buddy has lost the board. Fix the aim and the match carries on where it stopped.'**
  String get buddyPromptLostBoard;

  /// No description provided for @buddyPromptWaitingPicture.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a picture Buddy can read. Nothing is lost.'**
  String get buddyPromptWaitingPicture;

  /// No description provided for @buddyPromptTypeDice.
  ///
  /// In en, this message translates to:
  /// **'Buddy cannot find the dice. Type the roll instead.'**
  String get buddyPromptTypeDice;

  /// No description provided for @buddyPromptPlay.
  ///
  /// In en, this message translates to:
  /// **'Make your play on the board. Tap it out here if Buddy does not see it.'**
  String get buddyPromptPlay;

  /// No description provided for @buddyPromptWhichPlay.
  ///
  /// In en, this message translates to:
  /// **'Which play was it?'**
  String get buddyPromptWhichPlay;

  /// No description provided for @buddyPromptCube.
  ///
  /// In en, this message translates to:
  /// **'Buddy doubles. Take or drop?'**
  String get buddyPromptCube;

  /// No description provided for @buddyPromptMakeMove.
  ///
  /// In en, this message translates to:
  /// **'Make Buddy’s move on the board, then Buddy will carry on.'**
  String get buddyPromptMakeMove;

  /// No description provided for @buddyPromptThinking.
  ///
  /// In en, this message translates to:
  /// **'Buddy is thinking.'**
  String get buddyPromptThinking;

  /// No description provided for @buddyPromptWaitingCalibration.
  ///
  /// In en, this message translates to:
  /// **'Waiting for a calibration.'**
  String get buddyPromptWaitingCalibration;

  /// No description provided for @buddyPromptMirrorNoDetail.
  ///
  /// In en, this message translates to:
  /// **'Buddy still cannot see its move. The board below is the position it is holding.'**
  String get buddyPromptMirrorNoDetail;

  /// No description provided for @buddyPromptNotLegal.
  ///
  /// In en, this message translates to:
  /// **'That isn’t a legal play.'**
  String get buddyPromptNotLegal;

  /// No description provided for @buddyPromptNotLegalReason.
  ///
  /// In en, this message translates to:
  /// **'That isn’t a legal play. {reason}'**
  String buddyPromptNotLegalReason(String reason);

  /// No description provided for @buddyThrowOpening.
  ///
  /// In en, this message translates to:
  /// **'Throw the opening dice — one die each.'**
  String get buddyThrowOpening;

  /// No description provided for @buddyThrowUser.
  ///
  /// In en, this message translates to:
  /// **'Throw your dice.'**
  String get buddyThrowUser;

  /// No description provided for @buddyThrowBuddy.
  ///
  /// In en, this message translates to:
  /// **'Throw Buddy’s dice.'**
  String get buddyThrowBuddy;

  /// No description provided for @buddyMatchOver.
  ///
  /// In en, this message translates to:
  /// **'The match is over.'**
  String get buddyMatchOver;

  /// No description provided for @buddyYouWin.
  ///
  /// In en, this message translates to:
  /// **'You win the match.'**
  String get buddyYouWin;

  /// No description provided for @buddyBuddyWins.
  ///
  /// In en, this message translates to:
  /// **'Buddy wins the match.'**
  String get buddyBuddyWins;

  /// No description provided for @buddyDoubleNoGame.
  ///
  /// In en, this message translates to:
  /// **'There is no game to double in yet — the opening throw comes first.'**
  String get buddyDoubleNoGame;

  /// No description provided for @buddyDoubleBeforeRoll.
  ///
  /// In en, this message translates to:
  /// **'You can only double before rolling, on your turn.'**
  String get buddyDoubleBeforeRoll;

  /// No description provided for @buddyDoubleCrawford.
  ///
  /// In en, this message translates to:
  /// **'No doubling in the Crawford game — this single game decides the match.'**
  String get buddyDoubleCrawford;

  /// No description provided for @buddyDoubleNotOwner.
  ///
  /// In en, this message translates to:
  /// **'Only the cube owner can double, and the other side owns it right now.'**
  String get buddyDoubleNotOwner;

  /// No description provided for @buddyDoubleUnavailable.
  ///
  /// In en, this message translates to:
  /// **'Doubling is not available right now.'**
  String get buddyDoubleUnavailable;

  /// No description provided for @buddyLookingAtBoard.
  ///
  /// In en, this message translates to:
  /// **'Buddy is looking at the board.'**
  String get buddyLookingAtBoard;

  /// No description provided for @buddyCameraPlayFallback.
  ///
  /// In en, this message translates to:
  /// **'You can still play the match: type each roll on the dice pad and tap your plays out on the board below.'**
  String get buddyCameraPlayFallback;

  /// No description provided for @buddySkipCheck.
  ///
  /// In en, this message translates to:
  /// **'Skip this check'**
  String get buddySkipCheck;

  /// No description provided for @buddyFixedIt.
  ///
  /// In en, this message translates to:
  /// **'I’ve fixed it'**
  String get buddyFixedIt;

  /// No description provided for @buddyDrop.
  ///
  /// In en, this message translates to:
  /// **'Drop'**
  String get buddyDrop;

  /// No description provided for @buddyTake.
  ///
  /// In en, this message translates to:
  /// **'Take'**
  String get buddyTake;

  /// No description provided for @buddyDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get buddyDone;

  /// No description provided for @buddyTranscriptLabel.
  ///
  /// In en, this message translates to:
  /// **'What Buddy said'**
  String get buddyTranscriptLabel;

  /// No description provided for @buddyUndo.
  ///
  /// In en, this message translates to:
  /// **'Undo'**
  String get buddyUndo;

  /// No description provided for @buddyConfirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get buddyConfirm;

  /// No description provided for @buddyDice.
  ///
  /// In en, this message translates to:
  /// **'Dice'**
  String get buddyDice;

  /// No description provided for @buddyDouble.
  ///
  /// In en, this message translates to:
  /// **'Double'**
  String get buddyDouble;

  /// No description provided for @buddyDicePadTitle.
  ///
  /// In en, this message translates to:
  /// **'What did you throw?'**
  String get buddyDicePadTitle;

  /// No description provided for @buddyEnterRoll.
  ///
  /// In en, this message translates to:
  /// **'Enter roll'**
  String get buddyEnterRoll;

  /// No description provided for @buddyContextBeforeGame.
  ///
  /// In en, this message translates to:
  /// **'Play with Buddy'**
  String get buddyContextBeforeGame;

  /// No description provided for @buddyContextMatchScore.
  ///
  /// In en, this message translates to:
  /// **'You {you}–{buddy} Buddy · to {length} · Game {number}'**
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  );

  /// No description provided for @buddyCameraUnavailable.
  ///
  /// In en, this message translates to:
  /// **'The camera could not be started. Check permissions and try again.'**
  String get buddyCameraUnavailable;

  /// No description provided for @buddyCameraPermission.
  ///
  /// In en, this message translates to:
  /// **'Backgammon Buddy does not have permission to use the camera. Allow camera access in your device settings and try again.'**
  String get buddyCameraPermission;

  /// No description provided for @buddyCalibrationTitle.
  ///
  /// In en, this message translates to:
  /// **'Show Buddy the board'**
  String get buddyCalibrationTitle;

  /// No description provided for @buddyCalibrationCornersFold.
  ///
  /// In en, this message translates to:
  /// **'Drag the four outer handles onto the corners of the felt — not the wooden rim — and the four small ones onto the seams where the hinge meets the far and near edges.'**
  String get buddyCalibrationCornersFold;

  /// No description provided for @buddyCalibrationCornersFlat.
  ///
  /// In en, this message translates to:
  /// **'Drag each handle onto a corner of the felt — the playing surface, not the wooden rim around it.'**
  String get buddyCalibrationCornersFlat;

  /// No description provided for @buddyCalibrationCheckLines.
  ///
  /// In en, this message translates to:
  /// **'Then check the twelve lines down each half: every one should run along a point of your board. A line that misses its point is a handle that needs nudging.'**
  String get buddyCalibrationCheckLines;

  /// No description provided for @buddyCalibrationSeatQuestion.
  ///
  /// In en, this message translates to:
  /// **'Which half is your home board?'**
  String get buddyCalibrationSeatQuestion;

  /// No description provided for @buddyCalibrationSeatHelp.
  ///
  /// In en, this message translates to:
  /// **'The half nearest the bottom of the picture. This is what fixes the point numbers, so the lines above move with it.'**
  String get buddyCalibrationSeatHelp;

  /// No description provided for @buddyCalibrationCaptureWait.
  ///
  /// In en, this message translates to:
  /// **'Hold the phone still. Buddy is waiting for the picture to settle before it learns this board.'**
  String get buddyCalibrationCaptureWait;

  /// No description provided for @buddyCalibrationConfirmQuestion.
  ///
  /// In en, this message translates to:
  /// **'Is this your board?'**
  String get buddyCalibrationConfirmQuestion;

  /// No description provided for @buddyCalibrationConfirmFallback.
  ///
  /// In en, this message translates to:
  /// **'Buddy is looking at the board it just learned.'**
  String get buddyCalibrationConfirmFallback;

  /// No description provided for @buddyCalibrationConfirmHelp.
  ///
  /// In en, this message translates to:
  /// **'The men drawn over the picture are what Buddy thinks is on the board. If any of them are in the wrong place, start over — it costs seconds now and a game later.'**
  String get buddyCalibrationConfirmHelp;

  /// No description provided for @buddyCalibrationNext.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get buddyCalibrationNext;

  /// No description provided for @buddyCalibrationBack.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get buddyCalibrationBack;

  /// No description provided for @buddyCalibrationCapture.
  ///
  /// In en, this message translates to:
  /// **'Capture'**
  String get buddyCalibrationCapture;

  /// No description provided for @buddyCalibrationStartOver.
  ///
  /// In en, this message translates to:
  /// **'Start over'**
  String get buddyCalibrationStartOver;

  /// No description provided for @buddyCalibrationLooksRight.
  ///
  /// In en, this message translates to:
  /// **'Looks right'**
  String get buddyCalibrationLooksRight;

  /// No description provided for @buddyCalibrationCornersInvalid.
  ///
  /// In en, this message translates to:
  /// **'Those four handles do not outline a board — one of them has crossed another. Drag them back to the corners of the felt.'**
  String get buddyCalibrationCornersInvalid;

  /// No description provided for @buddyCalibrationPrepTitle.
  ///
  /// In en, this message translates to:
  /// **'Three things first'**
  String get buddyCalibrationPrepTitle;

  /// No description provided for @buddyCalibrationRemoveDiceTitle.
  ///
  /// In en, this message translates to:
  /// **'Take the dice off the board.'**
  String get buddyCalibrationRemoveDiceTitle;

  /// No description provided for @buddyCalibrationRemoveDiceBody.
  ///
  /// In en, this message translates to:
  /// **'Buddy learns the bare board now. A die left on the felt is learned as part of it, and then Buddy can never see the dice again this session.'**
  String get buddyCalibrationRemoveDiceBody;

  /// No description provided for @buddyCalibrationSetupCheckersTitle.
  ///
  /// In en, this message translates to:
  /// **'Set the men up for the start of a game.'**
  String get buddyCalibrationSetupCheckersTitle;

  /// No description provided for @buddyCalibrationSetupCheckersBody.
  ///
  /// In en, this message translates to:
  /// **'Thirty checkers in known places is how Buddy learns this board’s two colours without being told what they are.'**
  String get buddyCalibrationSetupCheckersBody;

  /// No description provided for @buddyCalibrationFitBoardTitle.
  ///
  /// In en, this message translates to:
  /// **'Fit the whole playing field in the picture.'**
  String get buddyCalibrationFitBoardTitle;

  /// No description provided for @buddyCalibrationFitBoardBody.
  ///
  /// In en, this message translates to:
  /// **'Then leave the phone where it is. If it moves, Buddy will say so and you can nudge the corners back.'**
  String get buddyCalibrationFitBoardBody;

  /// No description provided for @buddyCalibrationBoardKind.
  ///
  /// In en, this message translates to:
  /// **'What kind of board is it?'**
  String get buddyCalibrationBoardKind;

  /// No description provided for @buddyCalibrationFlatBoard.
  ///
  /// In en, this message translates to:
  /// **'Flat board'**
  String get buddyCalibrationFlatBoard;

  /// No description provided for @buddyCalibrationFoldingBoard.
  ///
  /// In en, this message translates to:
  /// **'Folding case'**
  String get buddyCalibrationFoldingBoard;

  /// No description provided for @buddyCalibrationBoardKindHelp.
  ///
  /// In en, this message translates to:
  /// **'A folding board needs four extra handles on the hinge seams.'**
  String get buddyCalibrationBoardKindHelp;

  /// No description provided for @buddyCalibrationNoCameraBody.
  ///
  /// In en, this message translates to:
  /// **'Buddy Mode watches a real board, so it cannot start without the camera. Everything else in the app is unaffected.'**
  String get buddyCalibrationNoCameraBody;

  /// No description provided for @buddyHandleHingeSeam.
  ///
  /// In en, this message translates to:
  /// **'Hinge seam {number} of 4'**
  String buddyHandleHingeSeam(int number);

  /// No description provided for @buddyHandleCorner.
  ///
  /// In en, this message translates to:
  /// **'Board corner {number} of 4'**
  String buddyHandleCorner(int number);

  /// No description provided for @buddyNudgeLeft.
  ///
  /// In en, this message translates to:
  /// **'Nudge left'**
  String get buddyNudgeLeft;

  /// No description provided for @buddyNudgeRight.
  ///
  /// In en, this message translates to:
  /// **'Nudge right'**
  String get buddyNudgeRight;

  /// No description provided for @buddyNudgeUp.
  ///
  /// In en, this message translates to:
  /// **'Nudge up'**
  String get buddyNudgeUp;

  /// No description provided for @buddyNudgeDown.
  ///
  /// In en, this message translates to:
  /// **'Nudge down'**
  String get buddyNudgeDown;

  /// No description provided for @buddyCalibrationProblemCorners.
  ///
  /// In en, this message translates to:
  /// **'Those four corners do not outline a board. Drag each handle onto a corner of the playing field and try again.'**
  String get buddyCalibrationProblemCorners;

  /// No description provided for @buddyCalibrationProblemFoldCorners.
  ///
  /// In en, this message translates to:
  /// **'Those eight points do not outline a folding board. Put four on the playing-field corners and four on the hinge seams, then try again.'**
  String get buddyCalibrationProblemFoldCorners;

  /// No description provided for @buddyCalibrationProblemUnreadable.
  ///
  /// In en, this message translates to:
  /// **'I cannot make out the board itself — every part of it is covered, or lost in shadow or glare. Clear the board, add some light, and try again.'**
  String get buddyCalibrationProblemUnreadable;

  /// No description provided for @buddyCalibrationProblemRegionUnreadable.
  ///
  /// In en, this message translates to:
  /// **'I cannot make out {region} — something may be resting on it, or that corner of the board may be too dark to read. Clear it, or add some light, and try again.'**
  String buddyCalibrationProblemRegionUnreadable(String region);

  /// No description provided for @buddyCalibrationProblemColours.
  ///
  /// In en, this message translates to:
  /// **'The two sets of checkers look too much alike from here. More light, or an angle with less glare on the board, usually fixes it.'**
  String get buddyCalibrationProblemColours;

  /// No description provided for @buddyCalibrationProblemWrongChecker.
  ///
  /// In en, this message translates to:
  /// **'The checkers are not in the starting position — point {number} is holding the wrong colour. Set the board up for the start of a game, then calibrate again.'**
  String buddyCalibrationProblemWrongChecker(int number);

  /// No description provided for @buddyCalibrationProblemOverexposed.
  ///
  /// In en, this message translates to:
  /// **'There is so much light on the board that its colours are washing into each other. Dim the light, or move the phone so the lamp is not shining straight back at it.'**
  String get buddyCalibrationProblemOverexposed;

  /// No description provided for @buddyCalibrationProblemReadBack.
  ///
  /// In en, this message translates to:
  /// **'I can read this board, but not as a game about to start. Set the men up for the start of a game, then calibrate again.'**
  String get buddyCalibrationProblemReadBack;

  /// No description provided for @buddyCalibrationProblemStacks.
  ///
  /// In en, this message translates to:
  /// **'I can read this board, but I cannot make out how far one checker sits behind another from here — so I would get the numbers wrong. A little more light on the near points, or a slightly higher camera angle, usually fixes it.'**
  String get buddyCalibrationProblemStacks;

  /// No description provided for @buddyCalibrationProblemNotVisible.
  ///
  /// In en, this message translates to:
  /// **'I cannot see the whole board. Move the phone back, or drag the corners onto the playing field.'**
  String get buddyCalibrationProblemNotVisible;

  /// No description provided for @buddyConfirmBoardOutOfFrame.
  ///
  /// In en, this message translates to:
  /// **'I cannot see the whole board any more — {region} is outside the picture. Line the camera up again, or re-check the corners.'**
  String buddyConfirmBoardOutOfFrame(String region);

  /// No description provided for @buddyConfirmStartingPosition.
  ///
  /// In en, this message translates to:
  /// **'That looks like the starting position.'**
  String get buddyConfirmStartingPosition;

  /// No description provided for @buddyConfirmNoCheckers.
  ///
  /// In en, this message translates to:
  /// **'I cannot see a checker anywhere the game starts. Set the men up for the start of a game and try again.'**
  String get buddyConfirmNoCheckers;

  /// No description provided for @buddyConfirmWrongPosition.
  ///
  /// In en, this message translates to:
  /// **'The board is not set up for the start of a game: {details}{more}.'**
  String buddyConfirmWrongPosition(String details, String more);

  /// No description provided for @buddyConfirmRegionEmpty.
  ///
  /// In en, this message translates to:
  /// **'{region} looks empty, but the game starts with {side} there'**
  String buddyConfirmRegionEmpty(String region, String side);

  /// No description provided for @buddyConfirmRegionUnexpected.
  ///
  /// In en, this message translates to:
  /// **'{region} has {side} on it, but the game starts with it empty'**
  String buddyConfirmRegionUnexpected(String region, String side);

  /// No description provided for @buddyConfirmRegionWrongSide.
  ///
  /// In en, this message translates to:
  /// **'{region} has {observed} on it, where the game starts with {expected}'**
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  );

  /// No description provided for @buddyReadabilityMotion.
  ///
  /// In en, this message translates to:
  /// **'Hold still a moment — I lose the board while the phone is moving.'**
  String get buddyReadabilityMotion;

  /// No description provided for @buddyReadabilityWrongFrame.
  ///
  /// In en, this message translates to:
  /// **'The picture I am being given is not the one this board was set up on, so I cannot line anything up in it. Set the board up again from here.'**
  String get buddyReadabilityWrongFrame;

  /// No description provided for @buddyReadabilityBlur.
  ///
  /// In en, this message translates to:
  /// **'The picture is too soft to read the board from. Give the camera a moment to focus.'**
  String get buddyReadabilityBlur;

  /// No description provided for @buddyReadabilityCalibrationStale.
  ///
  /// In en, this message translates to:
  /// **'The board is not where it was when I learned it. Line the corners up again and I will pick the game straight back up.'**
  String get buddyReadabilityCalibrationStale;

  /// No description provided for @buddyReadabilityOccluded.
  ///
  /// In en, this message translates to:
  /// **'Something is covering part of the board. I will carry on as soon as it is clear.'**
  String get buddyReadabilityOccluded;

  /// No description provided for @buddyReadabilityClear.
  ///
  /// In en, this message translates to:
  /// **'I can see the board.'**
  String get buddyReadabilityClear;

  /// No description provided for @buddyReadabilityColorChanged.
  ///
  /// In en, this message translates to:
  /// **'The light on the board has changed colour, so the board no longer looks like the one I learned. Line the corners up again under this light and I will pick the game straight back up.'**
  String get buddyReadabilityColorChanged;

  /// No description provided for @buddyReadabilityTooDark.
  ///
  /// In en, this message translates to:
  /// **'It is too dark to read the board. A little more light and I will carry on where we were.'**
  String get buddyReadabilityTooDark;

  /// No description provided for @buddyReadabilityTooBright.
  ///
  /// In en, this message translates to:
  /// **'There is so much light on the board that its colours are running into each other. Dim it, or move the phone so the lamp is not shining straight back at it.'**
  String get buddyReadabilityTooBright;

  /// No description provided for @buddyPromptBeliefMirror.
  ///
  /// In en, this message translates to:
  /// **'Buddy still cannot see its move — {reason}.'**
  String buddyPromptBeliefMirror(String reason);

  /// No description provided for @buddyCameraUnavailablePlay.
  ///
  /// In en, this message translates to:
  /// **'{cameraMessage}\n\nYou can still play the match: type each roll on the dice pad and tap your plays out on the board below.'**
  String buddyCameraUnavailablePlay(String cameraMessage);

  /// No description provided for @buddyCameraGenericError.
  ///
  /// In en, this message translates to:
  /// **'The camera could not be started. Check permissions and try again.'**
  String get buddyCameraGenericError;

  /// No description provided for @buddyRegionPoint.
  ///
  /// In en, this message translates to:
  /// **'the {number}-point'**
  String buddyRegionPoint(int number);

  /// No description provided for @buddyRegionBar.
  ///
  /// In en, this message translates to:
  /// **'the bar'**
  String get buddyRegionBar;

  /// No description provided for @buddyRegionWhiteTray.
  ///
  /// In en, this message translates to:
  /// **'White’s bear-off tray'**
  String get buddyRegionWhiteTray;

  /// No description provided for @buddyRegionBlackTray.
  ///
  /// In en, this message translates to:
  /// **'Black’s bear-off tray'**
  String get buddyRegionBlackTray;

  /// No description provided for @buddyRegionDiceZone.
  ///
  /// In en, this message translates to:
  /// **'the middle of the board'**
  String get buddyRegionDiceZone;

  /// No description provided for @buddyCalibrationProblemVisible.
  ///
  /// In en, this message translates to:
  /// **'I cannot see the whole board. Move the phone back, or drag the corners onto the playing field.'**
  String get buddyCalibrationProblemVisible;

  /// No description provided for @buddyConfirmMore.
  ///
  /// In en, this message translates to:
  /// **' (and {number} more)'**
  String buddyConfirmMore(int number);

  /// No description provided for @buddyDiceOpeningCaption.
  ///
  /// In en, this message translates to:
  /// **'One die each. Which face is whose is what decides who starts.'**
  String get buddyDiceOpeningCaption;

  /// No description provided for @buddyDiceOpeningFirst.
  ///
  /// In en, this message translates to:
  /// **'White’s die'**
  String get buddyDiceOpeningFirst;

  /// No description provided for @buddyDiceOpeningSecond.
  ///
  /// In en, this message translates to:
  /// **'Black’s die'**
  String get buddyDiceOpeningSecond;

  /// No description provided for @buddyDiceRegularCaption.
  ///
  /// In en, this message translates to:
  /// **'The two faces on the table, in either order.'**
  String get buddyDiceRegularCaption;

  /// No description provided for @buddyDiceRegularFirst.
  ///
  /// In en, this message translates to:
  /// **'One die'**
  String get buddyDiceRegularFirst;

  /// No description provided for @buddyDiceRegularSecond.
  ///
  /// In en, this message translates to:
  /// **'The other'**
  String get buddyDiceRegularSecond;

  /// No description provided for @evaluationEngine.
  ///
  /// In en, this message translates to:
  /// **'Evaluation engine'**
  String get evaluationEngine;

  /// No description provided for @parallelEngineAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Analyse with both engines'**
  String get parallelEngineAnalysis;

  /// No description provided for @parallelEngineExplanation.
  ///
  /// In en, this message translates to:
  /// **'Compare separate wildbg and GNUbg advice in the tutor.'**
  String get parallelEngineExplanation;

  /// No description provided for @engineComparison.
  ///
  /// In en, this message translates to:
  /// **'Engine comparison'**
  String get engineComparison;

  /// No description provided for @engineWinChance.
  ///
  /// In en, this message translates to:
  /// **'Win chance'**
  String get engineWinChance;

  /// No description provided for @buddyBar.
  ///
  /// In en, this message translates to:
  /// **'the bar'**
  String get buddyBar;

  /// No description provided for @buddyOff.
  ///
  /// In en, this message translates to:
  /// **'off'**
  String get buddyOff;

  /// No description provided for @buddyHitSuffix.
  ///
  /// In en, this message translates to:
  /// **', hitting'**
  String get buddyHitSuffix;

  /// No description provided for @buddyFriendlyMoveOne.
  ///
  /// In en, this message translates to:
  /// **'Move one checker from {from} to {to} {hit}'**
  String buddyFriendlyMoveOne(String from, String to, String hit);

  /// No description provided for @buddyFriendlyMoveMany.
  ///
  /// In en, this message translates to:
  /// **'Move {count} checkers from {from} to {to} {hit}'**
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  );

  /// No description provided for @buddyFriendlyBearOffOne.
  ///
  /// In en, this message translates to:
  /// **'Bear one checker off from {from} {hit}'**
  String buddyFriendlyBearOffOne(String from, String hit);

  /// No description provided for @buddyFriendlyBearOffMany.
  ///
  /// In en, this message translates to:
  /// **'Bear {count} checkers off from {from} {hit}'**
  String buddyFriendlyBearOffMany(String count, String from, String hit);

  /// No description provided for @buddySpeechIRolled.
  ///
  /// In en, this message translates to:
  /// **'I rolled {dice}.'**
  String buddySpeechIRolled(String dice);

  /// No description provided for @buddySpeechYouRolled.
  ///
  /// In en, this message translates to:
  /// **'You rolled {dice}.'**
  String buddySpeechYouRolled(String dice);

  /// No description provided for @buddySpeechOpeningTie.
  ///
  /// In en, this message translates to:
  /// **'Both rolled {die}. Roll again.'**
  String buddySpeechOpeningTie(String die);

  /// No description provided for @buddySpeechNoPlayYouTurn.
  ///
  /// In en, this message translates to:
  /// **'No play, so it is your turn.'**
  String get buddySpeechNoPlayYouTurn;

  /// No description provided for @buddySpeechNoPlayBuddyTurn.
  ///
  /// In en, this message translates to:
  /// **'No play, so it is Buddy’s turn.'**
  String get buddySpeechNoPlayBuddyTurn;

  /// No description provided for @buddySpeechNoPlayPass.
  ///
  /// In en, this message translates to:
  /// **'No play — your turn passes.'**
  String get buddySpeechNoPlayPass;

  /// No description provided for @buddySpeechNoPlayBack.
  ///
  /// In en, this message translates to:
  /// **'No play, so it is back to you.'**
  String get buddySpeechNoPlayBack;

  /// No description provided for @buddySpeechIllegalPlay.
  ///
  /// In en, this message translates to:
  /// **'That isn’t a legal play.'**
  String get buddySpeechIllegalPlay;

  /// No description provided for @buddySpeechPlacementMismatch.
  ///
  /// In en, this message translates to:
  /// **'That isn’t quite right. {reason}'**
  String buddySpeechPlacementMismatch(String reason);

  /// No description provided for @buddyBoardMismatch.
  ///
  /// In en, this message translates to:
  /// **'The board differs from the game: {details}{more}.'**
  String buddyBoardMismatch(String details, String more);

  /// No description provided for @buddyConfirmRegionWrongCount.
  ///
  /// In en, this message translates to:
  /// **'{region}: the game expects {expected} {side} checkers; the camera sees {observed}.'**
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  );

  /// No description provided for @buddySpeechSkippedCheck.
  ///
  /// In en, this message translates to:
  /// **'I’ll take your word for it. I could not see that one land, so if we have come apart it will show up as a play I cannot read.'**
  String get buddySpeechSkippedCheck;

  /// No description provided for @buddySpeechBuddyDouble.
  ///
  /// In en, this message translates to:
  /// **'I double — take or drop?'**
  String get buddySpeechBuddyDouble;

  /// No description provided for @buddySpeechYouDouble.
  ///
  /// In en, this message translates to:
  /// **'You double.'**
  String get buddySpeechYouDouble;

  /// No description provided for @buddySpeechBuddyTakes.
  ///
  /// In en, this message translates to:
  /// **'I take.'**
  String get buddySpeechBuddyTakes;

  /// No description provided for @buddySpeechYouTake.
  ///
  /// In en, this message translates to:
  /// **'You take.'**
  String get buddySpeechYouTake;

  /// No description provided for @buddySpeechBuddyDrops.
  ///
  /// In en, this message translates to:
  /// **'I drop.'**
  String get buddySpeechBuddyDrops;

  /// No description provided for @buddySpeechYouDrop.
  ///
  /// In en, this message translates to:
  /// **'You drop.'**
  String get buddySpeechYouDrop;

  /// No description provided for @buddySpeechGameWinnerBuddy.
  ///
  /// In en, this message translates to:
  /// **'I win this game: {points}.'**
  String buddySpeechGameWinnerBuddy(String points);

  /// No description provided for @buddySpeechGameWinnerYou.
  ///
  /// In en, this message translates to:
  /// **'You win this game: {points}.'**
  String buddySpeechGameWinnerYou(String points);

  /// No description provided for @buddySpeechMatchWinnerBuddy.
  ///
  /// In en, this message translates to:
  /// **'That is the match to me.'**
  String get buddySpeechMatchWinnerBuddy;

  /// No description provided for @buddySpeechMatchWinnerYou.
  ///
  /// In en, this message translates to:
  /// **'You win the match.'**
  String get buddySpeechMatchWinnerYou;

  /// No description provided for @buddyTutorLastPlayBest.
  ///
  /// In en, this message translates to:
  /// **'Your last play matched the engine’s best.'**
  String get buddyTutorLastPlayBest;

  /// No description provided for @buddyTutorLastPlayClose.
  ///
  /// In en, this message translates to:
  /// **'Your last play was close to the engine’s best.'**
  String get buddyTutorLastPlayClose;

  /// No description provided for @buddyTutorPreferredMove.
  ///
  /// In en, this message translates to:
  /// **'For your last play, the engine preferred {move}. {reason}'**
  String buddyTutorPreferredMove(String move, String reason);

  /// No description provided for @buddyTutorBarDifference.
  ///
  /// In en, this message translates to:
  /// **'It leaves {best} opposing checkers on the bar instead of {played}.'**
  String buddyTutorBarDifference(String best, String played);

  /// No description provided for @buddyTutorBlotDifference.
  ///
  /// In en, this message translates to:
  /// **'It leaves {best} blots instead of {played}.'**
  String buddyTutorBlotDifference(String best, String played);

  /// No description provided for @buddyTutorHomeDifference.
  ///
  /// In en, this message translates to:
  /// **'It holds {best} home-board points instead of {played}.'**
  String buddyTutorHomeDifference(String best, String played);

  /// No description provided for @buddyTutorOffDifference.
  ///
  /// In en, this message translates to:
  /// **'It has {best} checkers off instead of {played}.'**
  String buddyTutorOffDifference(String best, String played);

  /// No description provided for @buddyTutorGeneralDifference.
  ///
  /// In en, this message translates to:
  /// **'The ranking weighs estimated wins and gammons; no single board feature explains it.'**
  String get buddyTutorGeneralDifference;

  /// No description provided for @buddySpeechPlay.
  ///
  /// In en, this message translates to:
  /// **'Play {move}'**
  String buddySpeechPlay(String move);

  /// No description provided for @buddySpeechBuddyRolledMove.
  ///
  /// In en, this message translates to:
  /// **'I rolled {dice} — {move}'**
  String buddySpeechBuddyRolledMove(String dice, String move);
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'bg',
    'cs',
    'da',
    'de',
    'el',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'ga',
    'hr',
    'hu',
    'it',
    'lt',
    'lv',
    'mt',
    'nl',
    'pl',
    'pt',
    'ro',
    'ru',
    'sk',
    'sl',
    'sr',
    'sv',
    'tr',
    'uk',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'bg':
      return AppLocalizationsBg();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'el':
      return AppLocalizationsEl();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'et':
      return AppLocalizationsEt();
    case 'fi':
      return AppLocalizationsFi();
    case 'fr':
      return AppLocalizationsFr();
    case 'ga':
      return AppLocalizationsGa();
    case 'hr':
      return AppLocalizationsHr();
    case 'hu':
      return AppLocalizationsHu();
    case 'it':
      return AppLocalizationsIt();
    case 'lt':
      return AppLocalizationsLt();
    case 'lv':
      return AppLocalizationsLv();
    case 'mt':
      return AppLocalizationsMt();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sk':
      return AppLocalizationsSk();
    case 'sl':
      return AppLocalizationsSl();
    case 'sr':
      return AppLocalizationsSr();
    case 'sv':
      return AppLocalizationsSv();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
