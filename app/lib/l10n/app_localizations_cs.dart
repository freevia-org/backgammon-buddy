// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Zlepšete svou hru s trenérem';

  @override
  String get settings => 'Nastavení';

  @override
  String get playVsComputer => 'Hrát proti počítači';

  @override
  String get twoPlayers => 'Dva hráči';

  @override
  String get playNearby => 'Hrát poblíž';

  @override
  String get playOnline => 'Hrát online';

  @override
  String get learningPractice => 'Učení a trénink';

  @override
  String get gamesArchive => 'Archiv her';

  @override
  String get followSystem => 'Jazyk zařízení';

  @override
  String get white => 'Bílý';

  @override
  String get black => 'Černý';

  @override
  String get random => 'Náhodně';

  @override
  String get startMatch => 'Začít hru';

  @override
  String get tutor => 'Trenér';

  @override
  String get noMovesPass => 'Žádné tahy — pas';

  @override
  String get undo => 'Zpět';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get roll => 'Házet';

  @override
  String get hint => 'Nápověda';

  @override
  String get tutoringStyle => 'Výukový styl';

  @override
  String get tutorStyleCoach => 'Trenér';

  @override
  String get tutorStyleHintsOnly => 'Pouze nápovědy';

  @override
  String get tutorStyleTryFirst => 'Nejdřív zkusit';

  @override
  String get tutorCoachDescription =>
      'Nápovědy k pozici, zpětná vazba k tahům, tipy a rady ke zdvojovací kostce.';

  @override
  String get tutorHintsDescription =>
      'Pořadí tahů zobrazit na vyžádání. Průběžné nápovědy k pozici a automatická zpětná vazba jsou vypnuté.';

  @override
  String get tutorTryFirstDescription =>
      'Nejprve zahrajte svůj tah a teprve potom zobrazte nápovědy nebo jeho hodnocení; rady k pozici zůstávají zapnuté.';

  @override
  String get tutorCustomDescription =>
      'Vlastní kombinace. Upravte kteroukoli z možností níže.';

  @override
  String get tutorBestMoveHints => 'Nápovědy k nejlepšímu tahu';

  @override
  String get tutorRevealRankedPlays =>
      'Při rozhodování zobrazovat seřazené tahy';

  @override
  String get tutorMoveExplanations => 'Vysvětlení tahů';

  @override
  String get tutorCompareEstimates => 'Porovnejte odhady a změny na desce';

  @override
  String get tutorGameCommentary => 'Komentář ke hře';

  @override
  String get tutorPositionPrompts =>
      'Nápovědy k pozici a zpětná vazba po každém tahu';

  @override
  String get tutorCubeAdvice => 'Rady ke kostce';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Doporučení ke zdvojení, přijetí či odmítnutí podle skóre zápasu';

  @override
  String get tutorTryMoveFirst => 'Nejprve tah vyzkoušet';

  @override
  String get tutorStageBeforeHints =>
      'Zahrajte svůj aktuální tah před zobrazením nápověd nebo jeho hodnocení';

  @override
  String get tutorStaticEstimateNote =>
      'Rychlý statický odhad (0 tahů dopředu, bez simulací); poznámky popisují změny na desce a možné odpovědi, nejde o záruku dalšího vývoje.';

  @override
  String get tutorWhatToWatchNext => 'Na co se zaměřit dál';

  @override
  String get tutorMoreBoardDetails => 'Další podrobnosti o desce';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Odhady a jejich fungování';

  @override
  String get tutorEstimateLimitations =>
      'Hloubka: statické neuronové vyhodnocení po každém legálním tahu (0 tahů dopředu), bez simulací a hledání budoucích odpovědí. MWC při vážení odhadů výsledků zohledňuje skóre zápasu a aktuální kostku, ale nemodeluje budoucí rozhodnutí o kostce. Pokud skóre není dostupné, equity bez kostky jsou očekávané body při kostce na 1. Pozorování popisují tah, nikoli vnitřní uvažování neuronové sítě. Téměř shodné výsledky neznamenají jistotu; interval spolehlivosti není kalibrován.';

  @override
  String get tutorPointNumberNote =>
      'Čísla bodů v učebních poznámkách se počítají od domácí desky hráče na tahu.';

  @override
  String get tutorHittingRollNote =>
      'Počet možností zásahu zahrnuje všech 36 uspořádaných výsledků hodu a legální přímé i nepřímé zásahy; jde o příležitosti, nikoli předpověď soupeřovy volby.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Pro tento tah nejsou k dispozici vyhodnocené alternativy.';

  @override
  String get tutorForcedPassNoDecision =>
      'Vynucený pas neobsahuje rozhodnutí o tahu dámami.';

  @override
  String get settingsReset => 'Obnovit výchozí';

  @override
  String get settingsAppLanguage => 'Jazyk aplikace';

  @override
  String get settingsTheme => 'Motiv';

  @override
  String get settingsThemeSystem => 'Podle systému';

  @override
  String get settingsThemeLight => 'Světlý';

  @override
  String get settingsThemeDark => 'Tmavý';

  @override
  String get settingsAnimationSpeed => 'Rychlost animací';

  @override
  String get settingsAnimationNone => 'Žádná';

  @override
  String get settingsAnimationNormal => 'Normální';

  @override
  String get settingsAnimationFast => 'Rychlá';

  @override
  String get settingsDiceRollAnimation => 'Animace hodu kostkami';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Před každým hodem kostky zamíchejte';

  @override
  String get settingsDefaultMatchLength => 'Výchozí délka zápasu';

  @override
  String get settingsDefaultDifficulty => 'Výchozí obtížnost';

  @override
  String get settingsDifficultyEasy => 'Lehká';

  @override
  String get settingsDifficultyMedium => 'Střední';

  @override
  String get settingsDifficultyHard => 'Těžká';

  @override
  String get settingsDifficultyExpert => 'Expertní';

  @override
  String get settingsTutorModeDefault => 'Výchozí režim tutora';

  @override
  String get settingsTutorAuto => 'Automaticky';

  @override
  String get settingsTutorOn => 'Zapnuto';

  @override
  String get settingsTutorOff => 'Vypnuto';

  @override
  String get settingsTutorModeHelp =>
      'Režim Automaticky zapne tutora při všech obtížnostech počítače. Volby Zapnuto a Vypnuto nastavují počáteční stav pro místní zápasy. Hry v okolí a online zápasy probíhají bez nápovědy; uložené partie si můžete později projít. Níže uvedené výukové předvolby se ukládají v tomto zařízení.';

  @override
  String get settingsTutorPreferences => 'Předvolby tutora';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Uložená výchozí nastavení pro budoucí zápasy';

  @override
  String get settingsTutorSaveError => 'Předvolby tutora se nepodařilo uložit.';

  @override
  String get settingsGameplay => 'Hra';

  @override
  String get settingsMoveHighlights => 'Zvýraznění tahů';

  @override
  String get settingsMoveHighlightsHelp =>
      'Označí kameny, kterými lze táhnout, a zvýrazní cílové body';

  @override
  String get settingsDragToMove => 'Přesouvání tažením';

  @override
  String get settingsDragToMoveHelp =>
      'Přetáhněte kámen na cílový bod (funguje i klepnutí)';

  @override
  String get settingsCombinedMoves => 'Kombinované tahy';

  @override
  String get settingsCombinedMovesHelp =>
      'Jedním klepnutím přesunete kámen pomocí obou kostek';

  @override
  String get settingsRotateBoard => 'Otáčet desku mezi tahy';

  @override
  String get settingsRotateBoardHelp =>
      'Při hře u jednoho zařízení otočí pohled k hráči, který je na tahu';

  @override
  String get settingsPassDevice => 'Obrazovka předání zařízení';

  @override
  String get settingsPassDeviceHelp =>
      'Při předávání zařízení mezi hráči zakryje desku';

  @override
  String get settingsShowScore => 'Zobrazit skóre';

  @override
  String get settingsShowScoreHelp =>
      'V záhlaví zobrazuje průběžné skóre zápasu';

  @override
  String get settingsBuddyMode => 'Režim Buddy';

  @override
  String get settingsBuddyTerse => 'Stručný';

  @override
  String get settingsBuddyFriendly => 'Přátelský';

  @override
  String get settingsBuddyTerseHelp =>
      'Jak Buddy vyslovuje tah: „13/8, 24/22“ — stručný zápis, který hráči u desky běžně používají.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Jak Buddy vyslovuje tah: „Přesuň jeden kámen z 13 na 8 a jeden z 24 na 22.“';

  @override
  String get settingsListenForDice => 'Naslouchat kostkám';

  @override
  String get settingsListenForDiceHelp =>
      'Když Buddy uslyší hod, dříve zkontroluje desku. Vypnutí nemění nic dalšího.';

  @override
  String get settingsDiagnostics => 'Diagnostika';

  @override
  String get settingsErrorLog => 'Protokol chyb';

  @override
  String get settingsErrorLogHelp =>
      'Nedávné chyby připravené ke zkopírování do hlášení o chybě';

  @override
  String get settingsReportBug => 'Nahlásit chybu';

  @override
  String get settingsReportBugHelp =>
      'Otevře průvodce nahlášením chyby na GitHubu';

  @override
  String get settingsSuggestIdea => 'Navrhnout nápad';

  @override
  String get settingsSuggestIdeaHelp => 'Pomozte nám vylepšit tutora a hru';

  @override
  String get settingsAbout => 'O aplikaci';

  @override
  String get settingsOpenSourceLicenses => 'Licence open-source softwaru';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partie skončila.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Projděte si tahy a najděte rozhodnutí, které stojí za procvičení.';

  @override
  String get tutorPhraseCubeOffered => 'Bylo nabídnuto zdvojnásobení sázky.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Než naplánujete tah kamenů, rozhodněte se, zda zdvojnásobení přijmete, nebo odmítnete.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Skóre zápasu mění hodnotu dodatečné sázky.';

  @override
  String get tutorPhraseResignationOffered => 'Soupeř nabídl vzdání partie.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Před přijetím vzdání nebo pokračováním porovnejte nabídnuté body s pozicí.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Při tomto hodu nelze provést žádný legální tah.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Vynucené vynechání tahu není chyba; počkejte na další hod.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Existuje jen jedna legální výsledná pozice.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Proveďte vynucený tah. Při tomto hodu není z čeho vybírat ani co hodnotit.';

  @override
  String get tutorPhrasePipCountsLevel => 'Počet pipů je vyrovnaný.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Pipový náskok: $count.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Ztráta na pipech: $count.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Nejprve musíte vrátit kameny z baru. Počet na baru: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Nejprve vraťte kámen z baru a pak hledejte bezpečný bod, kam ho umístit.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Soupeř má ve své domácí desce zavřených bodů: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Závod ve vyvádění kamenů.';

  @override
  String get tutorPhrasePureRace => 'Čistý závod.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Vyvádějte kameny a zároveň je rozložte tak, aby se hodily pro další hod.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Přesuňte zadní kameny domů a nehromaděte jich příliš mnoho na jednom bodě.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Hráči se minuli; další údery už nejsou možné.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt je stále důležitý.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Soupeř má na baru kamenů: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Udržujte body zavřené a přitom přivádějte zbývající kameny domů.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Budujte nebo udržujte svou domácí desku, zatímco se soupeř snaží vstoupit z baru.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Ve své domácí desce držíte zavřených bodů: $count; každý z nich zavírá jedno vstupní číslo.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt s řadou $count zavřených bodů.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Zvažte, zda řadu prodloužit, nebo si ponechat volné kameny, které ji pomohou udržet.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Volné kameny: $count. Lze s nimi táhnout, aniž by se hned otevřel bod.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt s kotvou na bodech $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Porovnejte postup zadních kamenů domů s bezpečím, které vám dává zachovaná kotva.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Při hledání úderu nebo zlepšení pozice mějte na paměti bezpečnou oporu.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Kotvu nelze zasáhnout, ale těmto kamenům zbývá ještě dlouhá cesta domů.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt přetrvává: obě strany mohou hrozit úderem.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Hledejte užitečné body a zvažte riziko ponechání osamocených kamenů vystavených úderu.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Ve své domácí desce držíte zavřených bodů: $count. Odkrytých kamenů necháváte: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Vyberte kámen, kterým začnete tah.';

  @override
  String get tutorPhraseLegalPlayPrompt => 'Pro komentář proveďte legální tah.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count soupeřovy kameny',
      many: '$count soupeřových kamenů',
      few: '$count soupeřovy kameny',
      one: '$count soupeřův kámen',
    );
    return 'Zasáhli jste $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Kameny vrácené z baru: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kameny',
      many: '$count kamenů',
      few: '$count kameny',
      one: '$count kámen',
    );
    return 'Vyvedené kameny: $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zavřeli jste body $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Kámen na bodě $point je zatím odkrytý a může být zasažen.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Volným kamenem na bodě $point můžete později táhnout, aniž by se bod otevřel.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Než vyhodnotíte celý tah, využijte i zbývající hratelné kostky.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Všech 15 kamenů je vyvedeno: vyhráli jste partii.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Úder získává čas, zatímco soupeř vrací kámen z baru.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Efektivním vyváděním odstraníte kameny a ponecháte si užitečná čísla pro další hod.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'V závodu přesuňte zadní kameny domů a ponechte si vhodné body pro vyvádění.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Vyvádění vás přibližuje k cíli, ale dokud trvá kontakt, může se odkrytý kámen stát terčem úderu.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Vstup vrací kámen do hry; teď pro něj najděte bezpečný bod.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Nový zavřený bod ve vaší domácí desce po případném úderu odebere soupeři jedno vstupní číslo.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Delší řada zavírá více bodů, kam by soupeř mohl vstoupit; volné kameny vám ji pomohou udržet.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Opustíte-li kotvu, zadní kameny postoupí, ale přijdou o bezpečnou oporu.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Nová kotva poskytuje zadním kamenům bezpečnou oporu.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Zakrytím odkrytého kamene odeberete soupeři snadný cíl.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Jde o rovnováhu mezi rozvojem a bezpečím: kameny, které pomáhají budovat pozici, se samy mohou stát cílem.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Tah je připravený celý. Potvrďte ho klepnutím na Potvrdit.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Tento hod neumožňuje zvolit tah kamenů, takže se nerozebírá jako rozhodnutí.';

  @override
  String get tutorMoveTopVerdict => 'Nejlepší volba pro tuto pozici.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Engine zde upřednostňuje jiný tah.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Rozdíl oproti nejlepšímu tahu: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Po tomto tahu: $winPercent% šance na výhru, $winGammonPercent% na výhru s gammonem či backgammonem a $loseGammonPercent% na prohru s gammonem či backgammonem. Jde o odhady z pohledu hráče na tahu.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Odhadovaná šance na výhru zápasu: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Všech 15 kamenů je vyvedeno: partii jste vyhráli.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Zásahem získáte čas, zatímco soupeř vstupuje z baru. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Udržujte body ve své domácí desce zavřené, aby se soupeři hůře vstupovalo.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zavřete další body ve své domácí desce, aby se soupeř po případném úderu hůře vracel do hry.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Snažte se o efektivní vyvádění: odstraňujte kameny a ponechávejte si užitečná čísla pro další hod.';

  @override
  String get tutorMovePlanRaceHome =>
      'Přesuňte zadní kameny domů a rozložte je na vhodné body pro vyvádění.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Vyvádějte kameny ze hry, ale sledujte zadní kameny soupeře: dokud trvá kontakt, může se odkrytý kámen při vyvádění stát terčem.';

  @override
  String get tutorMovePlanReentry =>
      'Vraťte se do hry a pak hledejte bezpečný bod pro kámen, který právě vstoupil.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Posilujte svou domácí desku. Nový zavřený bod zvýší účinnost budoucího úderu, protože soupeři odebere jedno vstupní číslo.';

  @override
  String get tutorMovePlanPrime =>
      'Udržujte řadu zavřených bodů pohromadě. Ponechte si volné kameny, aby vás další hody nedonutily řadu otevřít.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Opuštění kotvy posune zadní kameny vpřed, ale připraví je o bezpečnou oporu. Dávejte pozor, aby cestou domů nebyly vystavené úderu.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Využijte novou kotvu jako bezpečnou oporu a mezitím vylepšujte zbytek pozice.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Sjednoťte své kameny. Zakrytím odkrytého kamene odstraníte soupeři cíl a zachováte si možnosti dalších tahů.';

  @override
  String get tutorMovePlanSafety =>
      'Vyvažujte rozvoj a bezpečí: posouvejte stavební kameny k užitečným bodům a zkontrolujte, které osamocené kameny může soupeř zasáhnout.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Žádný legální tah kamenů: musíte vynechat tah.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count soupeřovy kameny',
      many: '$count soupeřových kamenů',
      few: '$count soupeřovy kameny',
      one: '$count soupeřův kámen',
    );
    return 'Zasáhli jste $_temp0; soupeř musí nejprve vstoupit z baru, než může táhnout ostatními kameny.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Kameny vrácené z baru: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kameny',
      many: '$count kamenů',
      few: '$count kameny',
      one: '$count kámen',
    );
    return 'Vyvedeno z desky: $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zavřené body: $points. Dva nebo více kamenů drží bezpečný bod a brání soupeři na něj vstoupit.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Uvolnili jste dříve zavřené $pointLabel: $points. Tyto body už soupeři nebrání, aby na ně vstoupil.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nezůstaly žádné odkryté osamocené kameny (předtím $previousCount). Soupeř teď nemá co zasáhnout.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kameny',
      many: '$count kamenů',
      few: '$count kameny',
      one: '$count kámen',
    );
    return 'Odkryté osamocené kameny: $_temp0 (předtím $previousCount). Než dáte přednost bezpečí před jiným ziskem, zvažte, zda na ně soupeř dosáhne.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Nejdelší řada zavřených bodů: $count (předtím $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Šestibodovou řadu nelze překročit, dokud zůstane zavřená.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Chcete-li řadu prodloužit nebo udržet, ponechte poblíž stavební kameny.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Počet volných kamenů nad dvěma potřebnými k držení bodů: $count. Přesun volného kamene může bod zachovat; přesun jednoho z posledních dvou ho otevře.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Kotvy v soupeřově domácí desce: $points (předtím $previousPoints). Kotva chrání tyto kameny před zásahem; jejím opuštěním vyměníte bezpečnou oporu za postup v závodu.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Čistý závod: hráči se minuli a žádná strana nemá kámen na baru. Zásahy už nejsou možné; záleží na efektivitě vyvádění.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Soupeř nemá žádný legální další hod, kterým by v této pozici mohl zasáhnout kámen. Kontakt však trvá, takže další tahy mohou vytvořit nové příležitosti k úderu.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Soupeř může zasáhnout při $count z $total hodů. Například $dieOne–$dieTwo umožňuje legálně zasáhnout váš kámen na bodě $point. Možnost úderu neznamená, že ji soupeř určitě zvolí.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Ve své domácí desce máte zavřených bodů: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Soupeř nemůže vstoupit, dokud se některý bod neotevře.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Hod, který využije otevřený vstupní bod, může vrátit kámen z baru.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Odhadovaná šance na výhru je u nejlepšího tahu o $delta procentních bodů $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'vyšší';

  @override
  String get tutorMoveComparisonLower => 'nižší';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' I tak může být tah hodnocen výše, protože gammony a backgammony mají při aktuálním $scoreContext odlišnou hodnotu.';
  }

  @override
  String get tutorMoveComparisonStake => 'stavu sázky';

  @override
  String get tutorMoveComparisonMatchScore => 'skóre zápasu';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Po nejlepším tahu zůstane na baru $bestCount soupeřových kamenů, oproti $playedCount. Kámen na baru musí nejprve vstoupit, než soupeř může táhnout ostatními.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Nejlepší tah drží ve vaší domácí desce $bestCount zavřených bodů oproti $playedCount, tedy rozdíl $entryDifference vstupních bodů po úderu.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'více zavírá';

  @override
  String get tutorMoveComparisonLeavingMore => 'více ponechává otevřených';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Nejlepší tah dovoluje soupeři zasáhnout při $bestCount z 36 hodů oproti $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Tím se snižuje bezprostřední riziko návratu na bar.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Zvažte toto dodatečné riziko proti tomu, co tah získá jinde.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Nejdelší řada zavřených bodů je u nejlepšího tahu $bestCount, oproti $playedCount; porovnejte sílu blokády s počtem kamenů, které ji udrží.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Nejlepší tah ponechává kotvy $bestPoints místo $playedPoints. Zachovaná kotva nabízí bezpečný bod k návratu; jejím opuštěním se kameny přiblíží domů.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Nejlepším tahem máte vyvedeno $bestCount kamenů oproti $playedCount. Každý vyvedený kámen je jeden, který už později nemusíte odstraňovat.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Oba tahy ponechávají stejné bezprostřední riziko zásahu, počet zavřených bodů v domácí desce, kotvy i vyvedené kameny. Porovnejte, kde kameny zůstanou: příští hod může každému bodu nabídnout jiné možnosti.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Nejlepší tah ponechá více soupeřových kamenů na baru a zdrží jeho další tahy.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Nejlepší tah zavře více bodů v domácí desce, takže se soupeři po zásahu hůře vrací.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Nejlepší tah dovoluje méně okamžitých úderů, a snižuje tak riziko návratu na bar.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Nejlepší tah zachová delší řadu zavřených bodů.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Nejlepší tah ponechá více bezpečných kotev v soupeřově domácí desce.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Nejlepší tah vyvede více kamenů, takže jich později zbývá méně.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Po tomto tahu zůstane odkrytých osamocených kamenů: $playedCount; po nejlepším tahu: $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Nejlepší tah ponechá bezpečnou kotvu na bodě $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Nejlepší tah zavře více vstupních bodů pro případ, že bude některý z vašich kamenů zasažen.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Tahy ponechávají podobné bezprostřední riziko; porovnejte, které body budou užitečné při dalším hodu.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value očekávané hodnoty';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value procentních bodů šance na výhru zápasu';
  }

  @override
  String get tutorMovePointSingular => 'bod';

  @override
  String get tutorMovePointPlural => 'body';

  @override
  String get tutorMoveNoPoints => 'žádné';

  @override
  String get gameTutorCommentaryOff => 'Komentář k partii je vypnutý.';

  @override
  String get gameTutorToolsAvailable =>
      'Otevřete trenéra a použijte povolené nástroje.';

  @override
  String get gameTutorNextRoll => 'Hoďte kostkami.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'K tomuto zaznamenanému tahu není k dispozici hodnocené vysvětlení.';

  @override
  String get gameTutorAnalysisUnavailable => 'analýza není dostupná';

  @override
  String get gameTutorReviewing => 'probíhá kontrola…';

  @override
  String get gameTutorTryYourPlayFirst => 'Nejprve zkuste zahrát vlastní tah.';

  @override
  String get gameTutorKeepBuilding => 'Pokračujte v sestavování tahu.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Než zobrazíte rady nebo nápovědu, sestavte celý legální tah.';

  @override
  String get gameTutorReadyToConfirm => 'Připraveno k potvrzení';

  @override
  String get gameTutorPlayTakingShape => 'Váš tah se rýsuje.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potvrzením tah zahrajete, nebo jej vraťte zpět a zvažte znovu.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Použijte zbývající kostky, nebo tah vraťte zpět.';

  @override
  String get gameTutorComputerConsidering => 'Počítač zvažuje svůj tah.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Dokončený tah počítače se zde vyhodnotí.';

  @override
  String get gameTutorYourPlay => 'Váš tah';

  @override
  String get gameTutorComputer => 'Počítač';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Váš tah: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'vynucený tah';

  @override
  String get gameTutorTopChoice => 'nejlepší volba';

  @override
  String get gameTutorSoundPlay => 'dobrý tah';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'jiný tah by mohl být vhodnější';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'do této pozice se lépe hodí jiný tah';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'k dispozici byl výrazně silnější tah';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Podle odhadu má $side výhodu.';
  }

  @override
  String get gameTutorPositionEven => 'Pozice je přibližně vyrovnaná.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Zahráno: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Nejlepší tah: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Zobrazit seřazené tahy';

  @override
  String get tutorReviewRecordedMove =>
      'Klepnutím na dokončený tah v záznamu zde zobrazíte jeho vyhodnocení.';

  @override
  String get tutorTopPlays => 'Nejlepší tahy';

  @override
  String get tutorNoHintsAvailable => 'Nejsou k dispozici žádné nápovědy.';

  @override
  String get tutorPreviewThenConfirm =>
      'Klepnutím na tah si ho zobrazíte na desce a potom ho potvrďte.';

  @override
  String get tutorTopChoiceForPosition => 'Nejlepší volba pro tuto pozici';

  @override
  String get tutorAlternativePlay => 'Alternativní tah';

  @override
  String get tutorEngineEstimates => 'Odhady enginu';

  @override
  String get tutorEstimateScope =>
      'Odhad 0 půltahu · aktuální skóre a sázka · bez budoucích zdvojení';

  @override
  String get tutorEquity => 'Equity';

  @override
  String get tutorMwcPercent => 'Šance na výhru zápasu %';

  @override
  String get tutorNearTiesNote =>
      'Těsné výsledky se mohou při hlubší analýze změnit.';

  @override
  String get tutorWhyThisPlay => 'Proč tento tah?';

  @override
  String get tutorCompareAlternative => 'Porovnat tuto alternativu';

  @override
  String get gameTutorCubeTake => 'Tutor: přijmout';

  @override
  String get gameTutorCubePass => 'Tutor: odmítnout';

  @override
  String get practiceScreenTitle => 'Procvič si rozhodnutí';

  @override
  String get practiceUnavailable => 'Tato tréninková pozice už není dostupná.';

  @override
  String get practiceSubmitError =>
      'Tento pokus se nepodařilo vyhodnotit ani uložit. Tvůj postup se nezměnil. Zkus to znovu.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Na tahu je $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Historické skóre není dostupné; hodnocení používá equity bez kostky.';

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
  String get practiceNoDoublingCube => 'Bez zdvojovací kostky.';

  @override
  String practiceCubeValue(int value) {
    return 'Kostka $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Historická pravidla kostky nejsou známa.';

  @override
  String get practiceAfterBestPosition => 'Pozice po nejlepším tahu';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozice po tvé odpovědi';

  @override
  String get practiceFindYourPlayPrompt =>
      'Zahraj svůj tah na desce a pak zkontroluj odpověď. Nápověda se nezobrazí.';

  @override
  String get practiceUndo => 'Zpět';

  @override
  String get practiceCheckAnswer => 'Zkontrolovat odpověď';

  @override
  String get practiceRevealNoCredit => 'Odhalit odpověď (bez bodů)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odpověď odhalena — bez bodů za zapamatování.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Nejlepší: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Původní partie: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Tvoje odpověď: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Tvoje odpověď';

  @override
  String get practiceBestPlayChip => 'Nejlepší tah';

  @override
  String practiceNextReview(Object date) {
    return 'Další opakování: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Nejlepší a dobré odpovědi se počítají jako úspěšné zapamatování. Předčasná opakování plán neposouvají.';

  @override
  String get practiceBackToLearning => 'Zpět k učení';

  @override
  String get practiceMarkBest => 'Nejlepší';

  @override
  String get practiceMarkGood => 'Dobrý';

  @override
  String get practiceMarkDubious => 'Pochybný';

  @override
  String get practiceMarkError => 'Chyba';

  @override
  String get practiceMarkBlunder => 'Hrubá chyba';

  @override
  String get practiceMarkForced => 'Vynucený';

  @override
  String get newMatchYourSide => 'Vaše strana';

  @override
  String get newMatchTutorMode => 'Režim tutora';

  @override
  String get newMatchTutorDescription =>
      'Učte se pomocí nápověd, vysvětlení a komentářů k partii';

  @override
  String get newMatchTutoringOptions => 'Možnosti tutora';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Pro tento zápas; lze upravit i během hry';

  @override
  String get setupMatchLength => 'Délka zápasu';

  @override
  String get setupDifficulty => 'Obtížnost';

  @override
  String get setupDifficultyEasy => 'Lehká';

  @override
  String get setupDifficultyMedium => 'Střední';

  @override
  String get setupDifficultyHard => 'Těžká';

  @override
  String get setupDifficultyExpert => 'Expertní';

  @override
  String get setupPlayWithoutCube => 'Hrát bez kostky';

  @override
  String get setupNoCubeThisMatch =>
      'V tomto zápase bez zdvojnásobovací kostky';

  @override
  String get analysisTitle => 'Analýza';

  @override
  String get gameMatchSummary => 'Shrnutí zápasu';

  @override
  String get gameAnalyzeGame => 'Analyzovat partii';

  @override
  String get analysisMetricsTooltip => 'Co tato čísla znamenají?';

  @override
  String analysisError(Object error) {
    return 'Analýza partie se nezdařila: $error';
  }

  @override
  String get analysisNoPositions =>
      'Tato partie nemá žádné pozice k zobrazení.';

  @override
  String get analysisInProgress => 'Analýza partie…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Odehráno';

  @override
  String get analysisBest => 'Nejlepší';

  @override
  String get analysisPrevious => 'Předchozí';

  @override
  String get analysisNext => 'Další';

  @override
  String get analysisPositionBeforeCube => 'Pozice před rozhodnutím o kostce';

  @override
  String get analysisPositionAtPoint => 'Pozice v tomto okamžiku partie';

  @override
  String get analysisShowingBestBefore =>
      'Zobrazuje se nejlepší tah v pozici před tahem';

  @override
  String get analysisShowingBefore => 'Zobrazuje se pozice před tahem';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · nezahrnuto do průměrů';

  @override
  String get analysisNoPlay => '(bez tahu)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Nejlepší tah: $move';
  }

  @override
  String get analysisExplain => 'Vysvětlit';

  @override
  String get analysisSaveForPractice => 'Uložit k procvičení';

  @override
  String get analysisSaveError =>
      'Toto rozhodnutí se nepodařilo uložit. Zkuste to znovu.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · ztráta $loss';
  }

  @override
  String get analysisCubeDecision => 'Rozhodnutí o kostce';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Odehráno: $action (šance na výhru zápasu $percent %).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Nejlepší: $action (šance na výhru zápasu $percent %).';
  }

  @override
  String get analysisCubeEstimate =>
      'Odhad 0-ply z pohledu hráče na tahu. Předpokládá optimální přijetí nebo pas. Ve větvi přijatého zdvojení používá přibližnou životnost kostky 0,7, nikoli úplné hledání budoucích redoublů. Hlubší analýza může odpověď změnit.';

  @override
  String get analysisClose => 'Zavřít';

  @override
  String get analysisMoves => 'Tahy';

  @override
  String get analysisForced => 'Vynucený';

  @override
  String get analysisMarkBest => 'Nejlepší';

  @override
  String get analysisMarkGood => 'Dobrý';

  @override
  String get analysisMarkDubious => 'Pochybný';

  @override
  String get analysisMarkError => 'Chyba';

  @override
  String get analysisMarkBlunder => 'Hrubá chyba';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Průměrná ztráta $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count rozhodnutí o kamenech';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Hrubé chyby $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Ztráta kostky $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side hází bez zdvojení';
  }

  @override
  String get metricExplainerTitle => 'Jak rozumět metrikám';

  @override
  String get metricExplainerTooltip => 'Co tato čísla znamenají?';

  @override
  String get metricExplainerMwcTitle => 'Šance na výhru zápasu (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Je-li skóre známé, tahy kameny se řadí podle odhadované šance na výhru zápasu. Ztráta je v procentních bodech (pp): 1 pp znamená pokles z 51 % na 50 %. Zahrnuje aktuální sázku kostky i gammon/backgammon. Vynucené pasy a hody s jedinou legální výslednou pozicí se do průměru nezapočítávají.';

  @override
  String get metricExplainerSearchTitle => 'Hledání a nejistota';

  @override
  String get metricExplainerSearchBody =>
      'Řazení tahů je statický odhad 0-ply po tahu, nikoli rollout. Hodnoty zápasu používají tabulku match equity bez budoucích tahů kostkou. Hodnocení kostky používá částečné přiblížení životnosti kostky 0,7 při přijatém zdvojení. Nejde o úplné hledání s kostkou. Při ztrátě nad 25 se použije hranice 25 podle tabulky. Těsné výsledky se při hlubší analýze mohou změnit; interval spolehlivosti není kalibrovaný.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Není-li skóre k dispozici, equity bez kostky ukazuje průměrnou bodovou hodnotu pozice při kostce na 1. +1,0 znamená očekávaný zisk bodu; −0,5 očekávanou ztrátu půl bodu.';

  @override
  String get metricExplainerEquityLossTitle => 'Ztráta equity (např. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Každý tah porovnáváme s nejlepším tahem enginu. Ztráta equity vyjadřuje, kolik očekávané hodnoty tvůj tah obětoval. −0,016 znamená, že byl jen o 0,016 bodu horší — drobná chyba. 0,000 znamená, že jsi našel nejlepší tah.';

  @override
  String get metricExplainerErrorRateTitle => 'Míra chyb';

  @override
  String get metricExplainerErrorRateBody =>
      'Průměrná ztráta je průměrem hodnocených rozhodnutí o kamenech v zobrazené jednotce. Rozhodnutí o kostce mají vlastní průměr. Nižší hodnota znamená větší blízkost k nejlepším odhadům enginu; nejde o kalibrované hodnocení hráče.';

  @override
  String get metricExplainerMoveMarksTitle => 'Hodnocení tahů';

  @override
  String get metricExplainerMoveMarksBody =>
      'Učební pásma MWC: Nejlepší < 0,05 pp, Dobrý < 0,5 pp, Pochybný < 1,5 pp, Chyba < 3 pp, Hrubá chyba ≥ 3 pp. Jde o produktová výuková pásma, nikoli kalibrovanou jistotu nebo turnajové hodnocení.\n\nVýuková pásma equity bez kostky:';

  @override
  String get metricExplainerThresholdBest => 'ztráta < 0,001';

  @override
  String get metricExplainerThresholdGood => 'ztráta < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'ztráta < 0,050';

  @override
  String get metricExplainerThresholdError => 'ztráta < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'ztráta ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Rozumím';

  @override
  String get historyTitle => 'Historie zápasů';

  @override
  String historyLoadFailed(Object error) {
    return 'Nepodařilo se načíst historii:\n$error';
  }

  @override
  String get historyEmpty => 'Zatím jste neodehráli žádné zápasy.';

  @override
  String get historyDeleteConfirmTitle => 'Smazat tento zápas?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nZápas a všechny partie v něm budou trvale odstraněny. Tuto akci nelze vrátit.';
  }

  @override
  String get actionCancel => 'Zrušit';

  @override
  String get actionDelete => 'Smazat';

  @override
  String get historyDeleteFailed => 'Zápas se nepodařilo smazat.';

  @override
  String get historyComplete => 'Dokončeno';

  @override
  String historyWinner(Object side) {
    return 'Vyhrál(a) $side';
  }

  @override
  String get historyUnfinished => 'Nedokončeno';

  @override
  String get historyMatchTitle => 'Zápas';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Zápas se nepodařilo načíst:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partie se nepodařilo načíst:\n$error';
  }

  @override
  String get historyNoGames => 'Zatím nejsou zaznamenány žádné partie.';

  @override
  String historyGameTitle(int number) {
    return 'Partie $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Bílý $whiteScore — $blackScore Černý (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'proti počítači';

  @override
  String get historyModeTwoPlayers => 'Dva hráči';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Hrát v okolí';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Probíhá';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side vyhrál(a) o $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'jednoduchá';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Obnovit postup v učení';

  @override
  String get learningOptions => 'Možnosti učení';

  @override
  String get learningResetMenu => 'Resetovat postup cvičení';

  @override
  String get learningLoadFailed => 'Postup v učení se nepodařilo načíst.';

  @override
  String get actionRetry => 'Zkusit znovu';

  @override
  String get learningHeading => 'Uč se ze svých rozhodnutí';

  @override
  String get learningIntro =>
      'Postup se ukládá v tomto zařízení. Prohlížej opakující se témata a zkoušej uložené pozice znovu bez zobrazení odpovědi. Bílé a černé můžeš procházet zvlášť.';

  @override
  String get learningBothSides => 'Obě strany';

  @override
  String get learningHumansOnly => 'Jen lidská rozhodnutí';

  @override
  String get learningHumanOnlyHelp =>
      'Vypnutím zahrneš rozhodnutí počítače a vzdálených hráčů';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions rozhodnutí · $mistakes ke zlepšení · $blunders hrubých chyb';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Průměrná ztráta ($decisions rozhodnutí): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Vynucené tahy jsou vynechány. Jde o odhady enginu, ne turnajové hodnocení.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Uložené partie ($count) vyžadují analýzu nebo novou analýzu.',
      one: 'Uložená partie vyžaduje analýzu nebo novou analýzu.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analyzovat uložené partie';

  @override
  String get learningEmptyProfile =>
      'Zahraj a dokonči partii, aby sis vytvořil profil učení. Jednotlivá rozhodnutí můžeš uložit také z přehrávání partie.';

  @override
  String get learningOpenHistory => 'Otevřít historii zápasů';

  @override
  String get learningRecurringThemes => 'Opakující se témata';

  @override
  String get learningNoThemes =>
      'V tomto výběru zatím nejsou opakující se témata chyb.';

  @override
  String learningThemeDecisions(int count) {
    return '$count rozhodnutí k opakování. Jedna pozice může mít více témat.';
  }

  @override
  String get learningSaveMistakes => 'Uložit tyto chyby k procvičení';

  @override
  String learningSavedMistakes(int count) {
    return '$count rozhodnutí je v seznamu procvičování. Již uložená zůstanou.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Některá rozhodnutí se nepodařilo uložit. Úspěšně uložená zůstanou; zkus to znovu.';

  @override
  String get learningSpacedPractice => 'Rozložené procvičování';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due nyní k procvičení · $saved uložených · $attempts pokusů · $successes úspěšných zapamatování';
  }

  @override
  String get learningIntervalsHelp =>
      'Úspěšná opakování se vrací po 1, 3, 7, 14 a 30 dnech. Chyby nebo odhalené odpovědi se vrací po 10 minutách. Předčasná opakování interval neposouvají.';

  @override
  String get learningAnswerContext =>
      'Výsledky procvičování odrážejí tvoje odpovědi, i když původní pozice patřila soupeři.';

  @override
  String get learningNoSavedPositions =>
      'Ulož rozhodnutí z přehrávání nebo použij výše tlačítko chyb.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Rozhodnutí strany $side · partie $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Opakovat $date';
  }

  @override
  String get learningReadyToReview => 'Připraveno k opakování';

  @override
  String learningSuccessStreak(int count) {
    return '$count úspěšných opakování v termínu';
  }

  @override
  String get learningRemoveTooltip => 'Odebrat uložené rozhodnutí';

  @override
  String get learningRecentPractice => 'Nedávné procvičování';

  @override
  String get learningAnswerRevealed => 'Odpověď odhalena';

  @override
  String get learningSuccessfulRecall => 'Úspěšné zapamatování';

  @override
  String get learningTryAgain => 'Zkus toto rozhodnutí znovu';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · uložená pozice $positionId';
  }

  @override
  String get learningRemoveTitle => 'Odebrat toto cvičení?';

  @override
  String get learningRemoveBody =>
      'Tím se odstraní jeho pokusy. Původní partie zůstane v historii.';

  @override
  String get actionRemove => 'Odebrat';

  @override
  String get learningRemoveFailed => 'Cvičení se nepodařilo odebrat.';

  @override
  String get learningResetTitle => 'Resetovat postup procvičování?';

  @override
  String get learningResetBody =>
      'Všechny pokusy a intervaly opakování se odstraní. Uložená cvičení i historie zápasů zůstanou; všechna cvičení budou ihned k dispozici.';

  @override
  String get learningResetAction => 'Resetovat postup';

  @override
  String get learningResetFailed =>
      'Postup procvičování se nepodařilo resetovat.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analyzované partie: $completed · nedostupné: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analyzováno partií: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analyzováno partií: $completed; $failed se nepodařilo analyzovat. Zkus to znovu, až bude engine připraven.';
  }

  @override
  String get learningThemeHitting => 'Údery a tempo';

  @override
  String get learningThemeSafety => 'Odkryté kameny a bezpečí';

  @override
  String get learningThemePointMaking => 'Vytváření bodů';

  @override
  String get learningThemePrime => 'Prime a blokády';

  @override
  String get learningThemeAnchor => 'Kotvy a únik';

  @override
  String get learningThemeRace => 'Efektivita závodu';

  @override
  String get learningThemeBearOff => 'Odkládání kamenů';

  @override
  String get learningThemeBarEntry => 'Vstup z baru';

  @override
  String get learningThemeCube => 'Rozhodnutí o kostce';

  @override
  String get analysisCubeNoDouble => 'Nedublovat';

  @override
  String get analysisCubeDouble => 'Zdvojnásobit';

  @override
  String get analysisCubeTake => 'Vzít';

  @override
  String get analysisCubePass => 'Pasovat';

  @override
  String get learningAnalysisStarting => 'Analyzují se uložené partie…';

  @override
  String get tutorCubelessEstimateScope =>
      'Odhad bez kostky, 0 půltahu · skóre není k dispozici';

  @override
  String get tutorLossPp => 'Ztráta v procentních bodech';

  @override
  String get tutorLoss => 'Ztráta';

  @override
  String get scoreSheetNoMoves => 'Zatím žádné tahy';

  @override
  String get tutorOptions => 'Nastavení tutora';

  @override
  String get tutorCollapseTooltip => 'Sbalit tutora';

  @override
  String get tutorExpandTooltip => 'Rozbalit tutora';

  @override
  String get onlineTitle => 'Hrát online';

  @override
  String get onlineUnassistedNote =>
      'Živé online partie jsou bez asistence. Po zápase si projděte tahy a procvičte chyby.';

  @override
  String get onlineNotConfiguredTitle =>
      'Online hra není v tomto sestavení nakonfigurována';

  @override
  String get onlineNotConfiguredBody =>
      'Toto sestavení nemá připojený Firebase backend, takže vytváření a připojování k zápasům není dostupné.';

  @override
  String get onlineErrorNoMatch =>
      'Zápas s tímto kódem neexistuje. Zkontrolujte ho a zkuste to znovu.';

  @override
  String get onlineErrorSeatTaken =>
      'Tento zápas už není otevřený — místo je obsazené.';

  @override
  String get onlineErrorPermission => 'K tomuto zápasu nemáte přístup.';

  @override
  String get onlineErrorGeneric => 'Něco se pokazilo. Zkuste to znovu.';

  @override
  String get onlineMatchFinished =>
      'Tento zápas skončil — už se k němu nelze vrátit.';

  @override
  String get onlineEnterCodeError => 'Zadejte kód zápasu.';

  @override
  String get onlineOpponentShort => 'Soupeř';

  @override
  String get onlineMatchInProgress => 'Zápas probíhá';

  @override
  String onlineResumePrompt(Object code) {
    return 'Hráli jste zápas $code.';
  }

  @override
  String get onlineRejoin => 'Znovu se připojit';

  @override
  String get onlineForgetMatch => 'Zapomenout tento zápas';

  @override
  String get onlineCreateTitle => 'Vytvořit zápas';

  @override
  String get onlineMatchLength => 'Délka zápasu';

  @override
  String get onlineNoCubeTitle => 'Hrát bez kostky';

  @override
  String get onlineNoCubeSubtitle =>
      'V tomto zápase bez zdvojnásobovací kostky';

  @override
  String get onlineCreate => 'Vytvořit';

  @override
  String get onlineWaitingOpponent => 'Čeká se na soupeře…';

  @override
  String get onlineShareCode => 'Sdílet tento kód';

  @override
  String get onlineCopyCode => 'Kopírovat kód';

  @override
  String get onlineCodeCopied => 'Kód zkopírován';

  @override
  String get onlineJoinTitle => 'Připojit se k zápasu';

  @override
  String get onlineRoomCode => 'Kód zápasu';

  @override
  String get onlineJoin => 'Připojit se';

  @override
  String get lanTitle => 'Hrát v okolí';

  @override
  String get lanTabHost => 'Hostitel';

  @override
  String get lanTabJoin => 'Připojit se';

  @override
  String get lanUnassistedNote =>
      'Živé hry v okolí jsou bez asistence. Po zápase si projděte tahy a procvičte chyby.';

  @override
  String get lanGameStartFailed =>
      'Hru se nepodařilo spustit. Druhé zařízení se může zkusit připojit znovu.';

  @override
  String get lanHostPortInUse =>
      'Hostování nelze spustit — port se už používá. Zavřete další kopii Backgammon Buddy.';

  @override
  String get lanHostStartFailed =>
      'Hostování nelze spustit. Zkontrolujte připojení Wi-Fi.';

  @override
  String get lanHostTitle => 'Hostovat hru';

  @override
  String get lanStartHosting => 'Spustit hostování';

  @override
  String get lanHostHelp =>
      'Obě zařízení musí být na stejné Wi-Fi. Toto zařízení hází kostky a uchovává skóre.';

  @override
  String get lanWaitingPlayerTitle => 'Čeká se na hráče';

  @override
  String get lanRoomCodeInfo =>
      'Sdělte tento kód druhému hráči. Umožní mu vstup — aplikace ho neposílá přes síť.';

  @override
  String get lanWaitingPlayer => 'Čeká se na hráče…';

  @override
  String get lanStopHosting => 'Zastavit hostování';

  @override
  String lanFindNearbyPort(int port) {
    return 'Požádejte druhé zařízení o vyhledání her v okolí. Naslouchá se na portu $port.';
  }

  @override
  String get lanOnNetwork => 'V této síti';

  @override
  String get lanCopyAddress => 'Kopírovat adresu';

  @override
  String get lanAddressCopied => 'Adresa zkopírována';

  @override
  String get lanScanHostTitle => 'Naskenovat hostitele';

  @override
  String get lanScanHostHelp =>
      'Druhé zařízení zobrazuje QR kód na obrazovce hostitele. Naskenováním se vyplní adresa a kód místnosti.';

  @override
  String get lanScanQr => 'Naskenovat QR kód';

  @override
  String get lanScannerUnavailable =>
      'Kamera nebo její oprávnění nejsou dostupné. Níže zadejte adresu a kód místnosti.';

  @override
  String get lanInvalidQr =>
      'Tento QR kód není pro hru Backgammon Buddy. Naskenujte kód z obrazovky hostitele druhého zařízení.';

  @override
  String get lanScannerFailed =>
      'Skener nelze otevřít. Zadejte adresu a kód ručně.';

  @override
  String get lanNearbyGames => 'Hry v okolí';

  @override
  String get lanSearching => 'Hledají se hry v okolí…';

  @override
  String get lanNoGamesFound =>
      'Zatím nebyly nalezeny žádné hry. Ověřte, že druhé zařízení hostuje a obě jsou na stejné Wi-Fi, nebo zadejte jeho adresu.';

  @override
  String get lanStillSearching => 'Stále se hledá…';

  @override
  String get lanEnterAddress => 'Zadat adresu';

  @override
  String get lanEnterAddressHelp =>
      'Automatické vyhledávání nefunguje v každé síti (a iOS ho může zcela blokovat). Obrazovka hostitele ukazuje, co máte zadat.';

  @override
  String get lanIpAddress => 'IP adresa';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Zadejte port od 1 do 65535.';

  @override
  String get lanEnterAddressError =>
      'Zadejte adresu zobrazenou na druhém zařízení.';

  @override
  String get lanEnterRoomCodeError =>
      'Zadejte čtyřmístný kód z druhého zařízení.';

  @override
  String get lanJoinWrongCode =>
      'Nesprávný kód místnosti. Zkontrolujte čtyři číslice na druhém zařízení.';

  @override
  String get lanJoinVersionMismatch =>
      'Druhé zařízení používá jinou verzi Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Zařízení neodpovědělo jako Backgammon Buddy. Zkontrolujte adresu a port.';

  @override
  String get lanJoinFailed =>
      'Připojení se nezdařilo. Zkontrolujte adresu a kód místnosti a zkuste to znovu.';

  @override
  String lanJoinTarget(Object name) {
    return 'Připojit se k $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Zadejte čtyřmístný kód zobrazený na druhém zařízení.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Připojování k $name';
  }

  @override
  String get lanConnect => 'Připojit';

  @override
  String get lanBack => 'Zpět';

  @override
  String get lanTryAgain => 'Zkusit znovu';

  @override
  String get lanStatusBusy => 'Místnost se používá — čeká se…';

  @override
  String get lanStatusReconnecting => 'Spojení ztraceno — znovu se připojuje…';

  @override
  String get lanStatusConnected => 'Připojeno — zápas začíná…';

  @override
  String get lanStatusFailed => 'Připojení se nezdařilo.';

  @override
  String get lanStatusConnecting => 'Připojování…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostika zkopírována do schránky';

  @override
  String get diagnosticsReviewTitle => 'Zkontrolovat diagnostický přehled';

  @override
  String get diagnosticsPrivacyNotice =>
      'Otevřením konceptu se do GitHubu odešlou níže uvedené údaje včetně verze aplikace, platformy a podrobností o chybě. Veřejný problém se nezveřejní, dokud jej tam neodešlete. Pokud údaje obsahují soukromé informace, zrušte akci a připravte hlášení pomocí možnosti Kopírovat.';

  @override
  String get diagnosticsCancel => 'Zrušit';

  @override
  String get diagnosticsOpenGitHub => 'Otevřít GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostika';

  @override
  String get diagnosticsReportTooltip => 'Nahlásit problém na GitHubu';

  @override
  String get diagnosticsCopyTooltip => 'Kopírovat do schránky';

  @override
  String get diagnosticsClearTooltip => 'Vymazat protokol';

  @override
  String get diagnosticsEmpty =>
      'Nejsou zaznamenány žádné chyby.\n\nPokud se něco pokazí, záznam najdete zde. Vraťte se a zkopírujte podrobnosti do hlášení chyby.';

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
    return 'Partie $number';
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
  String get gameHudPips => 'Pipy';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Zdvojnásobit';

  @override
  String get gameHudMoreActions => 'Další akce';

  @override
  String get gameHudSurrender => 'Vzdát…';

  @override
  String get gameHudThinking => 'Přemýšlí';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Zdvojnásobit můžete jen před hodem a během svého tahu.';

  @override
  String get gameHudNoDoubleCrawford =>
      'V Crawfordově partii nelze zdvojnásobit — tato jediná partie rozhodne zápas.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Zdvojnásobit může pouze vlastník kostky, kterým je nyní soupeř.';

  @override
  String get gameHudDoubleUnavailable => 'Nyní nelze zdvojnásobit.';

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
    return '$winner vyhrává tuto partii ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner vyhrává tuto partii ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner vyhrává tuto partii ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner vyhrává tuto partii ($points) — $loser odmítl zdvojnásobení.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner vyhrává tuto partii ($points) — $loser vzdal.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Předejte zařízení';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Na tahu je $name';
  }

  @override
  String get gameDialogTapToContinue => 'Pokračujte klepnutím';

  @override
  String get gameDialogCubeOfferedTitle => 'Nabídka zdvojnásobení';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler nabízí zdvojnásobení na $value. Přijmout, nebo odmítnout?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Odmítnout';

  @override
  String get gameDialogTake => 'Přijmout';

  @override
  String get gameDialogResignationTitle => 'Nabídka vzdání';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner nabízí vzdání za $value. Přijmout, nebo odmítnout?';
  }

  @override
  String get gameDialogResignSingle => 'jednoduchou partii';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Odmítnout';

  @override
  String get gameDialogAccept => 'Přijmout';

  @override
  String gameResultGameNumber(int number) {
    return 'Hra $number';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Skóre zápasu: $score';
  }

  @override
  String get gameResultRolls => 'Hody';

  @override
  String get gameResultDiceNote =>
      'Průměrné součty hodů často kolísají kolem 7. Tento malý vzorek nemůže prokázat zaujatost kostek.';

  @override
  String get gameResultRatingNotAvailable =>
      'Hodnocení tahů zatím není k dispozici. Otevřete přehrání hry a zobrazte úplnou analýzu.';

  @override
  String get gameResultRematch => 'Odveta';

  @override
  String get gameDialogGameOverTitle => 'Konec partie';

  @override
  String get gameDialogNextGame => 'Další partie';

  @override
  String get gameDialogMatchOverTitle => 'Konec zápasu';

  @override
  String get gameDialogNobody => 'Nikdo';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner vyhrává zápas.';
  }

  @override
  String get gameDialogSavedToHistory => 'Uloženo do historie';

  @override
  String get gameDialogDone => 'Hotovo';

  @override
  String get gameTapNoLegalMove =>
      'Tímto kamenem nelze se zbývajícími kostkami táhnout';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Tímto kamenem nelze se zbývajícími kostkami táhnout — zkuste tah vrátit';

  @override
  String get gameDragHint =>
      'Tip: kameny můžete přetahovat nebo na ně klepnout — změňte to v Nastavení';

  @override
  String get commonGotIt => 'Rozumím';

  @override
  String get gameHintStageBeforeHint =>
      'Nejprve zahrajte celý platný tah a potom si vyžádejte nápovědu.';

  @override
  String get surrenderTitle => 'Vzdát partii';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player vzdává aktuální partii.';
  }

  @override
  String get surrenderConcedes => 'Vzdáváte aktuální partii.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Dostupné na začátku tahu hráče $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Dostupné na začátku vašeho tahu';

  @override
  String get commonCancel => 'Zrušit';

  @override
  String get surrenderSingle => 'Jednoduchá (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kdo vzdává tuto partii?';

  @override
  String get commonDone => 'Hotovo';

  @override
  String get cubeDouble => 'Zdvojnásobit';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Na tahu je druhý hráč.';

  @override
  String get cubeBlockedCrawford =>
      'V Crawfordově partii nelze použít zdvojnásobovací kostku.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Zdvojnásobit může jen vlastník kostky, kterým je nyní soupeř.';

  @override
  String get cubeBlockedUnavailable => 'Nyní nelze zdvojnásobit.';

  @override
  String get gameStatusRolling => 'Hází se…';

  @override
  String get gameStatusThinking => 'Přemýšlí…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Na tahu: $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Zdvojnásobit — soupeř by měl přijmout';

  @override
  String get cubeAdviceOpponentPass => 'Zdvojnásobit — soupeř by měl odmítnout';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Chyba: $error';
  }

  @override
  String get privacyTitle => 'Soukromí a data';

  @override
  String get privacyAppTitle => 'Backgammon Buddy od Freevia';

  @override
  String get privacyIntro =>
      'Tato stránka popisuje, jak aktuální aplikace zpracovává vaše data.';

  @override
  String get privacyLocalTitle => 'Hry a doučování na vašem zařízení';

  @override
  String get privacyLocalBody =>
      'Na tomto zařízení jsou uloženy místní shody, nastavení, analýza a průběh cvičení. Zde běží backgammon engine a tutor vysvětlení. Smažte uloženou shodu z historie, abyste odstranili i její uložená cvičná cvičení a pokusy. Smazat jednotlivá cvičení nebo resetovat postup praxe ve vzdělávání; vymazat místní chybové zprávy v → diagnostice nastavení. Nastavení zálohování vašeho zařízení se může vztahovat také na historii her. Online přihlašovací údaje jsou uloženy v chráněném úložišti zařízení.';

  @override
  String get privacyOnlineTitle => 'Online hry a hry v okolí';

  @override
  String get privacyOnlineBody =>
      'Online hra odesílá Google Firebase anonymní identifikátor hráče, nastavení zápasu, tahy a záznamy o potřesení kostkou, takže oba hráči mohou hrát stejný zápas. Smazání historie na tomto zařízení neodstraní online záznamy. Platnost hostovaných zápasů vyprší 30 dní po vytvoření; plánované vyčištění odstraní jejich cloudové protokoly. Záznamy o shodě jsou uloženy v EU; Firebase Authentication zpracovává přihlašovací údaje ve Spojených státech. Online připojení ke Googlu používá při přepravě šifrování. Blízké herní výměny odpovídají informacím s jiným zařízením přes nešifrované místní připojení; použijte důvěryhodný Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle => 'Volitelné použití a diagnostika pádů';

  @override
  String get privacyDiagnosticsBody =>
      'Sdílení je vypnuté, dokud ho nevyberete v Nastavení. Pokud je povoleno, Google Firebase přijímá události použití, informace o aplikaci/zařízení, měření výkonu a zprávy o selhání, které pomáhají vylepšit aplikaci. Chcete-li zastavit novou volitelnou kolekci, můžete sdílení kdykoli vypnout. Tím se nevymažou již odeslaná data. Místní diagnostika a online shody fungují odděleně od této volby.';

  @override
  String get privacyCameraTitle => 'Kamera pro QR kódy v okolí';

  @override
  String get privacyCameraBody =>
      'Volitelná kamera skenuje QR kódy hry v okolí. Obrázky jsou zpracovávány ve vašem zařízení a nejsou ukládány ani nahrávány. Přístup k fotoaparátu můžeš odmítnout a adresu hostitele zadat ručně. Tato verze nepoužívá mikrofon ani neposkytuje přehrávání fyzické desky.';

  @override
  String get privacyFeedbackTitle =>
      'Zpětná vazba, kterou se rozhodnete odeslat';

  @override
  String get privacyFeedbackBody =>
      'Zpětná vazba otevře koncept problému GitHub, který si můžete prohlédnout. Otevření konceptu odešle jeho verzi aplikace a platformu do GitHub; zpětná vazba od Diagnostiky může také odeslat podrobnosti o chybě. Dokud ji nepředložíte, nebude zveřejněn žádný problém. Problémy mohou být veřejné, proto před odesláním odstraňte soukromé informace.';

  @override
  String get privacyContactTitle => 'Kontakt pro ochranu osobních údajů';

  @override
  String get privacyReadPolicy => 'Načíst zásady ochrany osobních údajů';

  @override
  String get privacyPolicyOpenFailed =>
      'Nelze otevřít zásady ochrany osobních údajů.';

  @override
  String get privacySupportTitle => 'hledat pomoc a podporu';

  @override
  String get privacySupportOpenFailed =>
      'Nelze otevřít podporu. Kontaktujte support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle => 'Smazat online identitu a data?';

  @override
  String get privacyDeleteConfirmBody =>
      'To okamžitě ukončí přístup k cloudovým zápasům této identity pro oba hráče a požádá o odstranění identity a sdílených protokolů online zápasů během dnů 30. Odstranění ověřovacích údajů ze svých živých a zálohovacích systémů může trvat až několik dní po smazání účtu 180. Místní historie a praxe zůstávají na tomto zařízení. Dříve odeslané volitelné diagnostiky jsou oddělené; obraťte se na privacy@freevia.org o těchto. Tato akce je nevratná.';

  @override
  String get privacyRequestDeletion => 'Požádat o odstranění';

  @override
  String get privacyDeleteSectionTitle => 'Smazat online data';

  @override
  String get privacyDeleteInstructions =>
      'K ověření vlastnictví použijte uložené přihlašovací údaje tohoto zařízení. Samotný identifikátor hráče nebo zvací kód neprokazuje vlastnictví. Místní hráči nepotřebují online účet.';

  @override
  String get privacySendingRequest => 'Posílání žádosti...';

  @override
  String get privacyDeleteAction => 'Smazat online identitu a data';

  @override
  String get privacyDeleteRequested =>
      'Požadováno smazání. Tato online identita je odhlášena. Jeho cloudová data budou smazána během dnů 30. Opětovným spuštěním online hry vytvoříte novou identitu. Odstranění ověřovacích dat Google může trvat až dny 180. Kontaktujte privacy@freevia.org pro pomoc.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Požadováno smazání. Jeho cloudová data budou smazána během dnů 30. Zařízení se nepodařilo vymazat uložené přihlášení, ale online identitě je zablokován přístup k další shodě. Odstranění ověřovacích dat Google může trvat až dny 180. Kontaktujte privacy@freevia.org pro pomoc.';

  @override
  String get privacyDeleteNoIdentity =>
      'V tomto zařízení není uložena žádná použitelná online identita. Nebyl vytvořen žádný nový účet. Pokud jste dříve používali online hru, kontaktujte privacy@freevia.org pro pomoc; hostované zápasy vyprší po dnech 30.';

  @override
  String get privacyDeleteRequestFailed =>
      'Žádost o odstranění se nepodařilo potvrdit. Zkontrolujte připojení a zkuste to znovu nebo kontaktujte privacy@freevia.org.';

  @override
  String get privacyConsentTitle => 'Sdílet diagnostiku používání a pádů?';

  @override
  String get privacyConsentBody =>
      'Tím se odesílají události použití, informace o aplikaci/zařízení, zprávy o selhání a měření výkonu do Google Firebase. Sdílení je volitelné. Hry a doučování s ním pracují vypnuté a můžete jej znovu vypnout v Nastavení.';

  @override
  String get privacyKeepOff => 'Bez vstupu';

  @override
  String get privacyShareDiagnostics => 'Sdílet diagnostiku';

  @override
  String get privacySaveFailed =>
      'Nelze uložit volbu ochrany osobních údajů. Zkuste to prosím znovu.';

  @override
  String get privacySettingsSubtitle =>
      'Co zůstává na tvém zařízení a co je sdíleno';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Sdílejte diagnostiku používání a pádů';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Volitelné · ve výchozím nastavení vypnuto';

  @override
  String get lanScanToJoin => 'Skenovat a připojit se';

  @override
  String get lanScanHostCode => 'Naskenujte kód hostitele';

  @override
  String get lanEnterAddressInstead => 'Místo toho zadejte adresu';

  @override
  String get lanQrAccessibilityLabel => 'QR kód pro připojení k této hře';

  @override
  String get lanJoinInstruction =>
      'Na druhém zařízení otevři Hru v okolí, vyber Připojit se a naskenuj tento QR kód.';

  @override
  String get lanTorch => 'Pochodeň';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy nemůže používat kameru. Povolte přístup k fotoaparátu v nastavení zařízení nebo ručně zadejte adresu zobrazenou na druhém zařízení.';

  @override
  String get lanCameraUnsupported =>
      'Toto zařízení nemůže skenovat QR kódy. Zadej adresu zobrazenou na druhém zařízení ručně.';

  @override
  String get lanCameraStartFailed =>
      'Fotoaparát nelze spustit. Zadej adresu zobrazenou na druhém zařízení ručně.';

  @override
  String get lanPointCameraAtQr =>
      'Namiřte kameru na QR kód na druhém zařízení.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Hra s fyzickou deskou není v této verzi k dispozici. Hry na obrazovce, doučování a cvičení jsou k dispozici na domovské stránce.';

  @override
  String get homePlayWithBuddy => 'Hrát s Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Deska backgammon. $status';
  }

  @override
  String get boardWhiteToRoll => 'Bílá na svinutí.';

  @override
  String get boardBlackToRoll => 'Černý na válcování.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Bílá pro pohyb, rolujte $die1 a $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Černý pro pohyb, rolujte $die1 a $die2.';
  }

  @override
  String get boardDoubleOffered => 'Bylo nabídnuto zdvojnásobení.';

  @override
  String get boardResignationOffered => 'Bylo nabídnuto vzdání hry.';

  @override
  String get boardGameOver => 'Hra skončila.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Chyba]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Nápad]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Nahraďte to krátkým popisem toho, co se stalo.';

  @override
  String get feedbackBugReproduction =>
      'Nahraďte jej kroky, které vedly k problému.';

  @override
  String get feedbackBugExpected =>
      'Nahraď to tím, co jsi očekával/a, že se stane.';

  @override
  String get feedbackIdeaNeed =>
      'Nahraď to tím, co jsi chtěl/a dělat nebo se učit.';

  @override
  String get feedbackIdeaSuggestion =>
      'Nahraďte to změnou, kterou byste považovali za užitečnou.';

  @override
  String get feedbackExcerptTruncated =>
      '(zkráceno – celý záznam zkopírujete tlačítkem „Kopírovat do schránky“ na obrazovce Diagnostika)';

  @override
  String get boardWhiteToMoveNoRoll => 'Bílý na tahu';

  @override
  String get boardBlackToMoveNoRoll => 'Černý na tahu';

  @override
  String get feedbackFieldVersion => 'Verze aplikace';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Co se stalo';

  @override
  String get feedbackFieldReproduction => 'Kroky k reprodukci';

  @override
  String get feedbackFieldExpected => 'Očekávaný výsledek';

  @override
  String get feedbackFieldNeed => 'Co jste chtěli udělat';

  @override
  String get feedbackFieldIdea => 'Navrhovaná změna';

  @override
  String get buddySetupTitle => 'Hraj s Buddy';

  @override
  String get buddySetupSideLabel => 'Hraje Buddy';

  @override
  String get buddySetupSeatLabel => 'Tvoje strana';

  @override
  String get buddySetupSeatNear => 'U telefonu';

  @override
  String get buddySetupSeatFar => 'Naproti';

  @override
  String get buddySetupSeatHelp =>
      'Na které straně desky sedíš. Podle toho Buddy čísluje body a pozná tvůj úvodní hod od svého.';

  @override
  String get buddySetupVoiceLabel => 'Jak Buddy mluví';

  @override
  String get buddySetupVoiceTerse => 'Stručně';

  @override
  String get buddySetupVoiceFriendly => 'Přátelsky';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22“ — zápis, kterým spolu mluví hráči u desky.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Přesuň jeden kámen z 13 na 8 a další z 24 na 22.“';

  @override
  String get buddySetupTutorHelp =>
      'Komentáře trenéra a vysvětlení tahů se řídí tvými uloženými předvolbami trenéra. Buddy občas okomentuje tvé tahy; zadávání hodů i ruční zadávání tahů funguje stejně.';

  @override
  String get buddySetupCalibrate => 'Kalibrovat desku';

  @override
  String get buddyFixAim => 'Upravit zaměření';

  @override
  String get buddyWaitingForOpening => 'Buddy čeká na hod, který zahájí zápas.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy ztratil desku z dohledu. Uprav zaměření a zápas bude pokračovat tam, kde skončil.';

  @override
  String get buddyPromptWaitingPicture =>
      'Čekám na snímek, který Buddy dokáže přečíst. Nic se neztratilo.';

  @override
  String get buddyPromptTypeDice => 'Buddy nevidí kostky. Zadej hod ručně.';

  @override
  String get buddyPromptPlay =>
      'Proveď svůj tah na desce. Pokud ho Buddy nevidí, zadej ho sem.';

  @override
  String get buddyPromptWhichPlay => 'Který tah to byl?';

  @override
  String get buddyPromptCube => 'Buddy zdvojnásobuje. Přijmout, nebo vzdát?';

  @override
  String get buddyPromptMakeMove =>
      'Proveď tah Buddyho na desce a Buddy bude pokračovat.';

  @override
  String get buddyPromptThinking => 'Buddy přemýšlí.';

  @override
  String get buddyPromptWaitingCalibration => 'Čekám na kalibraci.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy stále nevidí svůj tah. Deska níže ukazuje pozici, kterou si Buddy uložil.';

  @override
  String get buddyPromptNotLegal => 'Tento tah není povolený.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Tento tah není povolený. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Hoď úvodními kostkami — jeden hod pro každého.';

  @override
  String get buddyThrowUser => 'Hoď svými kostkami.';

  @override
  String get buddyThrowBuddy => 'Hoď kostkami za Buddyho.';

  @override
  String get buddyMatchOver => 'Zápas skončil.';

  @override
  String get buddyYouWin => 'Vítězství je tvoje!';

  @override
  String get buddyBuddyWins => 'Buddy vyhrál zápas.';

  @override
  String get buddyDoubleNoGame =>
      'Zatím není žádná hra, kterou by šlo zdvojnásobit — nejdřív přijde úvodní hod.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Zdvojnásobit můžeš jen před hodem, když jsi na tahu.';

  @override
  String get buddyDoubleCrawford =>
      'V Crawfordově hře se nezdvojnásobuje — o zápasu rozhodne tato jediná hra.';

  @override
  String get buddyDoubleNotOwner =>
      'Zdvojnásobit může jen vlastník zdvojovací kostky a právě ji vlastní soupeř.';

  @override
  String get buddyDoubleUnavailable => 'Teď není možné zdvojnásobit.';

  @override
  String get buddyLookingAtBoard => 'Buddy se dívá na desku.';

  @override
  String get buddyCameraPlayFallback =>
      'Můžeš dál hrát: každý hod zadej na panelu kostek a tahy zadávej na desce níže.';

  @override
  String get buddySkipCheck => 'Přeskočit kontrolu';

  @override
  String get buddyFixedIt => 'Je to opravené';

  @override
  String get buddyDrop => 'Vzdát';

  @override
  String get buddyTake => 'Přijmout';

  @override
  String get buddyDone => 'Hotovo';

  @override
  String get buddyTranscriptLabel => 'Co Buddy řekl';

  @override
  String get buddyUndo => 'Vrátit zpět';

  @override
  String get buddyConfirm => 'Potvrdit';

  @override
  String get buddyDice => 'Kostky';

  @override
  String get buddyDouble => 'Zdvojnásobit';

  @override
  String get buddyDicePadTitle => 'Co ti padlo?';

  @override
  String get buddyEnterRoll => 'Zadat hod';

  @override
  String get buddyContextBeforeGame => 'Hraj s Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Ty $you–$buddy Buddy · do $length · Hra $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kameru se nepodařilo spustit. Zkontroluj oprávnění a zkus to znovu.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy nemá oprávnění používat kameru. Povol přístup ke kameře v nastavení zařízení a zkus to znovu.';

  @override
  String get buddyCalibrationTitle => 'Ukaž Buddymu desku';

  @override
  String get buddyCalibrationCornersFold =>
      'Přetáhni čtyři vnější úchyty do rohů plátna, ne dřevěného rámu, a čtyři malé na švy, kde se pant stýká se vzdáleným a bližším okrajem.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Přetáhni každý úchyt do rohu plátna — hrací plochy, ne dřevěného rámu kolem ní.';

  @override
  String get buddyCalibrationCheckLines =>
      'Pak zkontroluj dvanáct čar na každé polovině: každá má vést podél jednoho bodu desky. Pokud čára míjí svůj bod, posuň příslušný úchyt.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Která polovina je tvoje domácí deska?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Ta polovina, která je blíž spodnímu okraji snímku. Tím se určí číslování bodů, podle kterého se upraví i čáry výše.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Drž telefon v klidu. Buddy čeká, až se snímek ustálí, než se desku naučí.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Je to tvoje deska?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy se dívá na desku, kterou právě poznal.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Kameny zakreslené přes snímek ukazují, kde si Buddy myslí, že jsou. Pokud je některý na špatném místě, začni znovu — teď to zabere pár sekund, později třeba celou hru.';

  @override
  String get buddyCalibrationNext => 'Další';

  @override
  String get buddyCalibrationBack => 'Zpět';

  @override
  String get buddyCalibrationCapture => 'Pořídit snímek';

  @override
  String get buddyCalibrationStartOver => 'Začít znovu';

  @override
  String get buddyCalibrationLooksRight => 'Vypadá správně';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Tyto čtyři úchyty nevymezují desku — jeden překřížil jiný. Přetáhni je zpět do rohů plátna.';

  @override
  String get buddyCalibrationPrepTitle => 'Nejdřív tři věci';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Sundej kostky z desky.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy se teď učí prázdnou desku. Kostka ponechaná na plátně se naučí jako její součást a Buddy pak během této relace kostky už neuvidí.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Rozestav kameny jako na začátku hry.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Třicet kamenů na známých místech pomůže Buddymu poznat dvě barvy desky, aniž bys mu musel/a říkat, které to jsou.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Zachyť na snímku celou hrací plochu.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Pak nech telefon na místě. Pokud se pohne, Buddy ti to oznámí a můžeš rohy znovu doladit.';

  @override
  String get buddyCalibrationBoardKind => 'Jaký typ desky máš?';

  @override
  String get buddyCalibrationFlatBoard => 'Plochá deska';

  @override
  String get buddyCalibrationFoldingBoard => 'Skládací kufřík';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Skládací deska potřebuje čtyři další úchyty na švech pantu.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Režim Buddy sleduje skutečnou desku, a proto se bez kamery nespustí. Zbytek aplikace bude fungovat dál.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Šev pantu $number ze 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Roh desky $number ze 4';
  }

  @override
  String get buddyNudgeLeft => 'Posunout doleva';

  @override
  String get buddyNudgeRight => 'Posunout doprava';

  @override
  String get buddyNudgeUp => 'Posunout nahoru';

  @override
  String get buddyNudgeDown => 'Posunout dolů';

  @override
  String get buddyCalibrationProblemCorners =>
      'Tyto čtyři rohy nevymezují desku. Přetáhni každý úchyt do rohu hrací plochy a zkus to znovu.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Těchto osm bodů nevymezuje skládací desku. Čtyři umísti do rohů hrací plochy a čtyři na švy pantu, pak to zkus znovu.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Samotnou desku nedokážu rozeznat — je celá zakrytá nebo ztracená ve stínu či odlescích. Uvolni desku, přidej světlo a zkus to znovu.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Nedokážu rozeznat $region; v této oblasti může něco ležet nebo může být příliš tmavá. Uvolni ji, přidej světlo a zkus to znovu.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Obě sady kamenů odtud vypadají příliš podobně. Obvykle pomůže více světla nebo úhel s menšími odlesky.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Kameny nejsou v počátečním rozestavení — na bodě $number je kámen nesprávné barvy. Rozestav kameny jako na začátku hry a znovu kalibruj.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Na desku dopadá tolik světla, že barvy splývají. Ztlum světlo nebo přesuň telefon, aby se v něm lampa přímo neodrážela.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Desku přečtu, ale nevypadá jako hra připravená k začátku. Rozestav kameny jako na začátku hry a znovu kalibruj.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Desku přečtu, ale nedokážu určit, kolik kamenů je za sebou — špatně bych je spočítal. Obvykle pomůže trochu více světla na bližší body nebo mírně vyšší úhel kamery.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Nevidím celou desku. Odsuň telefon dál nebo přetáhni rohy na hrací plochu.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Už nevidím celou desku — $region je mimo záběr. Znovu namiř kameru nebo zkontroluj rohy.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'To vypadá jako počáteční rozestavení.';

  @override
  String get buddyConfirmNoCheckers =>
      'Nevidím žádný kámen na místě, kde hra začíná. Rozestav kameny jako na začátku hry a zkus to znovu.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Deska není v počátečním rozestavení: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return 'Na $region nic není, ale na začátku hry tam má být $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Na $region se nachází $side, ale na začátku hry tam má být prázdno';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Na $region se nachází $observed, ale na začátku hry tam má být $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Chvíli se nehýbej — když se telefon pohybuje, ztrácím desku z dohledu.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Obrázek, který dostávám, nepatří k desce, pro kterou jsem byl nastaven, takže v něm nedokážu nic zarovnat. Nastav desku znovu odsud.';

  @override
  String get buddyReadabilityBlur =>
      'Obrázek je příliš rozmazaný, abych z něj přečetl desku. Počkej chvíli, než kamera zaostří.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Deska už není tam, kde byla, když jsem se ji učil. Znovu zarovnej rohy a hned navážu na hru.';

  @override
  String get buddyReadabilityOccluded =>
      'Část desky něco zakrývá. Jakmile ji uvolníš, budu pokračovat.';

  @override
  String get buddyReadabilityClear => 'Vidím desku.';

  @override
  String get buddyReadabilityColorChanged =>
      'Osvětlení desky změnilo barvu, takže už nevypadá jako ta, kterou jsem se naučil. Znovu zarovnej rohy při tomto světle a hned navážu na hru.';

  @override
  String get buddyReadabilityTooDark =>
      'Na přečtení desky je příliš tma. Přidej trochu světla a budu pokračovat tam, kde jsme skončili.';

  @override
  String get buddyReadabilityTooBright =>
      'Na desku dopadá tolik světla, že barvy splývají. Ztlum ho nebo přesuň telefon, aby se v něm lampa přímo neodrážela.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy stále nevidí svůj tah — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nMůžeš dál hrát: každý hod zadej na panelu kostek a tahy zadávej na desce níže.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kameru se nepodařilo spustit. Zkontroluj oprávnění a zkus to znovu.';

  @override
  String buddyRegionPoint(int number) {
    return 'bod $number';
  }

  @override
  String get buddyRegionBar => 'bar';

  @override
  String get buddyRegionWhiteTray => 'miska na vyhazování bílých kamenů';

  @override
  String get buddyRegionBlackTray => 'miska na vyhazování černých kamenů';

  @override
  String get buddyRegionDiceZone => 'střed desky';

  @override
  String get buddyCalibrationProblemVisible =>
      'Nevidím celou desku. Odsuň telefon dál nebo přetáhni rohy na hrací plochu.';

  @override
  String buddyConfirmMore(int number) {
    return ' (a dalších $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Každý hodí jednou kostkou. Její číslo rozhodne, kdo začne.';

  @override
  String get buddyDiceOpeningFirst => 'Kostka bílého hráče';

  @override
  String get buddyDiceOpeningSecond => 'Kostka černého hráče';

  @override
  String get buddyDiceRegularCaption =>
      'Dvě hodnoty na kostkách na stole, v libovolném pořadí.';

  @override
  String get buddyDiceRegularFirst => 'Jedna kostka';

  @override
  String get buddyDiceRegularSecond => 'Druhá';

  @override
  String get evaluationEngine => 'Vyhodnocovací engine';

  @override
  String get parallelEngineAnalysis => 'Analyzovat oběma enginy';

  @override
  String get parallelEngineExplanation =>
      'Porovnejte samostatné rady wildbg a GNUbg v trenérovi.';

  @override
  String get engineComparison => 'Porovnání enginů';

  @override
  String get engineWinChance => 'Šance na výhru';

  @override
  String get buddyBar => 'bar';

  @override
  String get buddyOff => 'vypnuto';

  @override
  String get buddyHitSuffix => ', bít';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Přesunout jedno políčko z $from na $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Přesunout $count dám z $from do $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Odnést jeden šek od $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Odneste $count dámám z $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Hodil jsem $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Hodili jste $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Oba hodili $die. Znovu rolujte.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Žádná hra, takže je řada na vás.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Žádná hra, takže je na řadě Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Žádná hra – váš tah projde.';

  @override
  String get buddySpeechNoPlayBack => 'Žádná hra, takže je to zpět k vám.';

  @override
  String get buddySpeechIllegalPlay => 'To není legální hra.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'To není úplně správné. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Deska se liší od hry: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: hra očekává $expected $side dám; kamera vidí $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'beru vás za slovo. Neviděl jsem tu jednu zemi, takže pokud jsme se rozešli, ukáže se to jako hra, kterou neumím přečíst.';

  @override
  String get buddySpeechBuddyDouble => 'Zdvojnásobím – vzít nebo upustit?';

  @override
  String get buddySpeechYouDouble => 'Ty dvojnásob.';

  @override
  String get buddySpeechBuddyTakes => 'beru.';

  @override
  String get buddySpeechYouTake => 'Vezmi si.';

  @override
  String get buddySpeechBuddyDrops => 'padám.';

  @override
  String get buddySpeechYouDrop => 'Spadneš.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Vyhrál jsem tuto hru: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Vyhrajete tuto hru: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'To je pro mě zápas.';

  @override
  String get buddySpeechMatchWinnerYou => 'Vyhrajete zápas.';

  @override
  String get buddyTutorLastPlayBest =>
      'Vaše poslední hra odpovídala tomu nejlepšímu z enginu.';

  @override
  String get buddyTutorLastPlayClose =>
      'Vaše poslední hra se blížila tomu nejlepšímu z enginu.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Při vaší poslední hře motor upřednostnil $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Na liště ponechává $best protilehlých políček namísto $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Zanechává $best blotů místo $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Má $best bodů za domácí tabuli namísto $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Má $best zaškrtávacích políček namísto $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Žebříček váží odhadované výhry a gammony; žádná funkce jedné desky to nevysvětluje.';

  @override
  String buddySpeechPlay(String move) {
    return 'Přehrát $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Hodil jsem $dice – $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Zkontrolovat potvrzení o smazání';

  @override
  String get privacyDeletionReceiptHelp =>
      'Po podání žádosti o smazání se sem vraťte a zkontrolujte dokončení. Váš soukromý ověřovací doklad zůstává v tomto zařízení a funguje i po odhlášení. Kontrolou se nevytváří účet. Potvrzení o dokončení jsou dostupná online po dobu 90 dní; do potvrzení zachovejte tuto instalaci.';

  @override
  String get privacyDeletionReceiptNone =>
      'V tomto zařízení není uložen žádný doklad o žádosti o smazání. U starších žádostí nebo při ztrátě zařízení kontaktujte podporu.';

  @override
  String get privacyDeletionReceiptPending =>
      'Smazání zatím není potvrzeno. Zpracování může trvat až 30 dní. Zkontrolujte stav později. Pokud uplynulo více než 30 dní, kontaktujte podporu. Nedostupný nebo prošlý doklad není důkazem smazání.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Smazání dokončeno: všechny žádosti uložené v tomto zařízení jsou potvrzeny jako dokončené. Tím se nesmaže online identita vytvořená později. Místní historie a údaje o učení zůstávají zachovány. Google může uchovávat záložní a bezpečnostní záznamy, jak je popsáno v zásadách ochrany soukromí.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Potvrzení o smazání se nepodařilo zkontrolovat. Zkuste to znovu po připojení nebo kontaktujte podporu. Dokončení tím není potvrzeno.';
}
