// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get homeTagline => 'Förbättra ditt spel med en handledare';

  @override
  String get settings => 'Inställningar';

  @override
  String get playVsComputer => 'Spela mot datorn';

  @override
  String get twoPlayers => 'Två spelare';

  @override
  String get playNearby => 'Spela i närheten';

  @override
  String get playOnline => 'Spela online';

  @override
  String get learningPractice => 'Lär dig och öva';

  @override
  String get gamesArchive => 'Spelarkiv';

  @override
  String get followSystem => 'Följ enhetens språk';

  @override
  String get white => 'Vit';

  @override
  String get black => 'Svart';

  @override
  String get random => 'Slumpmässig';

  @override
  String get startMatch => 'Starta spel';

  @override
  String get tutor => 'Handledare';

  @override
  String get noMovesPass => 'Inga drag — passa';

  @override
  String get undo => 'Ångra';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get roll => 'Kasta';

  @override
  String get hint => 'Tips';

  @override
  String get tutoringStyle => 'Handledningsstil';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Endast tips';

  @override
  String get tutorStyleTryFirst => 'Prova först';

  @override
  String get tutorCoachDescription =>
      'Positionsledtrådar, återkoppling på drag, tips och råd om dubbleringskuben.';

  @override
  String get tutorHintsDescription =>
      'Rangordnade drag på begäran. Positionsledtrådar och automatisk återkoppling efter varje drag är avstängda.';

  @override
  String get tutorTryFirstDescription =>
      'Lägg ditt drag först innan du ser rangordnade alternativ eller betyget; vägledning på brädet är fortfarande på.';

  @override
  String get tutorCustomDescription =>
      'Egen kombination. Ändra valfritt alternativ nedan.';

  @override
  String get tutorBestMoveHints => 'Tips om bästa draget';

  @override
  String get tutorRevealRankedPlays => 'Visa rangordnade drag medan du väljer';

  @override
  String get tutorMoveExplanations => 'Förklaringar av drag';

  @override
  String get tutorCompareEstimates =>
      'Jämför uppskattningar och förändringar på brädet';

  @override
  String get tutorGameCommentary => 'Spelkommentarer';

  @override
  String get tutorPositionPrompts =>
      'Positionsledtrådar och återkoppling efter varje drag';

  @override
  String get tutorCubeAdvice => 'Råd om dubbleringskuben';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Förslag om dubbla, ta eller släpp utifrån matchställningen';

  @override
  String get tutorTryMoveFirst => 'Prova ett drag först';

  @override
  String get tutorStageBeforeHints =>
      'Lägg ditt drag innan tipsen eller betyget visas';

  @override
  String get tutorStaticEstimateNote =>
      'Snabb statisk uppskattning (0-ply, utan simuleringar); kommentarerna beskriver förändringar på brädet och möjliga svar, inte vad som säkert händer sedan.';

  @override
  String get tutorWhatToWatchNext => 'Vad du ska hålla utkik efter härnäst';

  @override
  String get tutorMoreBoardDetails => 'Fler detaljer om brädet';

  @override
  String get tutorEstimatesAndHowTheyWork =>
      'Uppskattningar och hur de fungerar';

  @override
  String get tutorEstimateLimitations =>
      'Söknivå: statisk neural utvärdering efter varje lagligt drag (0-ply), utan simuleringar eller sökning efter framtida svar. MWC med hänsyn till matchställningen viktar dessa resultatprognoser efter ställningen och den aktuella dubbleringskuben; den modellerar inte framtida kubbeslut. Kubfri equity är förväntade poäng med kuben på 1 när ställningen saknas. Brädobservationerna beskriver draget, inte den neurala motorns interna resonemang. Nästan lika uppskattningar innebär inte säkerhet; något kalibrerat konfidensintervall finns inte.';

  @override
  String get tutorPointNumberNote =>
      'Punktnumren i träningsanteckningarna räknas från spelarens hemmaplan.';

  @override
  String get tutorHittingRollNote =>
      'Antalet slag som kan träffa omfattar alla 36 ordnade tärningsutfall och lagliga direkta eller indirekta träffar; de är möjligheter, inte en förutsägelse av motståndarens val.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Det finns inga utvärderade alternativ för det här draget.';

  @override
  String get tutorForcedPassNoDecision =>
      'En framtvingad passning innebär inget beslut om pjäsernas drag.';
}
