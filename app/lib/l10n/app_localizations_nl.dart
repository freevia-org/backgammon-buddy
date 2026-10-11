// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get homeTagline => 'Verbeter je spel met een tutor';

  @override
  String get settings => 'Instellingen';

  @override
  String get playVsComputer => 'Tegen de computer spelen';

  @override
  String get twoPlayers => 'Twee spelers';

  @override
  String get playNearby => 'Spelen in de buurt';

  @override
  String get playOnline => 'Online spelen';

  @override
  String get learningPractice => 'Leren en oefenen';

  @override
  String get gamesArchive => 'Spellenarchief';

  @override
  String get followSystem => 'Taal van apparaat volgen';

  @override
  String get white => 'Wit';

  @override
  String get black => 'Zwart';

  @override
  String get random => 'Willekeurig';

  @override
  String get startMatch => 'Start spel';

  @override
  String get tutor => 'Tutor';

  @override
  String get noMovesPass => 'Geen zetten — passen';

  @override
  String get undo => 'Ongedaan maken';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get roll => 'Gooien';

  @override
  String get hint => 'Hint';

  @override
  String get tutoringStyle => 'Begeleidingsstijl';

  @override
  String get tutorStyleCoach => 'Coach';

  @override
  String get tutorStyleHintsOnly => 'Alleen hints';

  @override
  String get tutorStyleTryFirst => 'Eerst proberen';

  @override
  String get tutorCoachDescription =>
      'Positieaanwijzingen, feedback op zetten, hints en advies over de verdubbelingskubus.';

  @override
  String get tutorHintsDescription =>
      'Rangschikking van zetten op verzoek. Live positieaanwijzingen en automatische feedback op zetten staan uit.';

  @override
  String get tutorTryFirstDescription =>
      'Speel je zet eerst voordat je gerangschikte hints of de beoordeling ziet; positieaanwijzingen blijven aan.';

  @override
  String get tutorCustomDescription =>
      'Aangepaste mix. Pas een van de opties hieronder aan.';

  @override
  String get tutorBestMoveHints => 'Hints voor de beste zet';

  @override
  String get tutorRevealRankedPlays =>
      'Toon gerangschikte zetten terwijl je kiest';

  @override
  String get tutorMoveExplanations => 'Uitleg bij zetten';

  @override
  String get tutorCompareEstimates =>
      'Vergelijk schattingen en veranderingen op het bord';

  @override
  String get tutorGameCommentary => 'Commentaar bij het spel';

  @override
  String get tutorPositionPrompts =>
      'Positieaanwijzingen en feedback na elke zet';

  @override
  String get tutorCubeAdvice => 'Kubusadvies';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Advies over verdubbelen, aannemen en passen op basis van de matchscore';

  @override
  String get tutorTryMoveFirst => 'Probeer eerst een zet';

  @override
  String get tutorStageBeforeHints =>
      'Speel je huidige zet voordat hints of de beoordeling worden getoond';

  @override
  String get tutorStaticEstimateNote =>
      'Ruwe statische schatting (0 ply, zonder rollouts); de opmerkingen beschrijven bordveranderingen en mogelijke antwoorden, geen belofte over wat er daarna gebeurt.';

  @override
  String get tutorWhatToWatchNext => 'Waar je hierna op moet letten';

  @override
  String get tutorMoreBoardDetails => 'Meer borddetails';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Schattingen en hoe ze werken';

  @override
  String get tutorEstimateLimitations =>
      'Zoekdiepte: statische neurale evaluatie na elke legale zet (0 ply), zonder rollouts of zoekactie naar toekomstige antwoorden. Scorebewuste MWC weegt de uitkomstschattingen met de matchscore en de huidige kubus, maar modelleert geen toekomstige kubusbeslissingen. Als de score ontbreekt, is cubeless equity het verwachte aantal punten bij kubus 1. De bordobservaties beschrijven de zet, niet de interne redenering van de neurale engine. Bijna gelijke scores betekenen geen zekerheid; er is geen gekalibreerd betrouwbaarheidsinterval.';

  @override
  String get tutorPointNumberNote =>
      'Puntnummers in de lesnotities worden geteld vanaf het thuisveld van de speler die aan zet is.';

  @override
  String get tutorHittingRollNote =>
      'Het aantal slagkansen omvat alle 36 geordende dobbelsteenuitkomsten en legale directe of indirecte slagen; het zijn kansen, geen voorspelling van de keuze van de tegenstander.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Er zijn geen beoordeelde alternatieven voor deze zet.';

  @override
  String get tutorForcedPassNoDecision =>
      'Bij een verplichte pas is er geen keuze voor een zet met de schijven.';
}
