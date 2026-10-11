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
