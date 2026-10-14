// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get homeTagline => 'Kehitä peliäsi valmentajan avulla';

  @override
  String get settings => 'Asetukset';

  @override
  String get playVsComputer => 'Pelaa tietokonetta vastaan';

  @override
  String get twoPlayers => 'Kaksi pelaajaa';

  @override
  String get playNearby => 'Pelaa lähistöllä';

  @override
  String get playOnline => 'Pelaa verkossa';

  @override
  String get learningPractice => 'Opi ja harjoittele';

  @override
  String get gamesArchive => 'Peliarkisto';

  @override
  String get followSystem => 'Käytä laitteen kieltä';

  @override
  String get white => 'Valkoinen';

  @override
  String get black => 'Musta';

  @override
  String get random => 'Satunnainen';

  @override
  String get startMatch => 'Aloita peli';

  @override
  String get tutor => 'Valmentaja';

  @override
  String get noMovesPass => 'Ei siirtoja — ohita';

  @override
  String get undo => 'Kumoa';

  @override
  String get confirm => 'Vahvista';

  @override
  String get roll => 'Heitä';

  @override
  String get hint => 'Vihje';

  @override
  String get tutoringStyle => 'Opetustyyli';

  @override
  String get tutorStyleCoach => 'Valmentaja';

  @override
  String get tutorStyleHintsOnly => 'Vain vinkkejä';

  @override
  String get tutorStyleTryFirst => 'Kokeile ensin';

  @override
  String get tutorCoachDescription =>
      'Peliasennon ohjeet, palautetta siirroista, vinkkejä ja tuplauskuution neuvoja.';

  @override
  String get tutorHintsDescription =>
      'Parhaat siirrot näytetään pyydettäessä. Reaaliaikaiset peliasento-ohjeet ja automaattinen siirtopalaute ovat pois käytöstä.';

  @override
  String get tutorTryFirstDescription =>
      'Tee oma siirtosi ennen kuin näet järjestetyt vinkit tai arvion; peliasennon ohjeet pysyvät käytössä.';

  @override
  String get tutorCustomDescription =>
      'Mukautettu yhdistelmä. Muuta mitä tahansa alla olevaa asetusta.';

  @override
  String get tutorBestMoveHints => 'Vinkit parhaaseen siirtoon';

  @override
  String get tutorRevealRankedPlays =>
      'Näytä järjestetyt siirrot päätöksen tueksi';

  @override
  String get tutorMoveExplanations => 'Siirtojen selitykset';

  @override
  String get tutorCompareEstimates => 'Vertaa arvioita ja pelilaudan muutoksia';

  @override
  String get tutorGameCommentary => 'Pelikommentointi';

  @override
  String get tutorPositionPrompts =>
      'Peliasento-ohjeita ja palautetta jokaisen siirron jälkeen';

  @override
  String get tutorCubeAdvice => 'Kuutioneuvot';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Ottelutilanteen huomioivat tuplaus-, otto- ja passausneuvot';

  @override
  String get tutorTryMoveFirst => 'Kokeile siirtoa ensin';

  @override
  String get tutorStageBeforeHints =>
      'Tee nykyinen siirtosi ennen vinkkien tai arvion näyttämistä';

  @override
  String get tutorStaticEstimateNote =>
      'Nopea staattinen arvio (0 siirtoa eteenpäin, ei simulaatioita); huomautukset kuvaavat laudan muutoksia ja mahdollisia vastauksia, eivät lupaa tulevasta.';

  @override
  String get tutorWhatToWatchNext => 'Mitä kannattaa seurata seuraavaksi';

  @override
  String get tutorMoreBoardDetails => 'Lisää tietoja laudasta';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Arviot ja niiden toiminta';

  @override
  String get tutorEstimateLimitations =>
      'Syvyys: staattinen neuroverkon arvio jokaisen laillisen siirron jälkeen (0 siirtoa eteenpäin), ilman simulaatioita tai tulevien vastausten hakua. MWC huomioi tulosarvioissa ottelutilanteen ja nykyisen kuution, mutta ei mallinna tulevia kuutiopäätöksiä. Jos tulosta ei ole saatavilla, kuutioton equity tarkoittaa odotettuja pisteitä kuutiolla 1. Pelilaudan havainnot kuvaavat siirtoa, eivät neuroverkon sisäistä päättelyä. Lähes tasaiset arviot eivät tarkoita varmuutta; kalibroitua luottamusväliä ei ole.';

  @override
  String get tutorPointNumberNote =>
      'Opetusmuistiinpanojen pisteet lasketaan vuorossa olevan pelaajan kotilaudasta.';

  @override
  String get tutorHittingRollNote =>
      'Lyöntimahdollisuuksien määrä sisältää kaikki 36 järjestettyä noppatulosta ja lailliset suorat tai epäsuorat lyönnit; kyse on mahdollisuuksista, ei ennusteesta vastustajan valinnasta.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Tälle siirrolle ei ole arvioituja vaihtoehtoja.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pakotettu ohitus ei sisällä nappuloiden siirtopäätöstä.';

  @override
  String get settingsReset => 'Palauta oletukset';

  @override
  String get settingsAppLanguage => 'Sovelluksen kieli';

  @override
  String get settingsTheme => 'Teema';

  @override
  String get settingsThemeSystem => 'Järjestelmän mukaan';

  @override
  String get settingsThemeLight => 'Vaalea';

  @override
  String get settingsThemeDark => 'Tumma';

  @override
  String get settingsAnimationSpeed => 'Animaation nopeus';

  @override
  String get settingsAnimationNone => 'Ei mitään';

  @override
  String get settingsAnimationNormal => 'Tavallinen';

  @override
  String get settingsAnimationFast => 'Nopea';

  @override
  String get settingsDiceRollAnimation => 'Nopanheiton animaatio';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Pyöräytä noppia ennen jokaista heittoa';

  @override
  String get settingsDefaultMatchLength => 'Ottelun oletuspituus';

  @override
  String get settingsDefaultDifficulty => 'Oletusvaikeustaso';

  @override
  String get settingsDifficultyEasy => 'Helppo';

  @override
  String get settingsDifficultyMedium => 'Keskitaso';

  @override
  String get settingsDifficultyHard => 'Vaikea';

  @override
  String get settingsDifficultyExpert => 'Asiantuntija';

  @override
  String get settingsTutorModeDefault => 'Ohjaajan oletustila';

  @override
  String get settingsTutorAuto => 'Automaattinen';

  @override
  String get settingsTutorOn => 'Käytössä';

  @override
  String get settingsTutorOff => 'Pois käytöstä';

  @override
  String get settingsTutorModeHelp =>
      'Automaattinen ottaa ohjaajan käyttöön kaikilla tietokoneen vaikeustasoilla. Käytössä ja Pois määrittävät paikallisten otteluiden aloitusvalinnan. Lähi- ja verkkopeleissä ei ole avustusta; tallennetut pelit voi tarkistaa jälkikäteen. Opetusasetukset tallennetaan tälle laitteelle.';

  @override
  String get settingsTutorPreferences => 'Ohjaajan asetukset';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Tallennetut oletukset tuleville otteluille';

  @override
  String get settingsTutorSaveError =>
      'Ohjaajan asetusten tallennus epäonnistui.';

  @override
  String get settingsGameplay => 'Pelaaminen';

  @override
  String get settingsMoveHighlights => 'Siirtojen korostus';

  @override
  String get settingsMoveHighlightsHelp =>
      'Ympyröi valittavat nappulat ja korosta kohderuudut';

  @override
  String get settingsDragToMove => 'Siirrä vetämällä';

  @override
  String get settingsDragToMoveHelp =>
      'Vedä nappula kohteeseen (napautus toimii aina)';

  @override
  String get settingsCombinedMoves => 'Yhdistetyt siirrot';

  @override
  String get settingsCombinedMovesHelp =>
      'Yksi napautus siirtää nappulaa molempien noppien mukaan';

  @override
  String get settingsRotateBoard => 'Käännä lautaa vuorojen välillä';

  @override
  String get settingsRotateBoardHelp =>
      'Yhdellä laitteella pelattaessa: käännä näkymä vuorossa olevalle pelaajalle';

  @override
  String get settingsPassDevice => 'Laitteen luovutusnäyttö';

  @override
  String get settingsPassDeviceHelp =>
      'Peitä lauta pelaajien välissä, kun laitetta kierrätetään';

  @override
  String get settingsShowScore => 'Näytä pisteet';

  @override
  String get settingsShowScoreHelp =>
      'Näytä ottelun tämänhetkinen pistetilanne otsakkeessa';

  @override
  String get settingsBuddyMode => 'Buddyn puhetapa';

  @override
  String get settingsBuddyTerse => 'Tiivis';

  @override
  String get settingsBuddyFriendly => 'Ystävällinen';

  @override
  String get settingsBuddyTerseHelp =>
      'Näin Buddy lukee siirron ääneen: ”13/8, 24/22” – lautapelissä käytetty merkintätapa.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Näin Buddy lukee siirron ääneen: ”Siirrä yksi nappula pisteestä 13 pisteeseen 8 ja toinen pisteestä 24 pisteeseen 22.”';

  @override
  String get settingsListenForDice => 'Kuuntele noppia';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy reagoi lautaan nopeammin kuullessaan heiton. Pois käytöstä ei muuta muuta.';

  @override
  String get settingsDiagnostics => 'Diagnostiikka';

  @override
  String get settingsErrorLog => 'Virheloki';

  @override
  String get settingsErrorLogHelp =>
      'Viimeisimmät virheet, jotka voi kopioida vikailmoitukseen';

  @override
  String get settingsReportBug => 'Ilmoita virheestä';

  @override
  String get settingsReportBugHelp => 'Avaa ohjattu vikailmoitus GitHubissa';

  @override
  String get settingsSuggestIdea => 'Ehdota ideaa';

  @override
  String get settingsSuggestIdeaHelp =>
      'Auta meitä kehittämään ohjaajaa ja peliä';

  @override
  String get settingsAbout => 'Tietoja';

  @override
  String get settingsOpenSourceLicenses => 'Avoimen lähdekoodin lisenssit';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Peli päättyi.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Käy siirrot läpi ja etsi harjoittelua vaativa päätös.';

  @override
  String get tutorPhraseCubeOffered => 'Tuplauskuutiota on tarjottu.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Päätä otatko vai luovutko ennen nappuloiden siirron suunnittelua.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Ottelun pistetilanne muuttaa lisäpanoksen arvoa.';

  @override
  String get tutorPhraseResignationOffered => 'Luovutusta on tarjottu.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Vertaa tarjottuja pisteitä asemaan ennen kuin hyväksyt luovutuksen tai jatkat.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Tällä heitolla ei ole laillista siirtoa.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Pakotettu ohi jättäminen ei ole virhe; odota seuraavaa heittoa.';

  @override
  String get tutorPhraseOnlyOneResult => 'Vain yksi laillinen lopputilanne.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Tee pakotettu siirto. Tällä heitolla ei ole arvioitavaa valintaa.';

  @override
  String get tutorPhrasePipCountsLevel => 'Pip-määrät ovat tasan.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Olet $count pippiä edellä.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Olet $count pippiä jäljessä.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Sinulla on $count nappulaa baarilla: tuo ne ensin takaisin peliin.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Tuo nappula ensin sisään ja etsi sitten turvallinen laskeutumispaikka.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Vastustajalla on kotilaudallaan $count suljettua pistettä.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Nappuloiden poisottokilpailu.';

  @override
  String get tutorPhrasePureRace => 'Puhdas kilpajuoksu.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Ota nappuloita pois ja jätä seuraavaa heittoa varten hyödyllinen jakauma.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Tuo takanappulat kotiin kasaamatta liikaa samalle pisteelle.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Pelaajat ovat ohittaneet toisensa; uusia osumia ei voi enää tehdä.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakti on edelleen tärkeä.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Vastustajalla on $count nappulaa baarilla.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Pidä lautasi suljettuna, kun tuot loput nappulat kotiin.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Rakenna tai säilytä kotilautasi suljettuna vastustajan yrittäessä päästä sisään.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Sinulla on $count kotilautapistettä; kukin sulkee yhden sisääntulonumeron.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakti $count pisteen sulkujonolla.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Vertaa sulkujonon pidentämistä varanappuloiden säilyttämiseen sen ylläpitämiseksi.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count varanappulaa voi liikkua avaamatta pistettä heti.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakti ankkurin kanssa pisteissä $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Vertaa takanappuloiden kotiintuontia turvallisen ankkurin säilyttämiseen.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Pidä turvallinen jalansija mielessä etsiessäsi osumaa tai parempaa asemaa.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Ankkuria ei voi lyödä, mutta nappuloilla on vielä pitkä matka kotiin.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakti: molemmat puolet voivat yhä uhata osumalla.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Etsi hyödyllisiä pisteitä ja arvioi sitten yksittäisten nappuloiden jättämisen riski.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Sinulla on $count kotilautapistettä ja jätät $otherCount yksittäistä nappulaa alttiiksi.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Valitse nappula aloittaaksesi siirron.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Aloita laillinen siirto nähdäksesi kommentit.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Osuit $count vastustajan nappulaan.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Toit $count nappulaa sisään baarilta.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return 'Otit $count nappulaa pois laudalta.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Teit pisteet $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Nappulasi pisteessä $point on nyt yksin ja lyötävissä.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Pisteen $point ylimääräinen nappula voi liikkua myöhemmin avaamatta pistettä.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Käytä jäljellä olevat nopat ennen koko siirron arviointia.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Kaikki 15 nappulaa ovat pois: voitit pelin.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Osuma voittaa aikaa, kun vastustaja yrittää tulla takaisin laudalle.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Tehokas poisotto vähentää nappuloita ja jättää hyödyllisiä lukuja seuraavaan heittoon.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Tuo takimmaiset nappulat kotiin ja sijoita ne hyödyllisille poisottopaikoille.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Poisotto edistää peliä, mutta kontakti jättää vielä osumavaaran.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Sisääntulo palauttaa nappulan peliin; etsi sille seuraavaksi turvallinen piste.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Uusi kotilautapiste sulkee yhden sisääntulonumeron mahdollisen osuman jälkeen.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Pidempi sulkujono sulkee lisää laskeutumispaikkoja; varanappulat auttavat pitämään sen ehjänä.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Ankkurista luopuminen vie eteenpäin mutta luovuttaa turvallisen jalansijan.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Uusi ankkuri antaa takanappuloille turvallisen jalansijan.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Yksinäisen nappulan suojaaminen poistaa vastustajalta kohteen.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Valinta on kehityksen ja turvallisuuden välillä: rakentavat nappulat voivat myös joutua kohteiksi.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Koko siirto on valmis; vahvista se napauttamalla Vahvista.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Tällä heitolla ei ole nappulasiirtovaihtoehtoa, joten sitä ei arvioida päätöksenä.';

  @override
  String get tutorMoveTopVerdict => 'Tämän aseman paras valinta.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Moottori suosii tässä toista siirtoa.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Ero parhaaseen siirtoon: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Tämän siirron jälkeen: voiton todennäköisyys $winPercent %, gammon tai parempi voitto $winGammonPercent %, gammon tai pahempi tappio $loseGammonPercent %. Arviot ovat siirtovuorossa olevan näkökulmasta.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Arvioitu otteluvoiton todennäköisyys: $percent %.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Kaikki 15 nappulaa ovat poissa laudalta: voitit pelin.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Käytä osumaa ajan voittamiseen vastustajan palatessa laudalle. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Pidä kotilautapisteesi suljettuina, jotta sisääntulo vaikeutuu.';

  @override
  String get tutorMovePlanHitBuild =>
      'Rakenna lisää kotilautapisteitä, jotta tulevasta osumasta toipuminen on vastustajalle vaikeampaa.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Pyri tehokkaaseen poisottoon: poista nappuloita ja jätä hyödyllisiä lukuja seuraavaan heittoon.';

  @override
  String get tutorMovePlanRaceHome =>
      'Tuo takanappulat kotiin ja jaa ne hyödyllisille poisottopaikoille.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Ota nappuloita pois, mutta tarkkaile vastustajan takanappuloita: kontaktissa irrallinen poisotettava nappula voi joutua kohteeksi.';

  @override
  String get tutorMovePlanReentry =>
      'Palaa peliin ja etsi sitten turvallinen piste sisään tulleelle nappulalle.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Vahvista kotilautaasi. Uusi suljettu piste vie yhden sisääntulonumeron ja tekee tulevasta osumasta tehokkaamman.';

  @override
  String get tutorMovePlanPrime =>
      'Pidä suljettujen pisteiden jono yhtenäisenä. Säilytä varanappulat, jotta myöhemmät heitot eivät pakota avaamaan sitä.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Ankkurista luopuminen vie takanappuloita eteenpäin mutta luovuttaa turvallisen jalansijan. Seuraa niiden alttiutta matkalla kotiin.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Käytä uutta ankkuria turvallisena jalansijana ja paranna samalla muuta asemaasi.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Kokoa nappulasi. Yksittäisen nappulan suojaaminen poistaa kohteen ja säilyttää käyttökelpoisia laskeutumispaikkoja.';

  @override
  String get tutorMovePlanSafety =>
      'Tasapainota kehitys ja turvallisuus: siirrä rakentajia hyödyllisille pisteille ja tarkista, mitkä yksittäiset nappulat voi lyödä.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Laillista nappulasiirtoa ei ole: vuoro on ohitettava.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nappulaa',
      one: 'nappulan',
    );
    return 'Lyöt $count vastustajan $_temp0; vastustajan on tultava baarilta sisään ennen muiden nappuloiden liikuttamista.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Tuo $count nappulaa sisään baarilta.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'nappulaa',
      one: 'nappula',
    );
    return 'Ota $count $_temp0 pois laudalta.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Teet pisteet $points. Vähintään kaksi nappulaa pitää pisteen hallussa ja estää vastustajan laskeutumisen siihen.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Luovut suljetuista pisteistä $pointLabel $points. Ne eivät enää estä vastustajaa.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Et jätä yksittäisiä nappuloita alttiiksi (ennen $previousCount). Lyötävää yksinäistä nappulaa ei ole.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    return 'Jätät $count yksinäistä nappulaa alttiiksi (ennen $previousCount). Tarkista, yltääkö vastustaja niihin, ennen kuin valitset turvallisuuden muun hyödyn sijaan.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Pisin suljettujen pisteiden jono: $count (ennen $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Kuuden pisteen primeä ei voi ylittää, kun se pysyy suljettuna.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Pidä rakentajia lähellä, jos haluat jatkaa tai säilyttää tämän jonon.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Suljetuilla pisteillä on $count varanappulaa kahden perusnappulan lisäksi. Varanappulan siirtäminen voi säilyttää pisteen; jommankumman kahdesta siirtäminen avaa sen.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ankkurit vastustajan kotilaudalla: $points (ennen $previousPoints). Ankkuri suojaa nappuloita osumilta; siitä luopuminen vaihtaa turvapaikan kilpajuoksussa etenemiseen.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Puhdas kilpajuoksu: pelaajat ovat ohittaneet toisensa eikä kummallakaan ole nappulaa baarilla. Osumia ei enää voi tehdä; tehokas poisotto ratkaisee.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Vastustaja ei voi lyödä nappulaa tällä asemalla millään laillisella seuraavalla heitolla. Kontakti jatkuu, joten myöhemmät siirrot voivat luoda uusia osumapaikkoja.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Vastustaja voi lyödä $count heitolla $total:sta. Esimerkiksi $dieOne–$dieTwo antaa laillisen osuman pisteeseen $point. Osuma on mahdollinen, ei varma valinta.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Kotilaudallasi on $closedPoints suljettua pistettä. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Vastustaja ei voi tulla laudalle ennen kuin jokin piste avautuu.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Avoimen sisääntulopisteen sisältävä heitto voi tuoda nappulan takaisin baarilta.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Parhaan siirron arvioitu voittomahdollisuus on $delta prosenttiyksikköä $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'suurempi';

  @override
  String get tutorMoveComparisonLower => 'pienempi';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Se voi silti sijoittua korkeammalle, koska gammonin ja backgammonin arvo riippuu nykyisestä $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'panos';

  @override
  String get tutorMoveComparisonMatchScore => 'ottelun pistetilanne';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Paras siirto jättää baarille $bestCount vastustajan nappulaa sinun $playedCount nappulasi sijaan. Baarilla olevan nappulan on tultava sisään ennen kuin muut liikkuvat.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Paras siirto pitää kotilaudalla $bestCount pistettä sinun $playedCount pisteesi sijaan; osuman jälkeen $entryDifference sisääntulopistettä.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'sulkee enemmän';

  @override
  String get tutorMoveComparisonLeavingMore => 'jättää enemmän avoimeksi';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Paras siirto sallii vastustajan osuman $bestCount heitolla 36:sta, sinun siirtosi $playedCount heitolla. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Tämä pienentää välitöntä takaisinlyönnin riskiä.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Vertaa lisäaltistusta siihen, mitä siirto voittaa muualla.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Parhaan siirron pisin suljettujen pisteiden jono on $bestCount, sinun siirrossasi $playedCount; vertaa muuria sen ylläpitämiseen käytettävissä oleviin nappuloihin.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Parhaan siirron ankkurit ovat $bestPoints, sinun siirrossasi $playedPoints. Ankkuri säilyttää turvallisen laskeutumispaikan; siitä luopuminen tuo nappulat lähemmäs kotia.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Paras siirto on ottanut pois $bestCount nappulaa sinun $playedCount nappulasi sijaan. Jokainen poistettu nappula on yksi vähemmän myöhemmin otettavana.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Molemmissa siirroissa välitön osumariski, kotilautapisteet, ankkurit ja pois otetut nappulat ovat samat. Vertaa laskeutumispaikkoja: seuraava heitto voi käyttää nappuloita eri tavoin.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Paras siirto lähettää enemmän vastustajan nappuloita baarille ja viivästyttää tämän muita siirtoja.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Paras siirto sulkee enemmän kotilautapisteitä ja vaikeuttaa sisääntuloa osuman jälkeen.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Paras siirto sallii vähemmän välittömiä osumaheittoja ja pienentää takaisinlyönnin vaaraa.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Paras siirto pitää pidemmän suljettujen pisteiden jonon.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Paras siirto säilyttää enemmän turvallisia ankkureita vastustajan kotilaudalla.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Paras siirto ottaa enemmän nappuloita pois, joten myöhemmin on vähemmän poistettavaa.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Tämä siirto jättää $playedCount yksittäistä nappulaa; paras siirto jättää $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Paras siirto säilyttää turvallisen ankkurin pisteessä $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Paras siirto sulkee enemmän sisääntulopisteitä siltä varalta, että nappulasi lyödään.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Siirtojen välittömät riskit ovat samankaltaiset; vertaa, mitkä laskeutumispaikat pysyvät hyödyllisinä seuraavalla heitolla.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value MWC-prosenttiyksikköä';
  }

  @override
  String get tutorMovePointSingular => 'piste';

  @override
  String get tutorMovePointPlural => 'pistettä';

  @override
  String get tutorMoveNoPoints => 'ei mitään';

  @override
  String get gameTutorCommentaryOff => 'Pelin kommentointi ei ole käytössä.';

  @override
  String get gameTutorToolsAvailable =>
      'Avaa ohjaaja käyttääksesi valitsemiasi työkaluja.';

  @override
  String get gameTutorNextRoll => 'Heitä seuraavaksi.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Tästä tallennetusta siirrosta ei ole arvioitua selitystä.';

  @override
  String get gameTutorAnalysisUnavailable => 'analyysi ei ole saatavilla';

  @override
  String get gameTutorReviewing => 'tarkistetaan…';

  @override
  String get gameTutorTryYourPlayFirst => 'Kokeile ensin omaa siirtoasi.';

  @override
  String get gameTutorKeepBuilding => 'Jatka siirtosi rakentamista.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Tee kokonainen laillinen siirto ennen ohjeiden tai vihjeiden näyttämistä.';

  @override
  String get gameTutorReadyToConfirm => 'Valmis vahvistettavaksi';

  @override
  String get gameTutorPlayTakingShape => 'Siirtosi on muotoutumassa.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Vahvista siirto tai kumoa se ja mieti uudelleen.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Käytä jäljellä olevat nopat tai kumoa siirto.';

  @override
  String get gameTutorComputerConsidering => 'Tietokone miettii siirtoaan.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Valmis siirto käydään läpi tässä.';

  @override
  String get gameTutorYourPlay => 'Sinun siirtosi';

  @override
  String get gameTutorComputer => 'Tietokone';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Sinun siirtosi: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'pakotettu siirto';

  @override
  String get gameTutorTopChoice => 'paras valinta';

  @override
  String get gameTutorSoundPlay => 'hyvä siirto';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'toinen siirto voi sopia paremmin';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'toinen siirto sopii tähän asemaan paremmin';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'selvästi vahvempi siirto oli mahdollinen';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side on arvion mukaan etulyöntiasemassa.';
  }

  @override
  String get gameTutorPositionEven => 'Asema on suunnilleen tasan.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Pelattu: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Paras siirto: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Näytä siirrot paremmuusjärjestyksessä';

  @override
  String get tutorReviewRecordedMove =>
      'Napauta lokissa olevaa valmista siirtoa, niin näet sen analyysin tässä.';

  @override
  String get tutorTopPlays => 'Parhaat siirrot';

  @override
  String get tutorNoHintsAvailable => 'Vihjeitä ei ole saatavilla.';

  @override
  String get tutorPreviewThenConfirm =>
      'Napauta siirtoa, niin näet sen laudalla. Vahvista sitten siirto.';

  @override
  String get tutorTopChoiceForPosition => 'Aseman paras vaihtoehto';

  @override
  String get tutorAlternativePlay => 'Vaihtoehtoinen siirto';

  @override
  String get tutorEngineEstimates => 'Pelimoottorin arviot';

  @override
  String get tutorEstimateScope =>
      '0-ply-arvio · nykyinen tulos ja panos · tulevia tuplauksia ei huomioida';

  @override
  String get tutorEquity => 'Odotusarvo';

  @override
  String get tutorMwcPercent => 'Ottelun voittotodennäköisyys %';

  @override
  String get tutorNearTiesNote =>
      'Lähes tasaiset arviot voivat muuttua tarkemmassa analyysissä.';

  @override
  String get tutorWhyThisPlay => 'Miksi tämä siirto?';

  @override
  String get tutorCompareAlternative => 'Vertaa tätä vaihtoehtoa';

  @override
  String get gameTutorCubeTake => 'Tutor: ota';

  @override
  String get gameTutorCubePass => 'Tutor: passaa';

  @override
  String get practiceScreenTitle => 'Harjoittele päätöstä';

  @override
  String get practiceUnavailable =>
      'Tämä harjoitusasema ei ole enää saatavilla.';

  @override
  String get practiceSubmitError =>
      'Tätä yritystä ei voitu arvioida tai tallentaa. Edistymisesi ei muuttunut. Yritä uudelleen.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side siirtää · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historiallista tulosta ei ole saatavilla; arviointi käyttää kuutiotonta equityä.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Tulos: $whiteLabel $whiteScore – $blackLabel $blackScore, otteluun $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford-peli';

  @override
  String get practiceNoDoublingCube => 'Ei tuplauskuutiota.';

  @override
  String practiceCubeValue(int value) {
    return 'Kuution arvo $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Kuution aiemmat säännöt eivät ole tiedossa.';

  @override
  String get practiceAfterBestPosition => 'Asema parhaan siirron jälkeen';

  @override
  String get practiceAfterYourAnswerPosition => 'Asema vastauksesi jälkeen';

  @override
  String get practiceFindYourPlayPrompt =>
      'Etsi siirtosi laudalta ja tarkista vastaus. Vihjeitä ei näytetä.';

  @override
  String get practiceUndo => 'Kumoa';

  @override
  String get practiceCheckAnswer => 'Tarkista vastaus';

  @override
  String get practiceRevealNoCredit => 'Näytä vastaus (ei pisteitä)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Vastaus näytetty — muistamisesta ei saa pisteitä.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Paras: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Alkuperäinen peli: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Vastauksesi: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Vastauksesi';

  @override
  String get practiceBestPlayChip => 'Paras siirto';

  @override
  String practiceNextReview(Object date) {
    return 'Seuraava kertaus: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Parhaat ja hyvät vastaukset lasketaan onnistuneiksi muistamisiksi. Ennenaikaiset toistot eivät siirrä aikataulua eteenpäin.';

  @override
  String get practiceBackToLearning => 'Takaisin oppimiseen';

  @override
  String get practiceMarkBest => 'Paras';

  @override
  String get practiceMarkGood => 'Hyvä';

  @override
  String get practiceMarkDubious => 'Kyseenalainen';

  @override
  String get practiceMarkError => 'Virhe';

  @override
  String get practiceMarkBlunder => 'Karkea virhe';

  @override
  String get practiceMarkForced => 'Pakotettu';

  @override
  String get newMatchYourSide => 'Sinun puolesi';

  @override
  String get newMatchTutorMode => 'Tutoritila';

  @override
  String get newMatchTutorDescription =>
      'Opi vihjeiden, selitysten ja pelikommenttien avulla';

  @override
  String get newMatchTutoringOptions => 'Tutorin asetukset';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Tätä ottelua varten; muutettavissa pelin aikana';

  @override
  String get setupMatchLength => 'Ottelun pituus';

  @override
  String get setupDifficulty => 'Vaikeustaso';

  @override
  String get setupDifficultyEasy => 'Helppo';

  @override
  String get setupDifficultyMedium => 'Keskitaso';

  @override
  String get setupDifficultyHard => 'Vaikea';

  @override
  String get setupDifficultyExpert => 'Asiantuntija';

  @override
  String get setupPlayWithoutCube => 'Pelaa ilman kuutiota';

  @override
  String get setupNoCubeThisMatch => 'Tässä ottelussa ei ole tuplauskuutiota';

  @override
  String get analysisTitle => 'Analyysi';

  @override
  String get gameMatchSummary => 'Ottelun yhteenveto';

  @override
  String get gameAnalyzeGame => 'Analysoi peli';

  @override
  String get analysisMetricsTooltip => 'Mitä nämä luvut tarkoittavat?';

  @override
  String analysisError(Object error) {
    return 'Pelin analysointi epäonnistui: $error';
  }

  @override
  String get analysisNoPositions => 'Tässä pelissä ei ole näytettäviä asemia.';

  @override
  String get analysisInProgress => 'Analysoidaan peliä…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Pelattu';

  @override
  String get analysisBest => 'Paras';

  @override
  String get analysisPrevious => 'Edellinen';

  @override
  String get analysisNext => 'Seuraava';

  @override
  String get analysisPositionBeforeCube => 'Asema ennen kuutiopäätöstä';

  @override
  String get analysisPositionAtPoint => 'Asema tässä pelin vaiheessa';

  @override
  String get analysisShowingBestBefore =>
      'Näytetään paras siirto ennen siirtoa';

  @override
  String get analysisShowingBefore => 'Näytetään asema ennen siirtoa';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return '  −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · ei mukana keskiarvoissa';

  @override
  String get analysisNoPlay => '(ei siirtoa)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Paras: $move';
  }

  @override
  String get analysisExplain => 'Selitä';

  @override
  String get analysisSaveForPractice => 'Tallenna harjoitteluun';

  @override
  String get analysisSaveError =>
      'Päätöstä ei voitu tallentaa. Yritä uudelleen.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · tappio $loss';
  }

  @override
  String get analysisCubeDecision => 'Kuutiopäätös';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Pelattu: $action (ottelun voittotodennäköisyys $percent %).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Paras: $action (ottelun voittotodennäköisyys $percent %).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply-arvio vuorossa olevan pelaajan näkökulmasta. Olettaa optimaalisen otto- tai passausvastauksen. Tuplan hyväksymisen haarassa käytetään kuution eliniän likimääräistä kerrointa 0,7, eikä tulevien tuplausmahdollisuuksien koko hakua tehdä. Syvempi analyysi voi muuttaa tulosta.';

  @override
  String get analysisClose => 'Sulje';

  @override
  String get analysisMoves => 'Siirrot';

  @override
  String get analysisForced => 'Pakotettu';

  @override
  String get analysisMarkBest => 'Paras';

  @override
  String get analysisMarkGood => 'Hyvä';

  @override
  String get analysisMarkDubious => 'Kyseenalainen';

  @override
  String get analysisMarkError => 'Virhe';

  @override
  String get analysisMarkBlunder => 'Karkea virhe';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Keskimääräinen tappio $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count nappulasiirtopäätöstä';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Karkeita virheitä $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Kuutiotappio $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side heittää tuplaamatta';
  }

  @override
  String get metricExplainerTitle => 'Mittarien ymmärtäminen';

  @override
  String get metricExplainerTooltip => 'Mitä nämä luvut tarkoittavat?';

  @override
  String get metricExplainerMwcTitle => 'Ottelun voittotodennäköisyys (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Kun tulos on tiedossa, siirrot järjestetään arvioidun otteluvoiton todennäköisyyden mukaan. Tappio ilmoitetaan prosenttiyksikköinä (pp): 1 pp tarkoittaa, että 51 % laskee 50 %:iin. Mukana ovat nykyinen kuution panos sekä gammon- ja backgammon-tulokset. Pakotettuja passeja ja heittoja, joista seuraa vain yksi laillinen asema, ei lasketa keskiarvoon.';

  @override
  String get metricExplainerSearchTitle => 'Haku ja epävarmuus';

  @override
  String get metricExplainerSearchBody =>
      'Nappulasiirtojen järjestys perustuu staattiseen 0-ply-arvioon siirron jälkeen, ei rollouteihin. Otteluarvoissa käytetään ottelun equity-taulukkoa eikä huomioida tulevia kuutioita. Kuutioarvioissa hyväksytyn tuplan haarassa käytetään osittaista 0,7 kuution elinikäarviota. Kumpikaan ei ole täysi kuutiollinen haku. Yli 25 pisteen takamatkoissa käytetään taulukon 25 pisteen rajaa. Lähes tasaiset tulokset voivat muuttua syvemmässä analyysissä; kalibroitua luottamusväliä ei ole.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Jos tulosta ei ole saatavilla, kuutioton equity kertoo, kuinka monta pistettä asema on keskimäärin arvoltaan — odotettu tulos kuution ollessa arvossa 1. +1,0 tarkoittaa odotettua yhden pisteen voittoa; −0,5 puolen pisteen tappiota.';

  @override
  String get metricExplainerEquityLossTitle => 'Equity-tappio (esim. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Vertaamme jokaista pelaamaasi siirtoa pelimoottorin parhaaseen siirtoon. Equity-tappio kertoo, kuinka paljon odotusarvoa siirto menetti. −0,016 tarkoittaa, että siirto oli vain 0,016 pistettä parasta heikompi — pieni lipsahdus. 0,000 tarkoittaa, että löysit parhaan siirron.';

  @override
  String get metricExplainerErrorRateTitle => 'Virheprosentti';

  @override
  String get metricExplainerErrorRateBody =>
      'Keskimääräinen tappio laskee arvioitujen nappulapäätösten keskiarvon näytetyssä yksikössä. Kuutiopäätöksille lasketaan oma keskiarvo. Pienempi luku tarkoittaa, että siirrot ovat lähempänä tämän moottorin parhaita arvioita; kyse ei ole kalibroidusta pelaaja-arviosta.';

  @override
  String get metricExplainerMoveMarksTitle => 'Siirtoluokitukset';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC:n opetusrajat: paras < 0,05 pp, hyvä < 0,5 pp, kyseenalainen < 1,5 pp, virhe < 3 pp, karkea virhe ≥ 3 pp. Nämä ovat opetuskäyttöön tarkoitettuja rajoja, eivät kalibroituja varmuusarvioita tai turnausluokituksia.\n\nKuutiottoman equityn opetusrajat:';

  @override
  String get metricExplainerThresholdBest => 'tappio < 0,001';

  @override
  String get metricExplainerThresholdGood => 'tappio < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'tappio < 0,050';

  @override
  String get metricExplainerThresholdError => 'tappio < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'tappio ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Selvä';

  @override
  String get historyTitle => 'Otteluhistoria';

  @override
  String historyLoadFailed(Object error) {
    return 'Historian lataaminen epäonnistui:\n$error';
  }

  @override
  String get historyEmpty => 'Otteluita ei ole vielä pelattu.';

  @override
  String get historyDeleteConfirmTitle => 'Poistetaanko tämä ottelu?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nOttelu ja kaikki siihen tallennetut pelit poistetaan pysyvästi. Tätä ei voi kumota.';
  }

  @override
  String get actionCancel => 'Peruuta';

  @override
  String get actionDelete => 'Poista';

  @override
  String get historyDeleteFailed => 'Ottelua ei voitu poistaa.';

  @override
  String get historyComplete => 'Valmis';

  @override
  String historyWinner(Object side) {
    return '$side voitti';
  }

  @override
  String get historyUnfinished => 'Kesken';

  @override
  String get historyMatchTitle => 'Ottelu';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Ottelun lataaminen epäonnistui:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Pelien lataaminen epäonnistui:\n$error';
  }

  @override
  String get historyNoGames => 'Pelejä ei ole vielä tallennettu.';

  @override
  String historyGameTitle(int number) {
    return 'Peli $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Valkoinen $whiteScore — $blackScore Musta (otteluun $matchLength)';
  }

  @override
  String get historyModeComputer => 'tietokonetta vastaan';

  @override
  String get historyModeTwoPlayers => 'Kaksi pelaajaa';

  @override
  String get historyModeOnline => 'Verkossa';

  @override
  String get historyModeNearby => 'Pelaa lähellä';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Kesken';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side voitti $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'yksittäinen';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Päivitä oppimistiedot';

  @override
  String get learningOptions => 'Oppimisen asetukset';

  @override
  String get learningResetMenu => 'Nollaa harjoittelun edistyminen';

  @override
  String get learningLoadFailed => 'Oppimistietoja ei voitu ladata.';

  @override
  String get actionRetry => 'Yritä uudelleen';

  @override
  String get learningHeading => 'Opi päätöksistäsi';

  @override
  String get learningIntro =>
      'Edistyminen tallentuu tähän laitteeseen. Tarkastele toistuvia teemoja ja yritä tallennettuja asemia uudelleen näkemättä vastausta. Valkoista ja mustaa voi tarkastella erikseen.';

  @override
  String get learningBothSides => 'Molemmat puolet';

  @override
  String get learningHumansOnly => 'Vain ihmispelaajien päätökset';

  @override
  String get learningHumanOnlyHelp =>
      'Poista käytöstä, jos haluat mukaan tietokoneen ja etäpelaajan päätökset';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions päätöstä · $mistakes parannettavaa · $blunders karkeaa virhettä';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Keskimääräinen tappio ($decisions päätöstä): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Pakotettuja siirtoja ei huomioida. Nämä ovat pelimoottorin arvioita, eivät turnausluokitus.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count tallennettua peliä tarvitsee analyysin tai päivitetyn analyysin.',
      one:
          'Yksi tallennettu peli tarvitsee analyysin tai päivitetyn analyysin.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analysoi tallennetut pelit';

  @override
  String get learningEmptyProfile =>
      'Kehitä oppimisprofiiliasi pelaamalla ja päättämällä peli. Voit myös tallentaa yksittäisiä päätöksiä pelin uusinnasta.';

  @override
  String get learningOpenHistory => 'Avaa otteluhistoria';

  @override
  String get learningRecurringThemes => 'Toistuvat teemat';

  @override
  String get learningNoThemes =>
      'Tässä valinnassa ei ole vielä toistuvia virheteemoja.';

  @override
  String learningThemeDecisions(int count) {
    return '$count päätöstä kannattaa tarkastella uudelleen. Yhdessä asemassa voi olla useita teemoja.';
  }

  @override
  String get learningSaveMistakes => 'Tallenna virheet harjoitteluun';

  @override
  String learningSavedMistakes(int count) {
    return '$count päätöstä on harjoituslistallasi. Aiemmat tallennukset säilyvät.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Osaa päätöksistä ei voitu tallentaa. Valmiit tallennukset säilyvät; yritä uudelleen.';

  @override
  String get learningSpacedPractice => 'Jaksotettu harjoittelu';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due erääntynyt nyt · $saved tallennettu · $attempts yritystä · $successes onnistunutta muistamista';
  }

  @override
  String get learningIntervalsHelp =>
      'Onnistunut ajallaan tehty kertaus tulee uudelleen 1, 3, 7, 14 ja 30 päivän kuluttua. Virhe tai paljastettu vastaus palautuu 10 minuutin päästä. Ennenaikaiset kertaukset eivät pidennä väliä.';

  @override
  String get learningAnswerContext =>
      'Harjoitustulos perustuu tässä antamiisi vastauksiin, vaikka alkuperäinen asema olisi ollut vastustajalla.';

  @override
  String get learningNoSavedPositions =>
      'Tallenna päätös uusinnasta tai käytä yllä olevaa virhetallennusta.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '${side}n päätös · peli $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Kertaus $date';
  }

  @override
  String get learningReadyToReview => 'Valmis kerrattavaksi';

  @override
  String learningSuccessStreak(int count) {
    return '$count onnistunutta ajallaan tehtyä kertausta';
  }

  @override
  String get learningRemoveTooltip => 'Poista tallennettu päätös';

  @override
  String get learningRecentPractice => 'Viimeisimmät harjoitukset';

  @override
  String get learningAnswerRevealed => 'Vastaus näytetty';

  @override
  String get learningSuccessfulRecall => 'Onnistunut muistaminen';

  @override
  String get learningTryAgain => 'Yritä tätä päätöstä uudelleen';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · tallennettu asema $positionId';
  }

  @override
  String get learningRemoveTitle => 'Poistetaanko tämä harjoitus?';

  @override
  String get learningRemoveBody =>
      'Tämän harjoituksen yritykset poistetaan. Alkuperäinen peli säilyy historiassa.';

  @override
  String get actionRemove => 'Poista';

  @override
  String get learningRemoveFailed => 'Harjoitusta ei voitu poistaa.';

  @override
  String get learningResetTitle => 'Nollataanko harjoittelun edistyminen?';

  @override
  String get learningResetBody =>
      'Kaikki harjoitusyritykset ja kertausvälit poistetaan. Tallennetut tehtävät ja otteluhistoria säilyvät; kaikki tehtävät erääntyvät heti.';

  @override
  String get learningResetAction => 'Nollaa edistyminen';

  @override
  String get learningResetFailed =>
      'Harjoittelun edistymistä ei voitu nollata.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analysoitu $completed peliä · $failed ei saatavilla.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analysoitu $completed peliä.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analysoitu $completed peliä; $failed analysointi epäonnistui. Yritä uudelleen, kun pelimoottori on valmis.';
  }

  @override
  String get learningThemeHitting => 'Lyöminen ja tempo';

  @override
  String get learningThemeSafety => 'Blotit ja suojaaminen';

  @override
  String get learningThemePointMaking => 'Pisteiden tekeminen';

  @override
  String get learningThemePrime => 'Primet ja sulut';

  @override
  String get learningThemeAnchor => 'Ankkurit ja pakoon pääsy';

  @override
  String get learningThemeRace => 'Kilpajuoksun tehokkuus';

  @override
  String get learningThemeBearOff => 'Nappuloiden poisotto';

  @override
  String get learningThemeBarEntry => 'Palaaminen baarilta';

  @override
  String get learningThemeCube => 'Kuutiopäätökset';

  @override
  String get analysisCubeNoDouble => 'Älä tuplaa';

  @override
  String get analysisCubeDouble => 'Tuplaa';

  @override
  String get analysisCubeTake => 'Ota';

  @override
  String get analysisCubePass => 'Passaa';

  @override
  String get learningAnalysisStarting => 'Analysoidaan tallennettuja pelejä…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply-arvio ilman kuutiota · tulos ei ole saatavilla';

  @override
  String get tutorLossPp => 'Tappio prosenttiyksikköinä';

  @override
  String get tutorLoss => 'Tappio';

  @override
  String get scoreSheetNoMoves => 'Ei vielä siirtoja';

  @override
  String get tutorOptions => 'Tutorin asetukset';

  @override
  String get tutorCollapseTooltip => 'Pienennä tutor';

  @override
  String get tutorExpandTooltip => 'Laajenna tutor';

  @override
  String get onlineTitle => 'Pelaa verkossa';

  @override
  String get onlineUnassistedNote =>
      'Verkko-otteluissa ei ole tutorin apua. Tarkastele siirtojasi ja harjoittele virheitä ottelun jälkeen.';

  @override
  String get onlineNotConfiguredTitle =>
      'Verkkopeliä ei ole määritetty tässä versiossa';

  @override
  String get onlineNotConfiguredBody =>
      'Tähän versioon ei ole yhdistetty Firebase-taustapalvelua, joten otteluiden luominen ja niihin liittyminen ei ole käytettävissä.';

  @override
  String get onlineErrorNoMatch =>
      'Tällä koodilla ei löytynyt ottelua. Tarkista koodi ja yritä uudelleen.';

  @override
  String get onlineErrorSeatTaken =>
      'Ottelu ei ole enää avoin — paikka on jo varattu.';

  @override
  String get onlineErrorPermission => 'Sinulla ei ole pääsyä tähän otteluun.';

  @override
  String get onlineErrorGeneric => 'Jokin meni pieleen. Yritä uudelleen.';

  @override
  String get onlineMatchFinished =>
      'Ottelu on päättynyt — siihen ei voi enää liittyä uudelleen.';

  @override
  String get onlineEnterCodeError => 'Anna ottelukoodi.';

  @override
  String get onlineOpponentShort => 'Vast.';

  @override
  String get onlineMatchInProgress => 'Ottelu käynnissä';

  @override
  String onlineResumePrompt(Object code) {
    return 'Pelit ottelua $code.';
  }

  @override
  String get onlineRejoin => 'Liity uudelleen';

  @override
  String get onlineForgetMatch => 'Unohda tämä ottelu';

  @override
  String get onlineCreateTitle => 'Luo ottelu';

  @override
  String get onlineMatchLength => 'Ottelun pituus';

  @override
  String get onlineNoCubeTitle => 'Pelaa ilman kuutiota';

  @override
  String get onlineNoCubeSubtitle => 'Tässä ottelussa ei ole tuplauskuutiota';

  @override
  String get onlineCreate => 'Luo';

  @override
  String get onlineWaitingOpponent => 'Odotetaan vastustajaa…';

  @override
  String get onlineShareCode => 'Jaa tämä koodi';

  @override
  String get onlineCopyCode => 'Kopioi koodi';

  @override
  String get onlineCodeCopied => 'Koodi kopioitu';

  @override
  String get onlineJoinTitle => 'Liity otteluun';

  @override
  String get onlineRoomCode => 'Ottelukoodi';

  @override
  String get onlineJoin => 'Liity';

  @override
  String get lanTitle => 'Pelaa lähellä';

  @override
  String get lanTabHost => 'Isännöi';

  @override
  String get lanTabJoin => 'Liity';

  @override
  String get lanUnassistedNote =>
      'Lähipelit pelataan ilman tutorin apua. Tarkastele siirtojasi ja harjoittele virheitä ottelun jälkeen.';

  @override
  String get lanGameStartFailed =>
      'Peliä ei voitu aloittaa. Toinen laite voi yrittää liittyä uudelleen.';

  @override
  String get lanHostPortInUse =>
      'Isännöinti ei käynnistynyt — portti on jo käytössä. Sulje Backgammon Buddyn toinen kopio.';

  @override
  String get lanHostStartFailed =>
      'Isännöinti ei käynnistynyt. Tarkista Wi-Fi-yhteys.';

  @override
  String get lanHostTitle => 'Isännöi peliä';

  @override
  String get lanStartHosting => 'Aloita isännöinti';

  @override
  String get lanHostHelp =>
      'Molempien laitteiden on oltava samassa Wi-Fi-verkossa. Tämä laite heittää noppaa ja pitää kirjaa tuloksesta.';

  @override
  String get lanWaitingPlayerTitle => 'Odotetaan pelaajaa';

  @override
  String get lanRoomCodeInfo =>
      'Kerro tämä koodi toiselle pelaajalle. Sen avulla hän pääsee mukaan — sovellus ei lähetä sitä verkon kautta.';

  @override
  String get lanWaitingPlayer => 'Odotetaan pelaajaa…';

  @override
  String get lanStopHosting => 'Lopeta isännöinti';

  @override
  String lanFindNearbyPort(int port) {
    return 'Pyydä toista laitetta etsimään lähipelit. Kuunnellaan porttia $port.';
  }

  @override
  String get lanOnNetwork => 'Tässä verkossa';

  @override
  String get lanCopyAddress => 'Kopioi osoite';

  @override
  String get lanAddressCopied => 'Osoite kopioitu';

  @override
  String get lanScanHostTitle => 'Skannaa isäntä';

  @override
  String get lanScanHostHelp =>
      'Toinen laite näyttää QR-koodin isäntänäytöllään. Skannaamalla osoite ja huonekoodi täyttyvät puolestasi.';

  @override
  String get lanScanQr => 'Skannaa QR-koodi';

  @override
  String get lanScannerUnavailable =>
      'Kamera tai sen käyttöoikeus ei ole saatavilla. Syötä osoite ja huonekoodi alla.';

  @override
  String get lanInvalidQr =>
      'Tämä QR-koodi ei ole Backgammon Buddy -peliä varten. Skannaa toisessa laitteessa isäntänäytöllä näkyvä koodi.';

  @override
  String get lanScannerFailed =>
      'Skanneria ei voitu avata. Syötä osoite ja koodi sen sijaan.';

  @override
  String get lanNearbyGames => 'Lähipelit';

  @override
  String get lanSearching => 'Etsitään lähipelejä…';

  @override
  String get lanNoGamesFound =>
      'Pelejä ei löytynyt vielä. Varmista, että toinen laite isännöi ja molemmat ovat samassa Wi-Fi-verkossa — tai syötä sen osoite.';

  @override
  String get lanStillSearching => 'Etsitään yhä…';

  @override
  String get lanEnterAddress => 'Anna osoite';

  @override
  String get lanEnterAddressHelp =>
      'Automaattinen haku ei toimi kaikissa verkoissa (ja iOS voi estää sen kokonaan). Isäntänäyttö kertoo, mitä pitää kirjoittaa.';

  @override
  String get lanIpAddress => 'IP-osoite';

  @override
  String get lanPort => 'Portti';

  @override
  String get lanInvalidPort => 'Anna portti väliltä 1–65535.';

  @override
  String get lanEnterAddressError => 'Anna toisessa laitteessa näkyvä osoite.';

  @override
  String get lanEnterRoomCodeError =>
      'Anna toisessa laitteessa näkyvä nelinumeroinen koodi.';

  @override
  String get lanJoinWrongCode =>
      'Väärä huonekoodi. Tarkista toisen laitteen neljä numeroa.';

  @override
  String get lanJoinVersionMismatch =>
      'Toisessa laitteessa on eri Backgammon Buddy -versio.';

  @override
  String get lanJoinHandshakeFailed =>
      'Laite ei vastannut Backgammon Buddyn tavoin. Tarkista osoite ja portti.';

  @override
  String get lanJoinFailed =>
      'Liittyminen epäonnistui. Tarkista osoite ja huonekoodi ja yritä uudelleen.';

  @override
  String lanJoinTarget(Object name) {
    return 'Liity peliin $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Anna toisessa laitteessa näkyvä nelinumeroinen koodi.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Liitytään peliin $name';
  }

  @override
  String get lanConnect => 'Yhdistä';

  @override
  String get lanBack => 'Takaisin';

  @override
  String get lanTryAgain => 'Yritä uudelleen';

  @override
  String get lanStatusBusy => 'Huone käytössä — odotetaan…';

  @override
  String get lanStatusReconnecting => 'Yhteys katkesi — yritetään uudelleen…';

  @override
  String get lanStatusConnected => 'Yhdistetty — ottelu alkaa…';

  @override
  String get lanStatusFailed => 'Liittyminen epäonnistui.';

  @override
  String get lanStatusConnecting => 'Yhdistetään…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostiikka kopioitiin leikepöydälle';

  @override
  String get diagnosticsReviewTitle => 'Tarkista diagnostiikkaraportti';

  @override
  String get diagnosticsPrivacyNotice =>
      'Luonnoksen avaaminen lähettää alla olevat tiedot GitHubiin, kuten sovelluksen version, alustan ja virhetiedot. Julkista ongelmaa ei julkaista ennen kuin lähetät sen siellä. Jos tiedot sisältävät yksityisiä tietoja, peruuta ja valmistele raportti itse Kopioi-toiminnolla.';

  @override
  String get diagnosticsCancel => 'Peruuta';

  @override
  String get diagnosticsOpenGitHub => 'Avaa GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostiikka';

  @override
  String get diagnosticsReportTooltip => 'Ilmoita ongelmasta GitHubissa';

  @override
  String get diagnosticsCopyTooltip => 'Kopioi leikepöydälle';

  @override
  String get diagnosticsClearTooltip => 'Tyhjennä loki';

  @override
  String get diagnosticsEmpty =>
      'Virheitä ei ole tallennettu.\n\nJos jokin menee pieleen, tiedot tallennetaan tänne. Palaa myöhemmin ja kopioi ne virheraporttiin.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · $matchLength pisteeseen';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · $matchLength pisteeseen';
  }

  @override
  String get gameHudYou => 'Sinä';

  @override
  String get gameHudAi => 'Tietokone';

  @override
  String gameHudGameNumber(int number) {
    return 'Peli $number';
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
    return '$whiteLabel vs. $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs. $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'vs. $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipsit';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Tuplaa';

  @override
  String get gameHudMoreActions => 'Lisää toimintoja';

  @override
  String get gameHudSurrender => 'Luovuta…';

  @override
  String get gameHudThinking => 'Miettii';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Voit tuplata vain ennen heittoa omalla vuorollasi.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Crawford-pelissä ei voi tuplata — tämä yksittäinen peli ratkaisee ottelun.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Vain kuution omistaja voi tuplata, ja nyt kuutio on vastustajalla.';

  @override
  String get gameHudDoubleUnavailable =>
      'Tuplaus ei ole juuri nyt mahdollinen.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (otteluun $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner voittaa tämän pelin ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner voittaa tämän pelin ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner voittaa tämän pelin ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner voittaa tämän pelin ($points) — $loser kieltäytyi tuplauksesta.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner voittaa tämän pelin ($points) — $loser luovutti.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Anna laite seuraavalle';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '${name}n vuoro';
  }

  @override
  String get gameDialogTapToContinue => 'Jatka napauttamalla';

  @override
  String get gameDialogCubeOfferedTitle => 'Tuplausta tarjotaan';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler tarjoaa tuplausta arvoon $value. Otatko vai passaatko?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Passaa';

  @override
  String get gameDialogTake => 'Ota';

  @override
  String get gameDialogResignationTitle => 'Luovutusta tarjotaan';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner tarjoaa luovutusta arvolla $value. Hyväksytkö?';
  }

  @override
  String get gameDialogResignSingle => 'yksittäinen peli';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Hylkää';

  @override
  String get gameDialogAccept => 'Hyväksy';

  @override
  String get gameDialogGameOverTitle => 'Peli päättyi';

  @override
  String get gameDialogNextGame => 'Seuraava peli';

  @override
  String get gameDialogMatchOverTitle => 'Ottelu päättyi';

  @override
  String get gameDialogNobody => 'Ei kukaan';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner voittaa ottelun.';
  }

  @override
  String get gameDialogSavedToHistory => 'Tallennettu historiaan';

  @override
  String get gameDialogDone => 'Valmis';

  @override
  String get gameTapNoLegalMove =>
      'Tällä nappulalla ei voi tehdä laillista siirtoa jäljellä olevilla nopilla';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Tällä nappulalla ei voi tehdä laillista siirtoa jäljellä olevilla nopilla — kokeile perumista';

  @override
  String get gameDragHint =>
      'Vinkki: vedä nappuloita tai napauta niitä — muuta tätä asetuksista';

  @override
  String get commonGotIt => 'Selvä';

  @override
  String get gameHintStageBeforeHint =>
      'Tee ensin kokonainen laillinen siirto ja pyydä sitten vihjettä.';

  @override
  String get surrenderTitle => 'Luovuta';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player luovuttaa tämän pelin.';
  }

  @override
  String get surrenderConcedes => 'Luovutat tämän pelin.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Käytettävissä ${player}n vuoron alussa';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Käytettävissä vuorosi alussa';

  @override
  String get commonCancel => 'Peruuta';

  @override
  String get surrenderSingle => 'Yksittäinen (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kumpi luovuttaa tämän pelin?';

  @override
  String get commonDone => 'Valmis';

  @override
  String get cubeDouble => 'Tuplaa';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Nyt on vastustajan vuoro.';

  @override
  String get cubeBlockedCrawford =>
      'Tuplauskuutio ei ole käytössä Crawford-pelissä.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Vain kuution omistaja voi tuplata, ja nyt se on vastustajalla.';

  @override
  String get cubeBlockedUnavailable => 'Tuplaus ei ole juuri nyt mahdollinen.';

  @override
  String get gameStatusRolling => 'Heittää…';

  @override
  String get gameStatusThinking => 'Miettii…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '${player}n vuoro';
  }

  @override
  String get cubeAdviceOpponentTake => 'Tuplaa — vastustajan kannattaa ottaa';

  @override
  String get cubeAdviceOpponentPass => 'Tuplaa — vastustajan kannattaa passata';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Virhe: $error';
  }

  @override
  String get privacyTitle => 'Tietosuoja ja tiedot';

  @override
  String get privacyAppTitle => 'Freevian Backgammon Buddy';

  @override
  String get privacyIntro =>
      'Tällä sivulla kuvataan, miten nykyinen sovellus käsittelee tietojasi.';

  @override
  String get privacyLocalTitle => 'Pelit ja valmennus laitteellasi';

  @override
  String get privacyLocalBody =>
      'Paikalliset pelit, asetukset, analyysit ja harjoittelun edistyminen tallennetaan tähän laitteeseen. Backgammon-moottori ja valmentajan selitykset toimivat täällä. Poista tallennettu peli Pelihistoriasta, niin myös siihen tallennetut harjoitustehtävät ja yritykset poistetaan. Poista yksittäisiä tehtäviä tai nollaa harjoittelun edistyminen Oppimisessa; poista paikalliset virheraportit kohdasta Asetukset → Diagnostiikka. Laitteen varmuuskopiointiasetukset voivat koskea myös pelihistoriaa. Verkkokirjautumisen tunnistetiedot säilytetään laitteen suojatussa tallennustilassa.';

  @override
  String get privacyOnlineTitle => 'Verkkopeli ja lähiverkkopeli';

  @override
  String get privacyOnlineBody =>
      'Verkkopelissä Google Firebaseen lähetetään anonyymi pelaajatunniste, peliasetukset, siirrot ja noppien synkronointitiedot, jotta molemmat pelaajat voivat pelata samaa peliä. Pelihistorian poistaminen tältä laitteelta ei poista verkkotietueita. Isännöidyt pelit vanhenevat 30 päivän kuluttua luomisesta; ajastettu siivous poistaa niiden pilvilokit. Pelitietueet tallennetaan EU:ssa; Firebase Authentication käsittelee kirjautumistietoja Yhdysvalloissa. Google-yhteydet salataan tiedonsiirron aikana. Lähiverkkopelissä pelitietoja vaihdetaan toisen laitteen kanssa salaamattoman paikallisyhteyden kautta; käytä luotettua Wi-Fi-verkkoa.';

  @override
  String get privacyDiagnosticsTitle => 'Valinnaiset käyttö- ja kaatumistiedot';

  @override
  String get privacyDiagnosticsBody =>
      'Tietojen jako on poissa käytöstä, kunnes otat sen käyttöön Asetuksissa. Jos otat sen käyttöön, Google Firebase saa käyttötapahtumia, sovelluksen ja laitteen tietoja, suorituskykymittauksia sekä kaatumisraportteja sovelluksen parantamiseksi. Voit poistaa jakamisen käytöstä milloin tahansa, jolloin uusien valinnaisten tietojen keruu loppuu. Tämä ei poista jo lähetettyjä tietoja. Paikalliset diagnostiikkatiedot ja verkkopelit toimivat tästä valinnasta riippumatta.';

  @override
  String get privacyCameraTitle => 'Kamera lähiverkon QR-koodeja varten';

  @override
  String get privacyCameraBody =>
      'Valinnainen kamera skannaa lähiverkon pelien QR-koodeja. Kuvat käsitellään laitteellasi, eikä niitä tallenneta tai lähetetä. Voit kieltää kameran käytön ja kirjoittaa isännän osoitteen käsin. Tämä versio ei käytä mikrofonia eikä tue fyysisellä pelilaudalla pelaamista.';

  @override
  String get privacyFeedbackTitle => 'Vapaaehtoisesti lähettämäsi palaute';

  @override
  String get privacyFeedbackBody =>
      'Palaute avaa GitHub-ongelmaluonnoksen tarkistettavaksesi. Luonnoksen avaaminen lähettää sovelluksen version ja alustan GitHubiin; Diagnostiikasta lähetetty palaute voi sisältää myös virhetietoja. Ongelmaa ei julkaista ennen kuin lähetät sen. Ongelmat voivat olla julkisia, joten poista yksityiset tiedot ennen lähettämistä.';

  @override
  String get privacyContactTitle => 'Tietosuojayhteystiedot';

  @override
  String get privacyReadPolicy => 'Lue tietosuojakäytäntö';

  @override
  String get privacyPolicyOpenFailed => 'Tietosuojakäytäntöä ei voitu avata.';

  @override
  String get privacySupportTitle => 'Ohje ja tuki';

  @override
  String get privacySupportOpenFailed =>
      'Tukea ei voitu avata. Ota yhteyttä: support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Poistetaanko verkkotunnus ja tiedot?';

  @override
  String get privacyDeleteConfirmBody =>
      'Tämä estää heti molempia pelaajia käyttämästä tämän tunnuksen pilvipelejä ja pyytää tunnuksen sekä yhteisten verkkopelilokien poistamista 30 päivän kuluessa. Google voi tarvita tilin poistamisen jälkeen enintään 180 päivää Authentication-tietojen poistamiseen aktiivisista järjestelmistään ja varmuuskopioistaan. Paikallinen pelihistoria ja harjoittelu säilyvät tällä laitteella. Aiemmin lähetetyt valinnaiset diagnostiikkatiedot ovat erillisiä; ota niistä yhteyttä osoitteeseen privacy@freevia.org. Tätä pyyntöä ei voi peruuttaa.';

  @override
  String get privacyRequestDeletion => 'Pyydä poistamista';

  @override
  String get privacyDeleteSectionTitle => 'Poista verkkotiedot';

  @override
  String get privacyDeleteInstructions =>
      'Vahvista omistajuus käyttämällä tälle laitteelle tallennettua kirjautumista. Pelaajatunniste tai kutsukoodi yksinään ei todista omistajuutta. Vain paikallisesti pelaavat eivät tarvitse verkkotiliä.';

  @override
  String get privacySendingRequest => 'Lähetetään pyyntöä…';

  @override
  String get privacyDeleteAction => 'Poista verkkotunnus ja tiedot';

  @override
  String get privacyDeleteRequested =>
      'Poistamista on pyydetty. Tästä verkkotunnuksesta on kirjauduttu ulos. Sen pilvitiedot poistetaan 30 päivän kuluessa. Jos aloitat verkkopelin uudelleen, luodaan uusi tunnus. Google voi tarvita Authentication-tietojen poistamiseen enintään 180 päivää. Saat apua osoitteesta privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Poistamista on pyydetty. Pilvitiedot poistetaan 30 päivän kuluessa. Laite ei pystynyt poistamaan tallennettua kirjautumista, mutta verkkotunnus on estetty käyttämästä uusia pelejä. Google voi tarvita Authentication-tietojen poistamiseen enintään 180 päivää. Saat apua osoitteesta privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Tälle laitteelle ei ole tallennettu käyttökelpoista verkkotunnusta. Uutta tiliä ei luotu. Jos olet pelannut verkossa aiemmin, pyydä apua osoitteesta privacy@freevia.org; isännöidyt pelit vanhenevat 30 päivän kuluttua.';

  @override
  String get privacyDeleteRequestFailed =>
      'Poistopyyntöä ei voitu vahvistaa. Tarkista yhteys ja yritä uudelleen tai ota yhteyttä osoitteeseen privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Jaetaanko käyttö- ja kaatumistietoja?';

  @override
  String get privacyConsentBody =>
      'Tämä lähettää Google Firebaseen käyttötapahtumia, sovelluksen ja laitteen tietoja, kaatumisraportteja sekä suorituskykymittauksia. Tietojen jakaminen on vapaaehtoista. Pelit ja valmennus toimivat ilman sitä, ja voit poistaa jakamisen käytöstä Asetuksissa.';

  @override
  String get privacyKeepOff => 'Pidä poissa käytöstä';

  @override
  String get privacyShareDiagnostics => 'Jaa diagnostiikkatietoja';

  @override
  String get privacySaveFailed =>
      'Tietosuojavalintaa ei voitu tallentaa. Yritä uudelleen.';

  @override
  String get privacySettingsSubtitle => 'Mitä jää laitteellesi ja mitä jaetaan';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Jaa käyttö- ja kaatumisdiagnostiikkaa';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Valinnainen · oletuksena poissa käytöstä';

  @override
  String get lanScanToJoin => 'Skannaa liittyäksesi';

  @override
  String get lanScanHostCode => 'Skannaa isännän koodi';

  @override
  String get lanEnterAddressInstead => 'Kirjoita sen sijaan osoite';

  @override
  String get lanQrAccessibilityLabel =>
      'QR-koodi tähän peliin liittymistä varten';

  @override
  String get lanJoinInstruction =>
      'Avaa toisella laitteella Lähialuepeli, valitse Liity ja skannaa tämä QR-koodi.';

  @override
  String get lanTorch => 'Taskulamppu';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ei voi käyttää kameraa. Salli kameran käyttö laitteen asetuksissa tai kirjoita toisessa laitteessa näkyvä osoite.';

  @override
  String get lanCameraUnsupported =>
      'Tämä laite ei voi skannata QR-koodeja. Kirjoita toisessa laitteessa näkyvä osoite.';

  @override
  String get lanCameraStartFailed =>
      'Kameraa ei voitu käynnistää. Kirjoita toisessa laitteessa näkyvä osoite.';

  @override
  String get lanPointCameraAtQr => 'Suuntaa kamera toisen laitteen QR-koodiin.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Fyysisellä pelilaudalla pelaaminen ei ole käytettävissä tässä versiossa. Näytöllä pelattavat pelit, opastus ja harjoittelu löytyvät etusivulta.';

  @override
  String get homePlayWithBuddy => 'Pelaa Buddyn kanssa';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammonlauta. $status';
  }

  @override
  String get boardWhiteToRoll => 'Valkoisen vuoro: heitä noppia.';

  @override
  String get boardBlackToRoll => 'Mustan vuoro: heitä noppia.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Valkoisen vuoro, heitä $die1 ja $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Mustan vuoro, heitä $die1 ja $die2.';
  }

  @override
  String get boardDoubleOffered => 'Tuplaus on tarjottu.';

  @override
  String get boardResignationOffered => 'Luovutusta on ehdotettu.';

  @override
  String get boardGameOver => 'Peli on päättynyt.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Virhe]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idea]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Korvaa tämä lyhyellä kuvauksella siitä, mitä tapahtui.';

  @override
  String get feedbackBugReproduction =>
      'Korvaa tämä ongelmaan johtaneilla vaiheilla.';

  @override
  String get feedbackBugExpected =>
      'Korvaa tämä kuvauksella siitä, mitä odotit tapahtuvan.';

  @override
  String get feedbackIdeaNeed =>
      'Korvaa tämä sillä, mitä halusit tehdä tai oppia.';

  @override
  String get feedbackIdeaSuggestion =>
      'Korvaa tämä muutoksella, josta olisi mielestäsi hyötyä.';

  @override
  String get feedbackExcerptTruncated =>
      '(lyhennetty — saat koko lokin kopioimalla sen Diagnostiikka-näytön painikkeella Kopioi leikepöydälle)';

  @override
  String get boardWhiteToMoveNoRoll => 'Valkoisen vuoro.';

  @override
  String get boardBlackToMoveNoRoll => 'Mustan vuoro.';

  @override
  String get feedbackFieldVersion => 'Sovellusversio';

  @override
  String get feedbackFieldPlatform => 'Alusta';

  @override
  String get feedbackFieldSummary => 'Mitä tapahtui';

  @override
  String get feedbackFieldReproduction => 'Toistamisen vaiheet';

  @override
  String get feedbackFieldExpected => 'Odotettu tulos';

  @override
  String get feedbackFieldNeed => 'Mitä halusit tehdä';

  @override
  String get feedbackFieldIdea => 'Ehdotettu muutos';
}
