// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

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

  @override
  String get settingsReset => 'Nulstil';

  @override
  String get settingsAppLanguage => 'Appens sprog';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsThemeLight => 'Lyst';

  @override
  String get settingsThemeDark => 'Mørkt';

  @override
  String get settingsAnimationSpeed => 'Animationshastighed';

  @override
  String get settingsAnimationNone => 'Ingen';

  @override
  String get settingsAnimationNormal => 'Normal';

  @override
  String get settingsAnimationFast => 'Hurtig';

  @override
  String get settingsDiceRollAnimation => 'Animation af terningkast';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Terningerne ruller før hvert kast';

  @override
  String get settingsDefaultMatchLength => 'Standardlængde for match';

  @override
  String get settingsDefaultDifficulty => 'Standard sværhedsgrad';

  @override
  String get settingsDifficultyEasy => 'Let';

  @override
  String get settingsDifficultyMedium => 'Middel';

  @override
  String get settingsDifficultyHard => 'Svær';

  @override
  String get settingsDifficultyExpert => 'Ekspert';

  @override
  String get settingsTutorModeDefault => 'Standard for tutortilstand';

  @override
  String get settingsTutorAuto => 'Automatisk';

  @override
  String get settingsTutorOn => 'Til';

  @override
  String get settingsTutorOff => 'Fra';

  @override
  String get settingsTutorModeHelp =>
      'Automatisk slår tutoren til ved alle computerens sværhedsgrader. Til og Fra vælger startindstillingen for lokale kampe. Nærspil og onlinespil er uden hjælp; gemte partier kan gennemgås bagefter. Undervisningsindstillingerne nedenfor gemmes på denne enhed.';

  @override
  String get settingsTutorPreferences => 'Tutorindstillinger';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Gemte standardindstillinger til kommende kampe';

  @override
  String get settingsTutorSaveError =>
      'Tutorindstillingerne kunne ikke gemmes.';

  @override
  String get settingsGameplay => 'Spil';

  @override
  String get settingsMoveHighlights => 'Fremhæv træk';

  @override
  String get settingsMoveHighlightsHelp =>
      'Markér brikker, der kan flyttes, og fremhæv felterne, de kan lande på';

  @override
  String get settingsDragToMove => 'Træk for at flytte';

  @override
  String get settingsDragToMoveHelp =>
      'Træk en brik til feltet, den skal lande på (tryk virker også)';

  @override
  String get settingsCombinedMoves => 'Kombinerede træk';

  @override
  String get settingsCombinedMovesHelp =>
      'Et tryk flytter en brik med begge terninger';

  @override
  String get settingsRotateBoard => 'Drej brættet mellem ture';

  @override
  String get settingsRotateBoardHelp =>
      'Ved spil på samme enhed vendes brættet mod spilleren, der er i tur';

  @override
  String get settingsPassDevice => 'Skærm ved overdragelse af enhed';

  @override
  String get settingsPassDeviceHelp =>
      'Skjul brættet, når enheden gives videre mellem spillere';

  @override
  String get settingsShowScore => 'Vis score';

  @override
  String get settingsShowScoreHelp =>
      'Viser den løbende matchscore i overskriften';

  @override
  String get settingsBuddyMode => 'Buddy-tilstand';

  @override
  String get settingsBuddyTerse => 'Kort';

  @override
  String get settingsBuddyFriendly => 'Venlig';

  @override
  String get settingsBuddyTerseHelp =>
      'Sådan siger Buddy et træk højt: “13/8, 24/22” — den korte notation, som spillere ved brættet bruger.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Sådan siger Buddy et træk højt: “Flyt en brik fra 13 til 8 og en fra 24 til 22.”';

  @override
  String get settingsListenForDice => 'Lyt efter terningerne';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy ser tidligere på brættet, når den hører et kast. Fra ændrer ikke andet.';

  @override
  String get settingsDiagnostics => 'Diagnostik';

  @override
  String get settingsErrorLog => 'Fejllog';

  @override
  String get settingsErrorLogHelp =>
      'Seneste fejl, klar til at blive kopieret ind i en fejlrapport';

  @override
  String get settingsReportBug => 'Rapportér en fejl';

  @override
  String get settingsReportBugHelp => 'Åbner en guidet fejlrapport på GitHub';

  @override
  String get settingsSuggestIdea => 'Foreslå en idé';

  @override
  String get settingsSuggestIdeaHelp =>
      'Hjælp os med at forbedre tutoren og spillet';

  @override
  String get settingsAbout => 'Om';

  @override
  String get settingsOpenSourceLicenses => 'Open source-licenser';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partiet er slut.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Gennemgå trækkene for at finde en beslutning, du kan øve dig på.';

  @override
  String get tutorPhraseCubeOffered =>
      'Der er tilbudt en fordobling af indsatsen.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Beslut, om du vil tage imod fordoblingen eller passe, før du planlægger et træk med brikkerne.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Matchscoren ændrer værdien af den ekstra indsats.';

  @override
  String get tutorPhraseResignationOffered =>
      'Modstanderen har tilbudt at opgive partiet.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Sammenlign de tilbudte point med stillingen, før du accepterer opgivelsen eller fortsætter.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Dette kast giver ikke noget lovligt træk.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Et tvunget pas er ikke en fejl; vent på næste kast.';

  @override
  String get tutorPhraseOnlyOneResult => 'Der er kun én lovlig slutstilling.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Udfør det tvungne træk. Der er ikke noget valg at bedømme ved dette kast.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pip-antallet er lige.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Du er $count pip foran.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Du er $count pip bagud.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Brikkerne på baren skal først ind igen. Antal: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Få først en brik ind fra baren, og find derefter et sikkert felt til den.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Modstanderen har $count lukkede felter i sit hjembræt.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Kapløb om at få brikkerne af brættet.';

  @override
  String get tutorPhrasePureRace => 'Et rent kapløb.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Tag brikker af brættet, men behold en nyttig fordeling til næste kast.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Få de bageste brikker hjem uden at samle for mange på ét felt.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Spillerne er kommet forbi hinanden; flere slag er ikke mulige.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakten er stadig vigtig.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Modstanderen har $count brikker på baren.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Hold felterne lukkede, mens du får de resterende brikker hjem.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Byg eller bevar dit hjembræt, mens modstanderen forsøger at komme ind fra baren.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Du har $count lukkede felter i hjembrættet; hvert felt lukker et indgangsnummer.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt med en række på $count lukkede felter.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Overvej, om rækken skal forlænges, eller om du skal beholde ekstra brikker til at holde den lukket.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Ekstra brikker: $count. De kan flyttes uden straks at åbne feltet.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt med et anker på felterne $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Sammenlign det at få de bageste brikker hjem med sikkerheden ved at beholde dit anker.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Husk den sikre støtte, mens du leder efter et slag eller forbedrer din stilling.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Ankeret kan ikke slås, men brikkerne har stadig lang vej hjem.';

  @override
  String get tutorPhraseContactThreats =>
      'Der er stadig kontakt: begge spillere kan true med slag.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Se efter nyttige lukkede felter, og vurder risikoen ved at efterlade enlige brikker ubeskyttede.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Du har $count lukkede felter i hjembrættet og efterlader $otherCount ubeskyttede brikker.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Vælg en brik for at begynde dit træk.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Udfør et lovligt træk for at få en kommentar.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modstanderbrikker',
      one: '$count modstanderbrik',
    );
    return 'Du har slået $_temp0 hjem.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Brikker ført ind fra baren: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brikker',
      one: '$count brik',
    );
    return 'Brikker taget af brættet: $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Du har lukket felterne $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Brikken på felt $point er stadig ubeskyttet.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Den ekstra brik på felt $point kan flyttes senere uden at åbne feltet.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Brug de resterende brugbare terninger, før du vurderer hele trækket.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Alle 15 brikker er taget af: du har vundet partiet.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Slaget vinder tid, mens modstanderen kommer ind fra baren igen.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Effektiv afbæring fjerner brikker og efterlader nyttige tal til næste kast.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'I kapløbet skal de bageste brikker hjem, mens du bevarer nyttige felter til afbæringen.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Afbæring bringer dig nærmere sejren, men så længe der er kontakt, kan en ubeskyttet brik blive slået.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Indgangen får brikken tilbage i spil; find nu et sikkert felt til den.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Det nye lukkede felt i dit hjembræt fjerner et indgangsnummer, hvis du senere bliver slået.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Den længere række lukker flere felter, modstanderen kan lande på; ekstra brikker hjælper med at bevare den.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Når du forlader ankeret, kommer brikkerne fremad, men mister en sikker støtte.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Det nye anker giver de bageste brikker et sikkert holdepunkt.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Når du dækker en ubeskyttet brik, fjerner du et mål for modstanderen.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Her skal du afveje udvikling mod sikkerhed: brikker, der bygger stillingen op, kan også selv blive mål.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Hele trækket er klar. Tryk på Bekræft for at udføre det.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Dette kast giver ikke noget valg af brikketræk, så det vurderes ikke som en beslutning.';

  @override
  String get tutorMoveTopVerdict => 'Et af de bedste valg i denne stilling.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Motoren foretrækker et andet træk her.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Forskel fra det bedste træk: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Efter dette træk: $winPercent% chance for sejr, $winGammonPercent% chance for gammon eller bedre og $loseGammonPercent% chance for at tabe med gammon eller værre. Det er estimater set fra spilleren, der er i tur.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Anslået chance for at vinde matchen: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Alle 15 brikker er taget af: du har vundet partiet.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Brug slaget til at vinde tid, mens modstanderen kommer ind fra baren. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Hold felterne i dit hjembræt lukkede, så det bliver sværere at komme ind.';

  @override
  String get tutorMovePlanHitBuild =>
      'Luk flere felter i dit hjembræt, så fremtidige slag bliver sværere at komme sig over.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Gå efter en effektiv afbæring: tag brikker af, og behold nyttige tal til næste kast.';

  @override
  String get tutorMovePlanRaceHome =>
      'Få de bageste brikker hjem, og fordel dem på nyttige felter til afbæringen.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Tag brikker af brættet, men hold øje med modstanderens bageste brikker: så længe der er kontakt, kan en ubeskyttet brik under afbæring blive et mål.';

  @override
  String get tutorMovePlanReentry =>
      'Kom ind i spillet igen, og find derefter et sikkert felt til brikken, der kom ind.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Styrk dit hjembræt. Det nye lukkede felt gør et fremtidigt slag stærkere ved at fjerne et indgangstal.';

  @override
  String get tutorMovePlanPrime =>
      'Hold rækken af lukkede felter sammen. Behold ekstra brikker, så senere kast ikke tvinger dig til at åbne den.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Hvis du forlader et anker, kommer dine bageste brikker frem, men mister en sikker støtte. Pas på, at de ikke bliver udsat på vejen hjem.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Brug det nye anker som en sikker støtte, mens du forbedrer resten af stillingen.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Saml dine brikker. Når du dækker en ubeskyttet brik, fjerner du det mål og bevarer muligheder for næste kast.';

  @override
  String get tutorMovePlanSafety =>
      'Afvej udvikling og sikkerhed: flyt byggesten mod nyttige felter, og se efter enlige brikker, der kan slås.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Intet lovligt brikketræk: turen skal passes.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count modstanderbrikker',
      one: '$count modstanderbrik',
    );
    return 'Du slår $_temp0; modstanderen skal først ind fra baren, før de andre brikker kan flyttes.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Brikker ført ind fra baren: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brikker',
      one: '$count brik',
    );
    return 'Brikker taget af brættet: $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Lukkede felter: $points. To eller flere brikker holder et sikkert felt og forhindrer modstanderen i at lande der.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Du åbner tidligere lukkede $pointLabel: $points. De felter blokerer ikke længere modstanderen.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Du efterlader ingen enlige brikker ubeskyttede (før: $previousCount). Der er ingen brikker, modstanderen kan slå lige nu.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brikker',
      one: '$count brik',
    );
    return 'Ubeskyttede enlige brikker: $_temp0 (før: $previousCount). Undersøg, om modstanderen kan nå dem, før du vælger sikkerhed frem for en anden gevinst.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Længste række af lukkede felter: $count (før: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'En seksfelters mur kan ikke krydses, så længe den er lukket.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Behold byggesten i nærheden, hvis du vil forlænge eller bevare rækken.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Ekstra brikker ud over de to, der lukker felterne: $count. En ekstra brik kan flyttes uden at åbne feltet; flyttes en af de sidste to, åbnes det.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ankre i modstanderens hjembræt: $points (før: $previousPoints). Et anker beskytter brikkerne mod slag; at forlade det bytter sikker støtte for fremgang i kapløbet.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Rent kapløb: spillerne er kommet forbi hinanden, og ingen har en brik på baren. Slag er ikke længere mulige; effektiv afbæring er vigtig.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Der findes ikke noget lovligt næste kast, hvor modstanderen kan slå en brik i denne stilling. Der er stadig kontakt, så senere træk kan skabe nye slagmuligheder.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Modstanderen kan slå på $count af $total kast. For eksempel giver $dieOne–$dieTwo mulighed for et lovligt slag på din brik på felt $point. Muligheden for et slag betyder ikke, at modstanderen vælger det.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Du har $closedPoints lukkede felter i dit hjembræt. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Modstanderen kan ikke komme ind, før et felt åbnes.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Et kast, der bruger et åbent indgangsfelt, kan få en brik ind fra baren.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Det bedste træks anslåede vinderchance er $delta procentpoint $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'højere';

  @override
  String get tutorMoveComparisonLower => 'lavere';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Det kan stadig være rangeret højere, fordi gammon og backgammon vægtes forskelligt ved $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'den aktuelle indsats';

  @override
  String get tutorMoveComparisonMatchScore => 'den aktuelle matchscore';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Det bedste træk efterlader $bestCount af modstanderens brikker på baren mod $playedCount. En brik på baren skal først ind, før modstanderen kan flytte de andre.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Det bedste træk lukker $bestCount felter i dit hjembræt mod $playedCount, altså en forskel på $entryDifference indgangsfelter efter et slag.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'lukker flere';

  @override
  String get tutorMoveComparisonLeavingMore => 'efterlader flere åbne';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Det bedste træk giver modstanderen mulighed for et slag på $bestCount af 36 kast mod $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Det sænker den umiddelbare risiko for at blive sendt tilbage.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Sammenlign den ekstra udsathed med det, trækket vinder andre steder.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Det bedste træks længste række af lukkede felter er $bestCount i stedet for $playedCount; sammenlign blokaden med antallet af brikker, der kan holde den lukket.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Det bedste træk har ankre på $bestPoints i stedet for $playedPoints. Et bevaret anker giver et sikkert landingsfelt; forlader du det, kommer brikkerne tættere på hjem.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Det bedste træk har $bestCount brikker af brættet mod $playedCount. Hver brik, du har taget af, er én mindre, du skal tage af senere.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Begge træk giver samme umiddelbare risiko for slag, samme antal lukkede felter i hjembrættet, ankre og brikker af brættet. Sammenlign landingsfelterne: næste kast kan give forskellige muligheder for brikkerne.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Det bedste træk efterlader flere af modstanderens brikker på baren og forsinker de øvrige træk.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Det bedste træk lukker flere felter i hjembrættet, så modstanderen får sværere ved at komme ind efter et slag.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Det bedste træk giver færre umiddelbare slagmuligheder og mindsker risikoen for at blive sendt tilbage.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Det bedste træk bevarer en længere række af lukkede felter.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Det bedste træk bevarer flere sikre ankre i modstanderens hjembræt.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Det bedste træk tager flere brikker af, så der er færre tilbage senere.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ubeskyttede enlige brikker efter dette træk: $playedCount; efter det bedste træk: $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Det bedste træk bevarer et sikkert anker på felt $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Det bedste træk lukker flere indgangsfelter, hvis en af dine brikker bliver slået.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Trækkene giver omtrent samme umiddelbare risiko; sammenlign, hvilke felter der er nyttige ved næste kast.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value forventet værdi';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value procentpoint vinderchance i matchen';
  }

  @override
  String get tutorMovePointSingular => 'felt';

  @override
  String get tutorMovePointPlural => 'felter';

  @override
  String get tutorMoveNoPoints => 'ingen';

  @override
  String get gameTutorCommentaryOff => 'Spilkommentarer er slået fra.';

  @override
  String get gameTutorToolsAvailable =>
      'Åbn tutoren for at bruge de værktøjer, du har slået til.';

  @override
  String get gameTutorNextRoll => 'Kast igen.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Der findes ingen vurderet forklaring på dette gemte træk.';

  @override
  String get gameTutorAnalysisUnavailable => 'analyse ikke tilgængelig';

  @override
  String get gameTutorReviewing => 'gennemgår…';

  @override
  String get gameTutorTryYourPlayFirst => 'Prøv dit eget træk først.';

  @override
  String get gameTutorKeepBuilding => 'Fortsæt med at bygge dit træk.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Lav et helt lovligt træk, før du viser undervisning eller hints.';

  @override
  String get gameTutorReadyToConfirm => 'Klar til at bekræfte';

  @override
  String get gameTutorPlayTakingShape => 'Dit træk tager form.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Bekræft for at udføre trækket, eller fortryd for at overveje igen.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Brug de resterende terninger, eller fortryd for at overveje igen.';

  @override
  String get gameTutorComputerConsidering => 'Computeren overvejer sit træk.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Computerens færdige træk bliver gennemgået her.';

  @override
  String get gameTutorYourPlay => 'Dit træk';

  @override
  String get gameTutorComputer => 'Computer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Dit træk: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'tvunget træk';

  @override
  String get gameTutorTopChoice => 'bedste valg';

  @override
  String get gameTutorSoundPlay => 'solidt træk';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'et andet træk passer måske bedre';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'et andet træk passer bedre til denne stilling';

  @override
  String get gameTutorStrongerPlayAvailable => 'der var et klart stærkere træk';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side har en beregnet fordel.';
  }

  @override
  String get gameTutorPositionEven => 'Stillingen er omtrent lige.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Spillet: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Bedste træk: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Vis rangerede træk';

  @override
  String get tutorReviewRecordedMove =>
      'Tryk på et afsluttet træk i loggen for at se analysen her.';

  @override
  String get tutorTopPlays => 'Bedste træk';

  @override
  String get tutorNoHintsAvailable => 'Ingen tip tilgængelige.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tryk på et træk for at forhåndsvise det på brættet, og bekræft derefter.';

  @override
  String get tutorTopChoiceForPosition => 'Bedste valg i denne stilling';

  @override
  String get tutorAlternativePlay => 'Alternativt træk';

  @override
  String get tutorEngineEstimates => 'Motorens vurderinger';

  @override
  String get tutorEstimateScope =>
      '0-ply-vurdering · aktuel score og indsats · ingen fremtidige doblinger';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Matchvindende chance %';

  @override
  String get tutorNearTiesNote =>
      'Næsten lige vurderinger kan ændre sig ved dybere analyse.';

  @override
  String get tutorWhyThisPlay => 'Hvorfor dette træk?';

  @override
  String get tutorCompareAlternative => 'Sammenlign dette alternativ';

  @override
  String get gameTutorCubeTake => 'Tutor: tag imod';

  @override
  String get gameTutorCubePass => 'Tutor: pas';

  @override
  String get practiceScreenTitle => 'Træn en beslutning';

  @override
  String get practiceUnavailable =>
      'Denne øvelsesposition er ikke længere tilgængelig.';

  @override
  String get practiceSubmitError =>
      'Forsøget kunne ikke vurderes eller gemmes. Din fremgang er uændret. Prøv igen.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side skal trække · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historisk stilling er ikke tilgængelig; bedømmelsen bruger cubeless equity.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Stilling: $whiteLabel $whiteScore – $blackLabel $blackScore, til $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford-parti';

  @override
  String get practiceNoDoublingCube => 'Ingen doublingterning.';

  @override
  String practiceCubeValue(int value) {
    return 'Terning $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Historiske terningregler er ukendte.';

  @override
  String get practiceAfterBestPosition => 'Position efter det bedste træk';

  @override
  String get practiceAfterYourAnswerPosition => 'Position efter dit svar';

  @override
  String get practiceFindYourPlayPrompt =>
      'Spil dit træk på brættet, og kontrollér derefter svaret. Der vises ingen hints.';

  @override
  String get practiceUndo => 'Fortryd';

  @override
  String get practiceCheckAnswer => 'Kontrollér svar';

  @override
  String get practiceRevealNoCredit => 'Vis svar (uden point)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Svar vist — ingen point for genkaldelse.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Bedst: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Oprindeligt parti: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Dit svar: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Dit svar';

  @override
  String get practiceBestPlayChip => 'Bedste træk';

  @override
  String practiceNextReview(Object date) {
    return 'Næste gennemgang: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Bedste eller gode svar tæller som korrekt genkaldelse. Tidlige gentagelser ændrer ikke planen.';

  @override
  String get practiceBackToLearning => 'Tilbage til læring';

  @override
  String get practiceMarkBest => 'Bedst';

  @override
  String get practiceMarkGood => 'Godt';

  @override
  String get practiceMarkDubious => 'Tvivlsomt';

  @override
  String get practiceMarkError => 'Fejl';

  @override
  String get practiceMarkBlunder => 'Større fejl';

  @override
  String get practiceMarkForced => 'Tvunget';

  @override
  String get newMatchYourSide => 'Din side';

  @override
  String get newMatchTutorMode => 'Tutortilstand';

  @override
  String get newMatchTutorDescription =>
      'Lær med tip, forklaringer og kommentarer til spillet';

  @override
  String get newMatchTutoringOptions => 'Tutorindstillinger';

  @override
  String get newMatchTutoringOptionsDescription =>
      'For denne kamp; kan ændres under spillet';

  @override
  String get setupMatchLength => 'Kampens længde';

  @override
  String get setupDifficulty => 'Sværhedsgrad';

  @override
  String get setupDifficultyEasy => 'Let';

  @override
  String get setupDifficultyMedium => 'Middel';

  @override
  String get setupDifficultyHard => 'Svær';

  @override
  String get setupDifficultyExpert => 'Ekspert';

  @override
  String get setupPlayWithoutCube => 'Spil uden kube';

  @override
  String get setupNoCubeThisMatch => 'Ingen dobleterning i denne kamp';

  @override
  String get analysisTitle => 'Analyse';

  @override
  String get gameMatchSummary => 'Matchoversigt';

  @override
  String get gameAnalyzeGame => 'Analyser spil';

  @override
  String get analysisMetricsTooltip => 'Hvad betyder tallene?';

  @override
  String analysisError(Object error) {
    return 'Partiet kunne ikke analyseres: $error';
  }

  @override
  String get analysisNoPositions => 'Dette parti har ingen positioner at vise.';

  @override
  String get analysisInProgress => 'Analyserer parti…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Spillet';

  @override
  String get analysisBest => 'Bedst';

  @override
  String get analysisPrevious => 'Forrige';

  @override
  String get analysisNext => 'Næste';

  @override
  String get analysisPositionBeforeCube => 'Position før terningbeslutningen';

  @override
  String get analysisPositionAtPoint => 'Position på dette sted i partiet';

  @override
  String get analysisShowingBestBefore =>
      'Viser det bedste træk i positionen før trækket';

  @override
  String get analysisShowingBefore => 'Viser positionen før trækket';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · udeladt fra gennemsnit';

  @override
  String get analysisNoPlay => '(intet træk)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Bedste træk: $move';
  }

  @override
  String get analysisExplain => 'Forklar';

  @override
  String get analysisSaveForPractice => 'Gem til træning';

  @override
  String get analysisSaveError =>
      'Denne beslutning kunne ikke gemmes. Prøv igen.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · tab $loss';
  }

  @override
  String get analysisCubeDecision => 'Terningbeslutning';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Spillet: $action ($percent% chance for at vinde partiet).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Bedst: $action ($percent% chance for at vinde partiet).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply-estimat set fra spilleren, der er i træk. Antager et optimalt tag eller pas. Bruger en 0,7-tilnærmelse af terningens levetid ved accepteret dobling, ikke en fuld søgning efter fremtidige redoblinger. En dybere analyse kan ændre svaret.';

  @override
  String get analysisClose => 'Luk';

  @override
  String get analysisMoves => 'Træk';

  @override
  String get analysisForced => 'Tvunget';

  @override
  String get analysisMarkBest => 'Bedst';

  @override
  String get analysisMarkGood => 'Godt';

  @override
  String get analysisMarkDubious => 'Tvivlsomt';

  @override
  String get analysisMarkError => 'Fejl';

  @override
  String get analysisMarkBlunder => 'Større fejl';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Gennemsnitligt tab $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count brikbeslutninger';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Større fejl $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Terningtab $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side kaster uden at doble';
  }

  @override
  String get metricExplainerTitle => 'Forstå målingerne';

  @override
  String get metricExplainerTooltip => 'Hvad betyder tallene?';

  @override
  String get metricExplainerMwcTitle => 'Chance for at vinde kampen (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Når stillingen er kendt, rangeres briktræk efter den anslåede chance for at vinde kampen. Tab angives i procentpoint (pp): 1 pp er et fald fra 51 % til 50 %. Den aktuelle terningindsats samt gammon- og backgammonresultater indgår. Tvungne pas og kast med kun én lovlig slutposition tæller ikke med i gennemsnittet.';

  @override
  String get metricExplainerSearchTitle => 'Søgning og usikkerhed';

  @override
  String get metricExplainerSearchBody =>
      'Trækrangeringer er statiske 0-ply-estimater efter trækket, ikke rollouts. Kampværdier bruger en match equity-tabel uden fremtidige terningbeslutninger. Terninganalyser bruger en delvis 0,7-tilnærmelse af terningens levetid ved accepteret dobling. Det er ikke en fuld cubeful søgning. Stillinger mere end 25 point bagud bruger tabellens 25-away-grænse. Tætte resultater kan ændre sig ved dybere analyse; der findes intet kalibreret konfidensinterval.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Hvis stillingen ikke er tilgængelig, er cubeless equity en positions gennemsnitlige pointværdi med terningen på 1. +1,0 betyder forventet gevinst på ét point; −0,5 betyder forventet tab af et halvt point.';

  @override
  String get metricExplainerEquityLossTitle => 'Equitytab (f.eks. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Vi sammenligner hvert træk med engineets bedste træk. Equitytab er den forventede værdi, trækket gav afkald på. −0,016 betyder, at trækket kun var 0,016 point dårligere — en lille fejl. 0,000 betyder, at du fandt det bedste træk.';

  @override
  String get metricExplainerErrorRateTitle => 'Fejlrate';

  @override
  String get metricExplainerErrorRateBody =>
      'Gennemsnitligt tab beregner gennemsnittet af dine vurderede brikbeslutninger i den viste enhed. Terningbeslutninger har deres eget gennemsnit. Lavere betyder tættere på engineets bedste estimater; det er ikke en kalibreret spillervurdering.';

  @override
  String get metricExplainerMoveMarksTitle => 'Trækvurderinger';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC-undervisningsniveauer: Bedst < 0,05 pp, Godt < 0,5 pp, Tvivlsomt < 1,5 pp, Fejl < 3 pp, Større fejl ≥ 3 pp. Det er produktets læringsniveauer, ikke kalibreret sikkerhed eller turneringsvurderinger.\n\nCubeless equity-niveauer:';

  @override
  String get metricExplainerThresholdBest => 'tab < 0,001';

  @override
  String get metricExplainerThresholdGood => 'tab < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'tab < 0,050';

  @override
  String get metricExplainerThresholdError => 'tab < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'tab ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Forstået';

  @override
  String get historyTitle => 'Kampoversigt';

  @override
  String historyLoadFailed(Object error) {
    return 'Kampoversigten kunne ikke indlæses:\n$error';
  }

  @override
  String get historyEmpty => 'Du har ikke spillet nogen kampe endnu.';

  @override
  String get historyDeleteConfirmTitle => 'Slet denne kamp?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nKampen og alle registrerede spil i den slettes permanent. Dette kan ikke fortrydes.';
  }

  @override
  String get actionCancel => 'Annuller';

  @override
  String get actionDelete => 'Slet';

  @override
  String get historyDeleteFailed => 'Kampen kunne ikke slettes.';

  @override
  String get historyComplete => 'Færdig';

  @override
  String historyWinner(Object side) {
    return '$side vandt';
  }

  @override
  String get historyUnfinished => 'Ikke færdig';

  @override
  String get historyMatchTitle => 'Kamp';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Kampen kunne ikke indlæses:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Spillene kunne ikke indlæses:\n$error';
  }

  @override
  String get historyNoGames => 'Ingen spil er registreret endnu.';

  @override
  String historyGameTitle(int number) {
    return 'Spil $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Hvid $whiteScore — $blackScore Sort (til $matchLength)';
  }

  @override
  String get historyModeComputer => 'mod computer';

  @override
  String get historyModeTwoPlayers => 'To spillere';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Spil i nærheden';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'I gang';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side vinder med $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'enkelt';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Opdater læringsforløb';

  @override
  String get learningOptions => 'Læringsindstillinger';

  @override
  String get learningResetMenu => 'Nulstil træningsforløb';

  @override
  String get learningLoadFailed => 'Læringsforløbet kunne ikke indlæses.';

  @override
  String get actionRetry => 'Prøv igen';

  @override
  String get learningHeading => 'Lær af dine beslutninger';

  @override
  String get learningIntro =>
      'Din fremgang gemmes på denne enhed. Gennemgå tilbagevendende temaer, og prøv gemte positioner igen uden at se svaret. Hvid og sort kan gennemgås hver for sig.';

  @override
  String get learningBothSides => 'Begge sider';

  @override
  String get learningHumansOnly => 'Kun menneskelige beslutninger';

  @override
  String get learningHumanOnlyHelp =>
      'Slå fra for også at medtage computerens og fjernspilleres beslutninger';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions beslutninger · $mistakes at forbedre · $blunders større fejl';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Gennemsnitligt tab ($decisions beslutninger): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Tvungne træk er udeladt. Det er engineestimater, ikke en turneringsrating.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gemte partier skal analyseres eller analyseres igen.',
      one: '$count gemt parti skal analyseres eller analyseres igen.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analysér gemte partier';

  @override
  String get learningEmptyProfile =>
      'Spil og afslut et parti for at opbygge din læringsprofil. Du kan også gemme enkelte beslutninger fra en gennemgang.';

  @override
  String get learningOpenHistory => 'Åbn kamphistorik';

  @override
  String get learningRecurringThemes => 'Tilbagevendende temaer';

  @override
  String get learningNoThemes =>
      'Der er endnu ingen tilbagevendende fejltendenser i dette udvalg.';

  @override
  String learningThemeDecisions(int count) {
    return '$count beslutninger til gennemgang. En position kan have flere temaer.';
  }

  @override
  String get learningSaveMistakes => 'Gem disse fejl til træning';

  @override
  String learningSavedMistakes(int count) {
    return '$count beslutninger er på din træningsliste. Allerede gemte beslutninger beholdes.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Nogle beslutninger kunne ikke gemmes. De gemte beholdes; prøv igen.';

  @override
  String get learningSpacedPractice => 'Spredt træning';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due klar nu · $saved gemt · $attempts forsøg · $successes vellykkede genkaldelser';
  }

  @override
  String get learningIntervalsHelp =>
      'Vellykkede rettidige gennemgange vender tilbage efter 1, 3, 7, 14 og 30 dage. Fejl eller viste svar vender tilbage efter 10 minutter. Tidlige gentagelser ændrer ikke intervallet.';

  @override
  String get learningAnswerContext =>
      'Træningsresultaterne afspejler dine svar her, også når den oprindelige position tilhørte en modstander.';

  @override
  String get learningNoSavedPositions =>
      'Gem en beslutning fra gennemgangen, eller brug fejlknappen ovenfor.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '${side}s beslutning · parti $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Gennemgå $date';
  }

  @override
  String get learningReadyToReview => 'Klar til gennemgang';

  @override
  String learningSuccessStreak(int count) {
    return '$count vellykkede rettidige gennemgange';
  }

  @override
  String get learningRemoveTooltip => 'Fjern gemt beslutning';

  @override
  String get learningRecentPractice => 'Seneste træning';

  @override
  String get learningAnswerRevealed => 'Svar vist';

  @override
  String get learningSuccessfulRecall => 'Vellykket genkaldelse';

  @override
  String get learningTryAgain => 'Prøv beslutningen igen';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · gemt position $positionId';
  }

  @override
  String get learningRemoveTitle => 'Fjern denne øvelse?';

  @override
  String get learningRemoveBody =>
      'Dette fjerner dens træningsforsøg. Det oprindelige parti bliver i historikken.';

  @override
  String get actionRemove => 'Fjern';

  @override
  String get learningRemoveFailed => 'Øvelsen kunne ikke fjernes.';

  @override
  String get learningResetTitle => 'Nulstil træningsforløb?';

  @override
  String get learningResetBody =>
      'Alle træningsforsøg og gennemgangsintervaller fjernes. Dine gemte øvelser og kamphistorik bevares; alle øvelser skal gennemgås nu.';

  @override
  String get learningResetAction => 'Nulstil forløb';

  @override
  String get learningResetFailed => 'Træningsforløbet kunne ikke nulstilles.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analyserede partier: $completed · utilgængelige: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analyserede $completed partier.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analyserede $completed partier; $failed kunne ikke analyseres. Prøv igen, når engine er klar.';
  }

  @override
  String get learningThemeHitting => 'Slag og tempo';

  @override
  String get learningThemeSafety => 'Blots og sikkerhed';

  @override
  String get learningThemePointMaking => 'Byg punkter';

  @override
  String get learningThemePrime => 'Prime og blokader';

  @override
  String get learningThemeAnchor => 'Ankre og flugt';

  @override
  String get learningThemeRace => 'Effektivitet i løbet';

  @override
  String get learningThemeBearOff => 'Bære af';

  @override
  String get learningThemeBarEntry => 'Indgang fra baren';

  @override
  String get learningThemeCube => 'Terningbeslutninger';

  @override
  String get analysisCubeNoDouble => 'Ingen dobling';

  @override
  String get analysisCubeDouble => 'Dobl';

  @override
  String get analysisCubeTake => 'Tag';

  @override
  String get analysisCubePass => 'Pas';

  @override
  String get learningAnalysisStarting => 'Analyserer gemte partier…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply-vurdering uden kube · score ikke tilgængelig';

  @override
  String get tutorLossPp => 'Tab i procentpoint';

  @override
  String get tutorLoss => 'Tab';

  @override
  String get scoreSheetNoMoves => 'Ingen træk endnu';

  @override
  String get tutorOptions => 'Tutorindstillinger';

  @override
  String get tutorCollapseTooltip => 'Fold tutor sammen';

  @override
  String get tutorExpandTooltip => 'Fold tutor ud';

  @override
  String get onlineTitle => 'Spil online';

  @override
  String get onlineUnassistedNote =>
      'Live online-spil er uden hjælp. Gennemgå dine træk og øv fejl efter kampen.';

  @override
  String get onlineNotConfiguredTitle =>
      'Onlinespil er ikke konfigureret i denne version';

  @override
  String get onlineNotConfiguredBody =>
      'Denne version har ingen tilkoblet Firebase-backend, så oprettelse og deltagelse i kampe er ikke tilgængelig.';

  @override
  String get onlineErrorNoMatch =>
      'Der findes ingen kamp med den kode. Kontrollér den, og prøv igen.';

  @override
  String get onlineErrorSeatTaken =>
      'Kampen er ikke længere åben — pladsen er optaget.';

  @override
  String get onlineErrorPermission => 'Du har ikke adgang til den kamp.';

  @override
  String get onlineErrorGeneric => 'Noget gik galt. Prøv igen.';

  @override
  String get onlineMatchFinished =>
      'Kampen er slut — der er ikke noget at vende tilbage til.';

  @override
  String get onlineEnterCodeError => 'Indtast en kampkode.';

  @override
  String get onlineOpponentShort => 'Modst.';

  @override
  String get onlineMatchInProgress => 'Kamp i gang';

  @override
  String onlineResumePrompt(Object code) {
    return 'Du spillede kampen $code.';
  }

  @override
  String get onlineRejoin => 'Deltag igen';

  @override
  String get onlineForgetMatch => 'Glem denne kamp';

  @override
  String get onlineCreateTitle => 'Opret kamp';

  @override
  String get onlineMatchLength => 'Kampens længde';

  @override
  String get onlineNoCubeTitle => 'Spil uden kube';

  @override
  String get onlineNoCubeSubtitle => 'Ingen dobleterning i denne kamp';

  @override
  String get onlineCreate => 'Opret';

  @override
  String get onlineWaitingOpponent => 'Venter på modstander…';

  @override
  String get onlineShareCode => 'Del denne kode';

  @override
  String get onlineCopyCode => 'Kopiér kode';

  @override
  String get onlineCodeCopied => 'Kode kopieret';

  @override
  String get onlineJoinTitle => 'Deltag i kamp';

  @override
  String get onlineRoomCode => 'Kampkode';

  @override
  String get onlineJoin => 'Deltag';

  @override
  String get lanTitle => 'Spil i nærheden';

  @override
  String get lanTabHost => 'Vært';

  @override
  String get lanTabJoin => 'Deltag';

  @override
  String get lanUnassistedNote =>
      'Live-spil i nærheden er uden hjælp. Gennemgå dine træk, og øv fejl efter kampen.';

  @override
  String get lanGameStartFailed =>
      'Spillet kunne ikke startes. Den anden enhed kan prøve at deltage igen.';

  @override
  String get lanHostPortInUse =>
      'Kunne ikke starte værtstilstand — porten er allerede i brug. Luk en anden kopi af Backgammon Buddy.';

  @override
  String get lanHostStartFailed =>
      'Kunne ikke starte værtstilstand. Kontrollér din Wi-Fi-forbindelse.';

  @override
  String get lanHostTitle => 'Vær vært for et spil';

  @override
  String get lanStartHosting => 'Start værtstilstand';

  @override
  String get lanHostHelp =>
      'Begge enheder skal være på samme Wi-Fi. Denne enhed slår terningerne og holder styr på scoren.';

  @override
  String get lanWaitingPlayerTitle => 'Venter på en spiller';

  @override
  String get lanRoomCodeInfo =>
      'Giv den anden spiller denne kode. Den giver adgang — appen sender den ikke over netværket.';

  @override
  String get lanWaitingPlayer => 'Venter på en spiller…';

  @override
  String get lanStopHosting => 'Stop værtstilstand';

  @override
  String lanFindNearbyPort(int port) {
    return 'Bed den anden enhed om at søge efter spil i nærheden. Lytter på port $port.';
  }

  @override
  String get lanOnNetwork => 'På dette netværk';

  @override
  String get lanCopyAddress => 'Kopiér adresse';

  @override
  String get lanAddressCopied => 'Adresse kopieret';

  @override
  String get lanScanHostTitle => 'Scan værten';

  @override
  String get lanScanHostHelp =>
      'Den anden enhed viser en QR-kode på værtsskærmen. Scan den for at udfylde adresse og rumkode.';

  @override
  String get lanScanQr => 'Scan QR-kode';

  @override
  String get lanScannerUnavailable =>
      'Kameraet eller dets tilladelse er ikke tilgængelig. Indtast adresse og rumkode nedenfor i stedet.';

  @override
  String get lanInvalidQr =>
      'Denne QR-kode er ikke til et Backgammon Buddy-spil. Scan koden på værtens skærm på den anden enhed.';

  @override
  String get lanScannerFailed =>
      'Scanneren kunne ikke åbnes. Indtast adressen og koden i stedet.';

  @override
  String get lanNearbyGames => 'Spil i nærheden';

  @override
  String get lanSearching => 'Søger efter spil i nærheden…';

  @override
  String get lanNoGamesFound =>
      'Ingen spil fundet endnu. Sørg for, at den anden enhed er vært, og at begge er på samme Wi-Fi — eller indtast adressen.';

  @override
  String get lanStillSearching => 'Søger stadig…';

  @override
  String get lanEnterAddress => 'Indtast adresse';

  @override
  String get lanEnterAddressHelp =>
      'Automatisk søgning virker ikke på alle netværk (og iOS kan blokere den helt). Værtsskærmen viser, hvad du skal indtaste.';

  @override
  String get lanIpAddress => 'IP-adresse';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Indtast en port mellem 1 og 65535.';

  @override
  String get lanEnterAddressError =>
      'Indtast adressen, der vises på den anden enhed.';

  @override
  String get lanEnterRoomCodeError =>
      'Indtast den firecifrede kode fra den anden enhed.';

  @override
  String get lanJoinWrongCode =>
      'Forkert rumkode. Kontrollér de fire cifre på den anden enhed.';

  @override
  String get lanJoinVersionMismatch =>
      'Den anden enhed kører en anden version af Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Enheden svarede ikke som Backgammon Buddy. Kontrollér adresse og port.';

  @override
  String get lanJoinFailed =>
      'Kunne ikke deltage. Kontrollér adresse og rumkode, og prøv igen.';

  @override
  String lanJoinTarget(Object name) {
    return 'Deltag i $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Indtast den firecifrede kode, der vises på den anden enhed.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Deltager i $name';
  }

  @override
  String get lanConnect => 'Opret forbindelse';

  @override
  String get lanBack => 'Tilbage';

  @override
  String get lanTryAgain => 'Prøv igen';

  @override
  String get lanStatusBusy => 'Rummet er optaget — venter…';

  @override
  String get lanStatusReconnecting => 'Forbindelsen gik tabt — prøver igen…';

  @override
  String get lanStatusConnected => 'Forbundet — kampen starter…';

  @override
  String get lanStatusFailed => 'Kunne ikke deltage.';

  @override
  String get lanStatusConnecting => 'Opretter forbindelse…';

  @override
  String get diagnosticsCopySuccess =>
      'Diagnostik kopieret til udklipsholderen';

  @override
  String get diagnosticsReviewTitle => 'Gennemgå diagnostikrapport';

  @override
  String get diagnosticsPrivacyNotice =>
      'Når du åbner udkastet, sendes oplysningerne nedenfor til GitHub, herunder appversion, platform og eventuelle fejloplysninger. Der oprettes ikke en offentlig sag, før du indsender den. Hvis oplysningerne indeholder private data, skal du annullere og bruge Kopiér til selv at klargøre en rapport.';

  @override
  String get diagnosticsCancel => 'Annuller';

  @override
  String get diagnosticsOpenGitHub => 'Åbn GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostik';

  @override
  String get diagnosticsReportTooltip => 'Rapportér et problem på GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Kopiér til udklipsholder';

  @override
  String get diagnosticsClearTooltip => 'Ryd log';

  @override
  String get diagnosticsEmpty =>
      'Ingen fejl registreret.\n\nHvis noget går galt, gemmes det her. Vend tilbage og kopiér oplysningerne til en fejlrapport.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · til $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · til $matchLength';
  }

  @override
  String get gameHudYou => 'Dig';

  @override
  String get gameHudAi => 'Computer';

  @override
  String gameHudGameNumber(int number) {
    return 'Spil $number';
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
    return '$whiteLabel mod $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'mod $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'mod $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pips';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Dobl';

  @override
  String get gameHudMoreActions => 'Flere handlinger';

  @override
  String get gameHudSurrender => 'Opgiv…';

  @override
  String get gameHudThinking => 'Tænker';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Du kan kun doble før du slår, og når det er din tur.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Der kan ikke dobles i Crawford-spillet — dette ene spil afgør kampen.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Kun ejeren af dobleterningen kan doble, og den tilhører modstanderen lige nu.';

  @override
  String get gameHudDoubleUnavailable => 'Det er ikke muligt at doble lige nu.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (til $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner vinder dette spil ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner vinder dette spil ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner vinder dette spil ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner vinder dette spil ($points) — $loser afslog doblingen.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner vinder dette spil ($points) — $loser opgav.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Giv enheden videre';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name har tur';
  }

  @override
  String get gameDialogTapToContinue => 'Tryk for at fortsætte';

  @override
  String get gameDialogCubeOfferedTitle => 'Dobl foreslået';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler tilbyder at doble til $value. Vil du tage imod eller passe?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Pas';

  @override
  String get gameDialogTake => 'Tag imod';

  @override
  String get gameDialogResignationTitle => 'Opgivelse tilbudt';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner tilbyder at opgive ved $value. Vil du acceptere eller afslå?';
  }

  @override
  String get gameDialogResignSingle => 'enkelt spil';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Afslå';

  @override
  String get gameDialogAccept => 'Acceptér';

  @override
  String get gameDialogGameOverTitle => 'Spillet er slut';

  @override
  String get gameDialogNextGame => 'Næste spil';

  @override
  String get gameDialogMatchOverTitle => 'Kampen er slut';

  @override
  String get gameDialogNobody => 'Ingen';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner vinder kampen.';
  }

  @override
  String get gameDialogSavedToHistory => 'Gemt i historik';

  @override
  String get gameDialogDone => 'Færdig';

  @override
  String get gameTapNoLegalMove =>
      'Denne brik kan ikke flyttes med de resterende terninger';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Denne brik kan ikke flyttes med de resterende terninger — prøv at fortryde';

  @override
  String get gameDragHint =>
      'Tip: træk brikkerne, eller tryk på dem — skift dette i Indstillinger';

  @override
  String get commonGotIt => 'Forstået';

  @override
  String get gameHintStageBeforeHint =>
      'Lav først et helt lovligt træk, og bed derefter om et tip.';

  @override
  String get surrenderTitle => 'Opgiv';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player opgiver det aktuelle spil.';
  }

  @override
  String get surrenderConcedes => 'Du opgiver det aktuelle spil.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Tilgængelig ved starten af ${player}s tur';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Tilgængelig ved starten af din tur';

  @override
  String get commonCancel => 'Annuller';

  @override
  String get surrenderSingle => 'Enkelt (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Hvem opgiver dette spil?';

  @override
  String get commonDone => 'Færdig';

  @override
  String get cubeDouble => 'Dobl';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Det er den anden spillers tur.';

  @override
  String get cubeBlockedCrawford =>
      'Dobleterningen er ikke tilgængelig i Crawford-spillet.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Kun ejeren af dobleterningen kan doble, og den tilhører modstanderen.';

  @override
  String get cubeBlockedUnavailable => 'Det er ikke muligt at doble lige nu.';

  @override
  String get gameStatusRolling => 'Slår…';

  @override
  String get gameStatusThinking => 'Tænker…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player har tur';
  }

  @override
  String get cubeAdviceOpponentTake => 'Dobl — modstanderen bør tage imod';

  @override
  String get cubeAdviceOpponentPass => 'Dobl — modstanderen bør passe';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Fejl: $error';
  }

  @override
  String get privacyTitle => 'Privatliv og data';

  @override
  String get privacyAppTitle => 'Backgammon Buddy af Freevia';

  @override
  String get privacyIntro =>
      'Denne side beskriver, hvordan den aktuelle app håndterer dine data.';

  @override
  String get privacyLocalTitle => 'Spil og vejledning på din enhed';

  @override
  String get privacyLocalBody =>
      'Lokale matches, indstillinger, analyser og øvelsesfremskridt gemmes på denne enhed. Backgammon motoren og tutor forklaringerne kører her. Slet et gemt match fra historikken for også at fjerne dets gemte øvelsesøvelser og forsøg. Slet individuelle øvelser eller nulstil øvelsesfremskridt i Læring; ryd lokale fejlrapporter i Indstillinger → Diagnostik. Din enheds indstillinger for sikkerhedskopiering kan også gælde for spilhistorik. Online loginoplysninger opbevares i enhedens beskyttede lager.';

  @override
  String get privacyOnlineTitle => 'Online og spil i nærheden';

  @override
  String get privacyOnlineBody =>
      'Onlinespil sender en anonym spilleridentifikator, matchindstillinger, træk og terning-håndtryk til Google Firebase, så begge spillere kan spille den samme kamp. Sletning af historik på denne enhed sletter ikke online optegnelser. Hostede matches udløber 30 dage efter oprettelse. Planlagt oprydning fjerner deres sky-logfiler. Matchposter gemmes i EU; Firebase Authentication behandler login-data i USA. Onlineforbindelser til Google bruger kryptering under overførsel. Afspilningsudvekslinger i nærheden matcher oplysninger med den anden enhed over en ukrypteret lokal forbindelse; brug betroet Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle => 'Valgfri brug og crashdiagnostik';

  @override
  String get privacyDiagnosticsBody =>
      'Deling er slået fra, indtil du vælger det i Indstillinger. Hvis aktiveret, modtager Google Firebase brugshændelser, app-/enhedsoplysninger, præstationsmålinger og nedbrudsrapporter for at hjælpe med at forbedre appen. Slå deling fra når som helst for at stoppe ny valgfri samling. Dette sletter ikke data, der allerede er sendt. Lokal diagnosticering og onlinematch fungerer adskilt fra dette valg.';

  @override
  String get privacyCameraTitle => 'Kamera til nærliggende QR-koder';

  @override
  String get privacyCameraBody =>
      'Det valgfrie kamera scanner QR-koder for spil i nærheden. Billeder behandles på din enhed og gemmes eller uploades ikke. Du kan nægte kameraadgang og indtaste værtsadressen manuelt. Denne version bruger ikke mikrofonen eller giver fysisk brætspil.';

  @override
  String get privacyFeedbackTitle => 'Feedback, du vælger at sende';

  @override
  String get privacyFeedbackBody =>
      'Feedback åbner et udkast til et GitHub-problem, som du kan gennemgå. Åbning af udkastet sender sin appversion og platform til GitHub; feedback fra Diagnostics kan også sende fejloplysninger. Der er ikke noget problem, før du indsender det. Problemer kan være offentlige, så fjern private oplysninger, før du sender dem.';

  @override
  String get privacyContactTitle => 'Privatlivskontakt';

  @override
  String get privacyReadPolicy => 'Læs privatpolitikken';

  @override
  String get privacyPolicyOpenFailed => 'Kunne ikke åbne privatlivspolitikken.';

  @override
  String get privacySupportTitle => 'Hjælp og support';

  @override
  String get privacySupportOpenFailed =>
      'Kunne ikke åbne support. Kontakt support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Vil du slette onlineidentitet og -data?';

  @override
  String get privacyDeleteConfirmBody =>
      'Dette afslutter øjeblikkeligt adgangen til denne identitets cloud-kampe for begge spillere og anmoder om sletning af identiteten og delte online matchlogs inden for 30 dage. Det kan tage Google op til 180 dage efter sletning af konto at fjerne godkendelsesdata fra sine live- og backupsystemer. Lokal historik og praksis forbliver på denne enhed. Tidligere sendt valgfri diagnostik er separat; kontakt privacy@freevia.org om disse. Denne handling kan ikke fortrydes.';

  @override
  String get privacyRequestDeletion => 'Anmod om sletning';

  @override
  String get privacyDeleteSectionTitle => 'Slet onlinedata';

  @override
  String get privacyDeleteInstructions =>
      'Brug denne enheds gemte login til at bekræfte ejerskab. En spilleridentifikator eller invitationskode alene beviser ikke ejerskab. Lokale spillere behøver ikke en onlinekonto.';

  @override
  String get privacySendingRequest => 'Sender';

  @override
  String get privacyDeleteAction => 'Slet onlineidentitet og -data';

  @override
  String get privacyDeleteRequested =>
      'Der anmodes om sletning. Denne onlineidentitet er logget ud. Dens cloud-data vil blive slettet inden for 30 dage. At starte online spil igen skaber en ny identitet. Googles fjernelse af godkendelsesdata kan tage op til 180 dage. Kontakt privacy@freevia.org for at få hjælp.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Sletning anmodet. Dens cloud-data vil blive slettet inden for 30 dage. Enheden kunne ikke rydde det gemte login, men onlineidentiteten er blokeret for yderligere matchadgang. Googles fjernelse af godkendelsesdata kan tage op til 180 dage. Kontakt privacy@freevia.org for at få hjælp.';

  @override
  String get privacyDeleteNoIdentity =>
      'Der gemmes ingen brugbar onlineidentitet på denne enhed. Ingen ny konto blev oprettet. Hvis du tidligere har brugt online spil, skal du kontakte privacy@freevia.org for at få hjælp; hostede kampe udløber efter 30 dage.';

  @override
  String get privacyDeleteRequestFailed =>
      'Kunne ikke bekræfte sletningsanmodningen. Kontroller din forbindelse, og prøv igen, eller kontakt privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Vil du dele brugs- og crashdiagnostik?';

  @override
  String get privacyConsentBody =>
      'Dette sender brugsbegivenheder, oplysninger om appen/enheden, nedbrudsrapporter og målinger af ydeevnen til Google Firebase. Deling er valgfri. Spil og vejledning fungerer også uden deling, og du kan slå den fra igen under Indstillinger.';

  @override
  String get privacyKeepOff => 'Hold deaktiveret';

  @override
  String get privacyShareDiagnostics => 'Del diagnosticeringsdata';

  @override
  String get privacySaveFailed =>
      'Privatlivsvalget kunne ikke gemmes. Prøv igen.';

  @override
  String get privacySettingsSubtitle =>
      'Hvad der gemmes på din enhed, og hvad der deles';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Del brugs- og nedbrudsdiagnosticering';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Valgfrit · slået fra som standard';

  @override
  String get lanScanToJoin => 'Scan for at deltage';

  @override
  String get lanScanHostCode => 'Scan værtens kode';

  @override
  String get lanEnterAddressInstead => 'Indtast adressen i stedet';

  @override
  String get lanQrAccessibilityLabel => 'QR-kode til at deltage i dette spil';

  @override
  String get lanJoinInstruction =>
      'Åbn Spil i nærheden på den anden enhed, vælg Deltag, og scan derefter denne QR-kode.';

  @override
  String get lanTorch => 'Lommelygte';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy kan ikke bruge kameraet. Tillad kameraadgang i enhedens indstillinger, eller indtast adressen fra den anden enhed manuelt.';

  @override
  String get lanCameraUnsupported =>
      'Denne enhed kan ikke scanne QR-koder. Indtast adressen fra den anden enhed manuelt.';

  @override
  String get lanCameraStartFailed =>
      'Kameraet kunne ikke startes. Indtast adressen fra den anden enhed manuelt.';

  @override
  String get lanPointCameraAtQr =>
      'Ret kameraet mod QR-koden på den anden enhed.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Spil med et fysisk bræt er ikke tilgængeligt i denne version. Spil på skærmen, vejledning og træning findes på startskærmen.';

  @override
  String get homePlayWithBuddy => 'Spil med Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammonbræt. $status';
  }

  @override
  String get boardWhiteToRoll => 'Hvid skal slå med terningerne.';

  @override
  String get boardBlackToRoll => 'Sort skal slå med terningerne.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Hvid er i tur. Slå $die1 og $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Sort er i tur. Slå $die1 og $die2.';
  }

  @override
  String get boardDoubleOffered => 'Der er tilbudt en fordobling.';

  @override
  String get boardResignationOffered => 'Der er tilbudt opgivelse.';

  @override
  String get boardGameOver => 'Spillet er slut.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Fejl]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idé]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Erstat dette med en kort beskrivelse af, hvad der skete.';

  @override
  String get feedbackBugReproduction =>
      'Erstat dette med trinene, der førte til problemet.';

  @override
  String get feedbackBugExpected =>
      'Erstat dette med det, du forventede ville ske.';

  @override
  String get feedbackIdeaNeed =>
      'Erstat dette med det, du ville gøre eller lære.';

  @override
  String get feedbackIdeaSuggestion =>
      'Erstat dette med den ændring, du ville finde nyttig.';

  @override
  String get feedbackExcerptTruncated =>
      '(forkortet – brug Kopiér til udklipsholder på diagnoseskærmen for at få hele loggen)';

  @override
  String get boardWhiteToMoveNoRoll => 'Hvid er i tur.';

  @override
  String get boardBlackToMoveNoRoll => 'Sort er i tur.';

  @override
  String get feedbackFieldVersion => 'Appversion';

  @override
  String get feedbackFieldPlatform => 'Platform';

  @override
  String get feedbackFieldSummary => 'Hvad skete der';

  @override
  String get feedbackFieldReproduction => 'Trin til at genskabe problemet';

  @override
  String get feedbackFieldExpected => 'Forventet resultat';

  @override
  String get feedbackFieldNeed => 'Hvad du ville gøre';

  @override
  String get feedbackFieldIdea => 'Foreslået ændring';

  @override
  String get buddySetupTitle => 'Spil med Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy spiller';

  @override
  String get buddySetupSeatLabel => 'Din side';

  @override
  String get buddySetupSeatNear => 'Ved telefonen';

  @override
  String get buddySetupSeatFar => 'Overfor';

  @override
  String get buddySetupSeatHelp =>
      'Hvilken side af brættet du sidder ved. Det bestemmer, hvordan Buddy nummererer felterne, og hvordan den skelner mellem dit åbningskast og sit eget.';

  @override
  String get buddySetupVoiceLabel => 'Sådan taler Buddy';

  @override
  String get buddySetupVoiceTerse => 'Kortfattet';

  @override
  String get buddySetupVoiceFriendly => 'Venlig';

  @override
  String get buddySetupVoiceTerseHelp =>
      '”13/8, 24/22” — notation, sådan taler to spillere ved brættet.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '”Flyt en brik fra 13 til 8 og en fra 24 til 22.”';

  @override
  String get buddySetupTutorHelp =>
      'Tutor-kommentarer og forklaringer følger dine gemte tutorindstillinger. Buddy giver indimellem feedback på dine træk; indtastede terningkast og manuelle træk fungerer på samme måde.';

  @override
  String get buddySetupCalibrate => 'Kalibrer brættet';

  @override
  String get buddyFixAim => 'Ret kameraets retning';

  @override
  String get buddyWaitingForOpening =>
      'Buddy venter på kastet, der starter matchen.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy har mistet brættet. Ret kameraets retning, så fortsætter matchen, hvor den slap.';

  @override
  String get buddyPromptWaitingPicture =>
      'Venter på et billede, som Buddy kan læse. Intet går tabt.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy kan ikke finde terningerne. Indtast kastet i stedet.';

  @override
  String get buddyPromptPlay =>
      'Udfør dit træk på brættet. Tryk det ind her, hvis Buddy ikke ser det.';

  @override
  String get buddyPromptWhichPlay => 'Hvilket træk var det?';

  @override
  String get buddyPromptCube =>
      'Buddy fordobler. Vil du tage imod eller droppe?';

  @override
  String get buddyPromptMakeMove =>
      'Udfør Buddys træk på brættet, så fortsætter Buddy.';

  @override
  String get buddyPromptThinking => 'Buddy tænker.';

  @override
  String get buddyPromptWaitingCalibration => 'Venter på kalibrering.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy kan stadig ikke se sit træk. Brættet nedenfor viser den stilling, Buddy holder fast i.';

  @override
  String get buddyPromptNotLegal => 'Det er ikke et lovligt træk.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Det er ikke et lovligt træk. $reason';
  }

  @override
  String get buddyThrowOpening => 'Kast åbningsterningerne — én terning hver.';

  @override
  String get buddyThrowUser => 'Kast dine terninger.';

  @override
  String get buddyThrowBuddy => 'Kast Buddys terninger.';

  @override
  String get buddyMatchOver => 'Matchen er slut.';

  @override
  String get buddyYouWin => 'Du vinder matchen.';

  @override
  String get buddyBuddyWins => 'Buddy vinder matchen.';

  @override
  String get buddyDoubleNoGame =>
      'Der er endnu ingen spil at fordoble — åbningskastet kommer først.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Du kan kun fordoble før kastet, når det er din tur.';

  @override
  String get buddyDoubleCrawford =>
      'Ingen fordobling i Crawford-spillet — dette ene spil afgør matchen.';

  @override
  String get buddyDoubleNotOwner =>
      'Kun ejeren af doblingskuben kan fordoble, og lige nu tilhører den den anden side.';

  @override
  String get buddyDoubleUnavailable => 'Fordobling er ikke mulig lige nu.';

  @override
  String get buddyLookingAtBoard => 'Buddy kigger på brættet.';

  @override
  String get buddyCameraPlayFallback =>
      'Du kan stadig spille matchen: indtast hvert kast på terningefeltet, og tryk dine træk ind på brættet nedenfor.';

  @override
  String get buddySkipCheck => 'Spring denne kontrol over';

  @override
  String get buddyFixedIt => 'Jeg har rettet det';

  @override
  String get buddyDrop => 'Afslå';

  @override
  String get buddyTake => 'Tag imod';

  @override
  String get buddyDone => 'Færdig';

  @override
  String get buddyTranscriptLabel => 'Det sagde Buddy';

  @override
  String get buddyUndo => 'Fortryd';

  @override
  String get buddyConfirm => 'Bekræft';

  @override
  String get buddyDice => 'Terninger';

  @override
  String get buddyDouble => 'Fordobl';

  @override
  String get buddyDicePadTitle => 'Hvad slog du?';

  @override
  String get buddyEnterRoll => 'Indtast kast';

  @override
  String get buddyContextBeforeGame => 'Spil med Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Dig $you–$buddy Buddy · til $length · Spil $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kameraet kunne ikke startes. Kontrollér tilladelserne, og prøv igen.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy har ikke tilladelse til at bruge kameraet. Tillad kameraadgang i enhedens indstillinger, og prøv igen.';

  @override
  String get buddyCalibrationTitle => 'Vis Buddy brættet';

  @override
  String get buddyCalibrationCornersFold =>
      'Træk de fire ydre håndtag til filtens hjørner — ikke trækanten — og de fire små til samlingerne, hvor hængslet møder de fjerne og nære kanter.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Træk hvert håndtag til et hjørne af filten — spillefladen, ikke trækanten omkring den.';

  @override
  String get buddyCalibrationCheckLines =>
      'Kontrollér derefter de tolv linjer på hver halvdel: Hver linje skal følge et felt på brættet. Hvis en linje ikke rammer sit felt, skal håndtaget flyttes lidt.';

  @override
  String get buddyCalibrationSeatQuestion => 'Hvilken halvdel er dit hjembræt?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Halvdelen nærmest billedets nederste kant. Det fastlægger felternes numre, så linjerne ovenfor følger med.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Hold telefonen stille. Buddy venter på, at billedet falder til ro, før den lærer brættet.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Er dette dit bræt?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy ser på det bræt, den netop har lært.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Brikkerne, der er tegnet oven på billedet, viser, hvor Buddy mener, de står. Hvis nogen står forkert, så start forfra — det koster sekunder nu og måske et helt spil senere.';

  @override
  String get buddyCalibrationNext => 'Næste';

  @override
  String get buddyCalibrationBack => 'Tilbage';

  @override
  String get buddyCalibrationCapture => 'Tag billede';

  @override
  String get buddyCalibrationStartOver => 'Start forfra';

  @override
  String get buddyCalibrationLooksRight => 'Ser rigtigt ud';

  @override
  String get buddyCalibrationCornersInvalid =>
      'De fire håndtag afgrænser ikke et bræt — et håndtag har krydset et andet. Træk dem tilbage til filtens hjørner.';

  @override
  String get buddyCalibrationPrepTitle => 'Tre ting først';

  @override
  String get buddyCalibrationRemoveDiceTitle =>
      'Fjern terningerne fra brættet.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy lærer det tomme bræt nu. En terning på filten bliver lært som en del af brættet, og så kan Buddy ikke se terningerne igen i denne session.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Stil brikkerne op til starten af et spil.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Tredive brikker på kendte pladser lærer Buddy brættets to farver, uden at du behøver fortælle den, hvad de er.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Få hele spillefladen med på billedet.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Lad derefter telefonen stå. Hvis den flytter sig, siger Buddy til, så du kan justere hjørnerne.';

  @override
  String get buddyCalibrationBoardKind => 'Hvilken type bræt er det?';

  @override
  String get buddyCalibrationFlatBoard => 'Fladt bræt';

  @override
  String get buddyCalibrationFoldingBoard => 'Foldebræt';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Et foldebræt har brug for fire ekstra håndtag ved hængslets samlinger.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy-tilstand holder øje med et fysisk bræt og kan derfor ikke starte uden kameraet. Resten af appen fungerer som normalt.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Hængselsamling $number af 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Bræthjørne $number af 4';
  }

  @override
  String get buddyNudgeLeft => 'Flyt lidt til venstre';

  @override
  String get buddyNudgeRight => 'Flyt lidt til højre';

  @override
  String get buddyNudgeUp => 'Flyt lidt op';

  @override
  String get buddyNudgeDown => 'Flyt lidt ned';

  @override
  String get buddyCalibrationProblemCorners =>
      'De fire hjørner afgrænser ikke et bræt. Træk hvert håndtag til et hjørne af spillefladen, og prøv igen.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'De otte punkter afgrænser ikke et foldebræt. Placer fire ved spillefladens hjørner og fire ved hængselsamlingerne, og prøv igen.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Jeg kan ikke se selve brættet — det er helt dækket eller skjult i skygge eller genskin. Ryd brættet, få mere lys, og prøv igen.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Jeg kan ikke se $region — der ligger måske noget på det, eller brættets hjørne er for mørkt. Ryd det, eller få mere lys, og prøv igen.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'De to sæt brikker ligner hinanden for meget herfra. Mere lys eller en vinkel med mindre genskin plejer at hjælpe.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Brikkerne står ikke i startpositionen — felt $number har den forkerte farve. Stil brættet op til starten af et spil, og kalibrer igen.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Der er så meget lys på brættet, at farverne flyder sammen. Dæmp lyset, eller flyt telefonen, så lampen ikke skinner direkte tilbage.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Jeg kan læse brættet, men det ligner ikke et spil, der skal til at starte. Stil brikkerne op til spillets start, og kalibrer igen.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Jeg kan læse brættet, men ikke se, hvor langt en brik står bag en anden — så ville jeg tælle forkert. Lidt mere lys på de nære felter eller en lidt højere kameravinkel plejer at hjælpe.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Jeg kan ikke se hele brættet. Flyt telefonen længere væk, eller træk hjørnerne til spillefladen.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Jeg kan ikke længere se hele brættet — $region er uden for billedet. Ret kameraet ind igen, eller kontrollér hjørnerne.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Det ligner startpositionen.';

  @override
  String get buddyConfirmNoCheckers =>
      'Jeg kan ikke se nogen brik, hvor spillet starter. Stil brikkerne op til spillets start, og prøv igen.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Brættet står ikke i spillets startposition: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region ser tomt ud, men spillet starter med $side dér';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region har $side, men spillet starter med feltet tomt';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region har $observed, men spillet starter med $expected dér';
  }

  @override
  String get buddyReadabilityMotion =>
      'Hold stille et øjeblik — jeg mister brættet, mens telefonen bevæger sig.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Billedet, jeg får, er ikke fra det bræt, jeg blev indstillet til, så jeg kan ikke finde rundt i det. Indstil brættet igen herfra.';

  @override
  String get buddyReadabilityBlur =>
      'Billedet er for uskarpt til, at jeg kan læse brættet. Vent et øjeblik, mens kameraet fokuserer.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Brættet står ikke længere, hvor det stod, da jeg lærte det. Ret hjørnerne ind igen, så fortsætter jeg spillet med det samme.';

  @override
  String get buddyReadabilityOccluded =>
      'Noget dækker en del af brættet. Jeg fortsætter, så snart det er frit.';

  @override
  String get buddyReadabilityClear => 'Jeg kan se brættet.';

  @override
  String get buddyReadabilityColorChanged =>
      'Lyset på brættet har skiftet farve, så brættet ikke længere ser ud, som da jeg lærte det. Ret hjørnerne ind igen i dette lys, så fortsætter jeg spillet.';

  @override
  String get buddyReadabilityTooDark =>
      'Det er for mørkt til at læse brættet. Mere lys, så fortsætter jeg, hvor vi slap.';

  @override
  String get buddyReadabilityTooBright =>
      'Der er så meget lys på brættet, at farverne flyder sammen. Dæmp lyset, eller flyt telefonen, så lampen ikke skinner direkte tilbage.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy kan stadig ikke se sit træk — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nDu kan stadig spille matchen: indtast hvert kast på terningefeltet, og tryk dine træk ind på brættet nedenfor.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kameraet kunne ikke startes. Kontrollér tilladelserne, og prøv igen.';

  @override
  String buddyRegionPoint(int number) {
    return 'felt $number';
  }

  @override
  String get buddyRegionBar => 'baren';

  @override
  String get buddyRegionWhiteTray => 'Hvids udslagsbakke';

  @override
  String get buddyRegionBlackTray => 'Sorts udslagsbakke';

  @override
  String get buddyRegionDiceZone => 'midten af brættet';

  @override
  String get buddyCalibrationProblemVisible =>
      'Jeg kan ikke se hele brættet. Flyt telefonen længere væk, eller træk hjørnerne til spillefladen.';

  @override
  String buddyConfirmMore(int number) {
    return ' (og $number mere)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'I kaster én terning hver. Terningernes øjne afgør, hvem der starter.';

  @override
  String get buddyDiceOpeningFirst => 'Hvids terning';

  @override
  String get buddyDiceOpeningSecond => 'Sorts terning';

  @override
  String get buddyDiceRegularCaption =>
      'De to synlige terninger, uanset rækkefølge.';

  @override
  String get buddyDiceRegularFirst => 'Den ene terning';

  @override
  String get buddyDiceRegularSecond => 'Den anden';

  @override
  String get evaluationEngine => 'Evalueringsmotor';

  @override
  String get parallelEngineAnalysis => 'Analyser med begge motorer';

  @override
  String get parallelEngineExplanation =>
      'Sammenlign separate råd fra wildbg og GNUbg i vejlederen.';

  @override
  String get engineComparison => 'Sammenligning af motorer';

  @override
  String get engineWinChance => 'Vinderchance';

  @override
  String get buddyBar => 'baren';

  @override
  String get buddyOff => 'slukket';

  @override
  String get buddyHitSuffix => ', slår';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Flyt en brik fra $from til $to ​​$hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Flyt $count brikker fra $from til $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Tag en brik af fra $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Tag $count brikker af fra $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Jeg rullede $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Du rullede $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Begge rullede $die. Rul igen.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Ingen spil, så det er din tur.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Ingen leg, så det er Buddys tur.';

  @override
  String get buddySpeechNoPlayPass => 'Ingen spil - din tur går forbi.';

  @override
  String get buddySpeechNoPlayBack => 'Ingen spil, så det er tilbage til dig.';

  @override
  String get buddySpeechIllegalPlay => 'Det er ikke et lovligt spil.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Det er ikke helt rigtigt. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Brættet adskiller sig fra spillet: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: spillet forventer $expected $side brikker; kameraet ser $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Jeg tager dit ord for det. Jeg kunne ikke se det ene land, så hvis vi er kommet fra hinanden, vil det dukke op som et teaterstykke, jeg ikke kan læse.';

  @override
  String get buddySpeechBuddyDouble => 'Jeg fordobler — tage eller slippe?';

  @override
  String get buddySpeechYouDouble => 'Du fordobler.';

  @override
  String get buddySpeechBuddyTakes => 'jeg tager.';

  @override
  String get buddySpeechYouTake => 'Du tager.';

  @override
  String get buddySpeechBuddyDrops => 'jeg dropper.';

  @override
  String get buddySpeechYouDrop => 'Du slipper.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Jeg vinder dette spil: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Du vinder dette spil: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Det er matchen for mig.';

  @override
  String get buddySpeechMatchWinnerYou => 'Du vinder kampen.';

  @override
  String get buddyTutorLastPlayBest =>
      'Dit sidste spil matchede motorens bedste.';

  @override
  String get buddyTutorLastPlayClose =>
      'Dit sidste spil var tæt på motorens bedste.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Til dit sidste spil foretrak motoren $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Det efterlader $best modstående brikker på bjælken i stedet for $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Det efterlader $best klatter i stedet for $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Den har $best hjemmebordspoint i stedet for $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Den har $best brikker fra i stedet for $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Rangeringen vejer estimerede gevinster og gammons; ingen enkelt bordfunktion forklarer det.';

  @override
  String buddySpeechPlay(String move) {
    return 'Spil $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Jeg rullede $dice – $move';
  }
}
