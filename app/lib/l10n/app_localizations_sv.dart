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

  @override
  String get settingsReset => 'Återställ';

  @override
  String get settingsAppLanguage => 'Appspråk';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Följ systemet';

  @override
  String get settingsThemeLight => 'Ljust';

  @override
  String get settingsThemeDark => 'Mörkt';

  @override
  String get settingsAnimationSpeed => 'Animationshastighet';

  @override
  String get settingsAnimationNone => 'Ingen';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Snabb';

  @override
  String get settingsDiceRollAnimation => 'Tärningsanimation';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Låt tärningarna rulla före varje kast';

  @override
  String get settingsDefaultMatchLength => 'Förvald matchlängd';

  @override
  String get settingsDefaultDifficulty => 'Förvald svårighetsgrad';

  @override
  String get settingsDifficultyEasy => 'Lätt';

  @override
  String get settingsDifficultyMedium => 'Medel';

  @override
  String get settingsDifficultyHard => 'Svår';

  @override
  String get settingsDifficultyExpert => 'Expert';

  @override
  String get settingsTutorModeDefault => 'Standardläge för handledaren';

  @override
  String get settingsTutorAuto => 'Automatiskt';

  @override
  String get settingsTutorOn => 'På';

  @override
  String get settingsTutorOff => 'Av';

  @override
  String get settingsTutorModeHelp =>
      'Automatiskt aktiverar handledaren på alla datorsvårighetsgrader. På och Av anger startvalet för lokala matcher. Närspel och onlinespel saknar assistans; sparade spel kan granskas i efterhand. Undervisningsinställningarna sparas på den här enheten.';

  @override
  String get settingsTutorPreferences => 'Handledarinställningar';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Sparade standardval för kommande matcher';

  @override
  String get settingsTutorSaveError =>
      'Det gick inte att spara handledarinställningarna.';

  @override
  String get settingsGameplay => 'Spel';

  @override
  String get settingsMoveHighlights => 'Markera drag';

  @override
  String get settingsMoveHighlightsHelp =>
      'Ringa in valbara brickor och markera målpunkter';

  @override
  String get settingsDragToMove => 'Dra för att flytta';

  @override
  String get settingsDragToMoveHelp =>
      'Dra en bricka till målet (tryck fungerar alltid)';

  @override
  String get settingsCombinedMoves => 'Kombinerade drag';

  @override
  String get settingsCombinedMovesHelp =>
      'Ett tryck flyttar en bricka med båda tärningarna';

  @override
  String get settingsRotateBoard => 'Rotera brädet mellan turerna';

  @override
  String get settingsRotateBoardHelp =>
      'Spela på samma enhet: vänd vyn mot spelaren vars tur det är';

  @override
  String get settingsPassDevice => 'Skärm för att lämna över enheten';

  @override
  String get settingsPassDeviceHelp =>
      'Dölj brädet mellan turerna när ni delar enheten';

  @override
  String get settingsShowScore => 'Visa poäng';

  @override
  String get settingsShowScoreHelp => 'Visa matchens aktuella poäng i rubriken';

  @override
  String get settingsBuddyMode => 'Buddys röstläge';

  @override
  String get settingsBuddyTerse => 'Kortfattat';

  @override
  String get settingsBuddyFriendly => 'Vänligt';

  @override
  String get settingsBuddyTerseHelp =>
      'Så här läser Buddy upp ett drag: ”13/8, 24/22” – notation som används vid brädet.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Så här läser Buddy upp ett drag: ”Flytta en bricka från 13 till 8 och en från 24 till 22.”';

  @override
  String get settingsListenForDice => 'Lyssna efter tärningarna';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy tittar på brädet tidigare när ett kast hörs. Av ändrar inget annat.';

  @override
  String get settingsDiagnostics => 'Diagnostik';

  @override
  String get settingsErrorLog => 'Fellogg';

  @override
  String get settingsErrorLogHelp =>
      'Senaste fel, redo att kopieras till en felrapport';

  @override
  String get settingsReportBug => 'Rapportera ett fel';

  @override
  String get settingsReportBugHelp => 'Öppna ett guidat ärende på GitHub';

  @override
  String get settingsSuggestIdea => 'Föreslå en idé';

  @override
  String get settingsSuggestIdeaHelp =>
      'Hjälp oss att förbättra handledaren och spelet';

  @override
  String get settingsAbout => 'Om appen';

  @override
  String get settingsOpenSourceLicenses => 'Licenser för öppen källkod';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partiet är slut.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Gå igenom dragen och hitta ett beslut att öva på.';

  @override
  String get tutorPhraseCubeOffered => 'Dubblingskuben har erbjudits.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Bestäm om du ska ta eller passa innan du planerar ett brickdrag.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Matchställningen påverkar värdet av den extra insatsen.';

  @override
  String get tutorPhraseResignationOffered =>
      'En uppgiven match har erbjudits.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Jämför de erbjudna poängen med ställningen innan du accepterar eller fortsätter.';

  @override
  String get tutorPhraseNoLegalPlay => 'Inget lagligt drag med det här kastet.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'En framtvingad passning är inget misstag; vänta på nästa kast.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Det finns bara en laglig slutställning.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Gör det tvingade draget. Det finns inget val att betygsätta med detta kast.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pip-antalet är lika.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Du ligger $count pip före.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Du ligger $count pip efter.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Du har $count brickor på baren: börja med att komma in igen.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Kom in med en bricka innan du flyttar någon annan; leta sedan efter en säker punkt att landa på.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Motståndaren har $count stängda punkter i sitt hembräde.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Kapplöpning om att ta ut brickor.';

  @override
  String get tutorPhrasePureRace => 'En ren kapplöpning.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Ta ut brickor men behåll en användbar spridning inför nästa kast.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Ta hem de bakre brickorna utan att stapla för många på samma punkt.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Spelarna har passerat varandra; inga fler slag är möjliga.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakten spelar fortfarande roll.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Motståndaren har $count brickor på baren.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Håll brädet stängt medan du tar hem de återstående brickorna.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Bygg upp eller bevara ditt hembräde medan motståndaren försöker komma in.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Du har $count punkter i hembrädet; var och en stänger ett ingångsnummer.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt med en $count-punktsprime.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Jämför att förlänga primen med att behålla reservbrickor så att den kan hållas intakt.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count reservbrickor kan flyttas utan att punkten öppnas direkt.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt med en ankarpunkt på $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Jämför att ta hem bakbrickorna med tryggheten i att behålla ankaret.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Tänk på det säkra fotfästet medan du letar efter ett slag eller försöker förbättra brädet.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Ankaret kan inte slås, men brickorna har fortfarande långt hem.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt: båda sidor kan fortfarande hota med slag.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Leta efter användbara punkter och jämför sedan risken med att lämna enstaka brickor oskyddade.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Du har $count punkter i hembrädet och lämnar $otherCount blottar.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Välj en bricka för att börja ditt drag.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Börja ett lagligt drag för att se kommentarer.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Du har slagit $count av motståndarens brickor.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Du har kommit in med $count brickor från baren.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return 'Du har tagit ut $count brickor.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Du har gjort punkterna $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Din bricka på punkt $point är just nu en blott.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Reservbrickan på punkt $point kan flyttas senare utan att punkten öppnas.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Använd de återstående spelbara tärningarna innan hela draget bedöms.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Alla 15 brickor är uttagna: du har vunnit partiet.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Slaget köper tid medan motståndaren försöker komma in igen.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Ett effektivt uttag tar bort brickor och lämnar användbara tal till nästa kast.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Ta hem bakbrickorna och sprid ut dem över bra punkter för uttag.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Uttag är framsteg, men kontakten innebär fortfarande risk för slag.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Återinträdet får brickan tillbaka i spelet; leta sedan efter en säker punkt för den.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Den nya punkten i hembrädet stänger ett ingångsnummer efter ett framtida slag.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Den längre primen stänger fler landningspunkter; reservbrickor hjälper dig att hålla den intakt.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Att lämna ankaret ger mark men du ger upp ett säkert fotfäste.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Det nya ankaret ger bakbrickorna ett säkert fotfäste.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Att täcka en blott tar bort ett mål för motståndaren.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Avvägningen gäller utveckling mot säkerhet: byggbrickor kan också bli mål.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Hela draget är klart; tryck på Bekräfta för att spela det.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Det här kastet lämnar inget val av brickdrag; det betygsätts inte som ett beslut.';

  @override
  String get tutorMoveTopVerdict =>
      'Ett av de bästa valen i den här ställningen.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Motorn föredrar ett annat drag här.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Skillnad från det bästa draget: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Efter draget: vinstchans $winPercent%, gammonvinst eller bättre $winGammonPercent%, gammonförlust eller sämre $loseGammonPercent%. Det här är uppskattningar ur spelarens perspektiv.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Uppskattad chans att vinna matchen: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Alla 15 brickor är ute: du har vunnit partiet.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Använd slaget för att vinna tid medan motståndaren kommer in igen. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Håll dina hembrädespunkter stängda så blir det svårare att komma in.';

  @override
  String get tutorMovePlanHitBuild =>
      'Bygg fler punkter i hembrädet så blir det svårare att återhämta sig efter framtida slag.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Sikta på ett effektivt uttag: ta bort brickor och lämna användbara tal inför nästa kast.';

  @override
  String get tutorMovePlanRaceHome =>
      'Ta hem bakbrickorna och sprid ut dem över användbara uttagspunkter.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Ta ut brickor, men håll koll på motståndarens bakbrickor: vid kontakt kan en ensam uttagsbricka bli ett mål.';

  @override
  String get tutorMovePlanReentry =>
      'Kom tillbaka in i spelet och leta sedan efter en säker punkt för brickan som kom in.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Stärk hembrädet. Den nya stängda punkten tar bort ett ingångsnummer och gör ett framtida slag kraftfullare.';

  @override
  String get tutorMovePlanPrime =>
      'Håll raden av stängda punkter intakt. Spara reservbrickor så att senare kast inte tvingar dig att öppna den.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Att lämna ankaret för bakbrickorna framåt men du ger upp ett säkert fotfäste. Håll koll på hur utsatta de är på vägen hem.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Använd det nya ankaret som ett säkert fotfäste medan du förbättrar resten av ställningen.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Samla brickorna. Att täcka en blotta tar bort ett mål och bevarar användbara landningspunkter.';

  @override
  String get tutorMovePlanSafety =>
      'Balansera utveckling och säkerhet: för byggbrickor mot användbara punkter och kontrollera vilka ensamma brickor som kan slås.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Inget lagligt brickdrag finns: turen måste passas.';

  @override
  String tutorMoveObservationHit(int count) {
    return 'Du slår $count av motståndarens brickor; motståndaren måste komma in från baren innan de andra kan flyttas.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Kom in med $count brickor från baren.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    return 'Ta ut $count brickor.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Du gör punkterna $points. Minst två brickor håller punkten säkert och hindrar motståndaren från att landa där.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Du ger upp stängda punkter $pointLabel $points. De hindrar inte längre motståndaren.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Du lämnar inga ensamma brickor oskyddade (tidigare $previousCount). Det finns ingen ensam bricka att slå.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    return 'Du lämnar $count ensamma brickor oskyddade (tidigare $previousCount). Kontrollera om motståndaren når dem innan du väljer säkerhet framför en annan vinst.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Längsta raden av stängda punkter: $count (tidigare $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'En sexpunktsprime går inte att passera så länge den är stängd.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Håll byggbrickor nära om du vill förlänga eller bevara raden.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return '$count reservbrickor finns utöver de två på stängda punkter. Att flytta en reserv kan bevara punkten; flyttar du någon av de två sista öppnas den.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ankare i motståndarens hembräde: $points (tidigare $previousPoints). Ett ankare skyddar brickorna från slag; om du lämnar det byter du fotfästet mot framsteg i loppet.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Rent lopp: spelarna har passerat varandra och ingen har brickor på baren. Slag är inte längre möjliga; ett effektivt uttag spelar roll.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Motståndaren kan inte slå någon bricka med något lagligt nästa kast i den här ställningen. Kontakten finns kvar, så senare drag kan skapa nya chanser.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Motståndaren kan slå med $count av $total kast. Till exempel ger $dieOne–$dieTwo ett lagligt slag på din punkt $point. Ett slag är möjligt, men motståndaren väljer det inte nödvändigtvis.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return '$closedPoints av dina hembrädespunkter är stängda. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Motståndaren kan inte komma in igen förrän en punkt öppnas.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Ett kast som använder en öppen ingångspunkt kan få tillbaka en bricka från baren.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Det bästa dragets uppskattade vinstchans är $delta procentenheter $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'högre';

  @override
  String get tutorMoveComparisonLower => 'lägre';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Det kan ändå rankas högre eftersom gammon och backgammon har olika värde vid aktuell $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'insats';

  @override
  String get tutorMoveComparisonMatchScore => 'matchställning';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Det bästa draget lämnar $bestCount av motståndarens brickor på baren i stället för $playedCount. En bricka på baren måste komma in innan de andra kan flyttas.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Det bästa draget håller $bestCount hembrädespunkter stängda i stället för $playedCount; efter ett slag finns $entryDifference ingångspunkter.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'stänger fler';

  @override
  String get tutorMoveComparisonLeavingMore => 'lämnar fler öppna';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Det bästa draget tillåter ett motdrag med slag på $bestCount av 36 kast i stället för $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Det minskar den omedelbara risken att bli slagen tillbaka.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Jämför den extra utsattheten med vad draget vinner på andra håll.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Det bästa dragets längsta rad av stängda punkter är $bestCount i stället för $playedCount; jämför blockaden med brickorna som kan hålla den intakt.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Det bästa dragets ankare finns på $bestPoints i stället för $playedPoints. Ett ankare bevarar en säker landningspunkt; om du lämnar det kommer brickorna närmare hem.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Det bästa draget har tagit ut $bestCount brickor i stället för $playedCount. Varje uttagen bricka är en mindre att ta ut senare.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Båda dragen lämnar samma omedelbara slagrisk, hembrädespunkter, ankare och antal uttagna brickor. Jämför landningspunkterna: nästa kast kan använda brickorna på olika sätt.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Det bästa draget skickar fler av motståndarens brickor till baren och fördröjer de andra dragen.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Det bästa draget stänger fler hembrädespunkter och gör återinträde svårare efter ett slag.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Det bästa draget tillåter färre omedelbara slagkast och minskar risken att bli slagen tillbaka.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Det bästa draget behåller en längre rad av stängda punkter.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Det bästa draget behåller fler säkra ankare i motståndarens hembräde.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Det bästa draget tar ut fler brickor, så färre återstår att ta bort senare.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Det här draget lämnar $playedCount ensamma brickor; det bästa draget lämnar $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Det bästa draget behåller ett säkert ankare på punkt $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Det bästa draget stänger fler ingångspunkter ifall en av dina brickor blir slagen.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Dragen lämnar liknande omedelbara risker; jämför vilka landningspunkter som fortfarande är användbara vid nästa kast.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value procentenheter MWC';
  }

  @override
  String get tutorMovePointSingular => 'punkt';

  @override
  String get tutorMovePointPlural => 'punkter';

  @override
  String get tutorMoveNoPoints => 'inga';

  @override
  String get gameTutorCommentaryOff => 'Spelkommentarer är avstängda.';

  @override
  String get gameTutorToolsAvailable =>
      'Öppna handledaren för att använda de verktyg du har aktiverat.';

  @override
  String get gameTutorNextRoll => 'Kasta tärningarna.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Det finns ingen utvärderad förklaring till det här sparade draget.';

  @override
  String get gameTutorAnalysisUnavailable => 'analys saknas';

  @override
  String get gameTutorReviewing => 'granskar…';

  @override
  String get gameTutorTryYourPlayFirst => 'Prova ditt eget drag först.';

  @override
  String get gameTutorKeepBuilding => 'Fortsätt att planera ditt drag.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Gör klart ett fullständigt lagligt drag innan råd eller tips visas.';

  @override
  String get gameTutorReadyToConfirm => 'Redo att bekräfta';

  @override
  String get gameTutorPlayTakingShape => 'Ditt drag tar form.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Bekräfta för att spela draget eller ångra och tänka om.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Använd de återstående tärningarna eller ångra draget.';

  @override
  String get gameTutorComputerConsidering => 'Datorn funderar på sitt drag.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Det färdiga draget granskas här.';

  @override
  String get gameTutorYourPlay => 'Ditt drag';

  @override
  String get gameTutorComputer => 'Dator';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Ditt drag: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'tvunget drag';

  @override
  String get gameTutorTopChoice => 'bästa valet';

  @override
  String get gameTutorSoundPlay => 'bra drag';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'ett annat drag kan passa bättre';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'ett annat drag passar bättre i den här ställningen';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'ett klart starkare drag fanns tillgängligt';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side har ett beräknat övertag.';
  }

  @override
  String get gameTutorPositionEven => 'Ställningen är ungefär jämn.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Spelat: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Bäst: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Visa rankade drag';

  @override
  String get tutorReviewRecordedMove =>
      'Tryck på ett avslutat drag i loggen för att granska beslutet här.';

  @override
  String get tutorTopPlays => 'Bästa dragen';

  @override
  String get tutorNoHintsAvailable => 'Inga tips tillgängliga.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tryck på ett drag för att förhandsvisa det på brädet och välj sedan Bekräfta.';

  @override
  String get tutorTopChoiceForPosition => 'Bästa valet i den här ställningen';

  @override
  String get tutorAlternativePlay => 'Alternativt drag';

  @override
  String get tutorEngineEstimates => 'Datorns uppskattningar';

  @override
  String get tutorEstimateScope =>
      '0-ply-uppskattning – aktuell poängställning och insats – inga framtida dubbleringar';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Matchvinstchans, %';

  @override
  String get tutorNearTiesNote =>
      'Djupare analys kan ändra ordningen mellan nästan jämna drag.';

  @override
  String get tutorWhyThisPlay => 'Varför det här draget?';

  @override
  String get tutorCompareAlternative => 'Jämför det här alternativet';

  @override
  String get gameTutorCubeTake => 'Tränaren: ta';

  @override
  String get gameTutorCubePass => 'Tränaren: passa';

  @override
  String get practiceScreenTitle => 'Öva på ett beslut';

  @override
  String get practiceUnavailable =>
      'Den här övningspositionen är inte längre tillgänglig.';

  @override
  String get practiceSubmitError =>
      'Försöket kunde inte utvärderas eller sparas. Dina framsteg ändrades inte. Försök igen.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side spelar · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historiskt resultat saknas; draget bedöms med cubeless equity.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Resultat: $whiteLabel $whiteScore – $blackLabel $blackScore, till $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford-parti';

  @override
  String get practiceNoDoublingCube => 'Utan dubbleringskub.';

  @override
  String practiceCubeValue(int value) {
    return 'Kubvärde $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown => 'Historiska kubregler är okända.';

  @override
  String get practiceAfterBestPosition => 'Position efter bästa draget';

  @override
  String get practiceAfterYourAnswerPosition => 'Position efter ditt svar';

  @override
  String get practiceFindYourPlayPrompt =>
      'Gör ditt drag på brädet och kontrollera sedan svaret. Inga ledtrådar visas.';

  @override
  String get practiceUndo => 'Ångra';

  @override
  String get practiceCheckAnswer => 'Kontrollera svaret';

  @override
  String get practiceRevealNoCredit => 'Visa svaret (ingen poäng)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Svaret visades — ingen återkallningspoäng.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Bäst: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Drag i ursprungspartiet: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Ditt svar: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Ditt svar';

  @override
  String get practiceBestPlayChip => 'Bästa draget';

  @override
  String practiceNextReview(Object date) {
    return 'Nästa repetition: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Bästa och bra svar räknas som lyckad återkallning. Tidiga repetitioner förlänger inte intervallet.';

  @override
  String get practiceBackToLearning => 'Tillbaka till lärandet';

  @override
  String get practiceMarkBest => 'Bäst';

  @override
  String get practiceMarkGood => 'Bra';

  @override
  String get practiceMarkDubious => 'Tveksamt';

  @override
  String get practiceMarkError => 'Fel';

  @override
  String get practiceMarkBlunder => 'Grovt misstag';

  @override
  String get practiceMarkForced => 'Tvunget';

  @override
  String get newMatchYourSide => 'Din sida';

  @override
  String get newMatchTutorMode => 'Handledarläge';

  @override
  String get newMatchTutorDescription =>
      'Lär dig med tips, förklaringar och kommentarer om partiet';

  @override
  String get newMatchTutoringOptions => 'Handledaralternativ';

  @override
  String get newMatchTutoringOptionsDescription =>
      'För den här matchen; kan ändras under spelet';

  @override
  String get setupMatchLength => 'Matchlängd';

  @override
  String get setupDifficulty => 'Svårighetsgrad';

  @override
  String get setupDifficultyEasy => 'Lätt';

  @override
  String get setupDifficultyMedium => 'Medel';

  @override
  String get setupDifficultyHard => 'Svår';

  @override
  String get setupDifficultyExpert => 'Expert';

  @override
  String get setupPlayWithoutCube => 'Spela utan kub';

  @override
  String get setupNoCubeThisMatch => 'Ingen dubbleringskub i den här matchen';

  @override
  String get analysisTitle => 'Analys';

  @override
  String get gameMatchSummary => 'Matchöversikt';

  @override
  String get gameAnalyzeGame => 'Analysera parti';

  @override
  String get analysisMetricsTooltip => 'Vad betyder siffrorna?';

  @override
  String analysisError(Object error) {
    return 'Det gick inte att analysera partiet: $error';
  }

  @override
  String get analysisNoPositions =>
      'Partiet innehåller inga positioner att visa.';

  @override
  String get analysisInProgress => 'Analyserar…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Spelat';

  @override
  String get analysisBest => 'Bäst';

  @override
  String get analysisPrevious => 'Föregående';

  @override
  String get analysisNext => 'Nästa';

  @override
  String get analysisPositionBeforeCube => 'Position före kubbeslutet';

  @override
  String get analysisPositionAtPoint =>
      'Position vid den här tidpunkten i partiet';

  @override
  String get analysisShowingBestBefore =>
      'Visar bästa draget i positionen före draget';

  @override
  String get analysisShowingBefore => 'Visar positionen före draget';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · utesluts från medelvärden';

  @override
  String get analysisNoPlay => '(inget drag)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Bäst: $move';
  }

  @override
  String get analysisExplain => 'Förklara';

  @override
  String get analysisSaveForPractice => 'Spara för träning';

  @override
  String get analysisSaveError =>
      'Det gick inte att spara det här beslutet. Försök igen.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · förlust $loss';
  }

  @override
  String get analysisCubeDecision => 'Kubbeslut';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Spelat: $action ($percent% matchvinst).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Bäst: $action ($percent% matchvinst).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply-uppskattning ur den aktiva spelarens perspektiv. Förutsätter ett optimalt svar: ta eller passa. För grenen med accepterad dubbling används en approximation på 0,7 av kubens livslängd, inte en fullständig sökning av framtida redubblingar. Djupare analys kan ändra svaret.';

  @override
  String get analysisClose => 'Stäng';

  @override
  String get analysisMoves => 'Drag';

  @override
  String get analysisForced => 'Tvingat';

  @override
  String get analysisMarkBest => 'Bäst';

  @override
  String get analysisMarkGood => 'Bra';

  @override
  String get analysisMarkDubious => 'Tveksamt';

  @override
  String get analysisMarkError => 'Fel';

  @override
  String get analysisMarkBlunder => 'Blunder';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Medelförlust $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count brickbeslut';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Blundrar $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Kubförlust $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side kastar utan att dubbla';
  }

  @override
  String get metricExplainerTitle => 'Förstå mätvärdena';

  @override
  String get metricExplainerTooltip => 'Vad betyder siffrorna?';

  @override
  String get metricExplainerMwcTitle => 'Matchvinstchans (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'När poängen är känd rangordnas brickdragen efter uppskattad chans att vinna matchen. Förlust anges i procentenheter (pp): 1 pp innebär att 51 % sjunker till 50 %. Kubens insats och gammon/backgammon-resultat ingår. Tvingade pass och kast med bara en laglig position utesluts från medelvärden.';

  @override
  String get metricExplainerSearchTitle => 'Sökning och osäkerhet';

  @override
  String get metricExplainerSearchBody =>
      'Rangordningen av brickdrag bygger på statiska 0-ply-uppskattningar efter draget, inte simuleringar. Matchvärden använder en match equity-tabell utan framtida kubbeslut. Kubgranskning använder en partiell approximation på 0,7 av kubens livslängd vid accepterade dubblingar; det är ingen fullständig cubeful-sökning. Över 25 återstående poäng används tabellens 25-away-gräns. Djupare analys kan ändra jämna resultat; inget kalibrerat konfidensintervall beräknas.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Om poängen saknas visar cubeless equity positionens genomsnittliga värde i poäng med kuben på 1. +1,0 betyder förväntad vinst med en poäng; −0,5 betyder förlust med en halv poäng.';

  @override
  String get metricExplainerEquityLossTitle => 'Equityförlust (t.ex. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Vi jämför ditt drag med motorns bästa drag. Equityförlust visar hur mycket förväntat värde draget gav upp. −0,016 betyder att draget bara var 0,016 poäng sämre än det bästa — en liten miss. 0,000 betyder att du hittade bästa draget.';

  @override
  String get metricExplainerErrorRateTitle => 'Felfrekvens';

  @override
  String get metricExplainerErrorRateBody =>
      'Medelförlust är genomsnittet av bedömda brickbeslut i den visade enheten. Kubbeslut har ett eget medelvärde. Lägre betyder drag närmare motorns bästa uppskattningar; det är inget kalibrerat spelarbetyg.';

  @override
  String get metricExplainerMoveMarksTitle => 'Dragmarkeringar';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC:s riktvärden: Bäst < 0,05 pp, Bra < 0,5 pp, Tveksamt < 1,5 pp, Fel < 3 pp, Blunder ≥ 3 pp. Det är pedagogiska gränser, inte kalibrerad säkerhet eller turneringsbetyg.\n\nRiktvärden för cubeless equity:';

  @override
  String get metricExplainerThresholdBest => 'förlust < 0,001';

  @override
  String get metricExplainerThresholdGood => 'förlust < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'förlust < 0,050';

  @override
  String get metricExplainerThresholdError => 'förlust < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'förlust ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Klart';

  @override
  String get historyTitle => 'Matchhistorik';

  @override
  String historyLoadFailed(Object error) {
    return 'Det gick inte att läsa in historiken:\n$error';
  }

  @override
  String get historyEmpty => 'Inga matcher har spelats ännu.';

  @override
  String get historyDeleteConfirmTitle => 'Ta bort den här matchen?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMatchen och alla registrerade partier tas bort permanent. Det går inte att ångra.';
  }

  @override
  String get actionCancel => 'Avbryt';

  @override
  String get actionDelete => 'Ta bort';

  @override
  String get historyDeleteFailed => 'Matchen kunde inte tas bort.';

  @override
  String get historyComplete => 'Slutförd';

  @override
  String historyWinner(Object side) {
    return '$side vann';
  }

  @override
  String get historyUnfinished => 'Oavslutad';

  @override
  String get historyMatchTitle => 'Match';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Det gick inte att läsa in matchen:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Det gick inte att läsa in partierna:\n$error';
  }

  @override
  String get historyNoGames => 'Inga partier har registrerats ännu.';

  @override
  String historyGameTitle(int number) {
    return 'Parti $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Vita $whiteScore — $blackScore Svarta  (till $matchLength)';
  }

  @override
  String get historyModeComputer => 'mot datorn';

  @override
  String get historyModeTwoPlayers => 'Två spelare';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Spela i närheten';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Pågår';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side vinner $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'enkel';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Uppdatera inlärningsförlopp';

  @override
  String get learningOptions => 'Inlärningsalternativ';

  @override
  String get learningResetMenu => 'Återställ träningsförlopp';

  @override
  String get learningLoadFailed =>
      'Det gick inte att läsa in inlärningsförloppet.';

  @override
  String get actionRetry => 'Försök igen';

  @override
  String get learningHeading => 'Lär dig av dina beslut';

  @override
  String get learningIntro =>
      'Förloppet sparas på den här enheten. Gå igenom återkommande teman och försök sedan med sparade positioner utan att se svaret. Vita och svarta kan granskas separat.';

  @override
  String get learningBothSides => 'Båda sidor';

  @override
  String get learningHumansOnly => 'Endast mänskliga beslut';

  @override
  String get learningHumanOnlyHelp =>
      'Stäng av för att ta med datorns och fjärrspelares beslut';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions beslut · att förbättra: $mistakes · blundrar: $blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Medelförlust ($decisions beslut): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Tvingade drag utesluts. Det här är motorns uppskattningar, inte ett turneringsbetyg.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Sparade partier behöver analyseras eller analyseras på nytt.',
      one: 'Sparat parti behöver analyseras eller analyseras på nytt.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analysera sparade matcher';

  @override
  String get learningEmptyProfile =>
      'Spela och slutför en match för att bygga din inlärningsprofil. Du kan också spara enskilda beslut från en repris.';

  @override
  String get learningOpenHistory => 'Öppna matchhistorik';

  @override
  String get learningRecurringThemes => 'Återkommande teman';

  @override
  String get learningNoThemes =>
      'Inga återkommande misstagsteman i det här urvalet ännu.';

  @override
  String learningThemeDecisions(int count) {
    return '$count beslut att gå igenom. En position kan ha flera teman.';
  }

  @override
  String get learningSaveMistakes => 'Spara misstagen för träning';

  @override
  String learningSavedMistakes(int count) {
    return '$count beslut finns i träningslistan. Befintliga sparade beslut behålls en gång.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Vissa beslut kunde inte sparas. Färdiga sparningar finns kvar; försök igen.';

  @override
  String get learningSpacedPractice => 'Utspridd träning';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'Förfaller nu: $due · sparade: $saved · försök: $attempts · lyckade återkallningar: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Lyckade granskningar kommer tillbaka efter 1, 3, 7, 14 och 30 dagar. Misstag och visade svar kommer tillbaka efter 10 minuter. Tidiga upprepningar flyttar inte intervallet framåt.';

  @override
  String get learningAnswerContext =>
      'Träningsresultaten speglar dina svar här, även när den ursprungliga positionen tillhörde en motståndare.';

  @override
  String get learningNoSavedPositions =>
      'Spara ett beslut från reprisen eller använd felknappen ovan.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '${side}s beslut · parti $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Granska $date';
  }

  @override
  String get learningReadyToReview => 'Redo att gå igenom';

  @override
  String learningSuccessStreak(int count) {
    return '$count lyckade genomgångar i rad';
  }

  @override
  String get learningRemoveTooltip => 'Ta bort sparat beslut';

  @override
  String get learningRecentPractice => 'Senaste träningen';

  @override
  String get learningAnswerRevealed => 'Svaret visades';

  @override
  String get learningSuccessfulRecall => 'Lyckad återkallelse';

  @override
  String get learningTryAgain => 'Försök igen';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · sparad position $positionId';
  }

  @override
  String get learningRemoveTitle => 'Ta bort den här övningen?';

  @override
  String get learningRemoveBody =>
      'Det här tar bort övningens försök. Originalpartiet finns kvar i historiken.';

  @override
  String get actionRemove => 'Ta bort';

  @override
  String get learningRemoveFailed => 'Det gick inte att ta bort övningen.';

  @override
  String get learningResetTitle => 'Återställa träningsförloppet?';

  @override
  String get learningResetBody =>
      'Alla träningsförsök och granskningsintervall tas bort. Sparade övningar och matchhistorik finns kvar; alla övningar förfaller nu.';

  @override
  String get learningResetAction => 'Återställ förlopp';

  @override
  String get learningResetFailed =>
      'Det gick inte att återställa träningsförloppet.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analyserade matcher: $completed · otillgängliga: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analyserade matcher: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analyserade $completed matcher; $failed kunde inte analyseras. Försök igen när motorn är redo.';
  }

  @override
  String get learningThemeHitting => 'Slag och tempo';

  @override
  String get learningThemeSafety => 'Blottor och säkerhet';

  @override
  String get learningThemePointMaking => 'Bygga punkter';

  @override
  String get learningThemePrime => 'Prime och blockader';

  @override
  String get learningThemeAnchor => 'Ankare och flykt';

  @override
  String get learningThemeRace => 'Effektivitet i kapplöpningen';

  @override
  String get learningThemeBearOff => 'Bära av';

  @override
  String get learningThemeBarEntry => 'Komma in från baren';

  @override
  String get learningThemeCube => 'Kubbeslut';

  @override
  String get analysisCubeNoDouble => 'Dubbla inte';

  @override
  String get analysisCubeDouble => 'Dubbla';

  @override
  String get analysisCubeTake => 'Ta';

  @override
  String get analysisCubePass => 'Ge upp';

  @override
  String get learningAnalysisStarting => 'Analyserar sparade matcher…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply-uppskattning utan kub · poäng saknas';

  @override
  String get tutorLossPp => 'Förlust pp';

  @override
  String get tutorLoss => 'Förlust';

  @override
  String get scoreSheetNoMoves => 'Inga drag';

  @override
  String get tutorOptions => 'Handledarinställningar';

  @override
  String get tutorCollapseTooltip => 'Fäll ihop handledaren';

  @override
  String get tutorExpandTooltip => 'Visa handledaren';

  @override
  String get onlineTitle => 'Onlinespel';

  @override
  String get onlineUnassistedNote =>
      'Handledaren är inte tillgänglig i onlinespel.';

  @override
  String get onlineNotConfiguredTitle => 'Onlinespel är inte konfigurerat';

  @override
  String get onlineNotConfiguredBody =>
      'Onlinespel är inte tillgängligt i den här versionen.';

  @override
  String get onlineErrorNoMatch => 'Matchen hittades inte.';

  @override
  String get onlineErrorSeatTaken => 'Platsen är redan upptagen.';

  @override
  String get onlineErrorPermission => 'Du saknar behörighet för åtgärden.';

  @override
  String get onlineErrorGeneric =>
      'Det gick inte att ansluta till onlinespelet.';

  @override
  String get onlineMatchFinished => 'Matchen är slut.';

  @override
  String get onlineEnterCodeError => 'Ange en giltig kod.';

  @override
  String get onlineOpponentShort => 'Motståndare';

  @override
  String get onlineMatchInProgress => 'Matchen pågår';

  @override
  String onlineResumePrompt(Object code) {
    return 'Du spelade matchen $code. Fortsätta?';
  }

  @override
  String get onlineRejoin => 'Återanslut';

  @override
  String get onlineForgetMatch => 'Glöm matchen';

  @override
  String get onlineCreateTitle => 'Skapa onlinematch';

  @override
  String get onlineMatchLength => 'Matchlängd';

  @override
  String get onlineNoCubeTitle => 'Spel utan kub';

  @override
  String get onlineNoCubeSubtitle => 'Spela utan dubblingskub.';

  @override
  String get onlineCreate => 'Skapa';

  @override
  String get onlineWaitingOpponent => 'Väntar på motståndare';

  @override
  String get onlineShareCode => 'Dela kod';

  @override
  String get onlineCopyCode => 'Kopiera kod';

  @override
  String get onlineCodeCopied => 'Koden kopierades';

  @override
  String get onlineJoinTitle => 'Gå med i match';

  @override
  String get onlineRoomCode => 'Rumskod';

  @override
  String get onlineJoin => 'Gå med';

  @override
  String get lanTitle => 'Spela i närheten';

  @override
  String get lanTabHost => 'Värd';

  @override
  String get lanTabJoin => 'Gå med';

  @override
  String get lanUnassistedNote =>
      'Spel i närheten saknar handledare. Gå igenom dragen och träna på misstagen efter matchen.';

  @override
  String get lanGameStartFailed =>
      'Spelet kunde inte starta. Den andra enheten kan försöka gå med igen.';

  @override
  String get lanHostPortInUse =>
      'Värdskapet kunde inte starta — porten används redan. Stäng andra kopior av Backgammon Buddy och försök igen.';

  @override
  String get lanHostStartFailed =>
      'Värdskapet kunde inte starta. Kontrollera Wi-Fi och försök igen.';

  @override
  String get lanHostTitle => 'Värd för ett spel';

  @override
  String get lanStartHosting => 'Starta värdskap';

  @override
  String get lanHostHelp =>
      'Båda enheterna måste vara på samma Wi-Fi. Den här enheten kastar tärningarna och håller reda på poängen.';

  @override
  String get lanWaitingPlayerTitle => 'Väntar på spelare';

  @override
  String get lanRoomCodeInfo =>
      'Berätta koden för den andra spelaren. Den ger åtkomst — appen skickar den inte över nätverket.';

  @override
  String get lanWaitingPlayer => 'Väntar på spelare…';

  @override
  String get lanStopHosting => 'Avsluta värdskap';

  @override
  String lanFindNearbyPort(int port) {
    return 'Be den andra enheten söka efter spel i närheten. Lyssnar på port $port.';
  }

  @override
  String get lanOnNetwork => 'I det här nätverket';

  @override
  String get lanCopyAddress => 'Kopiera adress';

  @override
  String get lanAddressCopied => 'Adressen kopierades';

  @override
  String get lanScanHostTitle => 'Skanna värden';

  @override
  String get lanScanHostHelp =>
      'Den andra enheten visar en QR-kod på värdskärmen. Skanningen fyller i adressen och rumskoden.';

  @override
  String get lanScanQr => 'Skanna QR-kod';

  @override
  String get lanScannerUnavailable =>
      'Kameran eller dess behörighet är inte tillgänglig. Ange adressen och rumskoden nedan i stället.';

  @override
  String get lanInvalidQr =>
      'QR-koden gäller inte ett Backgammon Buddy-spel. Skanna koden på värdskärmen på den andra enheten.';

  @override
  String get lanScannerFailed =>
      'Skannern kunde inte öppnas. Ange adressen och koden nedan i stället.';

  @override
  String get lanNearbyGames => 'Spel i närheten';

  @override
  String get lanSearching => 'Söker efter spel i närheten…';

  @override
  String get lanNoGamesFound =>
      'Inga spel hittades ännu. Kontrollera att den andra enheten är värd och att båda använder samma Wi-Fi, eller ange adressen.';

  @override
  String get lanStillSearching => 'Söker fortfarande…';

  @override
  String get lanEnterAddress => 'Ange adress';

  @override
  String get lanEnterAddressHelp =>
      'Automatisk upptäckt fungerar inte i alla nätverk (och kan vara helt blockerad på iOS). Värdskärmen visar vad du ska ange.';

  @override
  String get lanIpAddress => 'IP-adress';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Ange en port mellan 1 och 65535.';

  @override
  String get lanEnterAddressError =>
      'Ange adressen som visas på den andra enheten.';

  @override
  String get lanEnterRoomCodeError =>
      'Ange den fyrsiffriga koden från den andra enheten.';

  @override
  String get lanJoinWrongCode =>
      'Fel rumskod. Kontrollera de fyra siffrorna på den andra enheten.';

  @override
  String get lanJoinVersionMismatch =>
      'Den andra enheten kör en annan version av Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Enheten svarade inte som Backgammon Buddy. Kontrollera adress och port.';

  @override
  String get lanJoinFailed =>
      'Det gick inte att gå med. Kontrollera adressen och rumskoden och försök igen.';

  @override
  String lanJoinTarget(Object name) {
    return 'Gå med i $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Ange den fyrsiffriga koden som visas på den andra enheten.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Går med i $name';
  }

  @override
  String get lanConnect => 'Anslut';

  @override
  String get lanBack => 'Tillbaka';

  @override
  String get lanTryAgain => 'Försök igen';

  @override
  String get lanStatusBusy => 'Rummet används — väntar…';

  @override
  String get lanStatusReconnecting => 'Anslutningen bröts — försöker igen…';

  @override
  String get lanStatusConnected => 'Ansluten — matchen startar…';

  @override
  String get lanStatusFailed => 'Det gick inte att gå med.';

  @override
  String get lanStatusConnecting => 'Ansluter…';

  @override
  String get diagnosticsCopySuccess =>
      'Diagnostiken har kopierats till urklipp';

  @override
  String get diagnosticsReviewTitle => 'Granska diagnosrapporten';

  @override
  String get diagnosticsPrivacyNotice =>
      'När du öppnar utkastet skickas uppgifterna nedan till GitHub, inklusive appversion, plattform och eventuella feluppgifter. Ingen offentlig rapport skapas förrän du skickar in den där. Om uppgifterna innehåller privat information kan du avbryta och kopiera en rapport själv.';

  @override
  String get diagnosticsCancel => 'Avbryt';

  @override
  String get diagnosticsOpenGitHub => 'Öppna GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostik';

  @override
  String get diagnosticsReportTooltip => 'Rapportera ett problem på GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Kopiera till urklipp';

  @override
  String get diagnosticsClearTooltip => 'Rensa loggen';

  @override
  String get diagnosticsEmpty =>
      'Inga fel har registrerats.\n\nOm något går fel loggas det här — kom tillbaka och kopiera uppgifterna till en felrapport.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · till $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · till $matchLength';
  }

  @override
  String get gameHudYou => 'Du';

  @override
  String get gameHudAi => 'Dator';

  @override
  String gameHudGameNumber(int number) {
    return 'Parti $number';
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
    return '$whiteLabel mot $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'mot $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'mot $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipar';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Dubbel';

  @override
  String get gameHudMoreActions => 'Fler åtgärder';

  @override
  String get gameHudSurrender => 'Ge upp…';

  @override
  String get gameHudThinking => 'Tänker';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Du kan bara dubbla före kastet när det är din tur.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Ingen dubblering i Crawford-partiet — det här partiet avgör matchen.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Bara kubägaren kan dubbla, och just nu äger den andra sidan kuben.';

  @override
  String get gameHudDoubleUnavailable =>
      'Dubblering är inte tillgänglig just nu.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (till $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner vinner det här partiet ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner vinner det här partiet ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner vinner det här partiet ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner vinner det här partiet ($points) — $loser tackade nej till dubblingen.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner vinner det här partiet ($points) — $loser gav upp.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Lämna över enheten';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '${name}s tur';
  }

  @override
  String get gameDialogTapToContinue => 'Tryck för att fortsätta';

  @override
  String get gameDialogCubeOfferedTitle => 'Dubbling erbjuden';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler erbjuder att dubbla till $value. Ta eller passa?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passa';

  @override
  String get gameDialogTake => 'Ta';

  @override
  String get gameDialogResignationTitle => 'Resignation erbjuden';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner erbjuder att ge upp med $value. Acceptera eller avböj?';
  }

  @override
  String get gameDialogResignSingle => 'vanligt parti';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Avböj';

  @override
  String get gameDialogAccept => 'Acceptera';

  @override
  String get gameDialogGameOverTitle => 'Partiet är slut';

  @override
  String get gameDialogNextGame => 'Nästa parti';

  @override
  String get gameDialogMatchOverTitle => 'Matchen är slut';

  @override
  String get gameDialogNobody => 'Ingen';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner vinner matchen.';
  }

  @override
  String get gameDialogSavedToHistory => 'Sparat i historiken';

  @override
  String get gameDialogDone => 'Klart';

  @override
  String get gameTapNoLegalMove =>
      'Tryck på din bricka för att se lagliga drag.';

  @override
  String get gameTapNoLegalMoveUndo => 'Tryck på en bricka och sedan på målet.';

  @override
  String get gameDragHint => 'Dra brickan till målet.';

  @override
  String get commonGotIt => 'Jag förstår';

  @override
  String get gameHintStageBeforeHint => 'Före tipset';

  @override
  String get surrenderTitle => 'Ge upp partiet?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player ger upp det aktuella partiet.';
  }

  @override
  String get surrenderConcedes => 'Ger upp det aktuella partiet.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Tillgängligt i början av $player tur';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Tillgängligt i början av din tur';

  @override
  String get commonCancel => 'Avbryt';

  @override
  String get surrenderSingle => 'Vanlig förlust';

  @override
  String get surrenderGammon => 'Gammonförlust';

  @override
  String get surrenderBackgammon => 'Backgammonförlust';

  @override
  String get surrenderChoosePlayer => 'Välj spelare';

  @override
  String get commonDone => 'Klart';

  @override
  String get cubeDouble => 'Dubbla';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Det är den andra spelarens tur.';

  @override
  String get cubeBlockedCrawford =>
      'Kuben är inte tillgänglig i Crawford-partiet.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Bara kubens ägare får dubbla, och den andra sidan äger den just nu.';

  @override
  String get cubeBlockedUnavailable => 'Dubbling är inte tillgänglig just nu.';

  @override
  String get gameStatusRolling => 'Kastar tärningarna';

  @override
  String get gameStatusThinking => 'Datorn tänker';

  @override
  String gameStatusPlayersTurn(String player) {
    return '${player}s tur';
  }

  @override
  String get cubeAdviceOpponentTake => 'Dubbla — motståndaren bör ta';

  @override
  String get cubeAdviceOpponentPass => 'Dubbla — motståndaren bör passa';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Fel: $error';
  }

  @override
  String get privacyTitle => 'Sekretess och data';

  @override
  String get privacyAppTitle => 'Backgammon Buddy av Freevia';

  @override
  String get privacyIntro =>
      'Den här sidan beskriver hur den aktuella appen hanterar din data.';

  @override
  String get privacyLocalTitle => 'Spel och handledning på din enhet';

  @override
  String get privacyLocalBody =>
      'Lokala matcher, inställningar, analyser och träningsframsteg sparas på den här enheten. Spelmotorn och handledarens förklaringar körs här. Om du tar bort en sparad match från Spelarkivet tas även matchens sparade övningar och försök bort. Ta bort enskilda övningar eller återställ träningsframstegen under Lärande och övning; rensa lokala felrapporter under Inställningar → Diagnostik. Enhetens säkerhetskopiering kan också omfatta matchhistoriken. Uppgifter för onlineinloggning sparas i enhetens skyddade lagring.';

  @override
  String get privacyOnlineTitle => 'Spela online och i närheten';

  @override
  String get privacyOnlineBody =>
      'Onlinespel skickar ett anonymt spelar-ID, matchinställningar, drag och loggar från protokollet för att samordna tärningskast till Google Firebase, så att båda spelarna kan spela samma match. Om du raderar historiken på den här enheten raderas inte onlineloggarna. Värdmatcher upphör 30 dagar efter att de skapats; schemalagd rensning tar bort deras molnloggar. Matchdata lagras i EU; Firebase Authentication behandlar inloggningsuppgifter i USA. Anslutningar till Google krypteras under överföring. Vid närspel utbyts matchinformation med den andra enheten via en okrypterad lokal anslutning; använd ett betrott Wi-Fi-nätverk.';

  @override
  String get privacyDiagnosticsTitle =>
      'Valfri användnings- och kraschdiagnostik';

  @override
  String get privacyDiagnosticsBody =>
      'Delning är avstängt tills du aktiverar det i Inställningar. Om det är aktiverat får Google Firebase användningshändelser, information om appen och enheten, prestandamätningar och kraschrapporter som hjälper till att förbättra appen. Du kan när som helst stänga av delningen för att stoppa ny, frivillig datainsamling. Redan skickade uppgifter raderas inte. Lokal diagnostik och onlinematcher påverkas inte av det här valet.';

  @override
  String get privacyCameraTitle => 'Kamera för närliggande QR-koder';

  @override
  String get privacyCameraBody =>
      'Den valfria kameran skannar QR-koder för närspel. Bilderna behandlas på enheten och sparas eller laddas inte upp. Du kan neka kameraåtkomst och ange värdenhetens adress manuellt. Den här versionen använder inte mikrofonen och stöder inte spel på ett fysiskt bräde.';

  @override
  String get privacyFeedbackTitle => 'Feedback du väljer att skicka';

  @override
  String get privacyFeedbackBody =>
      'Feedback öppnar ett utkast till GitHub-ärende som du kan granska. När utkastet öppnas skickas appversionen och plattformen till GitHub; feedback från Diagnostik kan även innehålla felinformation. Ärendet publiceras inte förrän du skickar in det. Ärenden kan vara offentliga, så ta bort privata uppgifter innan du skickar.';

  @override
  String get privacyContactTitle => 'Sekretesskontakt';

  @override
  String get privacyReadPolicy => 'Läs integritetspolicyn';

  @override
  String get privacyPolicyOpenFailed =>
      'Det gick inte att öppna sekretesspolicyn.';

  @override
  String get privacySupportTitle => 'Hjälp och stöd';

  @override
  String get privacySupportOpenFailed =>
      'Kunde inte öppna support. Kontakta support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Radera identitet och data online?';

  @override
  String get privacyDeleteConfirmBody =>
      'Åtkomsten för båda spelarna till molnmatcher som är kopplade till den här identiteten avslutas omedelbart. En begäran skickas om att identiteten och de delade onlinematchloggarna ska raderas inom 30 dagar. Google kan behöva upp till 180 dagar efter att kontot har raderats för att ta bort autentiseringsuppgifter från sina aktiva system och säkerhetskopior. Lokal matchhistorik och övningsuppgifter finns kvar på den här enheten. Tidigare inskickade valfria diagnostikuppgifter hanteras separat; kontakta privacy@freevia.org om dem. Begäran kan inte ångras.';

  @override
  String get privacyRequestDeletion => 'Begär radering';

  @override
  String get privacyDeleteSectionTitle => 'Radering av onlinedata';

  @override
  String get privacyDeleteInstructions =>
      'Använd inloggningsuppgifterna som sparats på den här enheten för att bekräfta att onlineidentiteten tillhör dig. Ett spelar-ID eller en inbjudningskod räcker inte som bevis. För spel som bara sker på enheten behövs inget onlinekonto.';

  @override
  String get privacySendingRequest => 'Skickar begäran...';

  @override
  String get privacyDeleteAction => 'Radera identitet och data online';

  @override
  String get privacyDeleteRequested =>
      'Begäran om radering har skickats. Du har loggats ut från den här onlineidentiteten. Dess molndata raderas inom 30 dagar. Om du startar ett nytt onlinespel skapas en ny identitet. Det kan ta upp till 180 dagar innan Google tar bort autentiseringsdata. Kontakta privacy@freevia.org om du behöver hjälp.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Begäran om radering har skickats. Molndata raderas inom 30 dagar. Enheten kunde inte rensa de sparade inloggningsuppgifterna, men onlineidentiteten är blockerad från vidare åtkomst till matcher. Det kan ta upp till 180 dagar innan Google tar bort autentiseringsdata. Kontakta privacy@freevia.org om du behöver hjälp.';

  @override
  String get privacyDeleteNoIdentity =>
      'Det finns ingen användbar onlineidentitet sparad på den här enheten. Inget nytt konto har skapats. Om du har spelat online tidigare kan du kontakta privacy@freevia.org för hjälp; värdmatcher upphör 30 dagar efter att de skapats.';

  @override
  String get privacyDeleteRequestFailed =>
      'Det gick inte att bekräfta begäran om radering. Kontrollera anslutningen och försök igen eller kontakta privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Dela användning och kraschdiagnostik?';

  @override
  String get privacyConsentBody =>
      'Det här skickar användningshändelser, information om appen och enheten, kraschrapporter och prestandamätningar till Google Firebase. Delning är frivillig. Spel och handledning fungerar även när delning är avstängd; du kan stänga av den igen i Inställningar.';

  @override
  String get privacyKeepOff => 'Behåll avstängt';

  @override
  String get privacyShareDiagnostics => 'Dela diagnostik';

  @override
  String get privacySaveFailed =>
      'Det gick inte att spara sekretessvalet. Försök igen.';

  @override
  String get privacySettingsSubtitle =>
      'Vad finns kvar på din enhet och vad som delas';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Dela användning och kraschdiagnostik';

  @override
  String get privacyDiagnosticsSettingSubtitle => 'Valfritt · av som standard';

  @override
  String get lanScanToJoin => 'Skanna för att gå med';

  @override
  String get lanScanHostCode => 'Skanna värdens kod';

  @override
  String get lanEnterAddressInstead => 'Ange adressen istället';

  @override
  String get lanQrAccessibilityLabel =>
      'QR-kod för att gå med i det här spelet';

  @override
  String get lanJoinInstruction =>
      'Öppna Spela i närheten på den andra enheten, välj Gå med och skanna den här QR-koden.';

  @override
  String get lanTorch => 'Blixt';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy kan inte använda kameran. Tillåt kameraåtkomst i enhetsinställningarna eller ange adressen som visas på den andra enheten manuellt.';

  @override
  String get lanCameraUnsupported =>
      'Den här enheten kan inte skanna QR-koder. Ange adressen som visas på den andra enheten manuellt.';

  @override
  String get lanCameraStartFailed =>
      'Kameran kunde inte startas. Ange adressen som visas på den andra enheten manuellt.';

  @override
  String get lanPointCameraAtQr =>
      'Rikta kameran mot QR-koden på den andra enheten.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Spel på ett fysiskt bräde är inte tillgängligt i den här versionen. Spel på skärmen, handledning och övning finns på startskärmen.';

  @override
  String get homePlayWithBuddy => 'Spela med Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammonbräda. $status';
  }

  @override
  String get boardWhiteToRoll => 'Det är vits tur att slå tärningarna.';

  @override
  String get boardBlackToRoll => 'Det är svarts tur att slå tärningarna.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Vits tur; tärningarna visar $die1 och $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Svarts tur; tärningarna visar $die1 och $die2.';
  }

  @override
  String get boardDoubleOffered => 'En dubblering har erbjudits.';

  @override
  String get boardResignationOffered =>
      'Ett erbjudande om att ge upp har lämnats.';

  @override
  String get boardGameOver => 'Spelet är över.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Fel]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idé]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Ersätt detta med en kort beskrivning av vad som hände.';

  @override
  String get feedbackBugReproduction =>
      'Ersätt detta med stegen som ledde till problemet.';

  @override
  String get feedbackBugExpected =>
      'Ersätt detta med det du förväntade dig att hända.';

  @override
  String get feedbackIdeaNeed =>
      'Ersätt detta med det du ville göra eller lära dig.';

  @override
  String get feedbackIdeaSuggestion =>
      'Ersätt detta med den ändring som du skulle ha nytta av.';

  @override
  String get feedbackExcerptTruncated =>
      '(trunkerad – använd Kopiera till urklipp på diagnostikskärmen för hela loggen)';

  @override
  String get boardWhiteToMoveNoRoll => 'Vits tur att flytta.';

  @override
  String get boardBlackToMoveNoRoll => 'Svarts tur att flytta.';

  @override
  String get feedbackFieldVersion => 'Appversion';

  @override
  String get feedbackFieldPlatform => 'Plattform';

  @override
  String get feedbackFieldSummary => 'Vad hände';

  @override
  String get feedbackFieldReproduction => 'Steg för att reproducera';

  @override
  String get feedbackFieldExpected => 'Förväntat resultat';

  @override
  String get feedbackFieldNeed => 'Vad du ville göra';

  @override
  String get feedbackFieldIdea => 'Föreslagen förändring';

  @override
  String get buddySetupTitle => 'Spela med Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy spelar';

  @override
  String get buddySetupSeatLabel => 'Din sida';

  @override
  String get buddySetupSeatNear => 'Nära telefonen';

  @override
  String get buddySetupSeatFar => 'Mittemot';

  @override
  String get buddySetupSeatHelp =>
      'På vilken sida av brädet sitter du? Det avgör hur Buddy numrerar punkterna och skiljer din öppningskastning från sin egen.';

  @override
  String get buddySetupVoiceLabel => 'Så pratar Buddy';

  @override
  String get buddySetupVoiceTerse => 'Kortfattat';

  @override
  String get buddySetupVoiceFriendly => 'Vänligt';

  @override
  String get buddySetupVoiceTerseHelp =>
      '”13/8, 24/22” — notation som två spelare använder vid brädet.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '”Flytta en bricka från 13 till 8 och en från 24 till 22.”';

  @override
  String get buddySetupTutorHelp =>
      'Tutor-kommentarer och dragförklaringar följer dina sparade Tutor-inställningar. Buddy ger ibland återkoppling efter dina drag; manuell tärningsinmatning och manuella drag fungerar på samma sätt.';

  @override
  String get buddySetupCalibrate => 'Kalibrera brädet';

  @override
  String get buddyFixAim => 'Justera kameran';

  @override
  String get buddyWaitingForOpening =>
      'Buddy väntar på kastet som startar matchen.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy har tappat bort brädet. Justera kameran så fortsätter matchen där den pausades.';

  @override
  String get buddyPromptWaitingPicture =>
      'Väntar på en bild som Buddy kan läsa. Inget har gått förlorat.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy hittar inte tärningarna. Ange kastet manuellt.';

  @override
  String get buddyPromptPlay =>
      'Gör ditt drag på brädet. Om Buddy inte ser det kan du ange det här.';

  @override
  String get buddyPromptWhichPlay => 'Vilket drag gjorde du?';

  @override
  String get buddyPromptCube => 'Buddy dubblar. Ta eller lägg ned?';

  @override
  String get buddyPromptMakeMove =>
      'Gör Buddys drag på brädet, så fortsätter Buddy sedan.';

  @override
  String get buddyPromptThinking => 'Buddy tänker.';

  @override
  String get buddyPromptWaitingCalibration => 'Väntar på kalibrering.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy ser fortfarande inte sitt drag. Brädet nedan visar positionen som Buddy följer.';

  @override
  String get buddyPromptNotLegal => 'Det draget är inte tillåtet.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Det draget är inte tillåtet. $reason';
  }

  @override
  String get buddyThrowOpening => 'Kasta öppningstärningarna — en var.';

  @override
  String get buddyThrowUser => 'Kasta dina tärningar.';

  @override
  String get buddyThrowBuddy => 'Kasta Buddys tärningar.';

  @override
  String get buddyMatchOver => 'Matchen är slut.';

  @override
  String get buddyYouWin => 'Du vann matchen.';

  @override
  String get buddyBuddyWins => 'Buddy vann matchen.';

  @override
  String get buddyDoubleNoGame =>
      'Det finns inget parti att dubbla ännu — öppningskastet kommer först.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Du kan bara dubbla före kastet när det är din tur.';

  @override
  String get buddyDoubleCrawford =>
      'Ingen dubbling i Crawford-partiet — det här enda partiet avgör matchen.';

  @override
  String get buddyDoubleNotOwner =>
      'Bara kubägaren kan dubbla, och just nu äger den andra sidan kuben.';

  @override
  String get buddyDoubleUnavailable => 'Dubbling är inte tillgänglig just nu.';

  @override
  String get buddyLookingAtBoard => 'Buddy tittar på brädet.';

  @override
  String get buddyCameraPlayFallback =>
      'Du kan fortsätta matchen: ange varje kast på tärningspanelen och gör dragen på brädet nedan.';

  @override
  String get buddySkipCheck => 'Hoppa över kontrollen';

  @override
  String get buddyFixedIt => 'Jag har fixat det';

  @override
  String get buddyDrop => 'Lägg ned';

  @override
  String get buddyTake => 'Ta';

  @override
  String get buddyDone => 'Klart';

  @override
  String get buddyTranscriptLabel => 'Det Buddy sa';

  @override
  String get buddyUndo => 'Ångra';

  @override
  String get buddyConfirm => 'Bekräfta';

  @override
  String get buddyDice => 'Tärningar';

  @override
  String get buddyDouble => 'Dubbling';

  @override
  String get buddyDicePadTitle => 'Vad fick du?';

  @override
  String get buddyEnterRoll => 'Ange kast';

  @override
  String get buddyContextBeforeGame => 'Spela med Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Du $you–$buddy Buddy · till $length · parti $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kameran kunde inte startas. Kontrollera behörigheterna och försök igen.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy har inte behörighet att använda kameran. Tillåt kameraåtkomst i enhetens inställningar och försök igen.';

  @override
  String get buddyCalibrationTitle => 'Visa Buddy brädet';

  @override
  String get buddyCalibrationCornersFold =>
      'Dra de fyra yttre handtagen till hörnen på spelytan, inte träramen. Dra de fyra små handtagen till gångjärnsskarvarna vid de bortre och närmaste kanterna.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Dra varje handtag till ett hörn av spelytan, inte träramen.';

  @override
  String get buddyCalibrationCheckLines =>
      'Kontrollera sedan de tolv linjerna på varje halva: var och en ska följa en punkt på brädet. Om en linje missar sin punkt behöver handtaget flyttas.';

  @override
  String get buddyCalibrationSeatQuestion => 'Vilken halva är ditt hemområde?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Halvan närmast bildens nederkant. Den bestämmer punktnumren, så linjerna ovanför följer den.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Håll telefonen stilla. Buddy väntar på att bilden ska stabiliseras innan brädet lärs in.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Är det här ditt bräde?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy tittar på brädet som just lärdes in.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Brickorna som ritats ovanpå bilden visar var Buddy tror att de ligger. Om någon är felplacerad kan du börja om — det tar sekunder nu, men kan kosta ett parti senare.';

  @override
  String get buddyCalibrationNext => 'Nästa';

  @override
  String get buddyCalibrationBack => 'Tillbaka';

  @override
  String get buddyCalibrationCapture => 'Ta bild';

  @override
  String get buddyCalibrationStartOver => 'Börja om';

  @override
  String get buddyCalibrationLooksRight => 'Ser rätt ut';

  @override
  String get buddyCalibrationCornersInvalid =>
      'De här fyra handtagen ramar inte in brädet — ett har korsat ett annat. Dra tillbaka dem till spelytans hörn.';

  @override
  String get buddyCalibrationPrepTitle => 'Tre saker först';

  @override
  String get buddyCalibrationRemoveDiceTitle =>
      'Ta bort tärningarna från brädet.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy lär sig det tomma brädet nu. Om en tärning ligger kvar på spelytan lär sig Buddy att den är en del av brädet och kan då inte se tärningarna under den här sessionen.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Ställ upp brickorna för ett nytt parti.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Trettio brickor på kända platser hjälper Buddy att lära sig brädets två färger utan att du behöver berätta vilka de är.';

  @override
  String get buddyCalibrationFitBoardTitle => 'Få med hela spelytan i bilden.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Låt sedan telefonen ligga kvar. Om den flyttas säger Buddy till, så kan du justera hörnen igen.';

  @override
  String get buddyCalibrationBoardKind => 'Vilken typ av bräde har du?';

  @override
  String get buddyCalibrationFlatBoard => 'Platt bräde';

  @override
  String get buddyCalibrationFoldingBoard => 'Hopfällbart bräde';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Ett hopfällbart bräde behöver fyra extra handtag vid gångjärnsskarvarna.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy-läget följer ett fysiskt bräde och kan därför inte starta utan kameran. Resten av appen fungerar som vanligt.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Gångjärnsskarv $number av 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Brädhörn $number av 4';
  }

  @override
  String get buddyNudgeLeft => 'Flytta åt vänster';

  @override
  String get buddyNudgeRight => 'Flytta åt höger';

  @override
  String get buddyNudgeUp => 'Flytta uppåt';

  @override
  String get buddyNudgeDown => 'Flytta nedåt';

  @override
  String get buddyCalibrationProblemCorners =>
      'De här fyra hörnen ramar inte in ett bräde. Dra varje handtag till ett hörn av spelytan och försök igen.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'De här åtta punkterna ramar inte in ett hopfällbart bräde. Placera fyra i spelytans hörn och fyra vid gångjärnsskarvarna, och försök igen.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Jag kan inte urskilja själva brädet — det är helt täckt eller försvinner i skugga eller blänk. Frilägg brädet, öka belysningen och försök igen.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Jag kan inte urskilja $region — något kan ligga där eller så är hörnet för mörkt. Ta bort föremålet eller öka belysningen och försök igen.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'De två brickfärgerna ser för lika ut härifrån. Mer ljus eller en vinkel med mindre blänk brukar hjälpa.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Brickorna står inte i startpositionen — punkt $number har en bricka med fel färg. Ställ upp brädet för ett nytt parti och kalibrera igen.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Brädet får så mycket ljus att färgerna flyter ihop. Dämpa belysningen eller flytta telefonen så att lampan inte lyser rakt in i kameran.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Jag kan läsa brädet, men det ser inte ut som inför ett nytt parti. Ställ brickorna i startpositionen och kalibrera igen.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Jag kan läsa brädet, men inte avgöra hur långt en bricka ligger bakom en annan och skulle därför räkna fel. Mer ljus på de närmaste punkterna eller en något högre kameravinkel brukar hjälpa.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Jag ser inte hela brädet. Flytta telefonen längre bort eller dra hörnen till spelytan.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Jag ser inte hela brädet längre — $region är utanför bilden. Rikta in kameran igen eller kontrollera hörnen.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Det ser ut som startpositionen.';

  @override
  String get buddyConfirmNoCheckers =>
      'Jag ser ingen bricka på någon startpunkt. Ställ upp brädet för ett nytt parti och försök igen.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Brädet är inte uppställt för ett nytt parti: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region ser tomt ut, men i startpositionen ska $side stå där';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region har $side, men ska vara tomt i startpositionen';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region har $observed, men startpositionen kräver $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Håll stilla en stund — jag tappar bort brädet när telefonen rör sig.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Bilden jag får är inte den som brädet ställdes in med, så jag kan inte rikta in det. Ställ in brädet igen härifrån.';

  @override
  String get buddyReadabilityBlur =>
      'Bilden är för suddig för att läsa brädet. Vänta en stund medan kameran fokuserar.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Brädet står inte längre där jag lärde mig det. Rikta in hörnen igen så fortsätter jag matchen direkt.';

  @override
  String get buddyReadabilityOccluded =>
      'Något täcker en del av brädet. Jag fortsätter så snart det är fritt.';

  @override
  String get buddyReadabilityClear => 'Jag ser brädet.';

  @override
  String get buddyReadabilityColorChanged =>
      'Ljuset på brädet har ändrat färg, så brädet ser inte längre ut som det jag lärde mig. Rikta in hörnen igen i det här ljuset så fortsätter jag matchen.';

  @override
  String get buddyReadabilityTooDark =>
      'Det är för mörkt för att läsa brädet. Lite mer ljus så fortsätter jag där vi slutade.';

  @override
  String get buddyReadabilityTooBright =>
      'Brädet får så mycket ljus att färgerna flyter ihop. Dämpa ljuset eller flytta telefonen så att lampan inte blänker in i kameran.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy ser fortfarande inte sitt drag — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nDu kan fortsätta matchen: ange varje kast på tärningspanelen och gör dragen på brädet nedan.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kameran kunde inte startas. Kontrollera behörigheterna och försök igen.';

  @override
  String buddyRegionPoint(int number) {
    return 'punkt $number';
  }

  @override
  String get buddyRegionBar => 'baren';

  @override
  String get buddyRegionWhiteTray => 'vit spelares brickbricka';

  @override
  String get buddyRegionBlackTray => 'svart spelares brickbricka';

  @override
  String get buddyRegionDiceZone => 'brädets mitt';

  @override
  String get buddyCalibrationProblemVisible =>
      'Jag ser inte hela brädet. Flytta telefonen längre bort eller dra hörnen till spelytan.';

  @override
  String buddyConfirmMore(int number) {
    return ' (och $number till)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'En tärning var. Värdena avgör vem som börjar.';

  @override
  String get buddyDiceOpeningFirst => 'Vits tärning';

  @override
  String get buddyDiceOpeningSecond => 'Svarts tärning';

  @override
  String get buddyDiceRegularCaption =>
      'De två tärningarnas värden, i valfri ordning.';

  @override
  String get buddyDiceRegularFirst => 'En tärning';

  @override
  String get buddyDiceRegularSecond => 'Den andra tärningen';

  @override
  String get evaluationEngine => 'Utvärderingsmotor';

  @override
  String get parallelEngineAnalysis => 'Analysera med båda motorerna';

  @override
  String get parallelEngineExplanation =>
      'Jämför separata råd från wildbg och GNUbg i handledaren.';

  @override
  String get engineComparison => 'Motorjämförelse';

  @override
  String get engineWinChance => 'Vinstchans';

  @override
  String get buddyBar => 'baren';

  @override
  String get buddyOff => 'av';

  @override
  String get buddyHitSuffix => ', slår';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Flytta en ruta från $from till $to ​​$hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Flytta $count brickor från $from till $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Bär en bricka av från $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Bär $count brickor av från $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Jag rullade $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Du rullade $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Båda rullade $die. Rulla igen.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Inget spel, så det är din tur.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Ingen lek, så det är Buddys tur.';

  @override
  String get buddySpeechNoPlayPass => 'Inget spel – din tur passerar.';

  @override
  String get buddySpeechNoPlayBack => 'Ingen lek, så det är tillbaka till dig.';

  @override
  String get buddySpeechIllegalPlay => 'Det är inte en laglig pjäs.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Det är inte helt rätt. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Brädan skiljer sig från spelet: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: spelet förväntar sig $expected $side pjäser; kameran ser $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Jag tar ditt ord för det. Jag kunde inte se det där landet, så om vi har kommit isär kommer det att dyka upp som en pjäs jag inte kan läsa.';

  @override
  String get buddySpeechBuddyDouble => 'Jag dubblar — ta eller släppa?';

  @override
  String get buddySpeechYouDouble => 'Du dubblar.';

  @override
  String get buddySpeechBuddyTakes => 'jag tar.';

  @override
  String get buddySpeechYouTake => 'Du tar.';

  @override
  String get buddySpeechBuddyDrops => 'jag tappar.';

  @override
  String get buddySpeechYouDrop => 'Du tappar.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Jag vinner det här spelet: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Du vinner detta spel: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Det är matchen för mig.';

  @override
  String get buddySpeechMatchWinnerYou => 'Du vinner matchen.';

  @override
  String get buddyTutorLastPlayBest =>
      'Ditt senaste spel matchade motorns bästa.';

  @override
  String get buddyTutorLastPlayClose =>
      'Ditt senaste spel var nära motorns bästa.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'För din senaste spelning föredrog motorn $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Det lämnar $best motsatta brickor på stapeln istället för $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Det lämnar $best fläckar istället för $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Den har $best hemmaplanspoäng istället för $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Den har $best brickor av i stället för $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Rankingen väger uppskattade vinster och gammon; ingen enskild brädfunktion förklarar det.';

  @override
  String buddySpeechPlay(String move) {
    return 'Spela $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Jag rullade $dice – $move';
  }
}
