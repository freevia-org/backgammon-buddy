// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get homeTagline => 'Bliv bedre med en tutor';

  @override
  String get settings => 'Indstillinger';

  @override
  String get playVsComputer => 'Spil mod computeren';

  @override
  String get twoPlayers => 'To spillere';

  @override
  String get playNearby => 'Spil i nærheden';

  @override
  String get playOnline => 'Spil online';

  @override
  String get learningPractice => 'Lær og øv';

  @override
  String get gamesArchive => 'Spilarkiv';

  @override
  String get followSystem => 'Følg enhedens sprog';

  @override
  String get white => 'Hvid';

  @override
  String get black => 'Sort';

  @override
  String get random => 'Tilfældig';

  @override
  String get startMatch => 'Start spil';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Ingen træk — pas';

  @override
  String get undo => 'Fortryd';

  @override
  String get confirm => 'Bekræft';

  @override
  String get roll => 'Kast';

  @override
  String get hint => 'Tip';

  @override
  String get tutoringStyle => 'Undervisningsstil';

  @override
  String get tutorStyleCoach => 'Træner';

  @override
  String get tutorStyleHintsOnly => 'Kun hints';

  @override
  String get tutorStyleTryFirst => 'Prøv først';

  @override
  String get tutorCoachDescription =>
      'Positionsvejledning, feedback på træk, hints og råd om doblingen.';

  @override
  String get tutorHintsDescription =>
      'Rangerede træk vises efter behov. Live positionsvejledning og automatisk feedback på træk er slået fra.';

  @override
  String get tutorTryFirstDescription =>
      'Afprøv dit træk, før du ser rangerede hints eller dets vurdering; positionsvejledning forbliver slået til.';

  @override
  String get tutorCustomDescription =>
      'Tilpasset blanding. Juster en af indstillingerne nedenfor.';

  @override
  String get tutorBestMoveHints => 'Hints til det bedste træk';

  @override
  String get tutorRevealRankedPlays => 'Vis rangerede træk, mens du vælger';

  @override
  String get tutorMoveExplanations => 'Forklaringer på træk';

  @override
  String get tutorCompareEstimates =>
      'Sammenlign vurderinger og ændringer på brættet';

  @override
  String get tutorGameCommentary => 'Spilkommentarer';

  @override
  String get tutorPositionPrompts =>
      'Positionsvejledning og feedback efter hvert træk';

  @override
  String get tutorCubeAdvice => 'Råd om doblingen';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Forslag om at doble, tage eller passe ud fra matchstillingen';

  @override
  String get tutorTryMoveFirst => 'Prøv et træk først';

  @override
  String get tutorStageBeforeHints =>
      'Spil dit aktuelle træk, før hints eller vurderingen vises';

  @override
  String get tutorStaticEstimateNote =>
      'Hurtig statisk vurdering (0 ply, ingen rollouts); noterne beskriver ændringer på brættet og mulige svar, ikke hvad der med sikkerhed sker bagefter.';

  @override
  String get tutorWhatToWatchNext => 'Hvad du skal holde øje med';

  @override
  String get tutorMoreBoardDetails => 'Flere detaljer om brættet';

  @override
  String get tutorEstimatesAndHowTheyWork =>
      'Vurderinger og hvordan de fungerer';

  @override
  String get tutorEstimateLimitations =>
      'Dybde: statisk neural evaluering efter hvert lovligt træk (0 ply), uden rollouts eller søgning efter fremtidige svar. Scorebevidst MWC vægter udfaldsvurderingerne efter matchstillingen og den aktuelle dobling, men modellerer ikke fremtidige beslutninger om doblingen. Når stillingen ikke er tilgængelig, er cubeless equity de forventede point ved dobling 1. Observationerne beskriver trækket, ikke den neurale motors interne ræsonnement. Næsten lige vurderinger er ikke en påstand om sikkerhed; der er intet kalibreret konfidensinterval.';

  @override
  String get tutorPointNumberNote =>
      'Punktnumre i undervisningsnoterne tælles fra den aktive spillers hjemmebræt.';

  @override
  String get tutorHittingRollNote =>
      'Antallet af slagmuligheder omfatter alle 36 ordnede terningeudfald og lovlige direkte eller indirekte slag; det er muligheder, ikke en forudsigelse af modstanderens valg.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Der er ingen vurderede alternativer til dette træk.';

  @override
  String get tutorForcedPassNoDecision =>
      'Et tvunget pas indebærer ikke et valg af briktræk.';
}
