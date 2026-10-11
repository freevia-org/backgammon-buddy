// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String get homeTagline => 'Arenda oma mängu juhendajaga';

  @override
  String get settings => 'Seaded';

  @override
  String get playVsComputer => 'Mängi arvuti vastu';

  @override
  String get twoPlayers => 'Kaks mängijat';

  @override
  String get playNearby => 'Mängi läheduses';

  @override
  String get playOnline => 'Mängi võrgus';

  @override
  String get learningPractice => 'Õpi ja harjuta';

  @override
  String get gamesArchive => 'Mängude arhiiv';

  @override
  String get followSystem => 'Kasuta seadme keelt';

  @override
  String get white => 'Valge';

  @override
  String get black => 'Must';

  @override
  String get random => 'Juhuslik';

  @override
  String get startMatch => 'Alusta mängu';

  @override
  String get tutor => 'Juhendaja';

  @override
  String get noMovesPass => 'Käike pole — jäta vahele';

  @override
  String get undo => 'Võta tagasi';

  @override
  String get confirm => 'Kinnita';

  @override
  String get roll => 'Viska';

  @override
  String get hint => 'Vihje';

  @override
  String get tutoringStyle => 'Õpetamisstiil';

  @override
  String get tutorStyleCoach => 'Treener';

  @override
  String get tutorStyleHintsOnly => 'Ainult vihjed';

  @override
  String get tutorStyleTryFirst => 'Proovi kõigepealt';

  @override
  String get tutorCoachDescription =>
      'Positsioonijuhised, tagasiside käikude kohta, vihjed ja kahekordistamiskuubi nõuanded.';

  @override
  String get tutorHintsDescription =>
      'Käikude järjestus kuvatakse soovi korral. Reaalajas positsioonijuhised ja automaatne tagasiside käikude kohta on väljas.';

  @override
  String get tutorTryFirstDescription =>
      'Tee oma käik enne, kui näed järjestatud vihjeid või hinnangut; positsioonijuhised jäävad sisse.';

  @override
  String get tutorCustomDescription =>
      'Kohandatud segu. Muuda allpool mis tahes valikut.';

  @override
  String get tutorBestMoveHints => 'Parima käigu vihjed';

  @override
  String get tutorRevealRankedPlays => 'Näita valimise ajal järjestatud käike';

  @override
  String get tutorMoveExplanations => 'Käikude selgitused';

  @override
  String get tutorCompareEstimates =>
      'Võrdle hinnanguid ja laual toimunud muutusi';

  @override
  String get tutorGameCommentary => 'Mängukommentaar';

  @override
  String get tutorPositionPrompts =>
      'Positsioonijuhised ja tagasiside pärast iga käiku';

  @override
  String get tutorCubeAdvice => 'Kuubi nõuanded';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Mänguseisu arvestavad soovitused kahekordistamiseks, võtmiseks ja loobumiseks';

  @override
  String get tutorTryMoveFirst => 'Proovi enne käiku';

  @override
  String get tutorStageBeforeHints =>
      'Tee praegune käik enne vihjete või hinnangu näitamist';

  @override
  String get tutorStaticEstimateNote =>
      'Kiire staatiline hinnang (0 käiku ette, ilma simulatsioonideta); märkused kirjeldavad laual toimunud muutusi ja võimalikke vastuseid, mitte ei luba, mis järgmisena juhtub.';

  @override
  String get tutorWhatToWatchNext => 'Mida järgmisena jälgida';

  @override
  String get tutorMoreBoardDetails => 'Rohkem infot laua kohta';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Hinnangud ja nende toimimine';

  @override
  String get tutorEstimateLimitations =>
      'Sügavus: staatiline närvivõrgu hinnang pärast iga lubatud käiku (0 käiku ette), ilma simulatsioonide või tulevaste vastuste otsinguta. MWC arvestab tulemuse hinnangute kaalumisel matši seisu ja praegust kuupi, kuid ei modelleeri tulevasi kuubiotsuseid. Kui skoor pole saadaval, on kuubita equity eeldatav punktisumma kuubiga 1. Laua tähelepanekud kirjeldavad käiku, mitte närvivõrgu sisemist arutluskäiku. Peaaegu võrdsed hinnangud ei tähenda kindlust; kalibreeritud usaldusvahemikku ei ole.';

  @override
  String get tutorPointNumberNote =>
      'Õppemärkmete punktinumbreid loetakse käigul oleva mängija kodulaua poolt.';

  @override
  String get tutorHittingRollNote =>
      'Löögivõimaluste arv hõlmab kõiki 36 järjestatud täringutulemust ning lubatud otseseid ja kaudseid lööke; need on võimalused, mitte vastase valiku ennustus.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Selle käigu kohta pole hinnatud alternatiive.';

  @override
  String get tutorForcedPassNoDecision =>
      'Sunnitud pass ei hõlma nuppude käiguvalikut.';
}
