// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovak (`sk`).
class AppLocalizationsSk extends AppLocalizations {
  AppLocalizationsSk([String locale = 'sk']) : super(locale);

  @override
  String get homeTagline => 'Zlepšite svoju hru s trénerom';

  @override
  String get settings => 'Nastavenia';

  @override
  String get playVsComputer => 'Hrať proti počítaču';

  @override
  String get twoPlayers => 'Dvaja hráči';

  @override
  String get playNearby => 'Hrať nablízku';

  @override
  String get playOnline => 'Hrať online';

  @override
  String get learningPractice => 'Učenie a tréning';

  @override
  String get gamesArchive => 'Archív hier';

  @override
  String get followSystem => 'Jazyk zariadenia';

  @override
  String get white => 'Biely';

  @override
  String get black => 'Čierny';

  @override
  String get random => 'Náhodne';

  @override
  String get startMatch => 'Začať hru';

  @override
  String get tutor => 'Tréner';

  @override
  String get noMovesPass => 'Žiadne ťahy — pas';

  @override
  String get undo => 'Späť';

  @override
  String get confirm => 'Potvrdiť';

  @override
  String get roll => 'Hodiť';

  @override
  String get hint => 'Rada';

  @override
  String get tutoringStyle => 'Štýl trénera';

  @override
  String get tutorStyleCoach => 'Tréner';

  @override
  String get tutorStyleHintsOnly => 'Iba rady';

  @override
  String get tutorStyleTryFirst => 'Najprv skús';

  @override
  String get tutorCoachDescription =>
      'Upozornenia na pozície, spätná väzba k ťahom, rady a odporúčania ku kocke.';

  @override
  String get tutorHintsDescription =>
      'Zoradené ťahy na požiadanie. Upozornenia na pozície a automatická spätná väzba po ťahu zostanú vypnuté.';

  @override
  String get tutorTryFirstDescription =>
      'Najprv si priprav svoj ťah a až potom zobraz zoradené možnosti alebo známku; navigácia na šachovnici zostane zapnutá.';

  @override
  String get tutorCustomDescription =>
      'Vlastná kombinácia. Upravte ľubovoľnú z možností nižšie.';

  @override
  String get tutorBestMoveHints => 'Rady k najlepšiemu ťahu';

  @override
  String get tutorRevealRankedPlays =>
      'Zobraziť zoradené ťahy počas rozhodovania';

  @override
  String get tutorMoveExplanations => 'Vysvetlenia ťahov';

  @override
  String get tutorCompareEstimates => 'Porovnať odhady a zmeny na šachovnici';

  @override
  String get tutorGameCommentary => 'Komentár k hre';

  @override
  String get tutorPositionPrompts =>
      'Upozornenia na pozície a spätná väzba po každom ťahu';

  @override
  String get tutorCubeAdvice => 'Rady ku kocke';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Odporúčania na zdvojenie, prijatie a vzdanie s ohľadom na skóre zápasu';

  @override
  String get tutorTryMoveFirst => 'Najprv skús ťah';

  @override
  String get tutorStageBeforeHints =>
      'Priprav svoj ťah pred zobrazením rád alebo známky';

  @override
  String get tutorStaticEstimateNote =>
      'Rýchly statický odhad (0-ply, bez rolloutov); poznámky opisujú zmeny na šachovnici a možné odpovede, nie to, čo sa určite stane.';

  @override
  String get tutorWhatToWatchNext => 'Čo sledovať ďalej';

  @override
  String get tutorMoreBoardDetails => 'Viac podrobností o šachovnici';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Odhady a ich fungovanie';

  @override
  String get tutorEstimateLimitations =>
      'Hĺbka: statické neurónové vyhodnotenie každého legálneho ťahu (0-ply), bez rolloutov alebo hľadania budúcich odpovedí. MWC zohľadňujúca skóre váži odhady výsledkov podľa skóre zápasu a aktuálnej kocky; nemodeluje budúce akcie s kockou. Equity bez kocky predstavuje očakávané body pri kocke 1, keď skóre nie je dostupné. Pozorovania šachovnice opisujú ťah, nie vnútorné uvažovanie neurónového enginu. Takmer rovnaké odhady neznamenajú istotu; kalibrovaný interval spoľahlivosti sa neposkytuje.';

  @override
  String get tutorPointNumberNote =>
      'Čísla polí v učebných poznámkach sa počítajú od domácej dosky hráča, ktorý je na ťahu.';

  @override
  String get tutorHittingRollNote =>
      'Počet hodov umožňujúcich zásah zahŕňa všetkých 36 usporiadaných výsledkov kociek a legálne priame aj nepriame zásahy; ide o príležitosti, nie predpoveď súperovej voľby.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Pre tento ťah nie sú k dispozícii vyhodnotené alternatívy.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pri vynútenom pase sa nerozhoduje o ťahu kameňmi.';

  @override
  String get settingsReset => 'Obnoviť predvolené';

  @override
  String get settingsAppLanguage => 'Jazyk aplikácie';

  @override
  String get settingsTheme => 'Téma';

  @override
  String get settingsThemeSystem => 'Podľa systému';

  @override
  String get settingsThemeLight => 'Svetlá';

  @override
  String get settingsThemeDark => 'Tmavá';

  @override
  String get settingsAnimationSpeed => 'Rýchlosť animácií';

  @override
  String get settingsAnimationNone => 'Žiadna';

  @override
  String get settingsAnimationNormal => 'Normálna';

  @override
  String get settingsAnimationFast => 'Rýchla';

  @override
  String get settingsDiceRollAnimation => 'Animácia hodu kockami';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Pred každým hodom sa kocky premiešajú';

  @override
  String get settingsDefaultMatchLength => 'Predvolená dĺžka zápasu';

  @override
  String get settingsDefaultDifficulty => 'Predvolená náročnosť';

  @override
  String get settingsDifficultyEasy => 'Ľahká';

  @override
  String get settingsDifficultyMedium => 'Stredná';

  @override
  String get settingsDifficultyHard => 'Ťažká';

  @override
  String get settingsDifficultyExpert => 'Expertná';

  @override
  String get settingsTutorModeDefault => 'Predvolený režim tutora';

  @override
  String get settingsTutorAuto => 'Automaticky';

  @override
  String get settingsTutorOn => 'Zapnutý';

  @override
  String get settingsTutorOff => 'Vypnutý';

  @override
  String get settingsTutorModeHelp =>
      'Režim Automaticky zapne tutora pri každej náročnosti počítača. Voľby Zapnutý a Vypnutý určujú počiatočné nastavenie pre miestne zápasy. Hry nablízku a online zápasy sú bez pomoci; uložené partie si môžete neskôr prezrieť. Predvoľby výučby nižšie sa ukladajú v tomto zariadení.';

  @override
  String get settingsTutorPreferences => 'Predvoľby tutora';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Uložené predvolené nastavenia pre budúce zápasy';

  @override
  String get settingsTutorSaveError => 'Predvoľby tutora sa nepodarilo uložiť.';

  @override
  String get settingsGameplay => 'Hra';

  @override
  String get settingsMoveHighlights => 'Zvýraznenie ťahov';

  @override
  String get settingsMoveHighlightsHelp =>
      'Označí kamene, ktorými sa dá ťahať, a zvýrazní cieľové body';

  @override
  String get settingsDragToMove => 'Presúvanie ťahaním';

  @override
  String get settingsDragToMoveHelp =>
      'Presuňte kameň na cieľový bod (funguje aj ťuknutie)';

  @override
  String get settingsCombinedMoves => 'Kombinované ťahy';

  @override
  String get settingsCombinedMovesHelp =>
      'Jedným ťuknutím posuniete kameň pomocou oboch kociek';

  @override
  String get settingsRotateBoard => 'Otáčať dosku medzi ťahmi';

  @override
  String get settingsRotateBoardHelp =>
      'Pri hre na jednom zariadení otočí pohľad k hráčovi, ktorý je na ťahu';

  @override
  String get settingsPassDevice => 'Obrazovka pri odovzdaní zariadenia';

  @override
  String get settingsPassDeviceHelp =>
      'Pri odovzdávaní zariadenia medzi hráčmi zakryje dosku';

  @override
  String get settingsShowScore => 'Zobraziť skóre';

  @override
  String get settingsShowScoreHelp =>
      'V záhlaví zobrazuje priebežné skóre zápasu';

  @override
  String get settingsBuddyMode => 'Režim Buddy';

  @override
  String get settingsBuddyTerse => 'Stručný';

  @override
  String get settingsBuddyFriendly => 'Priateľský';

