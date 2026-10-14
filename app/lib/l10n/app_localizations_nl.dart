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

  @override
  String get settingsReset => 'Herstellen';

  @override
  String get settingsAppLanguage => 'App-taal';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get settingsThemeSystem => 'Systeem';

  @override
  String get settingsThemeLight => 'Licht';

  @override
  String get settingsThemeDark => 'Donker';

  @override
  String get settingsAnimationSpeed => 'Animatiesnelheid';

  @override
  String get settingsAnimationNone => 'Geen';

  @override
  String get settingsAnimationNormal => 'Normaal';

  @override
  String get settingsAnimationFast => 'Snel';

  @override
  String get settingsDiceRollAnimation => 'Dobbelsteenanimatie';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Laat de dobbelstenen rollen voordat je gooit';

  @override
  String get settingsDefaultMatchLength => 'Standaardlengte van de match';

  @override
  String get settingsDefaultDifficulty => 'Standaardniveau';

  @override
  String get settingsDifficultyEasy => 'Makkelijk';

  @override
  String get settingsDifficultyMedium => 'Gemiddeld';

  @override
  String get settingsDifficultyHard => 'Moeilijk';

  @override
  String get settingsDifficultyExpert => 'Expert';

  @override
  String get settingsTutorModeDefault => 'Standaard tutorstand';

  @override
  String get settingsTutorAuto => 'Automatisch';

  @override
  String get settingsTutorOn => 'Aan';

  @override
  String get settingsTutorOff => 'Uit';

  @override
  String get settingsTutorModeHelp =>
      'Automatisch schakelt de tutor in bij elk computerniveau. Aan en Uit bepalen de begininstelling voor lokale matches. Bij wedstrijden in de buurt en online helpt de tutor niet; opgeslagen partijen kun je achteraf bekijken. De onderstaande leerinstellingen worden op dit apparaat bewaard.';

  @override
  String get settingsTutorPreferences => 'Tutorinstellingen';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Standaardinstellingen voor nieuwe matches';

  @override
  String get settingsTutorSaveError =>
      'De tutorinstellingen konden niet worden opgeslagen.';

  @override
  String get settingsGameplay => 'Spel';

  @override
  String get settingsMoveHighlights => 'Zetmarkeringen';

  @override
  String get settingsMoveHighlightsHelp =>
      'Omcirkel speelbare schijven en licht mogelijke bestemmingen op';

  @override
  String get settingsDragToMove => 'Slepen om te zetten';

  @override
  String get settingsDragToMoveHelp =>
      'Sleep een schijf naar de bestemming (tikken werkt ook)';

  @override
  String get settingsCombinedMoves => 'Dobbelstenen combineren';

  @override
  String get settingsCombinedMovesHelp =>
      'Met één tik verplaats je een schijf met beide dobbelstenen';

  @override
  String get settingsRotateBoard => 'Bord draaien tussen beurten';

  @override
  String get settingsRotateBoardHelp =>
      'Om de beurt spelen: draai het bord naar de actieve speler';

  @override
  String get settingsPassDevice => 'Scherm voor apparaat doorgeven';

  @override
  String get settingsPassDeviceHelp =>
      'Dek het bord af tussen beurten bij om-de-beurt spelen';

  @override
  String get settingsShowScore => 'Score tonen';

  @override
  String get settingsShowScoreHelp => 'Toon de huidige matchscore bovenaan';

  @override
  String get settingsBuddyMode => 'Buddy-stijl';

  @override
  String get settingsBuddyTerse => 'Kort';

  @override
  String get settingsBuddyFriendly => 'Vriendelijk';

  @override
  String get settingsBuddyTerseHelp =>
      'Zo spreekt Buddy een zet uit: ‘13/8, 24/22’ — de notatie die spelers aan het bord gebruiken.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Zo spreekt Buddy een zet uit: ‘Verplaats één schijf van 13 naar 8 en één van 24 naar 22.’';

  @override
  String get settingsListenForDice => 'Naar de dobbelstenen luisteren';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy kijkt eerder naar het bord wanneer hij een worp hoort. Uit verandert verder niets.';

  @override
  String get settingsDiagnostics => 'Diagnostiek';

  @override
  String get settingsErrorLog => 'Foutenlogboek';

  @override
  String get settingsErrorLogHelp =>
      'Recente fouten, klaar om in een bugmelding te kopiëren';

  @override
  String get settingsReportBug => 'Bug melden';

  @override
  String get settingsReportBugHelp =>
      'Open een begeleid meldformulier op GitHub';

  @override
  String get settingsSuggestIdea => 'Idee voorstellen';

  @override
  String get settingsSuggestIdeaHelp =>
      'Help ons de tutor en het spel te verbeteren';

  @override
  String get settingsAbout => 'Over';

  @override
  String get settingsOpenSourceLicenses => 'Open-sourcelicenties';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partij afgelopen.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Bekijk de zetten om een leerzaam beslismoment te vinden.';

  @override
  String get tutorPhraseCubeOffered => 'De verdubbelingskubus is aangeboden.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Beslis eerst of je de verdubbeling aanneemt of past, voordat je een zet met je schijven plant.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'De matchscore bepaalt hoeveel de extra inzet waard is.';

  @override
  String get tutorPhraseResignationOffered => 'Er is opgave aangeboden.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Vergelijk het aangeboden aantal punten met de positie voordat je opgeeft of verder speelt.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Met deze worp is geen geldige zet mogelijk.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Verplicht passen is geen fout; wacht op de volgende worp.';

  @override
  String get tutorPhraseOnlyOneResult => 'Er is maar één geldige eindpositie.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Speel de verplichte beurt. Met deze worp valt er geen keuze te beoordelen.';

  @override
  String get tutorPhrasePipCountsLevel => 'De pip-aantallen zijn gelijk.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Je staat $count pips voor.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Je staat $count pips achter.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count schijven op de bar: eerst weer inzetten.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Zet eerst schijven vanaf de bar in; zoek daarna een veilige bestemming.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'De tegenstander heeft $count gesloten punten in zijn thuisbord.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Uitlooprace.';

  @override
  String get tutorPhrasePureRace => 'Een zuivere race.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Haal schijven van het bord en behoud een nuttige spreiding voor de volgende worp.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Breng je achterste schijven naar huis zonder er te veel op één punt te stapelen.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'De legers zijn elkaar gepasseerd; slaan is niet meer mogelijk.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Er is nog steeds contact.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'De tegenstander heeft $count schijven op de bar.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Houd je punten gesloten terwijl je de resterende schijven naar huis brengt.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Bouw je thuisbord op of houd het intact terwijl de tegenstander probeert in te zetten.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Je hebt $count punten in je thuisbord; elk daarvan sluit een inzetnummer af.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Contact met een reeks van $count aaneengesloten punten.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Vergelijk het verlengen van de gesloten reeks met het bewaren van reserves om die reeks in stand te houden.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count reserves kunnen bewegen zonder hun punt meteen open te breken.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contact met een anker op $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Vergelijk de voortgang van je achterste schijven met de veiligheid van het behouden van je anker.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Houd je veilige steunpunt in gedachten terwijl je een slagkans zoekt of je bord verbetert.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Het anker kan niet worden geslagen, maar die schijven hebben nog een lange weg naar huis.';

  @override
  String get tutorPhraseContactThreats =>
      'Er is nog contact: beide kanten kunnen met een slag dreigen.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Zoek naar nuttige punten en weeg daarna het risico af van losse schijven die kunnen worden geslagen.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Je hebt $count punten in je thuisbord en laat $otherCount blots open.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Kies een schijf om je beurt te beginnen.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Begin een geldige zet om commentaar te zien.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count schijven van de tegenstander geslagen',
      one: 'één schijf van de tegenstander geslagen',
    );
    return 'Je hebt $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Je hebt $count schijven vanaf de bar ingezet.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count schijven van het bord gehaald',
      one: 'één schijf van het bord gehaald',
    );
    return 'Je hebt $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Je hebt $points gesloten.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'De schijf op jouw punt $point is voorlopig een blot.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'De reserves op jouw punt $point kunnen later bewegen zonder dat het punt openvalt.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Gebruik de overige speelbare dobbelstenen voordat je de hele zet beoordeelt.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Alle 15 schijven zijn van het bord: je hebt gewonnen.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'De slag levert tijd op terwijl de tegenstander opnieuw probeert in te zetten.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Efficiënt afvoeren haalt schijven weg en laat bruikbare getallen over voor de volgende worp.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'In de race breng je de achterste schijven naar huis en houd je bruikbare punten om af te voeren.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Schijven afvoeren is vooruitgang, maar door het resterende contact kun je nog worden geslagen.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Door opnieuw in te zetten komt de schijf terug in het spel; zoek daarna een veilige bestemming.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Het nieuwe punt in je thuisbord sluit na een eventuele slag een inzetnummer af.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'De langere gesloten reeks blokkeert meer landingspunten; reserves helpen haar intact te houden.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Het anker verlaten levert terreinwinst op, maar je geeft een veilig steunpunt op.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Het nieuwe anker geeft je achterste schijven een veilig steunpunt.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Door de blot te dekken, haal je een doelwit voor de tegenstander weg.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'De afweging is ontwikkeling tegenover veiligheid: nuttige bouwschijven kunnen ook doelwitten worden.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part De volledige zet staat klaar; tik op Bevestigen om hem uit te voeren.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Met deze worp is er geen keuze in de zetten; daarom wordt hij niet als beslissing beoordeeld.';

  @override
  String get tutorMoveTopVerdict => 'De beste keuze in deze positie.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'De engine geeft hier de voorkeur aan een andere zet.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Verschil met de beste zet: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Na deze zet: geschat $winPercent% kans op winst, $winGammonPercent% op winst met gammon of beter, en $loseGammonPercent% op verlies met gammon of erger. Dit zijn schattingen vanuit het perspectief van de speler die aan zet is.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Geschatte kans om de match te winnen: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Alle 15 schijven zijn van het bord: de partij is gewonnen.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Gebruik de slag om tijd te winnen terwijl de tegenstander opnieuw inzet. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Houd punten in je thuisbord gesloten om opnieuw inzetten moeilijker te maken.';

  @override
  String get tutorMovePlanHitBuild =>
      'Sluit meer punten in je thuisbord om herstel na toekomstige slagen moeilijker te maken.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Werk toe naar een efficiënte bear-off: haal schijven van het bord en houd bruikbare getallen over voor de volgende worp.';

  @override
  String get tutorMovePlanRaceHome =>
      'Breng je achterste schijven naar huis en spreid ze over bruikbare punten om ze straks van het bord te halen.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Haal schijven van het bord, maar houd de achterste schijven van je tegenstander in de gaten: zolang er contact is, kan een losse schijf bij het afvoeren een doelwit worden.';

  @override
  String get tutorMovePlanReentry =>
      'Kom weer in het spel en zoek daarna een veilig punt voor de schijf die is ingezet.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Versterk je thuisbord. Het nieuwe gesloten punt maakt een toekomstige slag krachtiger doordat het een inzetnummer blokkeert.';

  @override
  String get tutorMovePlanPrime =>
      'Houd de reeks gesloten punten intact. Bewaar reserves zodat volgende worpen je niet dwingen de reeks open te breken.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Als je een anker verlaat, komen je achterste schijven vooruit, maar verlies je een veilige uitvalsbasis. Let op hun kwetsbaarheid onderweg naar huis.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Gebruik het nieuwe anker als veilige uitvalsbasis terwijl je de rest van je positie verbetert.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Breng je schijven samen. Door een blot af te dekken, neem je een doelwit weg en blijven bruikbare landingspunten beschikbaar.';

  @override
  String get tutorMovePlanSafety =>
      'Zoek een balans tussen ontwikkeling en veiligheid: breng bouwschijven naar nuttige punten en kijk welke losse schijven kunnen worden geslagen.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Geen geldige zet met de schijven mogelijk: je moet passen.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count schijven van de tegenstander',
      one: 'één schijf van de tegenstander',
    );
    return 'Je slaat $_temp0; de tegenstander moet eerst opnieuw inzetten voordat die andere schijven kan verplaatsen.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Je zet $count vanaf de bar opnieuw in.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count schijven',
      one: 'één schijf',
    );
    return 'Je haalt $_temp0 van het bord.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Je sluit $points. Twee of meer schijven bezetten een veilig punt en blokkeren daar de landing van de tegenstander.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Je geeft gesloten punten op ($pointLabel): $points. Die punten blokkeren de tegenstander daar niet langer.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Je laat geen losse schijven onbeschermd achter (eerder: $previousCount). Er zijn geen losse schijven om te slaan.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count losse schijven onbeschermd',
      one: 'één losse schijf onbeschermd',
    );
    return 'Je laat $_temp0 achter (eerder: $previousCount). Kijk of de tegenstander ze kan bereiken voordat je veiligheid verkiest boven een ander voordeel.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Langste reeks gesloten punten: $count (eerder: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Een gesloten reeks van zes punten kan niet worden overgestoken zolang die intact blijft.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Houd bouwschijven in de buurt als je deze reeks wilt verlengen of behouden.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Er zijn $count reserves boven op de twee schijven die punten gesloten houden. Een reserve verplaatsen kan het punt behouden; een van de laatste twee verplaatsen maakt het open.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ankers in het thuisbord van de tegenstander: $points (eerder: $previousPoints). Een anker beschermt die schijven tegen slagen; het verlaten ervan ruilt die veilige uitvalsbasis in voor vooruitgang in de race.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Een zuivere race: de legers zijn elkaar gepasseerd en niemand staat op de bar. Slaan kan niet meer; efficiënt schijven afvoeren is nu belangrijk.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'In deze positie kan de tegenstander met geen enkele geldige volgende worp een schijf slaan. Er is nog contact, dus latere zetten kunnen nieuwe kansen om te slaan opleveren.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'De tegenstander kan slaan met $count van de $total worpen. Bijvoorbeeld: met $dieOne–$dieTwo kan die legaal op jouw punt $point slaan. De kans is er, maar de tegenstander hoeft die niet te benutten.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Gesloten punten in je thuisbord: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'De tegenstander kan pas opnieuw inzetten als er een punt opengaat.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Met een worp die op een open inzetpunt uitkomt, kan een schijf vanaf de bar terugkomen.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors De geschatte winstkans bij de beste zet is $delta procentpunt $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'hoger';

  @override
  String get tutorMoveComparisonLower => 'lager';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Die kan toch hoger eindigen, omdat gammons en backgammons een andere waarde hebben bij de huidige $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'inzet';

  @override
  String get tutorMoveComparisonMatchScore => 'matchscore';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Aantal schijven van de tegenstander op de bar na de beste zet: $bestCount, tegenover $playedCount. Een schijf op de bar moet eerst opnieuw inzetten voordat de tegenstander de andere kan verplaatsen.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Aantal gesloten punten in je thuisbord bij de beste zet: $bestCount, tegenover $playedCount bij je zet. Na een slag kun je $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'meer inzetnummers afsluiten';

  @override
  String get tutorMoveComparisonLeavingMore => 'meer inzetnummers openlaten';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'De beste zet geeft een kans op terugslaan bij $bestCount van de 36 worpen, tegenover $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Dat verlaagt het directe risico dat je wordt teruggeslagen.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Weeg die extra kwetsbaarheid af tegen wat de zet verder oplevert.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'De langste reeks gesloten punten is $bestCount bij de beste zet, tegenover $playedCount. Vergelijk de blokkade met het aantal schijven dat je hebt om haar intact te houden.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Ankers bij de beste zet: $bestPoints, tegenover $playedPoints. Een anker behouden geeft een veilige landingsplek; het verlaten ervan brengt die schijven dichter bij huis.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Aantal schijven van het bord bij de beste zet: $bestCount, tegenover $playedCount. Elke schijf die eraf is, hoef je later niet meer af te voeren.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Beide zetten laten hetzelfde directe risico op slagen, evenveel gesloten punten in het thuisbord en dezelfde aantallen ankers en afgevoerde schijven. Vergelijk de landingspunten: de volgende worp kan die schijven anders benutten.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'De beste zet stuurt meer schijven van de tegenstander naar de bar en vertraagt zo diens andere zetten.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'De beste zet sluit meer punten in het thuisbord, waardoor opnieuw inzetten na een slag moeilijker wordt.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'De beste zet laat minder directe kansen om te slaan toe en verkleint zo het risico op een terugslag.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'De beste zet behoudt een langere reeks gesloten punten.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'De beste zet behoudt meer veilige ankers in het thuisbord van de tegenstander.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'De beste zet haalt meer schijven van het bord, zodat er later minder overblijven.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Deze zet laat $playedCount losse schijven onbeschermd; de beste zet laat er $bestCount achter.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'De beste zet behoudt een veilig anker op punt $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'De beste zet sluit meer inzetpunten voor het geval een van je schijven wordt geslagen.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'De zetten laten vergelijkbare directe risico’s achter; vergelijk welke landingspunten bij de volgende worp bruikbaar blijven.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value verlies aan equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value procentpunt matchwinstkans (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'punt';

  @override
  String get tutorMovePointPlural => 'punten';

  @override
  String get tutorMoveNoPoints => 'geen';

  @override
  String get gameTutorCommentaryOff => 'Spelcommentaar staat uit.';

  @override
  String get gameTutorToolsAvailable =>
      'Open de tutor voor de functies die je hebt ingeschakeld.';

  @override
  String get gameTutorNextRoll => 'Gooi opnieuw.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Voor deze opgeslagen zet is geen beoordeelde uitleg beschikbaar.';

  @override
  String get gameTutorAnalysisUnavailable => 'analyse niet beschikbaar';

  @override
  String get gameTutorReviewing => 'wordt bekeken…';

  @override
  String get gameTutorTryYourPlayFirst => 'Probeer eerst zelf een zet.';

  @override
  String get gameTutorKeepBuilding => 'Maak je zet verder af.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Speel eerst een volledige geldige zet voordat je coaching of hints bekijkt.';

  @override
  String get gameTutorReadyToConfirm => 'Klaar om te bevestigen';

  @override
  String get gameTutorPlayTakingShape => 'Je zet krijgt vorm.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Bevestig om de zet uit te voeren of maak hem ongedaan om opnieuw te kiezen.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Gebruik de resterende dobbelstenen of maak de zet ongedaan.';

  @override
  String get gameTutorComputerConsidering =>
      'De computer denkt na over zijn zet.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'De voltooide zet wordt hier besproken.';

  @override
  String get gameTutorYourPlay => 'Jouw zet';

  @override
  String get gameTutorComputer => 'Computer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Jouw zet: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'verplichte zet';

  @override
  String get gameTutorTopChoice => 'beste keuze';

  @override
  String get gameTutorSoundPlay => 'goede zet';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'een andere zet past misschien beter';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'een andere zet past beter bij deze positie';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'er was duidelijk een sterkere zet beschikbaar';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side heeft naar schatting voordeel.';
  }

  @override
  String get gameTutorPositionEven => 'De positie is ongeveer gelijk.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Gespeeld: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Beste zet: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Gerangschikte zetten tonen';

  @override
  String get tutorReviewRecordedMove =>
      'Tik in het logboek op een voltooide zet om de beslissing hier te bekijken.';

  @override
  String get tutorTopPlays => 'Beste zetten';

  @override
  String get tutorNoHintsAvailable => 'Geen hints beschikbaar.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tik op een zet om deze op het bord te bekijken en bevestig daarna.';

  @override
  String get tutorTopChoiceForPosition => 'Beste keuze voor deze positie';

  @override
  String get tutorAlternativePlay => 'Alternatieve zet';

  @override
  String get tutorEngineEstimates => 'Engine-inschattingen';

  @override
  String get tutorEstimateScope =>
      '0-ply-inschatting · huidige score en inzet · geen toekomstige cube-beslissingen';

  @override
  String get tutorEquity => 'Verwachtingswaarde';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Bij bijna gelijke zetten kan een diepere analyse de volgorde veranderen.';

  @override
  String get tutorWhyThisPlay => 'Waarom deze zet?';

  @override
  String get tutorCompareAlternative => 'Vergelijk dit alternatief';

  @override
  String get gameTutorCubeTake => 'Tutor: aannemen';

  @override
  String get gameTutorCubePass => 'Tutor: passen';

  @override
  String get practiceScreenTitle => 'Oefen een beslissing';

  @override
  String get practiceUnavailable =>
      'Deze oefenpositie is niet meer beschikbaar.';

  @override
  String get practiceSubmitError =>
      'Deze poging kon niet worden beoordeeld of opgeslagen. Je voortgang is niet gewijzigd. Probeer het opnieuw.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side is aan zet · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historische score niet beschikbaar; de beoordeling gebruikt equity zonder verdubbelingsdobbelsteen.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Score: $whiteLabel $whiteScore – $blackLabel $blackScore, tot $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawfordpartij';

  @override
  String get practiceNoDoublingCube => 'Geen verdubbelingsdobbelsteen.';

  @override
  String practiceCubeValue(int value) {
    return 'Dobbelsteen $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Historische dobbelsteenregels onbekend.';

  @override
  String get practiceAfterBestPosition => 'Positie na de beste zet';

  @override
  String get practiceAfterYourAnswerPosition => 'Positie na jouw antwoord';

  @override
  String get practiceFindYourPlayPrompt =>
      'Speel je zet op het bord en controleer daarna je antwoord. Er worden geen hints getoond.';

  @override
  String get practiceUndo => 'Ongedaan maken';

  @override
  String get practiceCheckAnswer => 'Antwoord controleren';

  @override
  String get practiceRevealNoCredit => 'Antwoord tonen (zonder punt)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Antwoord getoond — geen herinneringspunt.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Beste: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Oorspronkelijke partij: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Jouw antwoord: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Jouw antwoord';

  @override
  String get practiceBestPlayChip => 'Beste zet';

  @override
  String practiceNextReview(Object date) {
    return 'Volgende herhaling: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Beste of goede antwoorden tellen als succesvol herinnerd. Vroege herhalingen verschuiven het schema niet.';

  @override
  String get practiceBackToLearning => 'Terug naar leren';

  @override
  String get practiceMarkBest => 'Beste';

  @override
  String get practiceMarkGood => 'Goed';

  @override
  String get practiceMarkDubious => 'Twijfelachtig';

  @override
  String get practiceMarkError => 'Fout';

  @override
  String get practiceMarkBlunder => 'Blunder';

  @override
  String get practiceMarkForced => 'Gedwongen';

  @override
  String get newMatchYourSide => 'Jouw kant';

  @override
  String get newMatchTutorMode => 'Tutormodus';

  @override
  String get newMatchTutorDescription =>
      'Leer met hints, uitleg en commentaar op het spel';

  @override
  String get newMatchTutoringOptions => 'Tutoropties';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Voor deze partij; tijdens het spel aan te passen';

  @override
  String get setupMatchLength => 'Partijlengte';

  @override
  String get setupDifficulty => 'Moeilijkheid';

  @override
  String get setupDifficultyEasy => 'Makkelijk';

  @override
  String get setupDifficultyMedium => 'Gemiddeld';

  @override
  String get setupDifficultyHard => 'Moeilijk';

  @override
  String get setupDifficultyExpert => 'Expert';

  @override
  String get setupPlayWithoutCube => 'Spelen zonder verdubbelingsdobbelsteen';

  @override
  String get setupNoCubeThisMatch =>
      'Geen verdubbelingsdobbelsteen in deze partij';

  @override
  String get analysisTitle => 'Analyse';

  @override
  String get gameMatchSummary => 'Partijoverzicht';

  @override
  String get gameAnalyzeGame => 'Partij analyseren';

  @override
  String get analysisMetricsTooltip => 'Wat betekenen deze cijfers?';

  @override
  String analysisError(Object error) {
    return 'Analyse van de partij mislukt: $error';
  }

  @override
  String get analysisNoPositions =>
      'Deze partij bevat geen posities om te tonen.';

  @override
  String get analysisInProgress => 'Partij analyseren…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Gespeeld';

  @override
  String get analysisBest => 'Beste';

  @override
  String get analysisPrevious => 'Vorige';

  @override
  String get analysisNext => 'Volgende';

  @override
  String get analysisPositionBeforeCube =>
      'Positie vóór de dobbelsteenbeslissing';

  @override
  String get analysisPositionAtPoint => 'Positie op dit punt in de partij';

  @override
  String get analysisShowingBestBefore =>
      'Beste zet getoond op de positie vóór de zet';

  @override
  String get analysisShowingBefore => 'Positie vóór de zet tonen';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · uitgesloten van gemiddelden';

  @override
  String get analysisNoPlay => '(geen zet)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Beste zet: $move';
  }

  @override
  String get analysisExplain => 'Uitleggen';

  @override
  String get analysisSaveForPractice => 'Opslaan om te oefenen';

  @override
  String get analysisSaveError =>
      'Deze beslissing kon niet worden opgeslagen. Probeer het opnieuw.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · verlies $loss';
  }

  @override
  String get analysisCubeDecision => 'Dobbelsteenbeslissing';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Gespeeld: $action (winstkans partij: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Beste: $action (winstkans partij: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Schatting op 0 ply vanuit het perspectief van de speler die aan zet is. Gaat uit van een optimale aanname- of pasreactie. Gebruikt een benadering van 0,7 voor de levensduur van de dobbelsteen bij een aangenomen double, geen volledige zoekactie naar toekomstige redoubles. Een diepere analyse kan de uitkomst veranderen.';

  @override
  String get analysisClose => 'Sluiten';

  @override
  String get analysisMoves => 'Zetten';

  @override
  String get analysisForced => 'Gedwongen';

  @override
  String get analysisMarkBest => 'Beste';

  @override
  String get analysisMarkGood => 'Goed';

  @override
  String get analysisMarkDubious => 'Twijfelachtig';

  @override
  String get analysisMarkError => 'Fout';

  @override
  String get analysisMarkBlunder => 'Blunder';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Gemiddeld verlies $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count beslissingen over stenen';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Blunders $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Verlies door dobbelsteen $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side gooit zonder te verdubbelen';
  }

  @override
  String get metricExplainerTitle => 'De statistieken begrijpen';

  @override
  String get metricExplainerTooltip => 'Wat betekenen deze cijfers?';

  @override
  String get metricExplainerMwcTitle => 'Kans om de partij te winnen (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Als de score bekend is, worden zetten gerangschikt op de geschatte kans om de partij te winnen. Verlies staat in procentpunten (pp): 1 pp betekent een daling van 51% naar 50%. De huidige inzet van de dobbelsteen en gammon/backgammon-uitkomsten tellen mee. Gedwongen passen en worpen met maar één legale positie tellen niet mee in gemiddelden.';

  @override
  String get metricExplainerSearchTitle => 'Zoekdiepte en onzekerheid';

  @override
  String get metricExplainerSearchBody =>
      'Zetrangschikkingen zijn statische 0-ply-schattingen na de zet, geen rollouts. Partijwaarden gebruiken een match-equitytabel zonder toekomstige dobbelsteenbeurten. Dobbelsteenbeoordelingen gebruiken een gedeeltelijke 0,7-benadering van de dobbelsteenlevensduur bij aangenomen doubles. Dit is geen volledige cubeful zoekactie. Achterstanden boven 25 gebruiken de grens van 25 uit de tabel. Bijna gelijke uitkomsten kunnen veranderen bij diepere analyse; er is geen gekalibreerd betrouwbaarheidsinterval.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Als de score ontbreekt, is cubeloze equity de gemiddelde puntenwaarde van een positie bij een dobbelsteen op 1. +1,0 betekent dat je gemiddeld één punt wint; −0,5 dat je een half punt verliest.';

  @override
  String get metricExplainerEquityLossTitle => 'Equityverlies (bijv. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'We vergelijken elke zet met de beste zet van de engine. Equityverlies is de verwachte waarde die je met je zet hebt opgegeven. −0,016 betekent dat de zet slechts 0,016 punt slechter was — een klein foutje. 0,000 betekent dat je de beste zet vond.';

  @override
  String get metricExplainerErrorRateTitle => 'Foutpercentage';

  @override
  String get metricExplainerErrorRateBody =>
      'Gemiddeld verlies is het gemiddelde van je beoordeelde beslissingen over stenen, in de weergegeven eenheid. Beslissingen over de dobbelsteen hebben een eigen gemiddelde. Lager betekent dichter bij de beste schattingen van deze engine; het is geen gekalibreerde spelersrating.';

  @override
  String get metricExplainerMoveMarksTitle => 'Zetbeoordelingen';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC-leerbanden: Beste < 0,05 pp, Goed < 0,5 pp, Twijfelachtig < 1,5 pp, Fout < 3 pp, Blunder ≥ 3 pp. Dit zijn productbanden voor leren, geen gekalibreerde zekerheid of toernooirating.\n\nLeerbanden voor cubeloze equity:';

  @override
  String get metricExplainerThresholdBest => 'verlies < 0,001';

  @override
  String get metricExplainerThresholdGood => 'verlies < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'verlies < 0,050';

  @override
  String get metricExplainerThresholdError => 'verlies < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'verlies ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Begrepen';

  @override
  String get historyTitle => 'Partijgeschiedenis';

  @override
  String historyLoadFailed(Object error) {
    return 'Geschiedenis laden mislukt:\n$error';
  }

  @override
  String get historyEmpty => 'Nog geen partijen gespeeld.';

  @override
  String get historyDeleteConfirmTitle => 'Deze partij verwijderen?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nDe partij en alle geregistreerde spellen worden definitief verwijderd. Dit kan niet ongedaan worden gemaakt.';
  }

  @override
  String get actionCancel => 'Annuleren';

  @override
  String get actionDelete => 'Verwijderen';

  @override
  String get historyDeleteFailed => 'Deze partij kon niet worden verwijderd.';

  @override
  String get historyComplete => 'Voltooid';

  @override
  String historyWinner(Object side) {
    return '$side heeft gewonnen';
  }

  @override
  String get historyUnfinished => 'Niet voltooid';

  @override
  String get historyMatchTitle => 'Partij';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Partij laden mislukt:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Spellen laden mislukt:\n$error';
  }

  @override
  String get historyNoGames => 'Nog geen spellen vastgelegd.';

  @override
  String historyGameTitle(int number) {
    return 'Spel $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Wit $whiteScore — $blackScore Zwart (tot $matchLength)';
  }

  @override
  String get historyModeComputer => 'tegen computer';

  @override
  String get historyModeTwoPlayers => 'Twee spelers';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Spelen in de buurt';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Bezig';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side wint $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'enkel';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Leer voortgang vernieuwen';

  @override
  String get learningOptions => 'Leeropties';

  @override
  String get learningResetMenu => 'Oefenvoortgang resetten';

  @override
  String get learningLoadFailed => 'Leer voortgang laden is mislukt.';

  @override
  String get actionRetry => 'Opnieuw proberen';

  @override
  String get learningHeading => 'Leer van je beslissingen';

  @override
  String get learningIntro =>
      'Je voortgang blijft op dit apparaat. Bekijk terugkerende thema’s en speel opgeslagen posities opnieuw zonder het antwoord te zien. Wit en Zwart kun je apart bekijken.';

  @override
  String get learningBothSides => 'Beide kanten';

  @override
  String get learningHumansOnly => 'Alleen menselijke beslissingen';

  @override
  String get learningHumanOnlyHelp =>
      'Schakel uit om beslissingen van de computer en externe spelers mee te nemen';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions beslissingen · $mistakes verbeterpunten · $blunders blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Gemiddeld verlies ($decisions beslissingen): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Gedwongen zetten tellen niet mee. Dit zijn engine-inschattingen, geen toernooirating.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '# opgeslagen partijen moeten worden geanalyseerd of opnieuw geanalyseerd.',
      one:
          '# opgeslagen partij moet worden geanalyseerd of opnieuw geanalyseerd.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Opgeslagen partijen analyseren';

  @override
  String get learningEmptyProfile =>
      'Speel en voltooi een partij om je leerprofiel op te bouwen. Je kunt ook losse beslissingen opslaan vanuit de herhaling.';

  @override
  String get learningOpenHistory => 'Partijgeschiedenis openen';

  @override
  String get learningRecurringThemes => 'Terugkerende thema’s';

  @override
  String get learningNoThemes =>
      'In deze selectie zijn nog geen terugkerende foutthema’s.';

  @override
  String learningThemeDecisions(int count) {
    return '$count beslissingen om opnieuw te bekijken. Een positie kan meerdere thema’s hebben.';
  }

  @override
  String get learningSaveMistakes => 'Deze fouten opslaan om te oefenen';

  @override
  String learningSavedMistakes(int count) {
    return '$count beslissingen staan op je oefenlijst. Eerder opgeslagen items blijven behouden.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Sommige beslissingen konden niet worden opgeslagen. De voltooide opslag blijft behouden; probeer het opnieuw.';

  @override
  String get learningSpacedPractice => 'Gespreid oefenen';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due nu aan de beurt · $saved opgeslagen · $attempts pogingen · $successes succesvol herinnerd';
  }

  @override
  String get learningIntervalsHelp =>
      'Succesvolle beoordelingen komen na 1, 3, 7, 14 en 30 dagen terug. Fouten of getoonde antwoorden komen na 10 minuten terug. Vroege herhalingen wijzigen het interval niet.';

  @override
  String get learningAnswerContext =>
      'De oefenresultaten zijn gebaseerd op jouw antwoorden hier, ook als de oorspronkelijke positie van een tegenstander was.';

  @override
  String get learningNoSavedPositions =>
      'Sla een beslissing op vanuit de herhaling of gebruik hierboven de foutknop.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Beslissing van $side · spel $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Herhalen op $date';
  }

  @override
  String get learningReadyToReview => 'Klaar om te herhalen';

  @override
  String learningSuccessStreak(int count) {
    return '$count succesvolle beoordelingen die aan de beurt zijn';
  }

  @override
  String get learningRemoveTooltip => 'Opgeslagen beslissing verwijderen';

  @override
  String get learningRecentPractice => 'Recente oefeningen';

  @override
  String get learningAnswerRevealed => 'Antwoord getoond';

  @override
  String get learningSuccessfulRecall => 'Succesvol herinnerd';

  @override
  String get learningTryAgain => 'Probeer deze beslissing opnieuw';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · opgeslagen positie $positionId';
  }

  @override
  String get learningRemoveTitle => 'Deze oefening verwijderen?';

  @override
  String get learningRemoveBody =>
      'Hiermee worden de oefenpogingen verwijderd. De oorspronkelijke partij blijft in de geschiedenis.';

  @override
  String get actionRemove => 'Verwijderen';

  @override
  String get learningRemoveFailed =>
      'Deze oefening kon niet worden verwijderd.';

  @override
  String get learningResetTitle => 'Oefenvoortgang resetten?';

  @override
  String get learningResetBody =>
      'Alle pogingen en herhaalintervallen worden verwijderd. Je opgeslagen oefeningen en partijgeschiedenis blijven behouden; elke oefening is meteen aan de beurt.';

  @override
  String get learningResetAction => 'Voortgang resetten';

  @override
  String get learningResetFailed => 'Oefenvoortgang resetten is mislukt.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return '$completed partijen geanalyseerd · $failed niet beschikbaar.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return '$completed partijen geanalyseerd.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return '$completed partijen geanalyseerd; $failed konden niet worden geanalyseerd. Probeer het opnieuw zodra de engine klaar is.';
  }

  @override
  String get learningThemeHitting => 'Slaan en tempo';

  @override
  String get learningThemeSafety => 'Blots en veiligheid';

  @override
  String get learningThemePointMaking => 'Punten maken';

  @override
  String get learningThemePrime => 'Primes en blokkades';

  @override
  String get learningThemeAnchor => 'Ankers en ontsnappen';

  @override
  String get learningThemeRace => 'Efficiënt racen';

  @override
  String get learningThemeBearOff => 'Stenen uitspelen';

  @override
  String get learningThemeBarEntry => 'Binnenkomen vanaf de bar';

  @override
  String get learningThemeCube => 'Dobbelsteenbeslissingen';

  @override
  String get analysisCubeNoDouble => 'Niet verdubbelen';

  @override
  String get analysisCubeDouble => 'Verdubbelen';

  @override
  String get analysisCubeTake => 'Aannemen';

  @override
  String get analysisCubePass => 'Passen';

  @override
  String get learningAnalysisStarting => 'Opgeslagen partijen analyseren…';

  @override
  String get tutorCubelessEstimateScope =>
      'Cubeloze schatting op 0 ply · score niet beschikbaar';

  @override
  String get tutorLossPp => 'Verlies pp';

  @override
  String get tutorLoss => 'Verlies';

  @override
  String get scoreSheetNoMoves => 'Nog geen zetten';

  @override
  String get tutorOptions => 'Tutoropties';

  @override
  String get tutorCollapseTooltip => 'Tutor inklappen';

  @override
  String get tutorExpandTooltip => 'Tutor uitklappen';

  @override
  String get onlineTitle => 'Online spelen';

  @override
  String get onlineUnassistedNote =>
      'Live onlinepartijen hebben geen tutor. Bekijk je zetten en oefen fouten na de partij.';

  @override
  String get onlineNotConfiguredTitle =>
      'Online spelen is in deze build niet ingesteld';

  @override
  String get onlineNotConfiguredBody =>
      'Deze build heeft geen Firebase-backend, dus je kunt geen partijen maken of eraan deelnemen.';

  @override
  String get onlineErrorNoMatch =>
      'Geen partij met die code. Controleer de code en probeer het opnieuw.';

  @override
  String get onlineErrorSeatTaken =>
      'Die partij is niet meer open; de plek is al ingenomen.';

  @override
  String get onlineErrorPermission => 'Je hebt geen toegang tot die partij.';

  @override
  String get onlineErrorGeneric => 'Er is iets misgegaan. Probeer het opnieuw.';

  @override
  String get onlineMatchFinished =>
      'Deze partij is afgelopen en kan niet meer worden hervat.';

  @override
  String get onlineEnterCodeError => 'Voer een partijcode in.';

  @override
  String get onlineOpponentShort => 'Tegenstander';

  @override
  String get onlineMatchInProgress => 'Partij bezig';

  @override
  String onlineResumePrompt(Object code) {
    return 'Je speelde partij $code.';
  }

  @override
  String get onlineRejoin => 'Hervatten';

  @override
  String get onlineForgetMatch => 'Deze partij vergeten';

  @override
  String get onlineCreateTitle => 'Partij maken';

  @override
  String get onlineMatchLength => 'Partijlengte';

  @override
  String get onlineNoCubeTitle => 'Spelen zonder verdubbelingsdobbelsteen';

  @override
  String get onlineNoCubeSubtitle =>
      'Geen verdubbelingsdobbelsteen in deze partij';

  @override
  String get onlineCreate => 'Maken';

  @override
  String get onlineWaitingOpponent => 'Wachten op tegenstander…';

  @override
  String get onlineShareCode => 'Deze code delen';

  @override
  String get onlineCopyCode => 'Code kopiëren';

  @override
  String get onlineCodeCopied => 'Code gekopieerd';

  @override
  String get onlineJoinTitle => 'Deelnemen aan partij';

  @override
  String get onlineRoomCode => 'Partijcode';

  @override
  String get onlineJoin => 'Deelnemen';

  @override
  String get lanTitle => 'Spelen in de buurt';

  @override
  String get lanTabHost => 'Hosten';

  @override
  String get lanTabJoin => 'Deelnemen';

  @override
  String get lanUnassistedNote =>
      'Lokale partijen hebben geen live tutor. Bekijk je zetten en oefen fouten na de partij.';

  @override
  String get lanGameStartFailed =>
      'De partij kon niet worden gestart. Het andere apparaat kan opnieuw proberen deel te nemen.';

  @override
  String get lanHostPortInUse =>
      'Hosten lukt niet: de poort is al in gebruik. Sluit andere exemplaren van Backgammon Buddy en probeer het opnieuw.';

  @override
  String get lanHostStartFailed =>
      'Hosten lukt niet. Controleer je wifi en probeer het opnieuw.';

  @override
  String get lanHostTitle => 'Partij hosten';

  @override
  String get lanStartHosting => 'Hosten starten';

  @override
  String get lanHostHelp =>
      'Beide apparaten moeten op hetzelfde wifi-netwerk zitten. Dit apparaat gooit de dobbelstenen en houdt de score bij.';

  @override
  String get lanWaitingPlayerTitle => 'Wachten op een speler';

  @override
  String get lanRoomCodeInfo =>
      'Geef deze code aan de andere speler. Daarmee krijgt die toegang; de app verstuurt de code nooit via het netwerk.';

  @override
  String get lanWaitingPlayer => 'Wachten op een speler…';

  @override
  String get lanStopHosting => 'Stoppen met hosten';

  @override
  String lanFindNearbyPort(int port) {
    return 'Laat het andere apparaat zoeken naar partijen in de buurt. Luistert op poort $port.';
  }

  @override
  String get lanOnNetwork => 'Op dit netwerk';

  @override
  String get lanCopyAddress => 'Adres kopiëren';

  @override
  String get lanAddressCopied => 'Adres gekopieerd';

  @override
  String get lanScanHostTitle => 'Host scannen';

  @override
  String get lanScanHostHelp =>
      'Het andere apparaat toont een QR-code op het Host-scherm. Scannen vult het adres en de kamercode in.';

  @override
  String get lanScanQr => 'QR-code scannen';

  @override
  String get lanScannerUnavailable =>
      'Camera of toestemming niet beschikbaar. Voer hieronder het adres en de kamercode in.';

  @override
  String get lanInvalidQr =>
      'Deze QR-code is niet van Backgammon Buddy. Scan de code op het Host-scherm van het andere apparaat.';

  @override
  String get lanScannerFailed =>
      'De scanner kon niet worden geopend. Voer hieronder het adres en de code in.';

  @override
  String get lanNearbyGames => 'Partijen in de buurt';

  @override
  String get lanSearching => 'Zoeken naar partijen in de buurt…';

  @override
  String get lanNoGamesFound =>
      'Geen partijen gevonden. Controleer of het andere apparaat host en beide apparaten op dezelfde wifi zitten, of voer hieronder het adres in.';

  @override
  String get lanStillSearching => 'Verder zoeken…';

  @override
  String get lanEnterAddress => 'Adres invoeren';

  @override
  String get lanEnterAddressHelp =>
      'Automatisch zoeken werkt niet op elk netwerk en kan op iOS volledig geblokkeerd zijn. Het Host-scherm laat zien wat je moet invoeren.';

  @override
  String get lanIpAddress => 'IP-adres';

  @override
  String get lanPort => 'Poort';

  @override
  String get lanInvalidPort => 'Voer een poort tussen 1 en 65535 in.';

  @override
  String get lanEnterAddressError =>
      'Voer het adres in dat op het andere apparaat staat.';

  @override
  String get lanEnterRoomCodeError =>
      'Voer de viercijferige code van het andere apparaat in.';

  @override
  String get lanJoinWrongCode =>
      'Onjuiste kamercode. Controleer de vier cijfers.';

  @override
  String get lanJoinVersionMismatch =>
      'Op het andere apparaat staat een andere versie van Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Dit apparaat antwoordde niet zoals Backgammon Buddy. Controleer adres en poort.';

  @override
  String get lanJoinFailed =>
      'Deelnemen mislukt. Controleer het adres en de kamercode en probeer het opnieuw.';

  @override
  String lanJoinTarget(Object name) {
    return 'Deelnemen aan $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Voer de viercijferige code in die op het andere apparaat staat.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Verbinden met $name';
  }

  @override
  String get lanConnect => 'Verbinden';

  @override
  String get lanBack => 'Terug';

  @override
  String get lanTryAgain => 'Opnieuw proberen';

  @override
  String get lanStatusBusy => 'Kamer bezet — wachten…';

  @override
  String get lanStatusReconnecting => 'Verbinding verloren — opnieuw proberen…';

  @override
  String get lanStatusConnected => 'Verbonden — partij starten…';

  @override
  String get lanStatusFailed => 'Deelnemen mislukt.';

  @override
  String get lanStatusConnecting => 'Verbinden…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostiek gekopieerd';

  @override
  String get diagnosticsReviewTitle => 'Diagnostisch rapport bekijken';

  @override
  String get diagnosticsPrivacyNotice =>
      'Als je het concept opent, worden de onderstaande gegevens naar GitHub gestuurd, waaronder de appversie, het platform en foutdetails. Er wordt niets openbaar geplaatst totdat je het daar indient. Bevat dit privégegevens, annuleer dan en gebruik Kopiëren om zelf een rapport samen te stellen.';

  @override
  String get diagnosticsCancel => 'Annuleren';

  @override
  String get diagnosticsOpenGitHub => 'GitHub openen';

  @override
  String get diagnosticsTitle => 'Diagnostiek';

  @override
  String get diagnosticsReportTooltip => 'Probleem melden op GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Kopiëren naar klembord';

  @override
  String get diagnosticsClearTooltip => 'Log wissen';

  @override
  String get diagnosticsEmpty =>
      'Geen fouten geregistreerd.\n\nAls er iets misgaat, wordt dat hier vastgelegd. Kom terug om de gegevens naar een bugrapport te kopiëren.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · tot $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · tot $matchLength';
  }

  @override
  String get gameHudYou => 'Jij';

  @override
  String get gameHudAi => 'AI';

  @override
  String gameHudGameNumber(int number) {
    return 'Spel $number';
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
    return '$whiteLabel tegen $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'tegen $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'tegen $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Verdubbelen';

  @override
  String get gameHudMoreActions => 'Meer acties';

  @override
  String get gameHudSurrender => 'Opgeven…';

  @override
  String get gameHudThinking => 'Denkt na';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Je kunt alleen verdubbelen vóór je gooit, tijdens je beurt.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Verdubbelen kan niet in de Crawfordpartij; dit spel beslist de partij.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Alleen de eigenaar van de dobbelsteen mag verdubbelen; nu is de andere kant eigenaar.';

  @override
  String get gameHudDoubleUnavailable => 'Verdubbelen is nu niet beschikbaar.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (tot $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner wint dit spel ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner wint dit spel ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner wint dit spel ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner wint dit spel ($points) — $loser weigerde de double.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner wint dit spel ($points) — $loser gaf op.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Geef het apparaat door';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name is aan zet';
  }

  @override
  String get gameDialogTapToContinue => 'Tik om door te gaan';

  @override
  String get gameDialogCubeOfferedTitle => 'Double aangeboden';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler biedt een double naar $value. Aannemen of passen?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passen';

  @override
  String get gameDialogTake => 'Aannemen';

  @override
  String get gameDialogResignationTitle => 'Opgeven aangeboden';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner biedt opgeven voor $value punten aan. Aannemen of weigeren?';
  }

  @override
  String get gameDialogResignSingle => 'enkel spel';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Weigeren';

  @override
  String get gameDialogAccept => 'Aannemen';

  @override
  String get gameDialogGameOverTitle => 'Spel afgelopen';

  @override
  String get gameDialogNextGame => 'Volgende spel';

  @override
  String get gameDialogMatchOverTitle => 'Partij afgelopen';

  @override
  String get gameDialogNobody => 'Niemand';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner wint de partij.';
  }

  @override
  String get gameDialogSavedToHistory => 'Opgeslagen in geschiedenis';

  @override
  String get gameDialogDone => 'Klaar';

  @override
  String get gameTapNoLegalMove =>
      'Deze steen kan niet met de resterende dobbelstenen worden verplaatst';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Deze steen kan niet met de resterende dobbelstenen worden verplaatst — probeer Ongedaan maken';

  @override
  String get gameDragHint =>
      'Tip: sleep stenen of tik erop — wijzig dit in Instellingen';

  @override
  String get commonGotIt => 'Begrepen';

  @override
  String get gameHintStageBeforeHint =>
      'Speel eerst een volledige legale zet voordat je om een hint vraagt.';

  @override
  String get surrenderTitle => 'Opgeven';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player geeft de huidige partij op.';
  }

  @override
  String get surrenderConcedes => 'Geeft de huidige partij op.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Beschikbaar aan het begin van de beurt van $player';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Beschikbaar aan het begin van je beurt';

  @override
  String get commonCancel => 'Annuleren';

  @override
  String get surrenderSingle => 'Enkel (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Wie geeft dit spel op?';

  @override
  String get commonDone => 'Klaar';

  @override
  String get cubeDouble => 'Verdubbelen';

  @override
  String get cubeBlockedOtherPlayersTurn => 'De andere speler is aan zet.';

  @override
  String get cubeBlockedCrawford =>
      'Verdubbelen kan niet in een Crawfordpartij.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Alleen de eigenaar van de dobbelsteen mag verdubbelen; de andere kant is nu eigenaar.';

  @override
  String get cubeBlockedUnavailable => 'Verdubbelen is nu niet beschikbaar.';

  @override
  String get gameStatusRolling => 'Gooien…';

  @override
  String get gameStatusThinking => 'Denkt na…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player is aan zet';
  }

  @override
  String get cubeAdviceOpponentTake => 'Verdubbel — tegenstander moet aannemen';

  @override
  String get cubeAdviceOpponentPass => 'Verdubbel — tegenstander moet passen';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Fout: $error';
  }

  @override
  String get privacyTitle => 'Privacy en gegevens';

  @override
  String get privacyAppTitle => 'Backgammon Buddy van Freevia';

  @override
  String get privacyIntro =>
      'Op deze pagina staat hoe deze versie van de app met je gegevens omgaat.';

  @override
  String get privacyLocalTitle => 'Spellen en begeleiding op je apparaat';

  @override
  String get privacyLocalBody =>
      'Lokale spellen, instellingen, analyses en oefenvoortgang worden op dit apparaat opgeslagen. De backgammonengine en uitleg van de tutor werken hier. Verwijder een opgeslagen spel uit Geschiedenis om ook de bijbehorende opgeslagen oefeningen en pogingen te verwijderen. Verwijder afzonderlijke oefeningen of reset je voortgang bij Leren; wis lokale foutmeldingen via Instellingen â†’ Diagnostiek. De back-upinstellingen van je apparaat kunnen ook gelden voor de spelgeschiedenis. Inloggegevens voor online spelen worden bewaard in de beveiligde opslag van het apparaat.';

  @override
  String get privacyOnlineTitle => 'Online en in de buurt spelen';

  @override
  String get privacyOnlineBody =>
      'Bij online spelen worden een anonieme spelers-ID, spelinstellingen, zetten en records voor het afstemmen van de dobbelstenen naar Google Firebase gestuurd, zodat beide spelers hetzelfde spel kunnen spelen. Als je de Geschiedenis op dit apparaat wist, worden online gegevens niet verwijderd. Gehoste spellen verlopen 30 dagen na aanmaak; geplande opschoning verwijdert de bijbehorende cloudlogboeken. Spelgegevens worden in de EU opgeslagen; Firebase Authentication verwerkt inloggegevens in de Verenigde Staten. Online verbindingen met Google zijn tijdens verzending versleuteld. Bij lokaal spelen worden spelgegevens via een niet-versleutelde lokale verbinding uitgewisseld met het andere apparaat; gebruik een vertrouwd wifi-netwerk.';

  @override
  String get privacyDiagnosticsTitle =>
      'Optionele gebruiks- en crashdiagnostiek';

  @override
  String get privacyDiagnosticsBody =>
      'Delen staat uit totdat je dit inschakelt via Instellingen. Als je het inschakelt, ontvangt Google Firebase gebruiksgebeurtenissen, app- en apparaatgegevens, prestatiemetingen en crashrapporten om de app te verbeteren. Je kunt delen op elk moment uitschakelen, zodat er geen nieuwe optionele gegevens worden verzameld. Reeds verzonden gegevens worden hierdoor niet gewist. Lokale diagnostiek en online spellen staan los van deze keuze.';

  @override
  String get privacyCameraTitle =>
      'Camera voor QR-codes van spellen in de buurt';

  @override
  String get privacyCameraBody =>
      'De optionele camera scant QR-codes voor spellen in de buurt. Afbeeldingen worden op je apparaat verwerkt en niet opgeslagen of geÃ¼pload. Je kunt cameratoegang weigeren en het adres van de host handmatig invoeren. Deze versie gebruikt de microfoon niet en biedt geen spel met een fysiek bord.';

  @override
  String get privacyFeedbackTitle => 'Feedback die je zelf wilt versturen';

  @override
  String get privacyFeedbackBody =>
      'Feedback opent een concept voor een GitHub-issue dat je kunt bekijken. Bij het openen worden de appversie en het platform naar GitHub gestuurd; feedback vanuit Diagnostiek kan ook foutdetails bevatten. Er wordt pas een issue geplaatst als je het verstuurt. Issues kunnen openbaar zijn, dus verwijder privÃ©gegevens voordat je ze verstuurt.';

  @override
  String get privacyContactTitle => 'Privacycontact';

  @override
  String get privacyReadPolicy => 'Lees het privacybeleid';

  @override
  String get privacyPolicyOpenFailed =>
      'Het privacybeleid kan niet worden geopend.';

  @override
  String get privacySupportTitle => 'Hulp en ondersteuning';

  @override
  String get privacySupportOpenFailed =>
      'Ondersteuning kan niet worden geopend. Neem contact op via support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Online identiteit en gegevens verwijderen?';

  @override
  String get privacyDeleteConfirmBody =>
      'Hierdoor wordt de toegang van beide spelers tot de cloudspellen van deze identiteit direct beÃ«indigd en wordt verzocht de identiteit en gedeelde logboeken van online spellen binnen 30 dagen te verwijderen. Google kan na het verwijderen van het account tot 180 dagen nodig hebben om Authentication-gegevens uit actieve systemen en back-ups te verwijderen. De lokale Geschiedenis en oefeningen blijven op dit apparaat staan. Eerder verstuurde optionele diagnostiek valt hier los van; neem daarvoor contact op via privacy@freevia.org. Dit verzoek kan niet ongedaan worden gemaakt.';

  @override
  String get privacyRequestDeletion => 'Verwijdering aanvragen';

  @override
  String get privacyDeleteSectionTitle => 'Online gegevens verwijderen';

  @override
  String get privacyDeleteInstructions =>
      'Gebruik de opgeslagen aanmelding op dit apparaat om te bewijzen dat jij de eigenaar bent. Een spelers-ID of uitnodigingscode alleen bewijst het eigendom niet. Spelers die alleen lokaal spelen hebben geen online account nodig.';

  @override
  String get privacySendingRequest => 'Verzoek verzendenâ€¦';

  @override
  String get privacyDeleteAction => 'Online identiteit en gegevens verwijderen';

  @override
  String get privacyDeleteRequested =>
      'Verwijdering aangevraagd. Deze online identiteit is afgemeld. De cloudgegevens worden binnen 30 dagen verwijderd. Als je opnieuw online gaat spelen, wordt een nieuwe identiteit aangemaakt. Het verwijderen van Google Authentication-gegevens kan tot 180 dagen duren. Neem voor hulp contact op via privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Verwijdering aangevraagd. De cloudgegevens worden binnen 30 dagen verwijderd. Het apparaat kon de opgeslagen aanmelding niet wissen, maar de online identiteit is geblokkeerd voor verdere toegang tot spellen. Het verwijderen van Google Authentication-gegevens kan tot 180 dagen duren. Neem voor hulp contact op via privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Er is geen bruikbare online identiteit op dit apparaat opgeslagen. Er is geen nieuw account aangemaakt. Heb je eerder online gespeeld, neem dan voor hulp contact op via privacy@freevia.org; gehoste spellen verlopen na 30 dagen.';

  @override
  String get privacyDeleteRequestFailed =>
      'Het verwijderingsverzoek kon niet worden bevestigd. Controleer je verbinding en probeer het opnieuw, of neem contact op via privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Gebruiksgegevens en crashdiagnostiek delen?';

  @override
  String get privacyConsentBody =>
      'Hiermee worden gebruiksgebeurtenissen, app- en apparaatgegevens, crashrapporten en prestatiemetingen naar Google Firebase gestuurd. Delen is optioneel. Spellen en begeleiding werken ook als delen uitstaat; je kunt het later weer uitschakelen via Instellingen.';

  @override
  String get privacyKeepOff => 'Uit laten';

  @override
  String get privacyShareDiagnostics => 'Diagnostiek delen';

  @override
  String get privacySaveFailed =>
      'Je privacykeuze kon niet worden opgeslagen. Probeer het opnieuw.';

  @override
  String get privacySettingsSubtitle =>
      'Wat op je apparaat blijft en wat wordt gedeeld';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Gebruiksgegevens en crashdiagnostiek delen';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Optioneel Â· standaard uitgeschakeld';

  @override
  String get lanScanToJoin => 'Scannen om mee te doen';

  @override
  String get lanScanHostCode => 'Code van de host scannen';

  @override
  String get lanEnterAddressInstead => 'In plaats daarvan het adres invoeren';

  @override
  String get lanQrAccessibilityLabel => 'QR-code om aan dit spel deel te nemen';

  @override
  String get lanJoinInstruction =>
      'Open op het andere apparaat Dichtbij spelen, kies Deelnemen en scan daarna deze QR-code.';

  @override
  String get lanTorch => 'Zaklamp';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy kan de camera niet gebruiken. Geef de app toegang tot de camera via de apparaatinstellingen of voer het adres van het andere apparaat handmatig in.';

  @override
  String get lanCameraUnsupported =>
      'Dit apparaat kan geen QR-codes scannen. Voer het adres van het andere apparaat handmatig in.';

  @override
  String get lanCameraStartFailed =>
      'De camera kon niet worden gestart. Voer het adres van het andere apparaat handmatig in.';

  @override
  String get lanPointCameraAtQr =>
      'Richt de camera op de QR-code op het andere apparaat.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Spelen met een fysiek bord is in deze versie niet beschikbaar. Schermspellen, begeleiding en oefenen vind je op het startscherm.';

  @override
  String get homePlayWithBuddy => 'Spelen met Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammonbord. $status';
  }

  @override
  String get boardWhiteToRoll => 'Wit is aan de beurt om te gooien.';

  @override
  String get boardBlackToRoll => 'Zwart is aan de beurt om te gooien.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Wit is aan zet; gooi $die1 en $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Zwart is aan zet; gooi $die1 en $die2.';
  }

  @override
  String get boardDoubleOffered => 'Er is een verdubbeling aangeboden.';

  @override
  String get boardResignationOffered => 'Er is een opgave aangeboden.';

  @override
  String get boardGameOver => 'Het spel is afgelopen.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Bug]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idee]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Vervang dit door een korte beschrijving van wat er is gebeurd.';

  @override
  String get feedbackBugReproduction =>
      'Vervang dit door de stappen die tot het probleem hebben geleid.';

  @override
  String get feedbackBugExpected =>
      'Vervang dit door wat je verwachtte dat er zou gebeuren.';

  @override
  String get feedbackIdeaNeed => 'Vervang dit door wat je wilde doen of leren.';

  @override
  String get feedbackIdeaSuggestion =>
      'Vervang dit door de verandering die je nuttig zou vinden.';

  @override
  String get feedbackExcerptTruncated =>
      '(afgekapt â€” gebruik KopiÃ«ren naar klembord op het scherm Diagnostiek voor het volledige logboek)';

  @override
  String get boardWhiteToMoveNoRoll => 'Wit is aan zet.';

  @override
  String get boardBlackToMoveNoRoll => 'Zwart is aan zet.';

  @override
  String get feedbackFieldVersion => 'Versie';

  @override
  String get feedbackFieldPlatform => 'Platform';

  @override
  String get feedbackFieldSummary => 'Samenvatting';

  @override
  String get feedbackFieldReproduction => 'Stappen om te reproduceren';

  @override
  String get feedbackFieldExpected => 'Verwacht resultaat';

  @override
  String get feedbackFieldNeed => 'Wat wilde je doen of leren';

  @override
  String get feedbackFieldIdea => 'Idee';

  @override
  String get buddySetupTitle => 'Speel met Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy speelt';

  @override
  String get buddySetupSeatLabel => 'Jouw kant';

  @override
  String get buddySetupSeatNear => 'Bij de telefoon';

  @override
  String get buddySetupSeatFar => 'Aan de overkant';

  @override
  String get buddySetupSeatHelp =>
      'Aan welke kant van het bord je zit. Zo nummert Buddy de punten en onderscheidt hij jouw openingsworp van die van zichzelf.';

  @override
  String get buddySetupVoiceLabel => 'Hoe Buddy praat';

  @override
  String get buddySetupVoiceTerse => 'Kort en bondig';

  @override
  String get buddySetupVoiceFriendly => 'Vriendelijk';

  @override
  String get buddySetupVoiceTerseHelp =>
      '“13/8, 24/22” — de notatie die twee spelers aan het bord gebruiken.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '“Verplaats één schijf van 13 naar 8 en één van 24 naar 22.”';

  @override
  String get buddySetupTutorHelp =>
      'De uitleg en opmerkingen van de coach volgen je opgeslagen coachvoorkeuren in Instellingen. Buddy geeft af en toe feedback op je zetten; worpen invoeren en zetten handmatig doen werkt hetzelfde.';

  @override
  String get buddySetupCalibrate => 'Kalibreer het bord';

  @override
  String get buddyFixAim => 'Richt de camera opnieuw';

  @override
  String get buddyWaitingForOpening =>
      'Buddy wacht op de worp die de wedstrijd opent.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy is het bord kwijt. Richt de camera opnieuw; de wedstrijd gaat verder waar hij gebleven was.';

  @override
  String get buddyPromptWaitingPicture =>
      'Wachten op een beeld dat Buddy kan lezen. Er gaat niets verloren.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy kan de dobbelstenen niet zien. Voer de worp handmatig in.';

  @override
  String get buddyPromptPlay =>
      'Voer je zet uit op het bord. Voer hem hier in als Buddy hem niet ziet.';

  @override
  String get buddyPromptWhichPlay => 'Welke zet heb je gedaan?';

  @override
  String get buddyPromptCube =>
      'Buddy biedt een verdubbeling aan. Aannemen of weigeren?';

  @override
  String get buddyPromptMakeMove =>
      'Voer Buddy’s zet uit op het bord, dan gaat Buddy verder.';

  @override
  String get buddyPromptThinking => 'Buddy denkt na.';

  @override
  String get buddyPromptWaitingCalibration => 'Wachten op kalibratie.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy kan zijn zet nog steeds niet zien. Het bord hieronder toont de positie die Buddy heeft opgeslagen.';

  @override
  String get buddyPromptNotLegal => 'Dat is geen toegestane zet.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Dat is geen toegestane zet. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Gooi de openingsdobbelstenen — ieder één dobbelsteen.';

  @override
  String get buddyThrowUser => 'Gooi je dobbelstenen.';

  @override
  String get buddyThrowBuddy => 'Gooi de dobbelstenen voor Buddy.';

  @override
  String get buddyMatchOver => 'De wedstrijd is afgelopen.';

  @override
  String get buddyYouWin => 'Je wint de wedstrijd.';

  @override
  String get buddyBuddyWins => 'Buddy wint de wedstrijd.';

  @override
  String get buddyDoubleNoGame =>
      'Er is nog geen spel om te verdubbelen — eerst komt de openingsworp.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Je kunt alleen vóór het gooien verdubbelen, tijdens je beurt.';

  @override
  String get buddyDoubleCrawford =>
      'In het Crawford-spel mag niet worden verdubbeld — deze ene partij beslist de wedstrijd.';

  @override
  String get buddyDoubleNotOwner =>
      'Alleen de eigenaar van de verdubbelingskubus mag verdubbelen; op dit moment is dat de tegenstander.';

  @override
  String get buddyDoubleUnavailable => 'Verdubbelen kan nu niet.';

  @override
  String get buddyLookingAtBoard => 'Buddy bekijkt het bord.';

  @override
  String get buddyCameraPlayFallback =>
      'Je kunt de match blijven spelen: voer elke worp in op het dobbelstenenpaneel en tik je zetten aan op het bord hieronder.';

  @override
  String get buddySkipCheck => 'Deze controle overslaan';

  @override
  String get buddyFixedIt => 'Ik heb het opgelost';

  @override
  String get buddyDrop => 'Weigeren';

  @override
  String get buddyTake => 'Aannemen';

  @override
  String get buddyDone => 'Klaar';

  @override
  String get buddyTranscriptLabel => 'Wat Buddy zei';

  @override
  String get buddyUndo => 'Ongedaan maken';

  @override
  String get buddyConfirm => 'Bevestigen';

  @override
  String get buddyDice => 'Dobbelstenen';

  @override
  String get buddyDouble => 'Verdubbelen';

  @override
  String get buddyDicePadTitle => 'Wat heb je gegooid?';

  @override
  String get buddyEnterRoll => 'Worp invoeren';

  @override
  String get buddyContextBeforeGame => 'Speel met Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Jij $you–$buddy Buddy · tot $length · Spel $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'De camera kon niet worden gestart. Controleer de machtigingen en probeer het opnieuw.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy heeft geen toestemming om de camera te gebruiken. Geef cameratoegang in de instellingen van je apparaat en probeer het opnieuw.';

  @override
  String get buddyCalibrationTitle => 'Laat Buddy het bord zien';

  @override
  String get buddyCalibrationCornersFold =>
      'Sleep de vier buitenste handgrepen naar de hoeken van het vilt, niet de houten rand, en de vier kleine naar de naden waar het scharnier de verre en nabije rand raakt.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Sleep elke handgreep naar een hoek van het vilt — het speeloppervlak, niet de houten rand eromheen.';

  @override
  String get buddyCalibrationCheckLines =>
      'Controleer daarna de twaalf lijnen op elke helft: ze moeten allemaal langs een punt van het bord lopen. Mist een lijn haar punt, verschuif dan de bijbehorende handgreep.';

  @override
  String get buddyCalibrationSeatQuestion => 'Welke helft is jouw binnenveld?';

  @override
  String get buddyCalibrationSeatHelp =>
      'De helft die het dichtst bij de onderkant van de afbeelding ligt. Daarmee wordt de puntnummering bepaald en sluiten de lijnen hierboven daarop aan.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Houd de telefoon stil. Buddy wacht tot het beeld stabiel is voordat hij dit bord leert.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Is dit jouw bord?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy bekijkt het bord dat hij zojuist heeft geleerd.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'De schijven die over de afbeelding zijn getekend, laten zien waar Buddy denkt dat ze liggen. Staat er ook maar één verkeerd, begin dan opnieuw — dat kost nu seconden en kan je later een hele game kosten.';

  @override
  String get buddyCalibrationNext => 'Volgende';

  @override
  String get buddyCalibrationBack => 'Terug';

  @override
  String get buddyCalibrationCapture => 'Foto maken';

  @override
  String get buddyCalibrationStartOver => 'Opnieuw beginnen';

  @override
  String get buddyCalibrationLooksRight => 'Ziet er goed uit';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Deze vier handgrepen vormen geen bord — één handgreep kruist een andere. Sleep ze terug naar de hoeken van het vilt.';

  @override
  String get buddyCalibrationPrepTitle => 'Eerst drie dingen';

  @override
  String get buddyCalibrationRemoveDiceTitle =>
      'Haal de dobbelstenen van het bord.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy leert nu het lege bord. Een dobbelsteen die op het vilt blijft liggen, wordt als onderdeel van het bord gezien. Daarna kan Buddy de dobbelstenen deze sessie niet meer herkennen.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Zet de schijven in de beginopstelling.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Met dertig schijven op bekende plekken leert Buddy de twee kleuren van het bord herkennen, zonder dat je hoeft te vertellen welke kleur welke is.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Zorg dat het hele speelveld op de afbeelding staat.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Laat de telefoon daarna staan. Als hij beweegt, laat Buddy dat weten en kun je de hoeken bijstellen.';

  @override
  String get buddyCalibrationBoardKind => 'Wat voor soort bord is het?';

  @override
  String get buddyCalibrationFlatBoard => 'Plat bord';

  @override
  String get buddyCalibrationFoldingBoard => 'Vouwbord';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Een vouwbord heeft vier extra handgrepen op de naden van het scharnier nodig.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy-modus kijkt mee op een echt bord en kan daarom niet starten zonder camera. De rest van de app blijft gewoon werken.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Scharniernaad $number van 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Bordhoek $number van 4';
  }

  @override
  String get buddyNudgeLeft => 'Iets naar links';

  @override
  String get buddyNudgeRight => 'Iets naar rechts';

  @override
  String get buddyNudgeUp => 'Iets omhoog';

  @override
  String get buddyNudgeDown => 'Iets omlaag';

  @override
  String get buddyCalibrationProblemCorners =>
      'Deze vier hoeken vormen geen bord. Sleep elke handgreep naar een hoek van het speelveld en probeer het opnieuw.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Deze acht punten vormen geen vouwbord. Zet er vier op de hoeken van het speelveld en vier op de scharniernaden, en probeer het opnieuw.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Ik kan het bord zelf niet goed zien: het is helemaal bedekt of valt weg in schaduw of schittering. Maak het bord vrij, zorg voor meer licht en probeer het opnieuw.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ik kan $region niet goed zien — er ligt misschien iets op, of deze hoek van het bord is te donker. Maak de plek vrij of zorg voor meer licht en probeer het opnieuw.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'De twee kleuren schijven lijken vanaf hier te veel op elkaar. Meer licht of een hoek met minder schittering helpt meestal.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'De schijven staan niet in de beginopstelling — op punt $number ligt een schijf van de verkeerde kleur. Zet de schijven in de beginopstelling en kalibreer opnieuw.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Er valt zoveel licht op het bord dat de kleuren in elkaar overlopen. Dim het licht of verplaats de telefoon zodat de lamp er niet recht in weerkaatst.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Ik kan het bord lezen, maar het staat niet in de beginopstelling. Zet de schijven in de beginopstelling en kalibreer opnieuw.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Ik kan het bord lezen, maar niet zien hoeveel schijven achter elkaar staan — dan zou ik verkeerd tellen. Iets meer licht op de punten dichtbij of een iets hogere camerahoek helpt meestal.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ik kan niet het hele bord zien. Houd de telefoon verder weg of sleep de hoeken naar het speelveld.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Ik kan het hele bord niet meer zien — $region valt buiten beeld. Richt de camera opnieuw of controleer de hoeken.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Dit lijkt de beginopstelling.';

  @override
  String get buddyConfirmNoCheckers =>
      'Ik zie geen enkele schijf op een beginpunt. Zet de schijven in de beginopstelling en probeer het opnieuw.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Het bord staat niet in de beginopstelling: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region lijkt leeg, maar in de beginopstelling heeft $side daar schijven staan';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region is bezet door $side, maar hoort in de beginopstelling leeg te zijn';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region is bezet door $observed, maar in de beginopstelling horen daar schijven van $expected te staan';
  }

  @override
  String get buddyReadabilityMotion =>
      'Houd even stil — als de telefoon beweegt, raak ik het bord kwijt.';

  @override
  String get buddyReadabilityWrongFrame =>
      'De afbeelding die ik krijg hoort niet bij het bord waarvoor ik ben ingesteld, dus ik kan niets op de afbeelding uitlijnen. Stel het bord hier opnieuw in.';

  @override
  String get buddyReadabilityBlur =>
      'De afbeelding is te onscherp om het bord te lezen. Wacht even tot de camera scherpstelt.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Het bord staat niet meer op de plek waar het stond toen ik het leerde. Lijn de hoeken opnieuw uit; dan pak ik het spel meteen weer op.';

  @override
  String get buddyReadabilityOccluded =>
      'Iets bedekt een deel van het bord. Zodra dat weg is, ga ik verder.';

  @override
  String get buddyReadabilityClear => 'Ik kan het bord zien.';

  @override
  String get buddyReadabilityColorChanged =>
      'Het licht op het bord heeft een andere kleur, waardoor het bord niet meer lijkt op wat ik heb geleerd. Lijn de hoeken opnieuw uit bij dit licht; dan pak ik het spel meteen weer op.';

  @override
  String get buddyReadabilityTooDark =>
      'Het is te donker om het bord te lezen. Zorg voor wat meer licht, dan ga ik verder waar we gebleven waren.';

  @override
  String get buddyReadabilityTooBright =>
      'Er valt zoveel licht op het bord dat de kleuren in elkaar overlopen. Dim het licht of verplaats de telefoon zodat de lamp er niet recht in weerkaatst.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy kan zijn zet nog steeds niet zien — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nJe kunt de wedstrijd blijven spelen: voer elke worp in op het dobbelstenenpaneel en voer je zetten op het bord hieronder uit door erop te tikken.';
  }

  @override
  String get buddyCameraGenericError =>
      'De camera kon niet worden gestart. Controleer de machtigingen en probeer het opnieuw.';

  @override
  String buddyRegionPoint(int number) {
    return 'punt $number';
  }

  @override
  String get buddyRegionBar => 'de bar';

  @override
  String get buddyRegionWhiteTray => 'het uitneemvak voor witte schijven';

  @override
  String get buddyRegionBlackTray => 'het uitneemvak voor zwarte schijven';

  @override
  String get buddyRegionDiceZone => 'het midden van het bord';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ik kan niet het hele bord zien. Houd de telefoon verder weg of sleep de hoeken naar het speelveld.';

  @override
  String buddyConfirmMore(int number) {
    return ' (en nog $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Jullie gooien allebei één dobbelsteen. De hoogste worp bepaalt wie begint.';

  @override
  String get buddyDiceOpeningFirst => 'De dobbelsteen van wit';

  @override
  String get buddyDiceOpeningSecond => 'De dobbelsteen van zwart';

  @override
  String get buddyDiceRegularCaption =>
      'De twee gegooide waarden, in willekeurige volgorde.';

  @override
  String get buddyDiceRegularFirst => 'Eén dobbelsteen';

  @override
  String get buddyDiceRegularSecond => 'De andere';

  @override
  String get evaluationEngine => 'Evaluatie-engine';

  @override
  String get parallelEngineAnalysis => 'Met beide engines analyseren';

  @override
  String get parallelEngineExplanation =>
      'Vergelijk afzonderlijke adviezen van wildbg en GNUbg in de tutor.';

  @override
  String get engineComparison => 'Enginevergelijking';

  @override
  String get engineWinChance => 'Winkans';
}
