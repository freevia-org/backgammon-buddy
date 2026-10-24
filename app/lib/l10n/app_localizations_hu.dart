// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Fejleszd a játékod egy edzővel';

  @override
  String get settings => 'Beállítások';

  @override
  String get playVsComputer => 'Játék a számítógép ellen';

  @override
  String get twoPlayers => 'Két játékos';

  @override
  String get playNearby => 'Játék a közelben';

  @override
  String get playOnline => 'Online játék';

  @override
  String get learningPractice => 'Tanulás és gyakorlás';

  @override
  String get gamesArchive => 'Játékarchívum';

  @override
  String get followSystem => 'Eszköz nyelve';

  @override
  String get white => 'Fehér';

  @override
  String get black => 'Fekete';

  @override
  String get random => 'Véletlenszerű';

  @override
  String get startMatch => 'Játék indítása';

  @override
  String get tutor => 'Edző';

  @override
  String get noMovesPass => 'Nincs lépés — passz';

  @override
  String get undo => 'Visszavonás';

  @override
  String get confirm => 'Megerősítés';

  @override
  String get roll => 'Dobás';

  @override
  String get hint => 'Tipp';

  @override
  String get tutoringStyle => 'Oktatási stílus';

  @override
  String get tutorStyleCoach => 'Edző';

  @override
  String get tutorStyleHintsOnly => 'Csak tippek';

  @override
  String get tutorStyleTryFirst => 'Előbb próbáld meg';

  @override
  String get tutorCoachDescription =>
      'Állásra vonatkozó tippek, lépésértékelés, súgók és tanácsok a duplázókockához.';

  @override
  String get tutorHintsDescription =>
      'Kérésre rangsorolt lépések. Az élő állástippek és az automatikus lépésértékelés kikapcsolva marad.';

  @override
  String get tutorTryFirstDescription =>
      'Próbáld ki a lépésedet, mielőtt megnéznéd a rangsort vagy az értékelést; az állásra vonatkozó útmutatás bekapcsolva marad.';

  @override
  String get tutorCustomDescription =>
      'Egyéni összeállítás. Az alábbi beállításokat külön-külön módosíthatod.';

  @override
  String get tutorBestMoveHints => 'Tippek a legjobb lépéshez';

  @override
  String get tutorRevealRankedPlays =>
      'Rangsorolt lépések megjelenítése gondolkodás közben';

  @override
  String get tutorMoveExplanations => 'Lépések magyarázata';

  @override
  String get tutorCompareEstimates =>
      'Becslések és táblán látható változások összehasonlítása';

  @override
  String get tutorGameCommentary => 'Játékmenet kommentálása';

  @override
  String get tutorPositionPrompts =>
      'Állástippek és visszajelzés minden lépés után';

  @override
  String get tutorCubeAdvice => 'Tanácsok a duplázókockához';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'A mérkőzés állását figyelembe vevő duplázási, elfogadási és passzolási javaslatok';

  @override
  String get tutorTryMoveFirst => 'Előbb próbáld ki a lépést';

  @override
  String get tutorStageBeforeHints =>
      'Próbáld ki a lépésedet, mielőtt megjelennek a tippek vagy az értékelés';

  @override
  String get tutorStaticEstimateNote =>
      'Gyors, statikus becslés (0-ply, rollout nélkül); a megjegyzések a táblán történő változásokat és lehetséges válaszokat írják le, nem biztos jövőbeli kimenetelt.';

  @override
  String get tutorWhatToWatchNext => 'Mire figyelj a következő lépésben';

  @override
  String get tutorMoreBoardDetails => 'További részletek a tábláról';

  @override
  String get tutorEstimatesAndHowTheyWork => 'A becslések működése';

  @override
  String get tutorEstimateLimitations =>
      'Mélység: minden szabályos lépés utáni statikus neurális értékelés (0-ply), rollout és a jövőbeli válaszlépések keresése nélkül. Az eredménybecsléseket a mérkőzés állásához és az aktuális duplázókockához igazító MWC nem modellezi a későbbi kockadöntéseket. Ha az állás nem ismert, a kocka nélküli equity az 1-es kockával várható pontszámot jelenti. A táblára vonatkozó megfigyelések a lépést írják le, nem a neurális motor belső gondolatmenetét. A közeli eredmények nem jelentenek bizonyosságot; nincs kalibrált konfidenciaintervallum.';

  @override
  String get tutorPointNumberNote =>
      'A tanulási megjegyzések pontszámai a lépő játékos saját alapvonala felől értendők.';

  @override
  String get tutorHittingRollNote =>
      'A visszaütési esélyek mind a 36 rendezett dobást és a szabályos közvetlen vagy közvetett ütéseket tartalmazzák; lehetőségeket jeleznek, nem az ellenfél választását jósolják meg.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Ehhez a lépéshez nincs kiértékelt alternatíva.';

  @override
  String get tutorForcedPassNoDecision =>
      'Kényszerű passznál nincs döntés a koronglépésről.';

  @override
  String get settingsReset => 'Visszaállítás';

  @override
  String get settingsAppLanguage => 'Alkalmazás nyelve';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get settingsThemeSystem => 'Rendszer szerint';

  @override
  String get settingsThemeLight => 'Világos';

  @override
  String get settingsThemeDark => 'Sötét';

  @override
  String get settingsAnimationSpeed => 'Animáció sebessége';

  @override
  String get settingsAnimationNone => 'Nincs';

  @override
  String get settingsAnimationNormal => 'Normál';

  @override
  String get settingsAnimationFast => 'Gyors';

  @override
  String get settingsDiceRollAnimation => 'Dobás animációja';

  @override
  String get settingsDiceRollAnimationHelp =>
      'A kockák guruljanak minden dobás előtt';

  @override
  String get settingsDefaultMatchLength => 'Alapértelmezett meccshossz';

  @override
  String get settingsDefaultDifficulty => 'Alapértelmezett nehézség';

  @override
  String get settingsDifficultyEasy => 'Könnyű';

  @override
  String get settingsDifficultyMedium => 'Közepes';

  @override
  String get settingsDifficultyHard => 'Nehéz';

  @override
  String get settingsDifficultyExpert => 'Szakértő';

  @override
  String get settingsTutorModeDefault => 'Alapértelmezett oktatói mód';

  @override
  String get settingsTutorAuto => 'Automatikus';

  @override
  String get settingsTutorOn => 'Be';

  @override
  String get settingsTutorOff => 'Ki';

  @override
  String get settingsTutorModeHelp =>
      'Az Automatikus minden számítógépes nehézségnél bekapcsolja az oktatót. A Be és Ki a helyi meccsek kezdő beállítását adja meg. A közeli és online meccsekben nincs segítség; a mentett játszmák később visszanézhetők. A tanulási beállításokat ez az eszköz menti.';

  @override
  String get settingsTutorPreferences => 'Oktatói beállítások';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Mentett alapbeállítások a jövőbeli meccsekhez';

  @override
  String get settingsTutorSaveError =>
      'Az oktatói beállítások mentése nem sikerült.';

  @override
  String get settingsGameplay => 'Játékmenet';

  @override
  String get settingsMoveHighlights => 'Lépéskiemelés';

  @override
  String get settingsMoveHighlightsHelp =>
      'Karikázd be a választható korongokat, és emeld ki a célmezőket';

  @override
  String get settingsDragToMove => 'Húzd a lépéshez';

  @override
  String get settingsDragToMoveHelp =>
      'Húzd a korongot a célmezőre (az érintés mindig működik)';

  @override
  String get settingsCombinedMoves => 'Összevont lépések';

  @override
  String get settingsCombinedMovesHelp =>
      'Egy érintés mindkét kockával végigviszi a korongot';

  @override
  String get settingsRotateBoard => 'Tábla forgatása körönként';

  @override
  String get settingsRotateBoardHelp =>
      'Közös eszközön: fordítsd a nézetet az aktív játékoshoz';

  @override
  String get settingsPassDevice => 'Eszköz átadása';

  @override
  String get settingsPassDeviceHelp =>
      'A közös játékos körök között takard el a táblát';

  @override
  String get settingsShowScore => 'Eredmény mutatása';

  @override
  String get settingsShowScoreHelp => 'A fejlécben jelenjen meg a meccs állása';

  @override
  String get settingsBuddyMode => 'Buddy beszédmódja';

  @override
  String get settingsBuddyTerse => 'Tömör';

  @override
  String get settingsBuddyFriendly => 'Közvetlen';

  @override
  String get settingsBuddyTerseHelp =>
      'Így mondja el Buddy a lépést: „13/8, 24/22” – a táblánál használt jelöléssel.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Így mondja el Buddy a lépést: „Vigyél egy korongot a 13-asról a 8-asra, egyet pedig a 24-esről a 22-esre.”';

  @override
  String get settingsListenForDice => 'Kockák figyelése';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy hamarabb figyel a táblára, ha dobást hall. Kikapcsolva mást nem változtat.';

  @override
  String get settingsDiagnostics => 'Diagnosztika';

  @override
  String get settingsErrorLog => 'Hibanapló';

  @override
  String get settingsErrorLogHelp =>
      'Legutóbbi hibák, amelyeket bemásolhatsz egy hibajelentésbe';

  @override
  String get settingsReportBug => 'Hiba jelentése';

  @override
  String get settingsReportBugHelp =>
      'Vezetett hibajelentés megnyitása a GitHubon';

  @override
  String get settingsSuggestIdea => 'Ötlet javaslata';

  @override
  String get settingsSuggestIdeaHelp =>
      'Segíts jobbá tenni az oktatót és a játékot';

  @override
  String get settingsAbout => 'Névjegy';

  @override
  String get settingsOpenSourceLicenses => 'Nyílt forráskódú licencek';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'A játszma véget ért.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Nézd át a lépéseket, és keresd meg a gyakorlásra érdemes döntést.';

  @override
  String get tutorPhraseCubeOffered => 'Duplázókocka-ajánlat érkezett.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'A koronglépés megtervezése előtt döntsd el, elfogadod vagy passzolod-e.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'A meccs állása megváltoztatja a nagyobb tét értékét.';

  @override
  String get tutorPhraseResignationOffered => 'Feladásajánlat érkezett.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Elfogadás vagy folytatás előtt hasonlítsd össze a felajánlott pontokat az állással.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Ezzel a dobással nincs szabályos lépés.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'A kötelező passz nem hiba; várd meg a következő dobást.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Csak egy szabályos végállás lehetséges.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Tedd meg a kényszerlépést. Ennél a dobásnál nincs döntés, amit értékelni lehetne.';

  @override
  String get tutorPhrasePipCountsLevel => 'A pip-számok egyenlők.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return '$count pip előnyöd van.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return '$count pippel vagy lemaradva.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count korongod van a báron: először be kell lépned.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Először lépj be, csak utána mozgass másik korongot; keress biztonságos mezőt.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Az ellenfél hazai tábláján $count zárt pont van.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Lehordási verseny.';

  @override
  String get tutorPhrasePureRace => 'Tiszta versenyfutás.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Hordj le korongokat úgy, hogy hasznos eloszlás maradjon a következő dobásra.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Hozd haza a hátul lévő korongokat anélkül, hogy túl sokat halmoznál egy pontra.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'A seregek elhaladtak egymás mellett; több ütés nem lehetséges.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part A kontaktus továbbra is számít.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Az ellenfélnek $count korongja van a báron.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Tartsd zárva a táblát, miközben hazahozod a maradék korongokat.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Építsd vagy őrizd meg a hazai táblát, amíg az ellenfél próbál belépni.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return '$count hazai pontod van; mindegyik lezár egy belépési számot.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontaktus egy $count pontos sorral.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Hasonlítsd össze a sor meghosszabbítását a fenntartásához szükséges tartalék korongok megtartásával.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count tartalék korong mozgatható anélkül, hogy azonnal megnyitnád a pontját.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontaktus horgonnyal a következő pontokon: $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Hasonlítsd össze a hátul lévő korongok hazahozását a biztonságos horgony megtartásával.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Tartsd szem előtt a biztonságos kapaszkodót, miközben ütést vagy jobb táblát keresel.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'A horgonyt nem lehet megütni, de ezeknek a korongoknak még hosszú az út hazáig.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontaktus: mindkét fél fenyegethet még ütéssel.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Keress hasznos pontokat, majd mérlegeld az egyedül álló korongok kockázatát.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return '$count hazai pontod van, és $otherCount fedetlen korongot hagysz.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Válassz korongot a lépés megkezdéséhez.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Kezdj szabályos lépést a kommentár megtekintéséhez.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Megütöttél $count ellenfél-korongot.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Beléptél $count koronggal a bárról.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return 'Lehordtál $count korongot.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'A következő pontokat foglaltad el: $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'A $point. pontodon álló korongod most fedetlen.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'A $point. ponton lévő tartalék korong később mozgatható a pont felnyitása nélkül.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Használd fel a még kijátszható kockákat, mielőtt az egész lépést értékeljük.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Mind a 15 korong lekerült: megnyerted a játszmát.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Az ütés időt nyer, amíg az ellenfél visszalép a bárról.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'A hatékony lehordás korongokat távolít el, és hasznos számokat hagy a következő dobásra.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'A versenyterv: hozd haza a hátsó korongokat, és hagyj nekik jó lehordási mezőket.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'A lehordás előrelépés, de a megmaradt kontaktus miatt továbbra is fennáll az ütés veszélye.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'A belépéssel a korong visszakerül a játékba; ezután keress neki biztonságos mezőt.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Az új hazai pont egy későbbi ütés után elvesz egy belépési számot.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'A hosszabb sor több mezőt zár le; a tartalék korongok segítenek épségben tartani.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'A horgony elhagyásával előrébb jutsz, de feladsz egy biztonságos kapaszkodót.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Az új horgony biztonságos támaszt ad a hátul lévő korongoknak.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'A fedetlen korong befedése megszüntet egy célpontot az ellenfél számára.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'A fejlődés és a biztonság között kell választani: építőkorongból is lehet célpont.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part A teljes lépés összeállt; a végrehajtáshoz koppints a Megerősítésre.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Ezzel a dobással nincs választás a koronglépésben; döntésként nem osztályozzuk.';

  @override
  String get tutorMoveTopVerdict =>
      'Az egyik legjobb választás ebben az állásban.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'A motor itt egy másik lépést részesít előnyben.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Eltérés a legjobb lépéstől: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'A lépés után: nyerési esély $winPercent%, gammon vagy jobb győzelem $winGammonPercent%, gammon vagy rosszabb vereség $loseGammonPercent%. Ezek a dobó játékos becslései.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Becsült meccsnyerési esély: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Mind a 15 korong lekerült: megnyerted a játszmát.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Az ütéssel időt nyersz, amíg az ellenfél visszalép. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Tartsd zárva a hazai pontjaidat, hogy nehezebb legyen a belépés.';

  @override
  String get tutorMovePlanHitBuild =>
      'Foglalj további hazai pontokat, hogy az ellenfél nehezebben álljon talpra egy későbbi ütés után.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Törekedj hatékony lehordásra: távolíts el korongokat, és hagyj hasznos számokat a következő dobásra.';

  @override
  String get tutorMovePlanRaceHome =>
      'Hozd haza a hátul lévő korongokat, és oszd el őket jó lehordási mezőkön.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Hordj le korongokat, de figyeld az ellenfél hátsó korongjait: kontaktusban egy fedetlen lehordó korong célpont lehet.';

  @override
  String get tutorMovePlanReentry =>
      'Lépj vissza a játékba, majd keress biztonságos pontot a belépő korongnak.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Erősítsd meg a hazai tábládat. Az új zárt pont egy belépési szám elvételével erősebbé teszi a későbbi ütést.';

  @override
  String get tutorMovePlanPrime =>
      'Tartsd együtt a zárt pontok sorát. Őrizz meg tartalék korongokat, hogy később ne kényszerülj megnyitni.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'A horgony elhagyása előreviszi a hátul lévő korongjaidat, de feladsz egy biztonságos támaszt. Figyeld a veszélyeztetettségüket hazafelé.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Használd az új horgonyt biztonságos támaszként, miközben javítod a többi részt.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Rendezd a korongjaidat. A fedetlen korong befedése eltávolít egy célpontot, miközben jó mezőket hagy későbbre.';

  @override
  String get tutorMovePlanSafety =>
      'Egyensúlyozz a fejlődés és biztonság között: vidd az építőkorongokat hasznos pontok felé, és ellenőrizd, mely magányos korongokat lehet megütni.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nincs szabályos koronglépés: passzolnod kell.';

  @override
  String tutorMoveObservationHit(int count) {
    return 'Megütsz $count ellenfél-korongot; az ellenfélnek előbb vissza kell lépnie a bárról, csak utána mozgathat mást.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Belépsz $count koronggal a bárról.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    return 'Lehordasz $count korongot.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Elfoglalod ezeket a pontokat: $points. Legalább két korong biztonságosan tartja a pontot, így az ellenfél nem szállhat le ott.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Feladod a foglalt $pointLabel $points pontot. Ezek többé nem állítják meg az ellenfelet.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nem marad fedetlen korong (korábban $previousCount). Nincs magányos célpont.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    return '$count fedetlen korongot hagysz (korábban $previousCount). Mielőtt a biztonságot választod más előny helyett, nézd meg, eléri-e őket az ellenfél.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'A leghosszabb összefüggő zárt sor: $count pont (korábban $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'A hatpontos prime-on nem lehet átjutni, amíg zárva marad.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Tarts építőkorongokat a közelben, ha bővítenéd vagy megőriznéd ezt a sort.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return '$count tartalék korong van a foglalt pontokon álló kettő felett. Egy tartalék mozgatása megőrizheti a pontot; az utolsó kettő egyikének mozgatása megnyitja.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Horgonyok az ellenfél hazai tábláján: $points (korábban $previousPoints). A horgony védi a korongokat az ütéstől; elhagyásával a biztonságos támaszt versenyelőnyre cseréled.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Tiszta verseny: a seregek elhaladtak egymás mellett, és egyik félnek sincs korongja a báron. Ütés már nincs; a hatékony lehordás számít.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Az ellenfél egyetlen szabályos következő dobással sem tud ütni ebben az állásban. A kontaktus megmarad, így később új ütési lehetőség keletkezhet.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Az ellenfél $total dobásból $count esetben üthet. Például a $dieOne–$dieTwo szabályos ütést tesz lehetővé a $point. pontodon. Az ütés lehetőség, nem biztos választás.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'A hazai tábládon $closedPoints pont van lezárva. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Az ellenfél nem léphet be, amíg egy pont fel nem nyílik.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Egy nyitott belépőpontot használó dobással visszahozhatod a korongot a bárról.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors A legjobb lépés becsült nyerési esélye $delta százalékponttal $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'magasabb';

  @override
  String get tutorMoveComparisonLower => 'alacsonyabb';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Ettől még előrébb kerülhet, mert a gammon és backgammon értéke eltér a jelenlegi $scoreContext mellett.';
  }

  @override
  String get tutorMoveComparisonStake => 'tét';

  @override
  String get tutorMoveComparisonMatchScore => 'meccsállás';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'A legjobb lépés $bestCount ellenfél-korongot hagy a báron a te $playedCount korongoddal szemben. A báron lévő korongnak be kell lépnie, mielőtt az ellenfél mást mozgat.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'A legjobb lépés $bestCount hazai pontot tart zárva a te $playedCount pontoddal szemben; ütés után $entryDifference belépőpont marad.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'többet zár le';

  @override
  String get tutorMoveComparisonLeavingMore => 'többet hagy nyitva';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'A legjobb lépés 36 dobásból $bestCount esetben enged válaszütést, a tiéd $playedCount esetben. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Ez csökkenti a közvetlen visszaütés kockázatát.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Mérlegeld ezt a többletkockázatot azzal szemben, amit máshol nyersz.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'A legjobb lépés leghosszabb zárt sora $bestCount pont, a tiéd $playedCount; vesd össze a blokádot a fenntartásához elérhető korongokkal.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'A legjobb lépés horgonyai: $bestPoints, a tiéd: $playedPoints. A horgony biztonságos leszállóhelyet őriz; elhagyása közelebb viszi a korongokat az otthonhoz.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'A legjobb lépés $bestCount korongot hord le a te $playedCount korongoddal szemben. Minden lekerült koronggal kevesebbet kell később lehordani.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Mindkét lépés hasonló közvetlen ütési kockázatot, hazai pontot, horgonyt és lehordott korongot hagy. Hasonlítsd össze a célmezőket: a következő dobás másképp használhatja őket.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'A legjobb lépés több ellenfél-korongot küld a bárra, késleltetve a többi lépését.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'A legjobb lépés több hazai pontot zár le, megnehezítve a visszalépést ütés után.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'A legjobb lépés kevesebb közvetlen ütési dobást enged, csökkentve a visszaütés veszélyét.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'A legjobb lépés hosszabb zárt pontsort őriz meg.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'A legjobb lépés több biztonságos horgonyt tart az ellenfél hazai tábláján.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'A legjobb lépés több korongot hord le, így később kevesebbet kell eltávolítani.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ez a lépés $playedCount magányos korongot hagy; a legjobb $bestCount-et.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'A legjobb lépés biztonságos horgonyt tart a $point. ponton.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'A legjobb lépés több belépési pontot zár le arra az esetre, ha megütnék egy korongodat.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'A közvetlen kockázatok hasonlóak; nézd meg, mely célmezők lesznek hasznosak a következő dobásnál.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value equity';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value MWC százalékpont';
  }

  @override
  String get tutorMovePointSingular => 'pont';

  @override
  String get tutorMovePointPlural => 'pont';

  @override
  String get tutorMoveNoPoints => 'nincs';

  @override
  String get gameTutorCommentaryOff => 'A játszmakommentár ki van kapcsolva.';

  @override
  String get gameTutorToolsAvailable =>
      'Nyisd meg az oktatót az engedélyezett eszközökhöz.';

  @override
  String get gameTutorNextRoll => 'Dobj a következő körben.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Ehhez a rögzített lépéshez nincs kiértékelt magyarázat.';

  @override
  String get gameTutorAnalysisUnavailable => 'az elemzés nem érhető el';

  @override
  String get gameTutorReviewing => 'ellenőrzés…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Először próbáld meg a saját lépésedet.';

  @override
  String get gameTutorKeepBuilding => 'Folytasd a lépésed összeállítását.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Állíts össze egy teljes, szabályos lépést, mielőtt megjelennek a tippek vagy az értékelés.';

  @override
  String get gameTutorReadyToConfirm => 'Megerősítésre kész';

  @override
  String get gameTutorPlayTakingShape => 'Alakul a lépésed.';

  @override
  String get gameTutorConfirmOrUndo =>
      'A lépés végrehajtásához erősítsd meg, vagy vond vissza.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Használd fel a hátralévő kockákat, vagy vond vissza.';

  @override
  String get gameTutorComputerConsidering =>
      'A számítógép a lépésén gondolkodik.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Az elkészült lépést itt értékeljük.';

  @override
  String get gameTutorYourPlay => 'A lépésed';

  @override
  String get gameTutorComputer => 'Számítógép';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'A lépésed: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'kényszerlépés';

  @override
  String get gameTutorTopChoice => 'legjobb választás';

  @override
  String get gameTutorSoundPlay => 'jó lépés';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'másik lépés jobban illeszkedhet';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'másik lépés jobban illik ehhez az álláshoz';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'egyértelműen erősebb lépés is elérhető volt';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side előnye becslés szerint megvan.';
  }

  @override
  String get gameTutorPositionEven => 'Az állás nagyjából egyenlő.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Lejátszva: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Legjobb lépés: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Rangsorolt lépések megjelenítése';

  @override
  String get tutorReviewRecordedMove =>
      'Koppints a naplóban egy befejezett lépésre az elemzés megtekintéséhez.';

  @override
  String get tutorTopPlays => 'Legjobb lépések';

  @override
  String get tutorNoHintsAvailable => 'Nincsenek elérhető tippek.';

  @override
  String get tutorPreviewThenConfirm =>
      'Koppints egy lépésre az előnézethez, majd erősítsd meg.';

  @override
  String get tutorTopChoiceForPosition => 'Az állás legjobb választása';

  @override
  String get tutorAlternativePlay => 'Alternatív lépés';

  @override
  String get tutorEngineEstimates => 'Motorbecslések';

  @override
  String get tutorEstimateScope =>
      '0 ply becslés · aktuális eredmény és tét · jövőbeli duplázás nélkül';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Meccsnyerési esély %';

  @override
  String get tutorNearTiesNote =>
      'A közel azonos értékelések mélyebb elemzéskor változhatnak.';

  @override
  String get tutorWhyThisPlay => 'Miért ez a lépés?';

  @override
  String get tutorCompareAlternative => 'Alternatíva összehasonlítása';

  @override
  String get gameTutorCubeTake => 'Tutor: elfogadás';

  @override
  String get gameTutorCubePass => 'Tutor: elutasítás';

  @override
  String get practiceScreenTitle => 'Döntés gyakorlása';

  @override
  String get practiceUnavailable => 'Ez a gyakorlóállás már nem érhető el.';

  @override
  String get practiceSubmitError =>
      'Ezt a próbát nem sikerült kiértékelni vagy menteni. Az előrehaladásod nem változott. Próbáld újra.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side lép · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'A korábbi eredmény nem érhető el; az értékelés kocka nélküli equityt használ.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Állás: $whiteLabel $whiteScore – $blackLabel $blackScore, a meccs hossza: $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawford-parti';

  @override
  String get practiceNoDoublingCube => 'Nincs duplázókocka.';

  @override
  String practiceCubeValue(int value) {
    return 'Kocka: $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'A korábbi kockaszabályok ismeretlenek.';

  @override
  String get practiceAfterBestPosition => 'Állás a legjobb lépés után';

  @override
  String get practiceAfterYourAnswerPosition => 'Állás a válaszod után';

  @override
  String get practiceFindYourPlayPrompt =>
      'Keresd meg a lépésedet a táblán, majd ellenőrizd a választ. Tippek nem jelennek meg.';

  @override
  String get practiceUndo => 'Visszavonás';

  @override
  String get practiceCheckAnswer => 'Válasz ellenőrzése';

  @override
  String get practiceRevealNoCredit => 'Válasz felfedése (pont nélkül)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'A válasz megtekintve — nem jár felidézési pont.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Legjobb: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Eredeti játszma: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'A válaszod: $move';
  }

  @override
  String get practiceYourAnswerChip => 'A válaszod';

  @override
  String get practiceBestPlayChip => 'Legjobb lépés';

  @override
  String practiceNextReview(Object date) {
    return 'Következő ismétlés: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'A legjobb és jó válaszok sikeres felidézésnek számítanak. A korai ismétlés nem lépteti tovább az ütemezést.';

  @override
  String get practiceBackToLearning => 'Vissza a tanuláshoz';

  @override
  String get practiceMarkBest => 'Legjobb';

  @override
  String get practiceMarkGood => 'Jó';

  @override
  String get practiceMarkDubious => 'Kétséges';

  @override
  String get practiceMarkError => 'Hiba';

  @override
  String get practiceMarkBlunder => 'Nagy hiba';

  @override
  String get practiceMarkForced => 'Kényszerített';

  @override
  String get newMatchYourSide => 'A te oldalad';

  @override
  String get newMatchTutorMode => 'Tutor mód';

  @override
  String get newMatchTutorDescription =>
      'Tanulj tippekkel, magyarázatokkal és játékmenet-kommentárral';

  @override
  String get newMatchTutoringOptions => 'Tutorbeállítások';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Ehhez a meccshez; játék közben is módosítható';

  @override
  String get setupMatchLength => 'Meccs hossza';

  @override
  String get setupDifficulty => 'Nehézség';

  @override
  String get setupDifficultyEasy => 'Könnyű';

  @override
  String get setupDifficultyMedium => 'Közepes';

  @override
  String get setupDifficultyHard => 'Nehéz';

  @override
  String get setupDifficultyExpert => 'Szakértő';

  @override
  String get setupPlayWithoutCube => 'Játék kocka nélkül';

  @override
  String get setupNoCubeThisMatch => 'Ebben a meccsben nincs duplázókocka';

  @override
  String get analysisTitle => 'Elemzés';

  @override
  String get gameMatchSummary => 'Meccs összefoglalója';

  @override
  String get gameAnalyzeGame => 'Játszma elemzése';

  @override
  String get analysisMetricsTooltip => 'Mit jelentenek ezek a számok?';

  @override
  String analysisError(Object error) {
    return 'A játszma elemzése nem sikerült: $error';
  }

  @override
  String get analysisNoPositions =>
      'Ebben a játszmában nincs megjeleníthető állás.';

  @override
  String get analysisInProgress => 'Játszma elemzése…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Lejátszva';

  @override
  String get analysisBest => 'Legjobb';

  @override
  String get analysisPrevious => 'Előző';

  @override
  String get analysisNext => 'Következő';

  @override
  String get analysisPositionBeforeCube => 'Állás a kockadöntés előtt';

  @override
  String get analysisPositionAtPoint => 'Állás a játszma ezen pontján';

  @override
  String get analysisShowingBestBefore =>
      'A legjobb lépés megjelenítése a lépés előtti állásban';

  @override
  String get analysisShowingBefore => 'A lépés előtti állás megjelenítése';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return '  −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · nem része az átlagnak';

  @override
  String get analysisNoPlay => '(nincs lépés)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Legjobb: $move';
  }

  @override
  String get analysisExplain => 'Magyarázat';

  @override
  String get analysisSaveForPractice => 'Mentés gyakorláshoz';

  @override
  String get analysisSaveError =>
      'A döntést nem sikerült menteni. Próbálja újra.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · veszteség: $loss';
  }

  @override
  String get analysisCubeDecision => 'Kockadöntés';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Lejátszva: $action (a meccsnyerési esély $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Legjobb: $action (a meccsnyerési esély $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      '0 ply becslés az éppen lépő játékos szemszögéből. Optimális elfogadási vagy elutasítási választ feltételez. Az elfogadott duplázás ágánál 0,7-es részleges kockaélettartam-közelítést használ, nem vizsgálja teljesen a későbbi visszaduplázásokat. Mélyebb elemzés módosíthatja az eredményt.';

  @override
  String get analysisClose => 'Bezárás';

  @override
  String get analysisMoves => 'Lépések';

  @override
  String get analysisForced => 'Kényszerített';

  @override
  String get analysisMarkBest => 'Legjobb';

  @override
  String get analysisMarkGood => 'Jó';

  @override
  String get analysisMarkDubious => 'Kétséges';

  @override
  String get analysisMarkError => 'Hiba';

  @override
  String get analysisMarkBlunder => 'Nagy hiba';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Átlagos veszteség: $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count bábulépési döntés';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Nagy hibák: $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Kockaveszteség: $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side duplázás nélkül dob';
  }

  @override
  String get metricExplainerTitle => 'A mutatók értelmezése';

  @override
  String get metricExplainerTooltip => 'Mit jelentenek ezek a számok?';

  @override
  String get metricExplainerMwcTitle => 'Meccsnyerési esély (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Ha ismert az állás, a lépéseket a meccs becsült megnyerési esélye szerint rangsorolja a rendszer. A veszteség százalékpontban (pp) szerepel: 1 pp azt jelenti, hogy 51%-ról 50%-ra csökken az esély. A jelenlegi kockatételt, valamint a gammon és backgammon kimeneteleket is figyelembe veszi. A kényszerpasszok és azok a dobások, amelyek után csak egy szabályos állás lehetséges, kimaradnak az átlagból.';

  @override
  String get metricExplainerSearchTitle => 'Keresés és bizonytalanság';

  @override
  String get metricExplainerSearchBody =>
      'A bábulépések rangsora statikus, 0 ply értékelés a lépés után, nem rollouts keresés. A meccsértékek meccsérték-táblát használnak, és nem számolnak a későbbi kockalépésekkel. A kockadöntések részleges, 0,7-es kockaélettartam-közelítést használnak elfogadott duplázás esetén. Egyik sem teljes kockás keresés. A 25 pontnál nagyobb hátrányokra a táblázat 25 pontos határértéke érvényes. A közeli értékelések mélyebb elemzéskor változhatnak; nincs kalibrált konfidenciaintervallum.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Ha az állás nem érhető el, a kocka nélküli equity azt mutatja, átlagosan hány pontot ér az állás — a várható eredményt 1-es kockánál. A +1,0 egy pont várható nyerését, a −0,5 fél pont várható elvesztését jelenti.';

  @override
  String get metricExplainerEquityLossTitle => 'Equity-veszteség (pl. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Minden lépésnél összehasonlítjuk a játékodat a motor legjobb lépésével. Az equity-veszteség azt mutatja, mennyi várható értéket adott fel a lépés. A −0,016 azt jelenti, hogy csak 0,016 ponttal volt rosszabb a legjobbnál — apró hiba. A 0,000 azt jelenti, hogy megtaláltad a legjobb lépést.';

  @override
  String get metricExplainerErrorRateTitle => 'Hibaarány';

  @override
  String get metricExplainerErrorRateBody =>
      'Az átlagos veszteség a kijelzett egységben átlagolja az értékelt bábulépéseket. A kockadöntéseknek külön átlaguk van. Az alacsonyabb érték közelebb áll a motor legjobb becsléseihez; ez nem kalibrált játékosértékelés.';

  @override
  String get metricExplainerMoveMarksTitle => 'Lépésminősítések';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC oktatási határok: legjobb < 0,05 pp, jó < 0,5 pp, kétséges < 1,5 pp, hiba < 3 pp, nagy hiba ≥ 3 pp. Ezek oktatási célú sávok, nem kalibrált bizonyossági vagy versenyértékelések.\n\nKocka nélküli equity oktatási határai:';

  @override
  String get metricExplainerThresholdBest => 'veszteség < 0,001';

  @override
  String get metricExplainerThresholdGood => 'veszteség < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'veszteség < 0,050';

  @override
  String get metricExplainerThresholdError => 'veszteség < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'veszteség ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Értem';

  @override
  String get historyTitle => 'Játszmaelőzmények';

  @override
  String historyLoadFailed(Object error) {
    return 'Az előzmények betöltése nem sikerült:\n$error';
  }

  @override
  String get historyEmpty => 'Még nem játszottál meccset.';

  @override
  String get historyDeleteConfirmTitle => 'Törlöd ezt a meccset?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nA meccs és minden rögzített játszmája véglegesen törlődik. Ez nem vonható vissza.';
  }

  @override
  String get actionCancel => 'Mégse';

  @override
  String get actionDelete => 'Törlés';

  @override
  String get historyDeleteFailed => 'A meccset nem sikerült törölni.';

  @override
  String get historyComplete => 'Befejezve';

  @override
  String historyWinner(Object side) {
    return '$side nyert';
  }

  @override
  String get historyUnfinished => 'Folyamatban';

  @override
  String get historyMatchTitle => 'Meccs';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'A meccs betöltése nem sikerült:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'A játszmák betöltése nem sikerült:\n$error';
  }

  @override
  String get historyNoGames => 'Még nincs rögzített játszma.';

  @override
  String historyGameTitle(int number) {
    return '$number. játszma';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Fehér $whiteScore — $blackScore Fekete (a meccs hossza: $matchLength)';
  }

  @override
  String get historyModeComputer => 'a számítógép ellen';

  @override
  String get historyModeTwoPlayers => 'Két játékos';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Játék a közelben';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Folyamatban';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side nyert $points ponttal ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'egyszeres';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Tanulási adatok frissítése';

  @override
  String get learningOptions => 'Tanulási beállítások';

  @override
  String get learningResetMenu => 'Gyakorlási előrehaladás visszaállítása';

  @override
  String get learningLoadFailed => 'A tanulási adatok betöltése nem sikerült.';

  @override
  String get actionRetry => 'Újrapróbálás';

  @override
  String get learningHeading => 'Tanulj a döntéseidből';

  @override
  String get learningIntro =>
      'Az előrehaladás ezen az eszközön marad. Nézd át a visszatérő témákat, majd próbáld újra a mentett állásokat a válasz megtekintése nélkül. A világos és sötét oldal külön is áttekinthető.';

  @override
  String get learningBothSides => 'Mindkét oldal';

  @override
  String get learningHumansOnly => 'Csak emberi döntések';

  @override
  String get learningHumanOnlyHelp =>
      'Kapcsold ki, ha a gép és a távoli játékos döntéseit is látni szeretnéd';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions döntés · $mistakes javítandó · $blunders nagy hiba';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Átlagos veszteség ($decisions döntés): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'A kényszerlépések kimaradnak. Ezek motorbecslések, nem versenyértékelések.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mentett játszma elemzést vagy frissítést igényel.',
      one: 'Egy mentett játszma elemzést vagy frissítést igényel.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Mentett játszmák elemzése';

  @override
  String get learningEmptyProfile =>
      'Játssz végig egy partit a tanulási profilodhoz. Egyedi döntéseket a játszma visszajátszásából is menthetsz.';

  @override
  String get learningOpenHistory => 'Meccselőzmények megnyitása';

  @override
  String get learningRecurringThemes => 'Visszatérő témák';

  @override
  String get learningNoThemes =>
      'Ebben a válogatásban még nincs visszatérő hibatéma.';

  @override
  String learningThemeDecisions(int count) {
    return '$count döntést érdemes újra átnézni. Egy állás több témához is tartozhat.';
  }

  @override
  String get learningSaveMistakes => 'Hibák mentése gyakorláshoz';

  @override
  String learningSavedMistakes(int count) {
    return '$count döntés került a gyakorlólistádra. A korábbi mentések megmaradnak.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Néhány döntést nem sikerült menteni. A sikeres mentések megmaradnak; próbáld újra.';

  @override
  String get learningSpacedPractice => 'Ütemezett ismétlés';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due esedékes · $saved mentett · $attempts próbálkozás · $successes sikeres felidézés';
  }

  @override
  String get learningIntervalsHelp =>
      'A határidőre sikeres ismétlések 1, 3, 7, 14 és 30 nap múlva térnek vissza. A hibás vagy felfedett válasz 10 perc múlva újra megjelenik. A korai ismétlés nem hosszabbítja az időközt.';

  @override
  String get learningAnswerContext =>
      'A gyakorlási eredmény az itt adott válaszaidat tükrözi akkor is, ha az eredeti állás az ellenfélé volt.';

  @override
  String get learningNoSavedPositions =>
      'Ments egy döntést a visszajátszásból, vagy használd a fenti hibamentő gombot.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return '$side döntése · $gameId. játszma';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Ismétlés: $date';
  }

  @override
  String get learningReadyToReview => 'Ismétlésre kész';

  @override
  String learningSuccessStreak(int count) {
    return '$count sikeres, esedékes ismétlés';
  }

  @override
  String get learningRemoveTooltip => 'Mentett döntés eltávolítása';

  @override
  String get learningRecentPractice => 'Legutóbbi gyakorlás';

  @override
  String get learningAnswerRevealed => 'Válasz felfedve';

  @override
  String get learningSuccessfulRecall => 'Sikeres felidézés';

  @override
  String get learningTryAgain => 'Döntés újbóli próbája';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · mentett állás: $positionId';
  }

  @override
  String get learningRemoveTitle => 'Eltávolítod ezt a feladatot?';

  @override
  String get learningRemoveBody =>
      'A feladat próbálkozásai törlődnek. Az eredeti játszma megmarad az előzményekben.';

  @override
  String get actionRemove => 'Eltávolítás';

  @override
  String get learningRemoveFailed => 'A feladat eltávolítása nem sikerült.';

  @override
  String get learningResetTitle => 'Visszaállítod a gyakorlás előrehaladását?';

  @override
  String get learningResetBody =>
      'Minden gyakorlási próbálkozás és ismétlési időköz törlődik. A mentett feladatok és a meccselőzmények megmaradnak; minden feladat azonnal esedékessé válik.';

  @override
  String get learningResetAction => 'Előrehaladás visszaállítása';

  @override
  String get learningResetFailed =>
      'A gyakorlási előrehaladást nem sikerült visszaállítani.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return '$completed játszma elemezve · $failed nem érhető el.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return '$completed játszma elemezve.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return '$completed játszma elemezve; $failed elemzése nem sikerült. Próbáld újra, amikor a motor készen áll.';
  }

  @override
  String get learningThemeHitting => 'Ütés és tempó';

  @override
  String get learningThemeSafety => 'Blotok és biztonság';

  @override
  String get learningThemePointMaking => 'Pontépítés';

  @override
  String get learningThemePrime => 'Prime-ok és blokádok';

  @override
  String get learningThemeAnchor => 'Horgonyok és kitörés';

  @override
  String get learningThemeRace => 'Versenyhatékonyság';

  @override
  String get learningThemeBearOff => 'Lehordás';

  @override
  String get learningThemeBarEntry => 'Visszalépés a bárról';

  @override
  String get learningThemeCube => 'Kockadöntések';

  @override
  String get analysisCubeNoDouble => 'Ne duplázz';

  @override
  String get analysisCubeDouble => 'Duplázás';

  @override
  String get analysisCubeTake => 'Elfogadás';

  @override
  String get analysisCubePass => 'Elutasítás';

  @override
  String get learningAnalysisStarting => 'Mentett játszmák elemzése…';

  @override
  String get tutorCubelessEstimateScope =>
      '0 ply becslés kocka nélkül · az eredmény nem érhető el';

  @override
  String get tutorLossPp => 'Veszteség százalékpontban';

  @override
  String get tutorLoss => 'Veszteség';

  @override
  String get scoreSheetNoMoves => 'Még nincsenek lépések';

  @override
  String get tutorOptions => 'Tutorbeállítások';

  @override
  String get tutorCollapseTooltip => 'Tutor összecsukása';

  @override
  String get tutorExpandTooltip => 'Tutor kibontása';

  @override
  String get onlineTitle => 'Online játék';

  @override
  String get onlineUnassistedNote =>
      'Az élő online játékokhoz nincs tutor. A meccs után nézd át a lépéseidet, és gyakorold a hibákat.';

  @override
  String get onlineNotConfiguredTitle =>
      'Az online játék nincs beállítva ebben a verzióban';

  @override
  String get onlineNotConfiguredBody =>
      'Ehhez a verzióhoz nincs Firebase-háttérszolgáltatás csatlakoztatva, ezért a meccsek létrehozása és az azokhoz való csatlakozás nem érhető el.';

  @override
  String get onlineErrorNoMatch =>
      'Nincs ilyen kódú meccs. Ellenőrizd, és próbáld újra.';

  @override
  String get onlineErrorSeatTaken =>
      'A meccs már nem nyitott — a helyet elfoglalták.';

  @override
  String get onlineErrorPermission => 'Nincs hozzáférésed ehhez a meccshez.';

  @override
  String get onlineErrorGeneric => 'Hiba történt. Próbáld újra.';

  @override
  String get onlineMatchFinished =>
      'Ez a meccs véget ért — már nem lehet újracsatlakozni.';

  @override
  String get onlineEnterCodeError => 'Add meg a meccs kódját.';

  @override
  String get onlineOpponentShort => 'Ellenf.';

  @override
  String get onlineMatchInProgress => 'Meccs folyamatban';

  @override
  String onlineResumePrompt(Object code) {
    return 'A(z) $code meccset játszottad.';
  }

  @override
  String get onlineRejoin => 'Újracsatlakozás';

  @override
  String get onlineForgetMatch => 'Meccs elfelejtése';

  @override
  String get onlineCreateTitle => 'Meccs létrehozása';

  @override
  String get onlineMatchLength => 'Meccs hossza';

  @override
  String get onlineNoCubeTitle => 'Játék kocka nélkül';

  @override
  String get onlineNoCubeSubtitle => 'Ebben a meccsben nincs duplázókocka';

  @override
  String get onlineCreate => 'Létrehozás';

  @override
  String get onlineWaitingOpponent => 'Ellenfélre várakozás…';

  @override
  String get onlineShareCode => 'Kód megosztása';

  @override
  String get onlineCopyCode => 'Kód másolása';

  @override
  String get onlineCodeCopied => 'Kód másolva';

  @override
  String get onlineJoinTitle => 'Csatlakozás meccshez';

  @override
  String get onlineRoomCode => 'Meccskód';

  @override
  String get onlineJoin => 'Csatlakozás';

  @override
  String get lanTitle => 'Játék a közelben';

  @override
  String get lanTabHost => 'Házigazda';

  @override
  String get lanTabJoin => 'Csatlakozás';

  @override
  String get lanUnassistedNote =>
      'Az élő közeli játékok tutor nélkül zajlanak. A meccs után nézd át a lépéseidet, és gyakorold a hibákat.';

  @override
  String get lanGameStartFailed =>
      'A játék nem indult el. A másik eszköz megpróbálhat újra csatlakozni.';

  @override
  String get lanHostPortInUse =>
      'A tárhely indítása nem sikerült — a port már használatban van. Zárd be a Backgammon Buddy másik példányát.';

  @override
  String get lanHostStartFailed =>
      'A tárhely nem indult el. Ellenőrizd a Wi-Fi-kapcsolatot.';

  @override
  String get lanHostTitle => 'Játék házigazdája';

  @override
  String get lanStartHosting => 'Tárhely indítása';

  @override
  String get lanHostHelp =>
      'Mindkét eszköznek ugyanazon a Wi-Fi-hálózaton kell lennie. Ez az eszköz dob a kockával és vezeti az eredményt.';

  @override
  String get lanWaitingPlayerTitle => 'Várakozás játékosra';

  @override
  String get lanRoomCodeInfo =>
      'Mondd el ezt a kódot a másik játékosnak. Ezzel tud belépni — az alkalmazás nem küldi el a hálózaton.';

  @override
  String get lanWaitingPlayer => 'Várakozás játékosra…';

  @override
  String get lanStopHosting => 'Tárhely leállítása';

  @override
  String lanFindNearbyPort(int port) {
    return 'Kérd meg a másik eszközt a közeli játékok keresésére. Figyelés a(z) $port porton.';
  }

  @override
  String get lanOnNetwork => 'Ezen a hálózaton';

  @override
  String get lanCopyAddress => 'Cím másolása';

  @override
  String get lanAddressCopied => 'Cím másolva';

  @override
  String get lanScanHostTitle => 'Házigazda beolvasása';

  @override
  String get lanScanHostHelp =>
      'A másik eszköz QR-kódot mutat a Házigazda képernyőn. Beolvasás után kitöltődik a cím és a szobakód.';

  @override
  String get lanScanQr => 'QR-kód beolvasása';

  @override
  String get lanScannerUnavailable =>
      'A kamera vagy az engedélye nem érhető el. Add meg lent a címet és a szobakódot.';

  @override
  String get lanInvalidQr =>
      'Ez a QR-kód nem Backgammon Buddy-játékhoz tartozik. Olvasd be a másik eszköz Házigazda képernyőjén lévő kódot.';

  @override
  String get lanScannerFailed =>
      'A szkenner nem nyitható meg. Add meg helyette a címet és a kódot.';

  @override
  String get lanNearbyGames => 'Közeli játékok';

  @override
  String get lanSearching => 'Közeli játékok keresése…';

  @override
  String get lanNoGamesFound =>
      'Még nem találtunk játékot. Ellenőrizd, hogy a másik eszköz hostol, és mindkettő ugyanazon a Wi-Fi-hálózaton van — vagy add meg a címét.';

  @override
  String get lanStillSearching => 'Keresés folyamatban…';

  @override
  String get lanEnterAddress => 'Cím megadása';

  @override
  String get lanEnterAddressHelp =>
      'Az automatikus keresés nem működik minden hálózaton (az iOS teljesen le is tilthatja). A Házigazda képernyőn láthatod, mit kell beírni.';

  @override
  String get lanIpAddress => 'IP-cím';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => '1 és 65535 közötti portot adj meg.';

  @override
  String get lanEnterAddressError => 'Add meg a másik eszközön látható címet.';

  @override
  String get lanEnterRoomCodeError =>
      'Add meg a másik eszközön látható 4 jegyű kódot.';

  @override
  String get lanJoinWrongCode =>
      'Hibás szobakód. Ellenőrizd a másik eszközön látható négy számjegyet.';

  @override
  String get lanJoinVersionMismatch =>
      'A másik eszközön a Backgammon Buddy másik verziója fut.';

  @override
  String get lanJoinHandshakeFailed =>
      'Az eszköz nem Backgammon Buddy-ként válaszolt. Ellenőrizd a címet és a portot.';

  @override
  String get lanJoinFailed =>
      'Nem sikerült csatlakozni. Ellenőrizd a címet és a szobakódot, majd próbáld újra.';

  @override
  String lanJoinTarget(Object name) {
    return 'Csatlakozás ide: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Add meg a másik eszközön látható 4 jegyű kódot.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Csatlakozás ide: $name';
  }

  @override
  String get lanConnect => 'Kapcsolódás';

  @override
  String get lanBack => 'Vissza';

  @override
  String get lanTryAgain => 'Próbáld újra';

  @override
  String get lanStatusBusy => 'A szoba használatban van — várakozás…';

  @override
  String get lanStatusReconnecting =>
      'Megszakadt a kapcsolat — újrapróbálkozás…';

  @override
  String get lanStatusConnected => 'Kapcsolódva — a meccs indul…';

  @override
  String get lanStatusFailed => 'Nem sikerült csatlakozni.';

  @override
  String get lanStatusConnecting => 'Kapcsolódás…';

  @override
  String get diagnosticsCopySuccess => 'A diagnosztika a vágólapra másolva';

  @override
  String get diagnosticsReviewTitle => 'Diagnosztikai jelentés áttekintése';

  @override
  String get diagnosticsPrivacyNotice =>
      'A piszkozat megnyitásakor az alábbi adatok elküldésre kerülnek a GitHubra, beleértve az alkalmazás verzióját, a platformot és a hibák részleteit. Nyilvános hibajegy csak akkor jön létre, ha ott beküldöd. Ha az adatok személyes információt tartalmaznak, szakítsd meg a műveletet, és a Másolás segítségével készíts jelentést.';

  @override
  String get diagnosticsCancel => 'Mégse';

  @override
  String get diagnosticsOpenGitHub => 'GitHub megnyitása';

  @override
  String get diagnosticsTitle => 'Diagnosztika';

  @override
  String get diagnosticsReportTooltip => 'Hiba bejelentése a GitHubon';

  @override
  String get diagnosticsCopyTooltip => 'Másolás a vágólapra';

  @override
  String get diagnosticsClearTooltip => 'Napló törlése';

  @override
  String get diagnosticsEmpty =>
      'Nincs rögzített hiba.\n\nHa hiba történik, itt naplózzuk. Térj vissza, és másold a részleteket a hibajelentésbe.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · $matchLength pontig';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · $matchLength pontig';
  }

  @override
  String get gameHudYou => 'Te';

  @override
  String get gameHudAi => 'Számítógép';

  @override
  String gameHudGameNumber(int number) {
    return '$number. játszma';
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
    return '$whiteLabel – $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'ellenfél: $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'ellenfél: $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pip';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Duplázás';

  @override
  String get gameHudMoreActions => 'További műveletek';

  @override
  String get gameHudSurrender => 'Feladás…';

  @override
  String get gameHudThinking => 'Gondolkodik';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Csak dobás előtt, a saját körödben duplázhatsz.';

  @override
  String get gameHudNoDoubleCrawford =>
      'A Crawford-partiban nincs duplázás — ez az egyetlen játszma dönti el a meccset.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Csak a kocka tulajdonosa duplázhat, most pedig az ellenfélnél van.';

  @override
  String get gameHudDoubleUnavailable => 'Most nem lehet duplázni.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (a meccs hossza: $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner megnyerte ezt a partit ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner megnyerte ezt a partit ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner megnyerte ezt a partit ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner megnyerte ezt a partit ($points) — $loser elutasította a duplázást.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner megnyerte ezt a partit ($points) — $loser feladta.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Add tovább az eszközt';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name következik';
  }

  @override
  String get gameDialogTapToContinue => 'Koppints a folytatáshoz';

  @override
  String get gameDialogCubeOfferedTitle => 'Duplázási ajánlat';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler $value értékű duplázást ajánl. Elfogadod vagy elutasítod?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Elutasítás';

  @override
  String get gameDialogTake => 'Elfogadás';

  @override
  String get gameDialogResignationTitle => 'Feladási ajánlat';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner felajánlja a $value értékű feladást. Elfogadod?';
  }

  @override
  String get gameDialogResignSingle => 'egyszeres játszma';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Elutasítás';

  @override
  String get gameDialogAccept => 'Elfogadás';

  @override
  String gameResultGameNumber(int number) {
    return '$number. játék';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Meccs állása: $score';
  }

  @override
  String get gameResultRolls => 'Dobások';

  @override
  String get gameResultDiceNote =>
      'A dobások átlagos összege gyakran 7 körül ingadozik. Ez a kis minta nem bizonyítja a kockák torzítását.';

  @override
  String get gameResultRatingNotAvailable =>
      'Még nincs lépésértékelés. A teljes elemzéshez tekintsd át a játékot.';

  @override
  String get gameResultRematch => 'Visszavágó';

  @override
  String get gameDialogGameOverTitle => 'Játszma vége';

  @override
  String get gameDialogNextGame => 'Következő játszma';

  @override
  String get gameDialogMatchOverTitle => 'Meccs vége';

  @override
  String get gameDialogNobody => 'Senki';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner nyerte a meccset.';
  }

  @override
  String get gameDialogSavedToHistory => 'Mentve az előzményekbe';

  @override
  String get gameDialogDone => 'Kész';

  @override
  String get gameTapNoLegalMove =>
      'Ezzel a bábuval nem lehet szabályosan lépni a megmaradt kockákkal';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Ezzel a bábuval nem lehet szabályosan lépni a megmaradt kockákkal — próbáld visszavonni a lépést';

  @override
  String get gameDragHint =>
      'Tipp: húzd a bábukat, vagy koppints rájuk — ezt a Beállításokban módosíthatod';

  @override
  String get commonGotIt => 'Értem';

  @override
  String get gameHintStageBeforeHint =>
      'Először hajts végre egy teljes szabályos lépést, utána kérj tippet.';

  @override
  String get surrenderTitle => 'Feladás';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player feladja az aktuális partit.';
  }

  @override
  String get surrenderConcedes => 'Feladod az aktuális partit.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return '$player körének elején érhető el';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'A köröd elején érhető el';

  @override
  String get commonCancel => 'Mégse';

  @override
  String get surrenderSingle => 'Egyszeres (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Ki adja fel ezt a partit?';

  @override
  String get commonDone => 'Kész';

  @override
  String get cubeDouble => 'Duplázás';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Most a másik játékos következik.';

  @override
  String get cubeBlockedCrawford =>
      'A Crawford-partiban nem használható a duplázókocka.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Csak a kocka tulajdonosa duplázhat, most pedig az ellenfélé.';

  @override
  String get cubeBlockedUnavailable => 'Most nem lehet duplázni.';

  @override
  String get gameStatusRolling => 'Dob…';

  @override
  String get gameStatusThinking => 'Gondolkodik…';

  @override
  String gameStatusPlayersTurn(String player) {
    return '$player következik';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Duplázás — az ellenfélnek el kell fogadnia';

  @override
  String get cubeAdviceOpponentPass =>
      'Duplázás — az ellenfélnek el kell utasítania';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Hiba: $error';
  }

  @override
  String get privacyTitle => 'Adatvédelem és adatok';

  @override
  String get privacyAppTitle => 'Freevia Backgammon Buddy';

  @override
  String get privacyIntro =>
      'Ez az oldal ismerteti, hogyan kezeli az alkalmazás az adatait.';

  @override
  String get privacyLocalTitle => 'Játékok és oktatás az eszközén';

  @override
  String get privacyLocalBody =>
      'A helyi játszmák, beállítások, elemzések és gyakorlási eredmények ezen az eszközön tárolódnak. A backgammon motor és az oktatói magyarázatok itt futnak. A mentett játszma törlése az Előzményekből a hozzá tartozó mentett feladatokat és próbálkozásokat is törli. Az egyes feladatokat törölheti, vagy a Tanulás részen visszaállíthatja a haladást; a helyi hibajelentéseket a Beállítások → Diagnosztika részen törölheti. Az eszköz biztonsági mentési beállításai a játszmaelõzményekre is vonatkozhatnak. Az online bejelentkezési adatok az eszköz védett tárhelyén maradnak.';

  @override
  String get privacyOnlineTitle => 'Online és közeli játék';

  @override
  String get privacyOnlineBody =>
      'Az online játék névtelen játékosazonosítót, játszmabeállításokat, lépéseket és a kockadobások egyeztetési adatait küldi a Google Firebase szolgáltatásnak, hogy mindkét játékos ugyanazt a játszmát játszhassa. Az Előzmények törlése ezen az eszközön nem törli az online adatokat. A tárolt játszmák létrehozásuk után 30 nappal lejárnak; az ütemezett takarítás eltávolítja felhőnaplóikat. A játszmaadatokat az EU-ban tároljuk; a Firebase Authentication az Egyesült Államokban dolgozza fel a bejelentkezési adatokat. A Google felé irányuló online kapcsolat titkosított. A közeli játék titkosítatlan helyi kapcsolaton cserél adatot a másik eszközzel; használjon megbízható Wi-Fi-hálózatot.';

  @override
  String get privacyDiagnosticsTitle =>
      'Nem kötelező használati és összeomlási diagnosztika';

  @override
  String get privacyDiagnosticsBody =>
      'A megosztás addig ki van kapcsolva, amíg a Beállításokban nem engedélyezi. Bekapcsolás esetén a Google Firebase használati eseményeket, alkalmazás- és eszközadatokat, teljesítményméréseket és összeomlási jelentéseket kap az alkalmazás fejlesztéséhez. Bármikor kikapcsolhatja, így leáll az új, nem kötelező adatgyűjtés. A már elküldött adatokat ez nem törli. A helyi diagnosztika és az online játszmák ettől a választástól függetlenül működnek.';

  @override
  String get privacyCameraTitle => 'Kamera közeli QR-kódokhoz';

  @override
  String get privacyCameraBody =>
      'Az opcionális kamera a közeli játékok QR-kódjait olvassa be. A képek feldolgozása az eszközön történik; nem mentjük és nem töltjük fel őket. Megtagadhatja a kamera-hozzáférést, és kézzel is megadhatja a gazdagép címét. Ez a verzió nem használ mikrofont és nem támogat fizikai táblás játékot.';

  @override
  String get privacyFeedbackTitle => 'Az Ön által elküldött visszajelzés';

  @override
  String get privacyFeedbackBody =>
      'A visszajelzés egy áttekinthető GitHub-issue vázlatot nyit meg. Megnyitásakor az alkalmazás verziója és platformja elküldésre kerül a GitHubnak; a Diagnosztikából küldött visszajelzés hibaadatokat is tartalmazhat. Semmi sem jelenik meg, amíg el nem küldi. Az issue-k nyilvánosak lehetnek, ezért küldés előtt távolítsa el a személyes adatokat.';

  @override
  String get privacyContactTitle => 'Adatvédelmi kapcsolat';

  @override
  String get privacyReadPolicy => 'Adatvédelmi irányelvek';

  @override
  String get privacyPolicyOpenFailed =>
      'Az adatvédelmi irányelvek nem nyithatók meg.';

  @override
  String get privacySupportTitle => 'Súgó és támogatás';

  @override
  String get privacySupportOpenFailed =>
      'A támogatás nem nyitható meg. Lépjen kapcsolatba velünk: support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Törli az online identitást és az adatokat?';

  @override
  String get privacyDeleteConfirmBody =>
      'Ez azonnal megszünteti az identitás felhőben tárolt játszmáihoz való hozzáférést mindkét játékos számára, és kéri az identitás, valamint a megosztott online naplók törlését 30 napon belül. A Google-nak a fiók törlése után akár 180 napra is szüksége lehet az Authentication-adatok eltávolításához az aktív és biztonsági mentési rendszerekből. A helyi Előzmények és gyakorlás ezen az eszközön marad. A korábban elküldött opcionális diagnosztika különálló; ezekkel kapcsolatban írjon a privacy@freevia.org címre. Ez a kérés nem vonható vissza.';

  @override
  String get privacyRequestDeletion => 'Törlés kérése';

  @override
  String get privacyDeleteSectionTitle => 'Online adatok törlése';

  @override
  String get privacyDeleteInstructions =>
      'A tulajdonjog igazolásához használja az eszközön mentett bejelentkezést. A játékosazonosító vagy meghívókód önmagában nem igazolja a tulajdonjogot. A csak helyben játszóknak nincs szükségük online fiókra.';

  @override
  String get privacySendingRequest => 'Kérés küldése…';

  @override
  String get privacyDeleteAction => 'Online identitás és adatok törlése';

  @override
  String get privacyDeleteRequested =>
      'A törlést kértük. Ez az online identitás kijelentkezett. Felhőadatait 30 napon belül töröljük. Az online játék újrakezdése új identitást hoz létre. A Google Authentication-adatainak eltávolítása akár 180 napig tarthat. Segítségért írjon a privacy@freevia.org címre.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'A törlést kértük, a felhőadatokat 30 napon belül töröljük. Az eszköz nem tudta törölni a mentett bejelentkezést, de az online identitás több játszmához nem férhet hozzá. A Google Authentication-adatainak eltávolítása akár 180 napig tarthat. Írjon a privacy@freevia.org címre.';

  @override
  String get privacyDeleteNoIdentity =>
      'Nincs használható online identitás mentve ezen az eszközön. Új fiók nem jött létre. Ha korábban online játszott, írjon a privacy@freevia.org címre; a tárolt játszmák 30 nap után lejárnak.';

  @override
  String get privacyDeleteRequestFailed =>
      'A törlési kérés nem erősíthető meg. Ellenőrizze a kapcsolatot, próbálja újra, vagy írjon a privacy@freevia.org címre.';

  @override
  String get privacyConsentTitle =>
      'Megosztja a használati és összeomlási diagnosztikát?';

  @override
  String get privacyConsentBody =>
      'Ez használati eseményeket, alkalmazás-/eszközadatokat, összeomlási jelentéseket és teljesítményméréseket küld a Google Firebase szolgáltatásnak. A megosztás nem kötelező. A játék és az oktatás nélküle is működik, és a Beállításokban bármikor kikapcsolhatja.';

  @override
  String get privacyKeepOff => 'Maradjon kikapcsolva';

  @override
  String get privacyShareDiagnostics => 'Diagnosztika megosztása';

  @override
  String get privacySaveFailed =>
      'Az adatvédelmi beállítás nem menthető. Próbálja újra.';

  @override
  String get privacySettingsSubtitle =>
      'Mi marad az eszközén, és mi kerül megosztásra';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Használati és összeomlási diagnosztika megosztása';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Nem kötelező · alapértelmezés szerint ki';

  @override
  String get lanScanToJoin => 'Beolvasás a csatlakozáshoz';

  @override
  String get lanScanHostCode => 'Gazdakód beolvasása';

  @override
  String get lanEnterAddressInstead => 'Cím megadása helyette';

  @override
  String get lanQrAccessibilityLabel =>
      'QR-kód a játszmához való csatlakozáshoz';

  @override
  String get lanJoinInstruction =>
      'A másik eszközön nyissa meg a Közeli játékot, válassza a Csatlakozás lehetőséget, majd olvassa be ezt a QR-kódot.';

  @override
  String get lanTorch => 'Zseblámpa';

  @override
  String get lanCameraPermissionDenied =>
      'A Backgammon Buddy nem fér hozzá a kamerához. Engedélyezze a hozzáférést az eszköz beállításaiban, vagy írja be a másik eszközön látható címet.';

  @override
  String get lanCameraUnsupported =>
      'Ez az eszköz nem tud QR-kódot beolvasni. Írja be a másik eszközön látható címet.';

  @override
  String get lanCameraStartFailed =>
      'A kamera nem indítható el. Írja be a másik eszközön látható címet.';

  @override
  String get lanPointCameraAtQr =>
      'Irányítsa a kamerát a másik eszköz QR-kódjára.';

  @override
  String get physicalBuddyUnavailableTitle => 'Játék fizikai táblán';

  @override
  String get physicalBuddyUnavailableBody =>
      'A fizikai táblás játék ebben a verzióban nem érhető el. A képernyős játékok, oktatás és gyakorlás a főképernyőről érhető el.';

  @override
  String get homePlayWithBuddy => 'Játék Buddyval';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammon tábla. $status';
  }

  @override
  String get boardWhiteToRoll => 'A fehér következik a dobással.';

  @override
  String get boardBlackToRoll => 'A fekete következik a dobással.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'A fehér lép, dobás: $die1 és $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'A fekete lép, dobás: $die1 és $die2.';
  }

  @override
  String get boardDoubleOffered => 'Duplázást ajánlottak.';

  @override
  String get boardResignationOffered => 'Feladást ajánlottak.';

  @override
  String get boardGameOver => 'A játék véget ért.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Hiba]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ötlet]: Backgammon Buddy';

  @override
  String get feedbackBugSummary => 'Írja le röviden, mi történt.';

  @override
  String get feedbackBugReproduction =>
      'Írja le a hiba előidézésének lépéseit.';

  @override
  String get feedbackBugExpected => 'Írja le, mit várt volna eredményként.';

  @override
  String get feedbackIdeaNeed =>
      'Írja le, mit szeretett volna tenni vagy megtanulni.';

  @override
  String get feedbackIdeaSuggestion =>
      'Írja le, milyen változást találna hasznosnak.';

  @override
  String get feedbackExcerptTruncated =>
      '(rövidítve — a teljes naplóért használja a Diagnosztika képernyő Vágólapra másolás funkcióját)';

  @override
  String get boardWhiteToMoveNoRoll => 'A fehér következik.';

  @override
  String get boardBlackToMoveNoRoll => 'A fekete következik.';

  @override
  String get feedbackFieldVersion => 'Alkalmazás verziója';

  @override
  String get feedbackFieldPlatform => 'Platform';

  @override
  String get feedbackFieldSummary => 'Mi történt';

  @override
  String get feedbackFieldReproduction => 'A reprodukálás lépései';

  @override
  String get feedbackFieldExpected => 'Elvárt eredmény';

  @override
  String get feedbackFieldNeed => 'Amit tenni szeretett volna';

  @override
  String get feedbackFieldIdea => 'Javasolt módosítás';

  @override
  String get buddySetupTitle => 'Játssz a Buddy-vel';

  @override
  String get buddySetupSideLabel => 'Buddy játszik';

  @override
  String get buddySetupSeatLabel => 'A te ülésed';

  @override
  String get buddySetupSeatNear => 'Telefonon keresztül';

  @override
  String get buddySetupSeatFar => 'Szemben';

  @override
  String get buddySetupSeatHelp =>
      'A tábla melyik oldalán állsz. A Buddy így számozza a pontokat, és hogyan különbözteti meg a nyitókockát a sajátjától.';

  @override
  String get buddySetupVoiceLabel => 'Hogyan beszél Buddy';

  @override
  String get buddySetupVoiceTerse => 'Tömör';

  @override
  String get buddySetupVoiceFriendly => 'Barátságos';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22” – jelölés, ahogy két játékos egy táblánál valójában beszél.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Egy ellenőrzőt 13-ról 8-ra, egyet 24-ről 22-re mozgatni.”';

  @override
  String get buddySetupTutorHelp =>
      'Az oktatói kommentárok és a mozgásmagyarázatok követik a Beállításokban mentett oktatói beállításokat. A Buddy időnként visszajelzést ad a játékaid után; A gépelt kocka és a kézi mozdulatok ugyanúgy működnek.';

  @override
  String get buddySetupCalibrate => 'Kalibrálja a táblát';

  @override
  String get buddyFixAim => 'Rögzítse a célt';

  @override
  String get buddyWaitingForOpening => 'Buddy várja a mérkőzést indító dobást.';

  @override
  String get buddyPromptLostBoard =>
      'A Buddy elvesztette a táblát. Rögzítsd a célt, és a meccs ott folytatódik, ahol abbamaradt.';

  @override
  String get buddyPromptWaitingPicture =>
      'Képre várva Buddy tud olvasni. Semmi sem veszett el.';

  @override
  String get buddyPromptTypeDice =>
      'A Buddy nem találja a kockát. Írja be helyette a tekercset.';

  @override
  String get buddyPromptPlay =>
      'Játssz a táblán. Koppintson ide, ha a Buddy nem látja.';

  @override
  String get buddyPromptWhichPlay => 'Melyik lépést tetted meg?';

  @override
  String get buddyPromptCube => 'Buddy dupláz. Elfogadod vagy elutasítod?';

  @override
  String get buddyPromptMakeMove =>
      'Végezze el a Buddy lépését a táblán, és a Buddy folytatja.';

  @override
  String get buddyPromptThinking => 'Buddy gondolkodik.';

  @override
  String get buddyPromptWaitingCalibration => 'Várakozás a kalibrációra.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'A Buddy továbbra sem látja a mozgását. Az alatta lévő tábla az általa tartott pozíciót mutatja.';

  @override
  String get buddyPromptNotLegal => 'Ez nem szabályos lépés.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Ez nem szabályos lépés. $reason';
  }

  @override
  String get buddyThrowOpening => 'Dobd a nyitókockát – egy-egy kockát.';

  @override
  String get buddyThrowUser => 'Dobd a kockádat.';

  @override
  String get buddyThrowBuddy => 'Dobd a Buddy kockáját.';

  @override
  String get buddyMatchOver => 'A meccsnek vége.';

  @override
  String get buddyYouWin => 'Megnyered a meccset.';

  @override
  String get buddyBuddyWins => 'Buddy nyeri a mérkőzést.';

  @override
  String get buddyDoubleNoGame =>
      'Még nincs duplázható játék – a nyitódobás az első.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Csak a körödön duplázhatsz, mielőtt dobsz.';

  @override
  String get buddyDoubleCrawford =>
      'Nincs duplázás a Crawford meccsen – ez az egyetlen játszma dönti el a meccset.';

  @override
  String get buddyDoubleNotOwner =>
      'Csak a kocka tulajdonosa duplázhat, és jelenleg a másik oldal birtokolja.';

  @override
  String get buddyDoubleUnavailable => 'A duplázás jelenleg nem elérhető.';

  @override
  String get buddyLookingAtBoard => 'Buddy a táblát nézi.';

  @override
  String get buddyCameraPlayFallback =>
      'Továbbra is játszhatod a meccset: írj be minden dobást a kockatáblára, és koppints a játékaidra az alábbi táblán.';

  @override
  String get buddySkipCheck => 'Hagyja ki ezt az ellenőrzést';

  @override
  String get buddyFixedIt => 'javítottam';

  @override
  String get buddyDrop => 'Elutasítom';

  @override
  String get buddyTake => 'Elfogadom';

  @override
  String get buddyDone => 'Kész';

  @override
  String get buddyTranscriptLabel => 'Amit Buddy mondott';

  @override
  String get buddyUndo => 'Visszavonás';

  @override
  String get buddyConfirm => 'Erősítse meg';

  @override
  String get buddyDice => 'Dobókocka';

  @override
  String get buddyDouble => 'Duplázás';

  @override
  String get buddyDicePadTitle => 'Mit dobtál?';

  @override
  String get buddyEnterRoll => 'Add meg a dobást';

  @override
  String get buddyContextBeforeGame => 'Játssz a Buddy-vel';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Ön $you–$buddy Buddy · - $length · Játék $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'A kamerát nem lehetett elindítani. Ellenőrizze az engedélyeket, és próbálja újra.';

  @override
  String get buddyCameraPermission =>
      'A Backgammon Buddy nem rendelkezik engedéllyel a kamera használatához. Engedélyezze a kamera hozzáférését az eszköz beállításaiban, és próbálja újra.';

  @override
  String get buddyCalibrationTitle => 'Mutasd meg a Buddy táblát';

  @override
  String get buddyCalibrationCornersFold =>
      'Húzza a négy külső fogantyút a filc sarkaira – ne a fa peremre –, a négy kicsiket pedig a varratokra, ahol a zsanér találkozik a távoli és a közeli élekkel.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Húzza a fogantyúkat a filc egyik sarkára – a játékfelületre, ne a körülötte lévő fa peremre.';

  @override
  String get buddyCalibrationCheckLines =>
      'Ezután ellenőrizze a tizenkét sort lefelé mindkét felében: mindegyiknek a tábla egy pontján kell futnia. Az a vonal, amely kihagyja a pontját, olyan fogantyú, amely bökést igényel.';

  @override
  String get buddyCalibrationSeatQuestion => 'Melyik fele az otthoni táblád?';

  @override
  String get buddyCalibrationSeatHelp =>
      'A kép aljához legközelebb eső fele. Ez rögzíti a pontszámokat, így a fenti vonalak vele együtt mozognak.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Tartsa mozdulatlanul a telefont. A Buddy várja, hogy a kép rendeződjön, mielőtt megtanulná ezt a táblát.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Ez a te táblád?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'A Buddy az imént tanult táblát nézi.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'A képre rajzolt férfiak Buddy szerint a táblán vannak. Ha bármelyik rossz helyen van, kezdje elölről – most másodpercekbe kerül, és egy játékkal később.';

  @override
  String get buddyCalibrationNext => 'Következő';

  @override
  String get buddyCalibrationBack => 'Vissza';

  @override
  String get buddyCalibrationCapture => 'Elfog';

  @override
  String get buddyCalibrationStartOver => 'Kezdje elölről';

  @override
  String get buddyCalibrationLooksRight => 'Jól néz ki';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Ez a négy fogantyú nem körvonalaz egy táblát – az egyik keresztezett egy másikat. Húzza vissza őket a filc sarkaihoz.';

  @override
  String get buddyCalibrationPrepTitle => 'Először három dolog';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Vegye le a kockát a tábláról.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'A Buddy most megtanulja a csupasz táblát. A nemezen hagyott kocka ennek részeként megtanulható, majd a Buddy soha többé nem láthatja a kockát ezen a munkameneten.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Állítsd fel a korongokat a kezdőállásba.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'A harminc korong ismert helyzete alapján Buddy felismeri a tábla két színét.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Illessze a teljes játékteret a képre.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Ezután hagyja a telefont ott, ahol van. Ha elmozdul, a Buddy ezt fogja mondani, és visszatolja a sarkokat.';

  @override
  String get buddyCalibrationBoardKind => 'Milyen tábla ez?';

  @override
  String get buddyCalibrationFlatBoard => 'Lapos tábla';

  @override
  String get buddyCalibrationFoldingBoard => 'Összecsukható tok';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Egy összecsukható deszkához négy extra fogantyú szükséges a zsanérvarratokon.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'A Buddy mód valódi táblát néz, így nem indul el a kamera nélkül. Az alkalmazásban lévő összes többire nincs hatással.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Zsanérvarrás $number 4-ből';
  }

  @override
  String buddyHandleCorner(int number) {
    return '4-ből $number táblasarok';
  }

  @override
  String get buddyNudgeLeft => 'Bökjön balra';

  @override
  String get buddyNudgeRight => 'Bökjön jobbra';

  @override
  String get buddyNudgeUp => 'Bökd fel';

  @override
  String get buddyNudgeDown => 'Bökd le';

  @override
  String get buddyCalibrationProblemCorners =>
      'Ez a négy sarok nem körvonalaz egy táblát. Húzza az egyes fogantyúkat a játéktér egyik sarkába, és próbálja újra.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Ez a nyolc pont nem körvonalaz egy összecsukható táblát. Tegyen négyet a játéktér sarkaira és négyet a zsanérvarratokra, majd próbálkozzon újra.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Magát a táblát nem tudom kivenni – minden része le van takarva, vagy elveszett az árnyékban vagy a tükröződésben. Tisztítsa meg a táblát, adjon hozzá egy kis fényt, és próbálja újra.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Nem tudom kivenni a $region-t – lehet, hogy valami nyugszik rajta, vagy a tábla sarka túl sötét ahhoz, hogy leolvasható. Törölje ki, vagy adjon hozzá egy kis fényt, és próbálja újra.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Innen nézve a két dámakészlet túlságosan hasonlít egymásra. Több fény, vagy a tábla kevesebb vakító szöge általában javítja.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'A korongok nincsenek kezdőállásban: a(z) $number. mezőn rossz színű korong van. Állítsd fel a kezdőállást, majd kalibrálj újra.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Annyi fény van a táblán, hogy a színei egymásba mosódnak. Tompítsa el a fényt, vagy mozgassa a telefont úgy, hogy a lámpa ne világítson egyenesen rá.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'El tudom olvasni ezt a táblát, de nem úgy, mint egy hamarosan induló játékot. Készítse fel a férfiakat a játék kezdetére, majd kalibrálja újra.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Látom a táblát, de innen nem tudom biztosan megszámolni az egymás mögött álló korongokat, így tévedhetek a darabszámban. Általában segít több fény a közeli mezőkön vagy kissé magasabb kameranézet.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Nem látom az egész táblát. Húzza vissza a telefont, vagy húzza a sarkokat a játékmezőre.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Már nem látom az egész táblát – a $region kívül van a képen. Állítsa be újra a kamerát, vagy ellenőrizze újra a sarkokat.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'Ez úgy néz ki, mint a kiinduló helyzet.';

  @override
  String get buddyConfirmNoCheckers =>
      'Nem látok korongot a kezdőállás mezőin. Állítsd fel a kezdőállást, és próbáld újra.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'A tábla nincs beállítva a játék indításához: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return 'A $region üresnek tűnik, de a játék a $side karakterlánccal kezdődik.';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region $side van rajta, de a játék üresen indul';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'A $region-n a $observed van, ahol a játék a $expected-vel kezdődik';
  }

  @override
  String get buddyReadabilityMotion =>
      'Maradj egy pillanatra – elvesztem a táblát, miközben a telefon mozog.';

  @override
  String get buddyReadabilityWrongFrame =>
      'A kép, amit kapok, nem az, amelyre ezt a táblát felállították, így nem tudok rajta semmit sorba rendezni. Állítsa be újra a táblát innen.';

  @override
  String get buddyReadabilityBlur =>
      'A kép túl lágy ahhoz, hogy le lehessen olvasni a táblát. Adjon egy pillanatot a fényképezőgépnek, hogy fókuszáljon.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'A tábla nem ott van, ahol megtanultam. Állítsd be újra a sarkokat, és egyenesen visszaveszem a játékot.';

  @override
  String get buddyReadabilityOccluded =>
      'Valami eltakarja a tábla egy részét. Amint kiderül, folytatom.';

  @override
  String get buddyReadabilityClear => 'Látom a táblát.';

  @override
  String get buddyReadabilityColorChanged =>
      'A táblán lévő fény színe megváltozott, így a tábla már nem úgy néz ki, mint amit tanultam. Illessze újra a sarkokat ebben a lámpában, és azonnal felveszem a játékot.';

  @override
  String get buddyReadabilityTooDark =>
      'Túl sötét a tábla olvasásához. Még egy kis fény, és folytatom, ahol voltunk.';

  @override
  String get buddyReadabilityTooBright =>
      'A táblán annyi fény van, hogy a színei összefutnak. Sötétítse el, vagy mozgassa a telefont úgy, hogy a lámpa ne világítson egyenesen rá.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'A Buddy továbbra sem látja a mozgását – $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nTovábbra is játszhatod a meccset: írj be minden dobást a kockatáblára, és koppints a játékaidra az alábbi táblán.';
  }

  @override
  String get buddyCameraGenericError =>
      'A kamerát nem lehetett elindítani. Ellenőrizze az engedélyeket, és próbálja újra.';

  @override
  String buddyRegionPoint(int number) {
    return 'a $number-pont';
  }

  @override
  String get buddyRegionBar => 'a bár';

  @override
  String get buddyRegionWhiteTray => 'a fehér korongok leütő tálcája';

  @override
  String get buddyRegionBlackTray => 'a fekete korongok leütő tálcája';

  @override
  String get buddyRegionDiceZone => 'a tábla közepe';

  @override
  String get buddyCalibrationProblemVisible =>
      'Nem látom az egész táblát. Húzza vissza a telefont, vagy húzza a sarkokat a játékmezőre.';

  @override
  String buddyConfirmMore(int number) {
    return '(és még $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Mindkét játékos dob egy kockával. A nagyobb dobás kezd.';

  @override
  String get buddyDiceOpeningFirst => 'fehér kocka';

  @override
  String get buddyDiceOpeningSecond => 'fekete kocka';

  @override
  String get buddyDiceRegularCaption =>
      'A két arc az asztalon, bármelyik sorrendben.';

  @override
  String get buddyDiceRegularFirst => 'Egy meghal';

  @override
  String get buddyDiceRegularSecond => 'A másik';

  @override
  String get evaluationEngine => 'Értékelőmotor';

  @override
  String get parallelEngineAnalysis => 'Elemzés mindkét motorral';

  @override
  String get parallelEngineExplanation =>
      'Hasonlítsa össze a wildbg és GNUbg külön tanácsait az oktatóban.';

  @override
  String get engineComparison => 'Motorok összehasonlítása';

  @override
  String get engineWinChance => 'Győzelmi esély';

  @override
  String get buddyBar => 'a bár';

  @override
  String get buddyOff => 'le';

  @override
  String get buddyHitSuffix => ', ütés';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Egy ellenőrző áthelyezése innen: $from ide: $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return '$count ellenőrző áthelyezése innen: $from ide: $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Nyújtson egy kockát innen: $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Nyomj le $count dámát innen: $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return '$dice-t dobtam.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return '$dice-t dobott.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Mindkét dobás $die. Tekerd újra.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Nincs játék, tehát rajtad a sor.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Nincs játék, így Buddy-n a sor.';

  @override
  String get buddySpeechNoPlayPass => 'Nincs játék – elmegy a köröd.';

  @override
  String get buddySpeechNoPlayBack => 'Nincs játék, így visszatért hozzád.';

  @override
  String get buddySpeechIllegalPlay => 'Ez nem legális színjáték.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Ez nem egészen helyes. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'A tábla eltér a játéktól: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: a játék $expected $side dámát vár; a kamera látja a következőt: $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'szót fogadok. Nem láthattam azt az egy földet, így ha elváltunk, akkor színdarabként fog megjelenni, amit nem tudok elolvasni.';

  @override
  String get buddySpeechBuddyDouble => 'Megduplázom – veszem vagy ledobom?';

  @override
  String get buddySpeechYouDouble => 'Megduplázod.';

  @override
  String get buddySpeechBuddyTakes => 'veszem.';

  @override
  String get buddySpeechYouTake => 'Veszel.';

  @override
  String get buddySpeechBuddyDrops => 'leejtem.';

  @override
  String get buddySpeechYouDrop => 'Leessz.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Megnyerem ezt a játékot: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Megnyerted ezt a játékot: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Nekem ez a megfelelő.';

  @override
  String get buddySpeechMatchWinnerYou => 'Megnyered a meccset.';

  @override
  String get buddyTutorLastPlayBest =>
      'Az utolsó játékod megfelelt a motor legjobbjának.';

  @override
  String get buddyTutorLastPlayClose =>
      'Az utolsó játékod közel volt a motor legjobbjához.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Legutóbbi játékodnál a motor a következőt részesítette előnyben: $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return '$best ellentétes kockát hagy a sávon a $played helyett.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return '$played helyett $best blotot hagy.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return '$played helyett $best home-board pontot tartalmaz.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'A(z) $played helyett $best ellenőrző van kikapcsolva.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'A rangsor a becsült nyereményeket és gammonokat mérlegeli; egyetlen tábla funkció sem magyarázza meg.';

  @override
  String buddySpeechPlay(String move) {
    return 'Play $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return '$dice–$move.';
  }

  @override
  String get privacyDeletionReceiptCheck =>
      'Törlési visszaigazolás ellenőrzése';

  @override
  String get privacyDeletionReceiptHelp =>
      'A törlés kérése után térj vissza ide, és ellenőrizd, hogy befejeződött-e. A privát bizonylat ezen az eszközön marad, és kijelentkezés után is működik. Az ellenőrzés nem hoz létre fiókot. A befejezési visszaigazolások 90 napig érhetők el online; a visszaigazolásig őrizd meg ezt a telepítést.';

  @override
  String get privacyDeletionReceiptNone =>
      'Ezen az eszközön nincs mentett törlési bizonylat. Korábbi kérések vagy elveszett eszköz esetén fordulj az ügyfélszolgálathoz.';

  @override
  String get privacyDeletionReceiptPending =>
      'A törlés még nincs megerősítve. A feldolgozás akár 30 napig is tarthat. Ellenőrizd újra később. Ha több mint 30 nap telt el, fordulj az ügyfélszolgálathoz. A nem elérhető vagy lejárt bizonylat nem bizonyítja a törlést.';

  @override
  String get privacyDeletionReceiptComplete =>
      'A törlés befejeződött: az ezen az eszközön mentett összes kérés teljesítését visszaigazolták. Ez nem töröl egy később létrehozott online azonosítót. A helyi előzmények és tanulási adatok megmaradnak. A Google az adatvédelmi irányelvekben leírtak szerint megőrizhet biztonsági másolatokat és biztonsági naplókat.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Nem sikerült ellenőrizni a törlési visszaigazolást. Próbáld újra, amikor van kapcsolat, vagy fordulj az ügyfélszolgálathoz. Ez nem igazolja a törlés befejezését.';
}