  @override
  String get settingsBuddyTerseHelp =>
      'Ako Buddy nahlas oznamuje ťah: „13/8, 24/22“ — stručný zápis, ktorý hráči pri doske bežne používajú.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Ako Buddy nahlas oznamuje ťah: „Presuň jeden kameň z 13 na 8 a jeden z 24 na 22.“';

  @override
  String get settingsListenForDice => 'Počúvať kocky';

  @override
  String get settingsListenForDiceHelp =>
      'Keď Buddy začuje hod, skôr skontroluje dosku. Vypnutie nič iné nemení.';

  @override
  String get settingsDiagnostics => 'Diagnostika';

  @override
  String get settingsErrorLog => 'Záznam chýb';

  @override
  String get settingsErrorLogHelp =>
      'Nedávne chyby pripravené na skopírovanie do hlásenia chyby';

  @override
  String get settingsReportBug => 'Nahlásiť chybu';

  @override
  String get settingsReportBugHelp =>
      'Otvorí sprievodcu nahlásením chyby na GitHube';

  @override
  String get settingsSuggestIdea => 'Navrhnúť nápad';

  @override
  String get settingsSuggestIdeaHelp => 'Pomôžte nám zlepšiť tutora a hru';

  @override
  String get settingsAbout => 'O aplikácii';

  @override
  String get settingsOpenSourceLicenses =>
      'Licencie softvéru s otvoreným zdrojovým kódom';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partia sa skončila.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Prezrite si ťahy a nájdite rozhodnutie, ktoré sa oplatí precvičiť.';

  @override
  String get tutorPhraseCubeOffered => 'Bolo ponúknuté zdvojnásobenie stávky.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Pred plánovaním ťahu kameňmi sa rozhodnite, či zdvojnásobenie prijmete alebo odmietnete.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Skóre zápasu mení hodnotu dodatočnej stávky.';

  @override
  String get tutorPhraseResignationOffered => 'Súper ponúkol vzdanie partie.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Pred prijatím vzdania alebo pokračovaním porovnajte ponúknuté body s pozíciou.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Pri tomto hode nie je možný žiadny dovolený ťah.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Vynútené vynechanie ťahu nie je chyba; počkajte na ďalší hod.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Existuje iba jedna dovolená výsledná pozícia.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Urobte vynútený ťah. Pri tomto hode nie je na výber a nie je čo hodnotiť.';

  @override
  String get tutorPhrasePipCountsLevel => 'Počet pipov je vyrovnaný.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Máte náskok $count pipov.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Zaostávate o $count pipov.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Najprv musíte vrátiť kamene z baru. Na bare ich je: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Najprv vráťte kameň z baru a potom hľadajte bezpečný bod, kam ho umiestniť.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Súper má vo svojom domácej doske zavretých bodov: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Preteky vo vyvádzaní kameňov.';

  @override
  String get tutorPhrasePureRace => 'Čisté preteky.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Vyvážajte kamene a zároveň ich rozložte tak, aby sa hodili na ďalší hod.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Presuňte zadné kamene domov a nehromaďte ich priveľa na jednom bode.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Hráči sa minuli; ďalšie údery už nie sú možné.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt je stále dôležitý.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Súper má na bare kameňov: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Udržiavajte body zatvorené a pritom privádzajte zostávajúce kamene domov.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Budujte alebo udržiavajte svoje domáca doska, kým sa súper pokúša vstúpiť z baru.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Vo svojom domácej doske máte zatvorených bodov: $count; každý z nich zatvára jedno vstupné číslo.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt s radom $count zatvorených bodov.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Zvážte, či rad predĺžiť alebo si ponechať voľné kamene, ktoré ho pomôžu udržať.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Voľné kamene: $count. Môžete nimi ťahať bez toho, aby sa bod hneď otvoril.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt s kotvou na bodoch $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Porovnajte postup zadných kameňov domov s bezpečím, ktoré vám dáva zachovaná kotva.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Pri hľadaní úderu alebo zlepšovaní pozície myslite na bezpečnú oporu.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Kotvu nemožno zasiahnuť, ale týmto kameňom ešte zostáva dlhá cesta domov.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt pretrváva: obe strany môžu hroziť úderom.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Hľadajte užitočné body a zvážte riziko ponechania osamelých kameňov vystavených úderu.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Vo svojom domácej doske máte zatvorených bodov: $count. Odkrytých kameňov nechávate: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Vyberte kameň, ktorým začnete ťah.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Urobte dovolený ťah, aby sa zobrazil komentár.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# súperove kamene',
      many: '# súperových kameňov',
      few: '# súperove kamene',
      one: '# súperov kameň',
    );
    return 'Zasiahli ste $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Vrátené kamene z baru: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# kamene',
      many: '# kameňov',
      few: '# kamene',
      one: '# kameň',
    );
    return 'Vyvedené kamene: $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zavreli ste body $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Kameň na bode $point je zatiaľ odkrytý a môže byť zasiahnutý.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Voľným kameňom na bode $point môžete neskôr ťahať bez toho, aby sa bod otvoril.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Pred posúdením celého ťahu využite aj zvyšné hrateľné kocky.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Všetkých 15 kameňov je vyvedených: partiu ste vyhrali.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Úder získava čas, kým sa súper vracia z baru.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Efektívne vyvádzanie odstraňuje kamene a ponecháva užitočné čísla na ďalší hod.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'V pretekoch presuňte zadné kamene domov a nechajte si vhodné body na vyvádzanie.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Vyvádzanie vás približuje k víťazstvu, no kým pretrváva kontakt, odkrytý kameň môže byť terčom úderu.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Vstup vracia kameň do hry; teraz preň nájdite bezpečný bod.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Nový zatvorený bod vo vašom domácej doske po prípadnom údere odoberie súperovi jedno vstupné číslo.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Dlhší rad zatvára viac bodov, na ktoré by súper mohol vstúpiť; voľné kamene vám ho pomôžu udržať.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Opustením kotvy sa zadné kamene posunú vpred, ale stratia bezpečnú oporu.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Nová kotva poskytuje zadným kameňom bezpečnú oporu.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Zakrytím odkrytého kameňa odoberiete súperovi ľahký cieľ.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Ide o rovnováhu medzi rozvojom a bezpečím: kamene, ktoré pomáhajú budovať pozíciu, sa samy môžu stať cieľom.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Celý ťah je pripravený. Potvrďte ho klepnutím na Potvrdiť.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Tento hod neumožňuje vybrať ťah kameňmi, preto sa nehodnotí ako rozhodnutie.';

  @override
  String get tutorMoveTopVerdict => 'Najlepšia voľba pre túto pozíciu.';

  @override
  String get tutorMoveAlternativeVerdict => 'Engine tu uprednostňuje iný ťah.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Rozdiel oproti najlepšiemu ťahu: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Po tomto ťahu: $winPercent% šanca na výhru, $winGammonPercent% na výhru s gammonom či backgammonom a $loseGammonPercent% na prehru s gammonom či backgammonom. Ide o odhady z pohľadu hráča na ťahu.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Odhadovaná šanca na výhru zápasu: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Všetkých 15 kameňov je vyvedených: partiu ste vyhrali.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Úderom získate čas, kým súper vstúpi z baru. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Udržiavajte body vo svojom domácej doske zatvorené, aby sa súperovi ťažšie vstupovalo.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zatvorte ďalšie body vo svojom domácej doske, aby sa súper po prípadnom údere ťažšie vracal do hry.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Snažte sa o efektívne vyvádzanie: odstraňujte kamene a nechávajte si užitočné čísla na ďalší hod.';

  @override
  String get tutorMovePlanRaceHome =>
      'Presuňte zadné kamene domov a rozložte ich na vhodné body na vyvádzanie.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Vyvážajte kamene z hry, ale sledujte zadné kamene súpera: kým trvá kontakt, odkrytý kameň pri vyvádzaní sa môže stať cieľom.';

  @override
  String get tutorMovePlanReentry =>
      'Vráťte sa do hry a potom hľadajte bezpečný bod pre kameň, ktorý práve vstúpil.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Posilnite svoje domáca doska. Nový zatvorený bod zvýši účinnosť budúceho úderu, pretože súperovi odoberie jedno vstupné číslo.';

  @override
  String get tutorMovePlanPrime =>
      'Udržiavajte rad zatvorených bodov pokope. Nechajte si voľné kamene, aby vás ďalšie hody neprinútili tento rad otvoriť.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Opustením kotvy posuniete zadné kamene dopredu, ale prídu o bezpečnú oporu. Dávajte pozor, aby cestou domov neboli vystavené úderu.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Využite novú kotvu ako bezpečnú oporu a medzitým zlepšujte zvyšok pozície.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Spojte svoje kamene. Zakrytím odkrytého kameňa odstránite súperovi cieľ a zachováte si možnosti ďalších ťahov.';

  @override
  String get tutorMovePlanSafety =>
      'Vyvažujte rozvoj a bezpečnosť: posúvajte stavebné kamene k užitočným bodom a skontrolujte, ktoré osamotené kamene môže súper zasiahnuť.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Žiadny povolený ťah kameňmi: musíte vynechať ťah.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# súperove kamene',
      many: '# súperových kameňov',
      few: '# súperove kamene',
      one: '# súperov kameň',
    );
    return 'Zasiahli ste $_temp0; súper musí najprv vstúpiť z baru, až potom môže ťahať ostatnými kameňmi.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Vrátené kamene z baru: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# kamene',
      many: '# kameňov',
      few: '# kamene',
      one: '# kameň',
    );
    return 'Vyvedené z dosky: $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zatvorené body: $points. Dva alebo viac kameňov drží bezpečný bod a bráni súperovi vstúpiť naň.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Znovu ste otvorili zatvorené $pointLabel: $points. Tieto body už súperovi nebránia vstúpiť na ne.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nezostali žiadne odkryté osamotené kamene (predtým $previousCount). Súper teraz nemá čo zasiahnuť.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '# kamene',
      many: '# kameňov',
      few: '# kamene',
      one: '# kameň',
    );
    return 'Odkryté osamotené kamene: $_temp0 (predtým $previousCount). Skôr než uprednostníte bezpečnosť pred iným ziskom, zvážte, či na ne súper dosiahne.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Najdlhší rad zatvorených bodov: $count (predtým $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Šesťbodový rad sa nedá prekročiť, kým zostáva zatvorený.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Ak chcete tento rad predĺžiť alebo zachovať, nechajte stavebné kamene nablízku.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Počet voľných kameňov nad dva potrebné na držanie bodov: $count. Presun voľného kameňa môže bod zachovať; presun jedného z posledných dvoch ho otvorí.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Kotvy v súperovom domácej doske: $points (predtým $previousPoints). Kotva chráni tieto kamene pred zásahom; jej opustením vymeníte bezpečnú oporu za postup v pretekoch.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Čisté preteky: hráči sa minuli a ani jedna strana nemá kameň na bare. Zásahy už nie sú možné; dôležitá je efektivita vyvádzania.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Súper nemá žiadny povolený ďalší hod, ktorým by mohol v tejto pozícii zasiahnuť kameň. Kontakt však trvá, takže neskoršie ťahy môžu vytvoriť nové príležitosti na úder.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Súper môže zasiahnuť pri $count z $total hodov. Napríklad $dieOne–$dieTwo umožňuje povolený úder na váš kameň na bode $point. Možnosť úderu neznamená, že si ju súper určite vyberie.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Vo svojom domácej doske máte zatvorených bodov: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Súper nemôže vstúpiť, kým sa niektorý bod neotvorí.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Hod, ktorý využije otvorený vstupný bod, môže vrátiť kameň z baru.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Odhadovaná šanca na výhru je pri najlepšom ťahu o $delta percentuálnych bodov $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'vyššia';

  @override
  String get tutorMoveComparisonLower => 'nižšia';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Aj tak môže byť hodnotený vyššie, pretože gammony a backgammony majú pri aktuálnom $scoreContext odlišnú hodnotu.';
  }

  @override
  String get tutorMoveComparisonStake => 'stave stávky';

  @override
  String get tutorMoveComparisonMatchScore => 'skóre zápasu';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Po najlepšom ťahu zostane na bare $bestCount súperových kameňov namiesto $playedCount. Kameň na bare musí najprv vstúpiť, až potom môže súper ťahať ostatnými.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Najlepší ťah drží vo vašom domácej doske $bestCount zatvorených bodov namiesto $playedCount, čo je rozdiel $entryDifference vstupných bodov po údere.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'zatvára viac';

  @override
  String get tutorMoveComparisonLeavingMore => 'necháva viac otvorených';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Najlepší ťah umožňuje súperovi zasiahnuť pri $bestCount z 36 hodov namiesto $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Tým sa znižuje bezprostredné riziko, že vás súper vráti späť.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Porovnajte toto dodatočné riziko s tým, čo ťah získava inde.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Najdlhší rad zatvorených bodov je pri najlepšom ťahu $bestCount, nie $playedCount; porovnajte silu blokády s počtom kameňov, ktoré ju dokážu udržať.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Najlepší ťah ponecháva kotvy $bestPoints namiesto $playedPoints. Zachovaná kotva poskytuje bezpečný bod na návrat; jej opustením sa kamene priblížia domov.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Pri najlepšom ťahu máte vyvedených $bestCount kameňov namiesto $playedCount. Každý vyvedený kameň je o jeden menej, ktorý treba neskôr odstrániť.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Oba ťahy ponechávajú rovnaké bezprostredné riziko zásahu, počet zatvorených bodov v domácej doske, kotvy aj vyvedené kamene. Porovnajte, kde kamene zostanú: ďalší hod môže ponúknuť na každom bode iné možnosti.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Pri najlepšom ťahu zostane viac súperových kameňov na bare, čím sa zdržia jeho ďalšie ťahy.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Pri najlepšom ťahu sa zatvorí viac bodov v domácej doske, takže súperovi sa po zásahu ťažšie vstupuje.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Najlepší ťah umožňuje menej okamžitých úderov, čím sa znižuje riziko, že vás súper vráti späť.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Najlepší ťah zachová dlhší rad zatvorených bodov.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Najlepší ťah zachová viac bezpečných kotiev v súperovom domácej doske.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Najlepší ťah vyvedie viac kameňov, takže ich neskôr zostane menej.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Odkryté osamotené kamene po tomto ťahu: $playedCount; po najlepšom ťahu: $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Najlepší ťah zachová bezpečnú kotvu na bode $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Najlepší ťah zatvorí viac vstupných bodov pre prípad, že bude niektorý z vašich kameňov zasiahnutý.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Ťahy ponechávajú podobné bezprostredné riziko; porovnajte, ktoré body budú užitočné pri ďalšom hode.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value očakávanej hodnoty';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value percentuálnych bodov šance na výhru zápasu';
  }

  @override
  String get tutorMovePointSingular => 'bod';

  @override
  String get tutorMovePointPlural => 'body';

  @override
  String get tutorMoveNoPoints => 'žiadne';

  @override
  String get gameTutorCommentaryOff => 'Komentár k partii je vypnutý.';

  @override
  String get gameTutorToolsAvailable =>
      'Otvorte trénera a použite zapnuté nástroje.';

  @override
  String get gameTutorNextRoll => 'Hoďte kockami.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'K tomuto zaznamenanému ťahu nie je dostupné hodnotené vysvetlenie.';

  @override
  String get gameTutorAnalysisUnavailable => 'analýza nie je dostupná';

  @override
  String get gameTutorReviewing => 'kontroluje sa…';

  @override
  String get gameTutorTryYourPlayFirst => 'Najprv skúste zahrať vlastný ťah.';

  @override
  String get gameTutorKeepBuilding => 'Pokračujte v skladaní ťahu.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Dokončite celý legálny ťah, až potom zobrazte rady alebo tipy.';

  @override
  String get gameTutorReadyToConfirm => 'Pripravené na potvrdenie';

  @override
  String get gameTutorPlayTakingShape => 'Váš ťah sa formuje.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potvrdením zahráte ťah alebo ho vráťte späť a zvážte znova.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Použite zostávajúce kocky alebo ťah vráťte späť.';

  @override
  String get gameTutorComputerConsidering => 'Počítač zvažuje svoj ťah.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Dokončený ťah počítača sa tu vyhodnotí.';

  @override
  String get gameTutorYourPlay => 'Váš ťah';

  @override
  String get gameTutorComputer => 'Počítač';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Váš ťah: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'vynútený ťah';

  @override
  String get gameTutorTopChoice => 'najlepšia voľba';

  @override
  String get gameTutorSoundPlay => 'dobrý ťah';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'iný ťah by mohol vyhovovať viac';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'do tejto pozície sa lepšie hodí iný ťah';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'k dispozícii bol výrazne silnejší ťah';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Podľa odhadu má $side výhodu.';
  }

  @override
  String get gameTutorPositionEven => 'Pozícia je približne vyrovnaná.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Odohrané: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Najlepší ťah: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Zobraziť zoradené ťahy';

  @override
  String get tutorReviewRecordedMove =>
      'Ťuknutím na dokončený ťah v zázname si tu zobrazíte jeho analýzu.';

  @override
  String get tutorTopPlays => 'Najlepšie ťahy';

  @override
  String get tutorNoHintsAvailable => 'Nie sú dostupné žiadne nápovedy.';

  @override
  String get tutorPreviewThenConfirm =>
      'Ťuknutím na ťah si ho zobrazíte na doske a potom ho potvrďte.';

  @override
  String get tutorTopChoiceForPosition => 'Najlepšia voľba pre túto pozíciu';

  @override
  String get tutorAlternativePlay => 'Alternatívny ťah';

  @override
  String get tutorEngineEstimates => 'Odhady enginu';

  @override
  String get tutorEstimateScope =>
      'Odhad 0 polťahu · aktuálne skóre a stávka · bez budúcich zdvojení';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Šanca na výhru zápasu %';

  @override
  String get tutorNearTiesNote =>
      'Tesné výsledky sa pri hlbšej analýze môžu zmeniť.';

  @override
  String get tutorWhyThisPlay => 'Prečo tento ťah?';

  @override
  String get tutorCompareAlternative => 'Porovnať túto alternatívu';

  @override
  String get gameTutorCubeTake => 'Tutor: prijať';

  @override
  String get gameTutorCubePass => 'Tutor: odmietnuť';

  @override
  String get practiceScreenTitle => 'Precvič si rozhodnutie';

  @override
  String get practiceUnavailable =>
      'Táto tréningová pozícia už nie je dostupná.';

  @override
  String get practiceSubmitError =>
      'Tento pokus sa nepodarilo vyhodnotiť ani uložiť. Tvoj postup sa nezmenil. Skús to znova.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Na ťahu je $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historické skóre nie je dostupné; hodnotenie používa equity bez kocky.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Skóre: $whiteLabel $whiteScore – $blackLabel $blackScore, do $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawfordova hra';

  @override
  String get practiceNoDoublingCube => 'Bez zdvojovacej kocky.';

  @override
  String practiceCubeValue(int value) {
    return 'Kocka $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Historické pravidlá kocky nie sú známe.';

  @override
  String get practiceAfterBestPosition => 'Pozícia po najlepšom ťahu';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozícia po tvojej odpovedi';

  @override
  String get practiceFindYourPlayPrompt =>
      'Zahraj svoj ťah na doske a potom skontroluj odpoveď. Nápoveda sa nezobrazí.';

  @override
  String get practiceUndo => 'Späť';

  @override
  String get practiceCheckAnswer => 'Skontrolovať odpoveď';

  @override
  String get practiceRevealNoCredit => 'Odhaľ odpoveď (bez bodov)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odpoveď odhalená — bez bodov za zapamätanie.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Najlepšie: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Pôvodná partia: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Tvoja odpoveď: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Tvoja odpoveď';

  @override
  String get practiceBestPlayChip => 'Najlepší ťah';

  @override
  String practiceNextReview(Object date) {
    return 'Ďalšie opakovanie: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Najlepšie a dobré odpovede sa počítajú ako úspešné zapamätanie. Skoršie opakovania neposúvajú plán.';

  @override
  String get practiceBackToLearning => 'Späť k učeniu';

  @override
  String get practiceMarkBest => 'Najlepšie';

  @override
  String get practiceMarkGood => 'Dobré';

  @override
  String get practiceMarkDubious => 'Pochybné';

  @override
  String get practiceMarkError => 'Chyba';

  @override
  String get practiceMarkBlunder => 'Hrubá chyba';

  @override
  String get practiceMarkForced => 'Vynútené';

  @override
  String get newMatchYourSide => 'Vaša strana';

  @override
  String get newMatchTutorMode => 'Režim tutora';

  @override
  String get newMatchTutorDescription =>
      'Učte sa pomocou nápovedí, vysvetlení a komentárov k hre';

  @override
  String get newMatchTutoringOptions => 'Možnosti tutora';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Pre tento zápas; možno upraviť aj počas hry';

  @override
  String get setupMatchLength => 'Dĺžka zápasu';

  @override
  String get setupDifficulty => 'Obtiažnosť';

  @override
  String get setupDifficultyEasy => 'Ľahká';

  @override
  String get setupDifficultyMedium => 'Stredná';

  @override
  String get setupDifficultyHard => 'Ťažká';

  @override
  String get setupDifficultyExpert => 'Expertná';

  @override
  String get setupPlayWithoutCube => 'Hrať bez kocky';

  @override
  String get setupNoCubeThisMatch =>
      'V tomto zápase bez zdvojnásobovacej kocky';

  @override
  String get analysisTitle => 'Analýza';

  @override
  String get gameMatchSummary => 'Súhrn zápasu';

  @override
  String get gameAnalyzeGame => 'Analyzovať partiu';

  @override
  String get analysisMetricsTooltip => 'Čo znamenajú tieto čísla?';

  @override
  String analysisError(Object error) {
    return 'Analýza partie zlyhala: $error';
  }

  @override
  String get analysisNoPositions =>
      'Táto partia nemá žiadne pozície na zobrazenie.';

  @override
  String get analysisInProgress => 'Analyzuje sa partia…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Odohrané';

  @override
  String get analysisBest => 'Najlepšie';

  @override
  String get analysisPrevious => 'Predchádzajúce';

  @override
  String get analysisNext => 'Ďalšie';

  @override
  String get analysisPositionBeforeCube => 'Pozícia pred rozhodnutím o kocke';

  @override
  String get analysisPositionAtPoint => 'Pozícia v tomto bode partie';

  @override
  String get analysisShowingBestBefore =>
      'Zobrazuje sa najlepší ťah v pozícii pred ťahom';

  @override
  String get analysisShowingBefore => 'Zobrazuje sa pozícia pred ťahom';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return '  −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · nezapočítava sa do priemeru';

  @override
  String get analysisNoPlay => '(bez ťahu)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Najlepšie: $move';
  }

  @override
  String get analysisExplain => 'Vysvetliť';

  @override
  String get analysisSaveForPractice => 'Uložiť na precvičenie';

  @override
  String get analysisSaveError =>
      'Toto rozhodnutie sa nepodarilo uložiť. Skúste to znova.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · strata $loss';
  }

  @override
  String get analysisCubeDecision => 'Rozhodnutie o kocke';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Odohrané: $action ($percent% šanca na výhru zápasu).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Najlepšie: $action ($percent% šanca na výhru zápasu).';
  }

  @override
  String get analysisCubeEstimate =>
      'Odhad 0 polťahu z pohľadu hráča na ťahu. Predpokladá optimálnu odpoveď prijať alebo odmietnuť. Pri prijatom zdvojnásobení používa čiastočnú aproximáciu životnosti kocky 0,7, nie úplné hľadanie budúcich redoblení. Hlbšia analýza môže výsledok zmeniť.';

  @override
  String get analysisClose => 'Zavrieť';

  @override
  String get analysisMoves => 'Ťahy';

  @override
  String get analysisForced => 'Vynútený';

  @override
  String get analysisMarkBest => 'Najlepší';

  @override
  String get analysisMarkGood => 'Dobrý';

  @override
  String get analysisMarkDubious => 'Pochybný';

  @override
  String get analysisMarkError => 'Chyba';

  @override
  String get analysisMarkBlunder => 'Veľká chyba';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Priemerná strata $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count rozhodnutí o ťahu kameňov';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Veľké chyby $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Strata kocky $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side hádže bez zdvojnásobenia';
  }

  @override
  String get metricExplainerTitle => 'Ako porozumieť metrikám';

  @override
  String get metricExplainerTooltip => 'Čo znamenajú tieto čísla?';

  @override
  String get metricExplainerMwcTitle => 'Šanca na výhru zápasu (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Keď je skóre známe, ťahy kameňov sa zoradia podľa odhadovanej šance na výhru zápasu. Strata sa uvádza v percentuálnych bodoch (pp): 1 pp znamená pokles z 51 % na 50 %. Zohľadňuje sa aktuálna hodnota kocky a výsledky gammon/backgammon. Vynútené pasy a hody s jedinou legálnou výslednou pozíciou sa z priemerov vynechávajú.';

  @override
  String get metricExplainerSearchTitle => 'Hľadanie a neistota';

  @override
  String get metricExplainerSearchBody =>
      'Poradie ťahov kameňov vychádza zo statického odhadu 0 polťahu po ťahu, nie z rolloutov. Hodnoty zápasu používajú tabuľku zápasovej equity a nezahŕňajú budúce ťahy kockou. Pri analýze kocky sa pri prijatom zdvojnásobení používa čiastočná aproximácia životnosti kocky 0,7. Ani jedno nie je úplné hľadanie s kockou. Pri skóre nad 25 bodov sa používa hranica tabuľky 25 bodov. Tesné výsledky sa môžu pri hlbšej analýze zmeniť; neexistuje kalibrovaný interval spoľahlivosti.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Ak skóre nie je dostupné, equity bez kocky vyjadruje priemernú bodovú hodnotu pozície — očakávaný výsledok pri kocke na hodnote 1. +1,0 znamená očakávanú výhru jedného bodu; −0,5 stratu polovice bodu.';

  @override
  String get metricExplainerEquityLossTitle => 'Strata equity (napr. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Každý odohraný ťah porovnávame s najlepším ťahom enginu. Strata equity vyjadruje, koľko očakávanej hodnoty ťah stratil. −0,016 znamená, že ťah bol iba o 0,016 bodu horší než najlepší — drobná chyba. 0,000 znamená, že ste našli najlepší ťah.';

  @override
  String get metricExplainerErrorRateTitle => 'Miera chýb';

  @override
  String get metricExplainerErrorRateBody =>
      'Priemerná strata počíta priemer hodnotených rozhodnutí o ťahoch kameňov v zobrazenej jednotke. Rozhodnutia o kocke majú vlastný priemer. Nižšia hodnota znamená väčšiu blízkosť k najlepším odhadom enginu; nejde o kalibrované hodnotenie hráča.';

  @override
  String get metricExplainerMoveMarksTitle => 'Hodnotenie ťahov';

  @override
  String get metricExplainerMoveMarksBody =>
      'Výukové hranice MWC: najlepší < 0,05 pp, dobrý < 0,5 pp, pochybný < 1,5 pp, chyba < 3 pp, veľká chyba ≥ 3 pp. Ide o výukové hranice, nie kalibrovanú istotu ani turnajové hodnotenie.\n\nVýukové hranice equity bez kocky:';

  @override
  String get metricExplainerThresholdBest => 'strata < 0,001';

  @override
  String get metricExplainerThresholdGood => 'strata < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'strata < 0,050';

  @override
  String get metricExplainerThresholdError => 'strata < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'strata ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Rozumiem';

  @override
  String get historyTitle => 'História zápasov';

  @override
  String historyLoadFailed(Object error) {
    return 'Históriu sa nepodarilo načítať:\n$error';
  }

  @override
  String get historyEmpty => 'Zatiaľ ste neodohrali žiadne zápasy.';

  @override
  String get historyDeleteConfirmTitle => 'Odstrániť tento zápas?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nZápas a všetky zaznamenané partie v ňom sa natrvalo odstránia. Nedá sa to vrátiť späť.';
  }

  @override
  String get actionCancel => 'Zrušiť';

  @override
  String get actionDelete => 'Odstrániť';

  @override
  String get historyDeleteFailed => 'Zápas sa nepodarilo odstrániť.';

  @override
  String get historyComplete => 'Dokončený';

  @override
  String historyWinner(Object side) {
    return '$side vyhral(a)';
  }

  @override
  String get historyUnfinished => 'Nedokončený';

  @override
  String get historyMatchTitle => 'Zápas';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Zápas sa nepodarilo načítať:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partie sa nepodarilo načítať:\n$error';
  }

  @override
  String get historyNoGames => 'Zatiaľ nie sú zaznamenané žiadne partie.';

  @override
  String historyGameTitle(int number) {
    return 'Partia $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Biely $whiteScore — $blackScore Čierny (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'proti počítaču';

  @override
  String get historyModeTwoPlayers => 'Dvaja hráči';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Hrať nablízku';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Prebieha';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side vyhráva o $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'jednoduchá';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Obnoviť pokrok v učení';

  @override
  String get learningOptions => 'Možnosti učenia';

  @override
  String get learningResetMenu => 'Resetovať pokrok tréningu';

  @override
  String get learningLoadFailed => 'Pokrok v učení sa nepodarilo načítať.';

  @override
  String get actionRetry => 'Skúsiť znova';

  @override
  String get learningHeading => 'Uč sa zo svojich rozhodnutí';

  @override
  String get learningIntro =>
      'Tvoj pokrok zostáva v tomto zariadení. Prezri si opakujúce sa témy a potom si zopakuj uložené pozície bez zobrazenia odpovede. Biele a čierne môžeš prechádzať samostatne.';

  @override
  String get learningBothSides => 'Obe strany';

  @override
  String get learningHumansOnly => 'Len ľudské rozhodnutia';

  @override
  String get learningHumanOnlyHelp =>
      'Vypni, ak chceš zahrnúť rozhodnutia počítača a vzdialených hráčov';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions rozhodnutí · $mistakes na zlepšenie · $blunders hrubých chýb';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Priemerná strata ($decisions rozhodnutí): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Vynútené ťahy sú vynechané. Ide o odhady enginu, nie turnajové hodnotenie.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uložené hry potrebujú analýzu alebo novú analýzu.',
      one: 'Uložená hra potrebuje analýzu alebo novú analýzu.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analyzovať uložené hry';

  @override
  String get learningEmptyProfile =>
      'Zahraj a dokonči hru, aby si vytvoril svoj učebný profil. Jednotlivé rozhodnutia môžeš uložiť aj z prehrávania hry.';

  @override
  String get learningOpenHistory => 'Otvoriť históriu zápasov';

  @override
  String get learningRecurringThemes => 'Opakujúce sa témy';

  @override
  String get learningNoThemes =>
      'V tomto výbere zatiaľ nie sú opakujúce sa témy chýb.';

  @override
  String learningThemeDecisions(int count) {
    return '$count rozhodnutí na zopakovanie. Jedna pozícia môže mať viac tém.';
  }

  @override
  String get learningSaveMistakes => 'Uložiť tieto chyby na tréning';

  @override
  String learningSavedMistakes(int count) {
    return '$count rozhodnutí je v tvojom tréningovom zozname. Už uložené zostávajú.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Niektoré rozhodnutia sa nepodarilo uložiť. Úspešne uložené zostávajú; skús to znova.';

  @override
  String get learningSpacedPractice => 'Rozložený tréning';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due teraz na rade · $saved uložených · $attempts pokusov · $successes úspešných spomenutí';
  }

  @override
  String get learningIntervalsHelp =>
      'Úspešné opakovania sa vrátia po 1, 3, 7, 14 a 30 dňoch. Chyby alebo odhalené odpovede sa vrátia po 10 minútach. Skoršie opakovania nemenia interval.';

  @override
  String get learningAnswerContext =>
      'Výsledky tréningu odzrkadľujú tvoje odpovede tu, aj keď pôvodná pozícia patrila súperovi.';

  @override
  String get learningNoSavedPositions =>
      'Ulož rozhodnutie z prehrávania alebo použi tlačidlo chýb vyššie.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Rozhodnutie strany $side · hra $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Opakovať $date';
  }

  @override
  String get learningReadyToReview => 'Pripravené na opakovanie';

  @override
  String learningSuccessStreak(int count) {
    return '$count úspešných opakovaní v termíne';
  }

  @override
  String get learningRemoveTooltip => 'Odstrániť uložené rozhodnutie';

  @override
  String get learningRecentPractice => 'Nedávny tréning';

  @override
  String get learningAnswerRevealed => 'Odpoveď odhalená';

  @override
  String get learningSuccessfulRecall => 'Úspešné spomenutie';

  @override
  String get learningTryAgain => 'Skús toto rozhodnutie znova';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · uložená pozícia $positionId';
  }

  @override
  String get learningRemoveTitle => 'Odstrániť toto cvičenie?';

  @override
  String get learningRemoveBody =>
      'Tým sa odstránia pokusy v tréningu. Pôvodná hra zostane v histórii.';

  @override
  String get actionRemove => 'Odobrať';

  @override
  String get learningRemoveFailed => 'Cvičenie sa nepodarilo odstrániť.';

  @override
  String get learningResetTitle => 'Resetovať pokrok tréningu?';

  @override
  String get learningResetBody =>
      'Všetky pokusy a intervaly opakovania sa odstránia. Uložené cvičenia a história zápasov zostanú; všetky cvičenia budú hneď na rade.';

  @override
  String get learningResetAction => 'Resetovať pokrok';

  @override
  String get learningResetFailed => 'Pokrok tréningu sa nepodarilo resetovať.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analyzovaných hier: $completed · nedostupných: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analyzovaných $completed hier.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analyzovaných $completed hier; $failed sa nepodarilo analyzovať. Skús to znova, keď bude engine pripravený.';
  }

  @override
  String get learningThemeHitting => 'Údery a tempo';

  @override
  String get learningThemeSafety => 'Bloty a bezpečnosť';

  @override
  String get learningThemePointMaking => 'Tvorba bodov';

  @override
  String get learningThemePrime => 'Primy a blokády';

  @override
  String get learningThemeAnchor => 'Kotvy a únik';

  @override
  String get learningThemeRace => 'Efektivita pretekov';

  @override
  String get learningThemeBearOff => 'Odkladanie kameňov';

  @override
  String get learningThemeBarEntry => 'Vstup z baru';

  @override
  String get learningThemeCube => 'Rozhodnutia o kocke';

  @override
  String get analysisCubeNoDouble => 'Nedublovať';

  @override
  String get analysisCubeDouble => 'Zdvojnásobiť';

  @override
  String get analysisCubeTake => 'Vzjať';

  @override
  String get analysisCubePass => 'Pasovať';

  @override
  String get learningAnalysisStarting => 'Analyzujú sa uložené hry…';

  @override
  String get tutorCubelessEstimateScope =>
      'Odhad bez kocky, 0 polťahu · skóre nie je dostupné';

  @override
  String get tutorLossPp => 'Strata v percentuálnych bodoch';

  @override
  String get tutorLoss => 'Strata';

  @override
  String get scoreSheetNoMoves => 'Zatiaľ žiadne ťahy';

  @override
  String get tutorOptions => 'Nastavenia tutora';

  @override
  String get tutorCollapseTooltip => 'Zbaliť tutora';

  @override
  String get tutorExpandTooltip => 'Rozbaliť tutora';

  @override
  String get onlineTitle => 'Hrať online';

  @override
  String get onlineUnassistedNote =>
      'Živé online partie sú bez asistencie. Po zápase si prezrite svoje ťahy a precvičte chyby.';

  @override
  String get onlineNotConfiguredTitle =>
      'Online hra nie je v tomto zostavení nakonfigurovaná';

  @override
  String get onlineNotConfiguredBody =>
      'Toto zostavenie nemá pripojený Firebase backend, takže vytváranie a pripájanie sa k zápasom nie je dostupné.';

  @override
  String get onlineErrorNoMatch =>
      'Zápas s týmto kódom neexistuje. Skontrolujte ho a skúste znova.';

  @override
  String get onlineErrorSeatTaken =>
      'Tento zápas už nie je otvorený — miesto je obsadené.';

  @override
  String get onlineErrorPermission => 'K tomuto zápasu nemáte prístup.';

  @override
  String get onlineErrorGeneric => 'Niečo sa pokazilo. Skúste to znova.';

  @override
  String get onlineMatchFinished =>
      'Tento zápas sa skončil — už sa k nemu nedá znova pripojiť.';

  @override
  String get onlineEnterCodeError => 'Zadajte kód zápasu.';

  @override
  String get onlineOpponentShort => 'Súper';

  @override
  String get onlineMatchInProgress => 'Zápas prebieha';

  @override
  String onlineResumePrompt(Object code) {
    return 'Hrali ste zápas $code.';
  }

  @override
  String get onlineRejoin => 'Znova sa pripojiť';

  @override
  String get onlineForgetMatch => 'Zabudnúť tento zápas';

  @override
  String get onlineCreateTitle => 'Vytvoriť zápas';

  @override
  String get onlineMatchLength => 'Dĺžka zápasu';

  @override
  String get onlineNoCubeTitle => 'Hrať bez kocky';

  @override
  String get onlineNoCubeSubtitle =>
      'V tomto zápase bez zdvojnásobovacej kocky';

  @override
  String get onlineCreate => 'Vytvoriť';

  @override
  String get onlineWaitingOpponent => 'Čaká sa na súpera…';

  @override
  String get onlineShareCode => 'Zdieľať tento kód';

  @override
  String get onlineCopyCode => 'Kopírovať kód';

  @override
  String get onlineCodeCopied => 'Kód skopírovaný';

  @override
  String get onlineJoinTitle => 'Pripojiť sa k zápasu';

  @override
  String get onlineRoomCode => 'Kód zápasu';

  @override
  String get onlineJoin => 'Pripojiť sa';

  @override
  String get lanTitle => 'Hrať nablízku';

  @override
  String get lanTabHost => 'Hostiteľ';

  @override
  String get lanTabJoin => 'Pripojiť sa';

  @override
  String get lanUnassistedNote =>
      'Živé hry nablízku sú bez asistencie. Po zápase si prezrite ťahy a precvičte chyby.';

  @override
  String get lanGameStartFailed =>
      'Hru sa nepodarilo spustiť. Druhé zariadenie sa môže skúsiť pripojiť znova.';

  @override
  String get lanHostPortInUse =>
      'Hostovanie sa nepodarilo spustiť — port sa už používa. Zatvorte inú kópiu Backgammon Buddy.';

  @override
  String get lanHostStartFailed =>
      'Hostovanie sa nepodarilo spustiť. Skontrolujte Wi-Fi.';

  @override
  String get lanHostTitle => 'Hostovať hru';

  @override
  String get lanStartHosting => 'Spustiť hostovanie';

  @override
  String get lanHostHelp =>
      'Obe zariadenia musia byť v rovnakej Wi-Fi sieti. Toto zariadenie hádže kocky a vedie skóre.';

  @override
  String get lanWaitingPlayerTitle => 'Čaká sa na hráča';

  @override
  String get lanRoomCodeInfo =>
      'Povedzte tento kód druhému hráčovi. Umožní mu vstup — aplikácia ho neposiela cez sieť.';

  @override
  String get lanWaitingPlayer => 'Čaká sa na hráča…';

  @override
  String get lanStopHosting => 'Zastaviť hostovanie';

  @override
  String lanFindNearbyPort(int port) {
    return 'Požiadajte druhé zariadenie, aby vyhľadalo hry nablízku. Počúvanie na porte $port.';
  }

  @override
  String get lanOnNetwork => 'V tejto sieti';

  @override
  String get lanCopyAddress => 'Kopírovať adresu';

  @override
  String get lanAddressCopied => 'Adresa skopírovaná';

  @override
  String get lanScanHostTitle => 'Naskenovať hostiteľa';

  @override
  String get lanScanHostHelp =>
      'Druhé zariadenie zobrazí QR kód na obrazovke hostiteľa. Naskenovanie vyplní adresu a kód miestnosti.';

  @override
  String get lanScanQr => 'Naskenovať QR kód';

  @override
  String get lanScannerUnavailable =>
      'Kamera alebo jej povolenie nie je dostupné. Nižšie zadajte adresu a kód miestnosti.';

  @override
  String get lanInvalidQr =>
      'Tento QR kód nepatrí hre Backgammon Buddy. Naskenujte kód na obrazovke hostiteľa druhého zariadenia.';

  @override
  String get lanScannerFailed =>
      'Skener sa nepodarilo otvoriť. Zadajte adresu a kód ručne.';

  @override
  String get lanNearbyGames => 'Hry nablízku';

  @override
  String get lanSearching => 'Hľadajú sa hry nablízku…';

  @override
  String get lanNoGamesFound =>
      'Zatiaľ sa nenašli žiadne hry. Uistite sa, že druhé zariadenie hostuje a obe sú v rovnakej Wi-Fi sieti — alebo zadajte jeho adresu.';

  @override
  String get lanStillSearching => 'Stále sa hľadá…';

  @override
  String get lanEnterAddress => 'Zadať adresu';

  @override
  String get lanEnterAddressHelp =>
      'Automatické vyhľadávanie nefunguje v každej sieti (iOS ho môže úplne blokovať). Obrazovka hostiteľa ukazuje, čo treba zadať.';

  @override
  String get lanIpAddress => 'IP adresa';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Zadajte port od 1 do 65535.';

  @override
  String get lanEnterAddressError =>
      'Zadajte adresu zobrazenú na druhom zariadení.';

  @override
  String get lanEnterRoomCodeError =>
      'Zadajte 4-miestny kód z druhého zariadenia.';

  @override
  String get lanJoinWrongCode =>
      'Nesprávny kód miestnosti. Skontrolujte štyri číslice na druhom zariadení.';

  @override
  String get lanJoinVersionMismatch =>
      'Na druhom zariadení je spustená iná verzia Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Zariadenie neodpovedalo ako Backgammon Buddy. Skontrolujte adresu a port.';

  @override
  String get lanJoinFailed =>
      'Pripojenie sa nepodarilo. Skontrolujte adresu a kód miestnosti a skúste znova.';

  @override
  String lanJoinTarget(Object name) {
    return 'Pripojiť sa k $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Zadajte 4-miestny kód zobrazený na druhom zariadení.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Pripája sa k $name';
  }

  @override
  String get lanConnect => 'Pripojiť';

  @override
  String get lanBack => 'Späť';

  @override
  String get lanTryAgain => 'Skúsiť znova';

  @override
  String get lanStatusBusy => 'Miestnosť sa používa — čaká sa…';

  @override
  String get lanStatusReconnecting =>
      'Spojenie sa prerušilo — opakuje sa pokus…';

  @override
  String get lanStatusConnected => 'Pripojené — zápas sa začína…';

  @override
  String get lanStatusFailed => 'Pripojenie sa nepodarilo.';

  @override
  String get lanStatusConnecting => 'Pripája sa…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostika sa skopírovala do schránky';

  @override
  String get diagnosticsReviewTitle => 'Kontrola diagnostickej správy';

  @override
  String get diagnosticsPrivacyNotice =>
      'Otvorením konceptu sa na GitHub odošlú nižšie uvedené údaje vrátane verzie aplikácie, platformy a podrobností o chybe. Verejný problém sa nezverejní, kým ho tam neodošlete. Ak údaje obsahujú súkromné informácie, zrušte akciu a pripravte správu sami pomocou možnosti Kopírovať.';

  @override
  String get diagnosticsCancel => 'Zrušiť';

  @override
  String get diagnosticsOpenGitHub => 'Otvoriť GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostika';

  @override
  String get diagnosticsReportTooltip => 'Nahlásiť problém na GitHube';

  @override
  String get diagnosticsCopyTooltip => 'Kopírovať do schránky';

  @override
  String get diagnosticsClearTooltip => 'Vymazať denník';

  @override
  String get diagnosticsEmpty =>
      'Nie sú zaznamenané žiadne chyby.\n\nAk sa niečo pokazí, zaznamená sa to tu. Vráťte sa a skopírujte podrobnosti do hlásenia chyby.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · do $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · do $matchLength';
  }

  @override
  String get gameHudYou => 'Vy';

  @override
  String get gameHudAi => 'Počítač';

  @override
  String gameHudGameNumber(int number) {
    return 'Partia $number';
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
    return '$whiteLabel proti $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'proti $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'proti $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipy';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Zdvojnásobiť';

  @override
  String get gameHudMoreActions => 'Ďalšie akcie';

  @override
  String get gameHudSurrender => 'Vzdať sa…';

  @override
  String get gameHudThinking => 'Premýšľa';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Zdvojnásobiť môžete iba pred hodom a počas svojho ťahu.';

  @override
  String get gameHudNoDoubleCrawford =>
      'V Crawfordovej partii sa nedá zdvojnásobiť — táto jediná partia rozhodne zápas.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Zdvojnásobiť môže iba vlastník kocky, ktorým je teraz súper.';

  @override
  String get gameHudDoubleUnavailable => 'Teraz nemožno zdvojnásobiť.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (do $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner vyhráva túto partiu ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner vyhráva túto partiu ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner vyhráva túto partiu ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner vyhráva túto partiu ($points) — $loser odmietol zdvojnásobenie.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner vyhráva túto partiu ($points) — $loser sa vzdal.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Odovzdajte zariadenie';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Na ťahu je $name';
  }

  @override
  String get gameDialogTapToContinue => 'Pokračujte ťuknutím';

  @override
  String get gameDialogCubeOfferedTitle => 'Ponuka zdvojnásobenia';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler ponúka zdvojnásobenie na $value. Prijať alebo odmietnuť?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Odmietnuť';

  @override
  String get gameDialogTake => 'Prijať';

  @override
  String get gameDialogResignationTitle => 'Ponuka vzdania';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner ponúka vzdanie za $value. Prijať alebo odmietnuť?';
  }

  @override
  String get gameDialogResignSingle => 'jednoduchú partiu';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Odmietnuť';

  @override
  String get gameDialogAccept => 'Prijať';

  @override
  String get gameDialogGameOverTitle => 'Koniec partie';

  @override
  String get gameDialogNextGame => 'Ďalšia partia';

  @override
  String get gameDialogMatchOverTitle => 'Koniec zápasu';

  @override
  String get gameDialogNobody => 'Nikto';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner vyhráva zápas.';
  }

  @override
  String get gameDialogSavedToHistory => 'Uložené v histórii';

  @override
  String get gameDialogDone => 'Hotovo';

  @override
  String get gameTapNoLegalMove =>
      'Týmto kameňom sa so zostávajúcimi kockami nedá urobiť platný ťah';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Týmto kameňom sa so zostávajúcimi kockami nedá urobiť platný ťah — skúste ťah vrátiť';

  @override
  String get gameDragHint =>
      'Tip: presúvajte kamene potiahnutím alebo ťuknutím — zmeniť sa to dá v Nastaveniach';

  @override
  String get commonGotIt => 'Rozumiem';

  @override
  String get gameHintStageBeforeHint =>
      'Najprv vykonajte celý platný ťah a potom požiadajte o nápovedu.';

  @override
  String get surrenderTitle => 'Vzdať sa';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player vzdáva aktuálnu partiu.';
  }

  @override
  String get surrenderConcedes => 'Vzdávate aktuálnu partiu.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Dostupné na začiatku ťahu hráča $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Dostupné na začiatku vášho ťahu';

  @override
  String get commonCancel => 'Zrušiť';

  @override
  String get surrenderSingle => 'Jednoduchá (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kto vzdáva túto partiu?';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get cubeDouble => 'Zdvojnásobiť';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Na ťahu je druhý hráč.';

  @override
  String get cubeBlockedCrawford =>
      'V Crawfordovej partii nemožno použiť zdvojnásobovaciu kocku.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Zdvojnásobiť môže iba vlastník kocky, ktorým je teraz súper.';

  @override
  String get cubeBlockedUnavailable => 'Teraz nemožno zdvojnásobiť.';

  @override
  String get gameStatusRolling => 'Hádže…';

  @override
  String get gameStatusThinking => 'Premýšľa…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Na ťahu: $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Zdvojnásobiť — súper by mal prijať';

  @override
  String get cubeAdviceOpponentPass => 'Zdvojnásobiť — súper by mal odmietnuť';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Chyba: $error';
  }

  @override
  String get privacyTitle => 'Súkromie a údaje';

  @override
  String get privacyAppTitle => 'Backgammon Buddy od Freevia';

  @override
  String get privacyIntro =>
      'Táto stránka popisuje, ako aktuálna aplikácia narába s vašimi údajmi.';

  @override
  String get privacyLocalTitle => 'Hry a doučovanie na vašom zariadení';

  @override
  String get privacyLocalBody =>
      'Miestne zápasy, nastavenia, analýza a pokrok v tréningu sa ukladajú v tomto zariadení. Tu beží herný engine aj vysvetlenia trénera. Odstránením uloženého zápasu z Archívu hier sa odstránia aj uložené tréningové cvičenia a pokusy pre tento zápas. Jednotlivé cvičenia môžete odstrániť alebo resetovať pokrok v časti Učenie a tréning; miestne chybové hlásenia vymažete v Nastavenia → Diagnostika. História zápasov môže byť zahrnutá aj v zálohách zariadenia. Prihlasovacie údaje na online hranie sa uchovávajú v chránenom úložisku zariadenia.';

  @override
  String get privacyOnlineTitle => 'Hrajte online a v okolí';

  @override
  String get privacyOnlineBody =>
      'Online hra posiela do služby Google Firebase anonymný identifikátor hráča, nastavenia zápasu, ťahy a záznamy protokolu na zosúladenie hodov kockami, aby obaja hráči mohli hrať ten istý zápas. Odstránením histórie v tomto zariadení sa online záznamy neodstránia. Platnosť hostovaných zápasov vyprší 30 dní po vytvorení; plánované čistenie odstráni ich záznamy z cloudu. Záznamy zápasov sa ukladajú v EÚ; Firebase Authentication spracúva prihlasovacie údaje v Spojených štátoch. Spojenia so službami Google sú počas prenosu šifrované. Pri hre nablízku si zariadenia vymieňajú informácie o zápase cez nešifrované miestne pripojenie; používajte dôveryhodnú sieť Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle =>
      'Voliteľná diagnostika používania a pádov';

  @override
  String get privacyDiagnosticsBody =>
      'Zdieľanie je vypnuté, kým ho nezapnete v Nastaveniach. Ak ho zapnete, Google Firebase bude prijímať udalosti používania, informácie o aplikácii a zariadení, merania výkonu a hlásenia o zlyhaní, aby pomohol zlepšiť aplikáciu. Zdieľanie môžete kedykoľvek vypnúť a zastaviť tak zhromažďovanie nových voliteľných údajov. Už odoslané údaje sa tým nevymažú. Miestna diagnostika a online zápasy fungujú nezávisle od tejto voľby.';

  @override
  String get privacyCameraTitle => 'Kamera pre blízke QR kódy';

  @override
  String get privacyCameraBody =>
      'Voliteľná kamera skenuje QR kódy na hranie v blízkosti. Obrázky sa spracúvajú v zariadení, neukladajú sa ani sa neodosielajú. Prístup ku kamere môžete odmietnuť a adresu hostiteľského zariadenia zadať ručne. Táto verzia nepoužíva mikrofón ani nepodporuje hru na fyzickej doske.';

  @override
  String get privacyFeedbackTitle =>
      'Spätná väzba, ktorú sa rozhodnete odoslať';

  @override
  String get privacyFeedbackBody =>
      'Spätná väzba otvorí návrh hlásenia na GitHub, ktorý si môžete skontrolovať. Otvorením návrhu sa na GitHub odošle verzia aplikácie a platforma; spätná väzba z obrazovky Diagnostika môže obsahovať aj podrobnosti o chybe. Hlásenie sa nezverejní, kým ho neodošlete. Hlásenia môžu byť verejné, preto pred odoslaním odstráňte súkromné informácie.';

  @override
  String get privacyContactTitle => 'Kontakt na ochranu osobných údajov';

  @override
  String get privacyReadPolicy =>
      'Prečítajte si zásady ochrany osobných údajov';

  @override
  String get privacyPolicyOpenFailed =>
      'Nepodarilo sa otvoriť zásady ochrany osobných údajov.';

  @override
  String get privacySupportTitle => 'Pomoc a podpora';

  @override
  String get privacySupportOpenFailed =>
      'Nepodarilo sa otvoriť podporu. Kontaktujte support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Chcete odstrániť online identitu a údaje?';

  @override
  String get privacyDeleteConfirmBody =>
      'Prístup oboch hráčov k zápasom v cloude prepojeným s touto identitou sa okamžite ukončí. Žiada sa o vymazanie identity a zdieľaných záznamov online zápasov do 30 dní. Google môže po odstránení účtu potrebovať až 180 dní na odstránenie autentifikačných údajov zo svojich aktívnych a záložných systémov. Miestna história zápasov a tréningové úlohy zostanú v tomto zariadení. Predtým odoslané voliteľné diagnostické údaje sa riešia samostatne; v tejto veci kontaktujte privacy@freevia.org. Túto žiadosť nemožno vziať späť.';

  @override
  String get privacyRequestDeletion => 'Požiadať o vymazanie';

  @override
  String get privacyDeleteSectionTitle => 'Odstránenie online údajov';

  @override
  String get privacyDeleteInstructions =>
      'Na overenie vlastníctva použite prihlasovacie údaje uložené v tomto zariadení. Samotný identifikátor hráča ani pozývací kód vlastníctvo nepotvrdzuje. Pri hraní iba na tomto zariadení online účet nepotrebujete.';

  @override
  String get privacySendingRequest => 'Odosiela sa žiadosť…';

  @override
  String get privacyDeleteAction => 'Odstráňte online identitu a údaje';

  @override
  String get privacyDeleteRequested =>
      'Žiadosť o vymazanie bola odoslaná. Táto online identita bola odhlásená. Jej cloudové údaje sa vymažú do 30 dní. Pri ďalšom spustení online hry sa vytvorí nová identita. Odstránenie autentifikačných údajov Googlom môže trvať až 180 dní. Ak potrebujete pomoc, kontaktujte privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Žiadosť o vymazanie bola odoslaná. Cloudové údaje sa vymažú do 30 dní. Zariadeniu sa nepodarilo odstrániť uložené prihlasovacie údaje, online identita však už nemá prístup k zápasom. Odstránenie autentifikačných údajov Googlom môže trvať až 180 dní. Ak potrebujete pomoc, kontaktujte privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'V tomto zariadení nie je uložená žiadna použiteľná online identita. Nový účet sa nevytvoril. Ak ste už hrali online, požiadajte o pomoc na privacy@freevia.org; hostované zápasy vypršia 30 dní po vytvorení.';

  @override
  String get privacyDeleteRequestFailed =>
      'Žiadosť o vymazanie sa nepodarilo potvrdiť. Skontrolujte pripojenie a skúste to znova alebo kontaktujte privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Zdieľať používanie a diagnostiku zlyhania?';

  @override
  String get privacyConsentBody =>
      'Táto voľba odosiela do služby Google Firebase udalosti používania, informácie o aplikácii a zariadení, hlásenia o zlyhaní a merania výkonu. Zdieľanie je dobrovoľné. Hry aj tréning fungujú aj pri vypnutom zdieľaní; zdieľanie môžete kedykoľvek vypnúť v Nastaveniach.';

  @override
  String get privacyKeepOff => 'Ponechať vypnuté';

  @override
  String get privacyShareDiagnostics => 'Zdieľať diagnostiku';

  @override
  String get privacySaveFailed =>
      'Nepodarilo sa uložiť voľbu ochrany osobných údajov. Skúste to znova.';

  @override
  String get privacySettingsSubtitle =>
      'Čo zostane vo vašom zariadení a čo sa zdieľa';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Zdieľanie používania a diagnostiky zlyhania';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Voliteľné · predvolene vypnuté';

  @override
  String get lanScanToJoin => 'Pripojte sa naskenovaním';

  @override
  String get lanScanHostCode => 'Naskenujte kód hostiteľa';

  @override
  String get lanEnterAddressInstead => 'Namiesto toho zadajte adresu';

  @override
  String get lanQrAccessibilityLabel => 'QR kód na pripojenie k tejto hre';

  @override
  String get lanJoinInstruction =>
      'Na druhom zariadení otvorte Hrať nablízku, vyberte Pripojiť sa a naskenujte tento QR kód.';

  @override
  String get lanTorch => 'Blesk';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy nemôže používať fotoaparát. Povoľte prístup k fotoaparátu v nastaveniach zariadenia alebo zadajte adresu zobrazenú na druhom zariadení manuálne.';

  @override
  String get lanCameraUnsupported =>
      'Toto zariadenie nedokáže skenovať QR kódy. Ručne zadajte adresu zobrazenú na druhom zariadení.';

  @override
  String get lanCameraStartFailed =>
      'Fotoaparát sa nepodarilo spustiť. Ručne zadajte adresu zobrazenú na druhom zariadení.';

  @override
  String get lanPointCameraAtQr =>
      'Nasmerujte fotoaparát na QR kód na druhom zariadení.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Hra na fyzickej doske nie je v tejto verzii dostupná. Hry na obrazovke, doučovanie a tréning nájdete na domovskej obrazovke.';

  @override
  String get homePlayWithBuddy => 'Hrať s Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Doska na vrhcáby. $status';
  }

  @override
  String get boardWhiteToRoll => 'Biely je na ťahu, aby hodil kockami.';

  @override
  String get boardBlackToRoll => 'Čierny je na ťahu, aby hodil kockami.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Biely je na ťahu; na kockách padlo $die1 a $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Čierny je na ťahu; na kockách padlo $die1 a $die2.';
  }

  @override
  String get boardDoubleOffered => 'Bolo ponúknuté zdvojnásobenie kocky.';

  @override
  String get boardResignationOffered => 'Bolo ponúknuté vzdanie partie.';

  @override
  String get boardGameOver => 'Hra sa skončila.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Chyba]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Nápad]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Nahraďte to krátkym popisom toho, čo sa stalo.';

  @override
  String get feedbackBugReproduction =>
      'Nahraďte to krokmi, ktoré viedli k problému.';

  @override
  String get feedbackBugExpected =>
      'Nahraďte to tým, čo ste očakávali, že sa stane.';

  @override
  String get feedbackIdeaNeed =>
      'Nahraďte to tým, čo ste chceli robiť alebo sa učiť.';

  @override
  String get feedbackIdeaSuggestion =>
      'Nahraďte to zmenou, ktorá by vám pomohla.';

  @override
  String get feedbackExcerptTruncated =>
      '(skrátené – pre celý protokol použite Kopírovať do schránky na obrazovke Diagnostika)';

  @override
  String get boardWhiteToMoveNoRoll => 'Biely je na ťahu.';

  @override
  String get boardBlackToMoveNoRoll => 'Čierny je na ťahu.';

  @override
  String get feedbackFieldVersion => 'Verzia aplikácie';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Čo sa stalo';

  @override
  String get feedbackFieldReproduction => 'Kroky na reprodukciu';

  @override
  String get feedbackFieldExpected => 'Očakávaný výsledok';

  @override
  String get feedbackFieldNeed => 'Čo ste chceli urobiť';

  @override
  String get feedbackFieldIdea => 'Navrhovaná zmena';
}
