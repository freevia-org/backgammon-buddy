// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Poboljšajte igru uz trenera';

  @override
  String get settings => 'Postavke';

  @override
  String get playVsComputer => 'Igraj protiv računala';

  @override
  String get twoPlayers => 'Dva igrača';

  @override
  String get playNearby => 'Igraj u blizini';

  @override
  String get playOnline => 'Igraj na mreži';

  @override
  String get learningPractice => 'Učenje i vježba';

  @override
  String get gamesArchive => 'Arhiva igara';

  @override
  String get followSystem => 'Jezik uređaja';

  @override
  String get white => 'Bijeli';

  @override
  String get black => 'Crni';

  @override
  String get random => 'Nasumično';

  @override
  String get startMatch => 'Započni igru';

  @override
  String get tutor => 'Trener';

  @override
  String get noMovesPass => 'Nema poteza — preskoči';

  @override
  String get undo => 'Poništi';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get roll => 'Baci';

  @override
  String get hint => 'Savjet';

  @override
  String get tutoringStyle => 'Stil podučavanja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo savjeti';

  @override
  String get tutorStyleTryFirst => 'Prvo pokušaj';

  @override
  String get tutorCoachDescription =>
      'Upute o poziciji, povratne informacije o potezima, savjeti i preporuke za kocku za udvostručavanje.';

  @override
  String get tutorHintsDescription =>
      'Rangirani potezi prikazuju se na zahtjev. Upute o poziciji uživo i automatske povratne informacije o potezima su isključene.';

  @override
  String get tutorTryFirstDescription =>
      'Odigrajte svoj potez prije prikaza rangiranih savjeta ili ocjene; upute o poziciji ostaju uključene.';

  @override
  String get tutorCustomDescription =>
      'Prilagođena kombinacija. Promijenite bilo koju od opcija u nastavku.';

  @override
  String get tutorBestMoveHints => 'Savjeti za najbolji potez';

  @override
  String get tutorRevealRankedPlays =>
      'Prikaži rangirane poteze dok odlučujete';

  @override
  String get tutorMoveExplanations => 'Objašnjenja poteza';

  @override
  String get tutorCompareEstimates => 'Usporedite procjene i promjene na ploči';

  @override
  String get tutorGameCommentary => 'Komentar igre';

  @override
  String get tutorPositionPrompts =>
      'Upute o poziciji i povratne informacije nakon svakog poteza';

  @override
  String get tutorCubeAdvice => 'Savjeti za kocku';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Preporuke za udvostručavanje, prihvaćanje i odbijanje prema rezultatu meča';

  @override
  String get tutorTryMoveFirst => 'Prvo isprobaj potez';

  @override
  String get tutorStageBeforeHints =>
      'Odigrajte trenutačni potez prije prikaza savjeta ili njegove ocjene';

  @override
  String get tutorStaticEstimateNote =>
      'Brza statička procjena (0 poteza unaprijed, bez simulacija); bilješke opisuju promjene na ploči i moguće odgovore, a ne jamče što će se sljedeće dogoditi.';

  @override
  String get tutorWhatToWatchNext => 'Na što obratiti pozornost';

  @override
  String get tutorMoreBoardDetails => 'Više pojedinosti o ploči';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Procjene i kako funkcioniraju';

  @override
  String get tutorEstimateLimitations =>
      'Dubina: statička neuronska procjena nakon svakog legalnog poteza (0 poteza unaprijed), bez simulacija i pretraživanja budućih odgovora. MWC uzima u obzir rezultat meča i trenutačnu kocku pri ponderiranju procjena ishoda, ali ne modelira buduće odluke o kocki. Ako rezultat nije dostupan, equity bez kocke predstavlja očekivane bodove uz kocku na 1. Opažanja opisuju potez, a ne interno zaključivanje neuronskog mehanizma. Gotovo izjednačene procjene ne znače sigurnost; interval pouzdanosti nije kalibriran.';

  @override
  String get tutorPointNumberNote =>
      'Brojevi polja u bilješkama broje se od kućne ploče igrača koji je na potezu.';

  @override
  String get tutorHittingRollNote =>
      'Broj prilika za udar uključuje svih 36 uređenih ishoda bacanja i legalne izravne ili neizravne udare; riječ je o prilikama, a ne predviđanju protivnikova izbora.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za ovaj potez nema procijenjenih alternativa.';

  @override
  String get tutorForcedPassNoDecision =>
      'Prisilno propuštanje poteza ne uključuje odluku o pomicanju dama.';

  @override
  String get settingsReset => 'Vrati na početno';

  @override
  String get settingsAppLanguage => 'Jezik aplikacije';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sustav';

  @override
  String get settingsThemeLight => 'Svijetla';

  @override
  String get settingsThemeDark => 'Tamna';

  @override
  String get settingsAnimationSpeed => 'Brzina animacije';

  @override
  String get settingsAnimationNone => 'Bez animacije';

  @override
  String get settingsAnimationNormal => 'Uobičajena';

  @override
  String get settingsAnimationFast => 'Brza';

  @override
  String get settingsDiceRollAnimation => 'Animacija bacanja kockica';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Protresi kockice prije svakog bacanja';

  @override
  String get settingsDefaultMatchLength => 'Zadana duljina meča';

  @override
  String get settingsDefaultDifficulty => 'Zadana težina';

  @override
  String get settingsDifficultyEasy => 'Lako';

  @override
  String get settingsDifficultyMedium => 'Srednje';

  @override
  String get settingsDifficultyHard => 'Teško';

  @override
  String get settingsDifficultyExpert => 'Stručno';

  @override
  String get settingsTutorModeDefault => 'Zadani način rada tutora';

  @override
  String get settingsTutorAuto => 'Automatski';

  @override
  String get settingsTutorOn => 'Uključeno';

  @override
  String get settingsTutorOff => 'Isključeno';

  @override
  String get settingsTutorModeHelp =>
      'Automatski uključuje tutora na svim razinama težine računala. Uključeno i Isključeno određuju početni odabir za lokalne mečeve. Mečevi u blizini i online mečevi bez pomoći su tutora; spremljene partije mogu se pregledati naknadno. Postavke učenja u nastavku spremaju se na ovaj uređaj.';

  @override
  String get settingsTutorPreferences => 'Postavke tutora';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Zadane postavke za buduće mečeve';

  @override
  String get settingsTutorSaveError => 'Postavke tutora nije moguće spremiti.';

  @override
  String get settingsGameplay => 'Igra';

  @override
  String get settingsMoveHighlights => 'Isticanje poteza';

  @override
  String get settingsMoveHighlightsHelp =>
      'Zaokruži dame koje se mogu odabrati i osvijetli moguća odredišta';

  @override
  String get settingsDragToMove => 'Povuci za pomicanje';

  @override
  String get settingsDragToMoveHelp =>
      'Povuci damu do odredišta (dodiri uvijek rade)';

  @override
  String get settingsCombinedMoves => 'Kombinirani potezi';

  @override
  String get settingsCombinedMovesHelp =>
      'Jednim dodirom pomakni damu prema vrijednostima obiju kockica';

  @override
  String get settingsRotateBoard => 'Okreni ploču između poteza';

  @override
  String get settingsRotateBoardHelp =>
      'Igra naizmjence: okreni prikaz za igrača na potezu';

  @override
  String get settingsPassDevice => 'Zaslon za predaju uređaja';

  @override
  String get settingsPassDeviceHelp =>
      'Sakrij ploču između poteza u igri naizmjence';

  @override
  String get settingsShowScore => 'Prikaži rezultat';

  @override
  String get settingsShowScoreHelp =>
      'Prikaži trenutačni rezultat meča u zaglavlju';

  @override
  String get settingsBuddyMode => 'Buddyjev stil';

  @override
  String get settingsBuddyTerse => 'Sažeto';

  @override
  String get settingsBuddyFriendly => 'Prijateljski';

  @override
  String get settingsBuddyTerseHelp =>
      'Kako Buddy izgovara potez: „13/8, 24/22” — zapis kojim se igrači služe za pločom.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Kako Buddy izgovara potez: „Pomakni jednu damu s 13 na 8, a drugu s 24 na 22.”';

  @override
  String get settingsListenForDice => 'Slušaj kockice';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy ranije pogleda ploču kad čuje bacanje. Isključivanje ne mijenja ništa drugo.';

  @override
  String get settingsDiagnostics => 'Dijagnostika';

  @override
  String get settingsErrorLog => 'Zapisnik pogrešaka';

  @override
  String get settingsErrorLogHelp =>
      'Nedavne pogreške spremne za kopiranje u prijavu pogreške';

  @override
  String get settingsReportBug => 'Prijavi pogrešku';

  @override
  String get settingsReportBugHelp => 'Otvori vođenu prijavu na GitHubu';

  @override
  String get settingsSuggestIdea => 'Predloži ideju';

  @override
  String get settingsSuggestIdeaHelp => 'Pomozi nam poboljšati tutora i igru';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String get settingsOpenSourceLicenses => 'Licence otvorenog koda';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partija je završila.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Pregledaj poteze i pronađi odluku za vježbu.';

  @override
  String get tutorPhraseCubeOffered => 'Ponuđena je kocka za udvostručavanje.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Odluči hoćeš li prihvatiti udvostručenje ili odustati prije planiranja poteza damama.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Rezultat meča utječe na vrijednost dodatnog uloga.';

  @override
  String get tutorPhraseResignationOffered =>
      'Ponuđeno je odustajanje od partije.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Usporedi ponuđene bodove s pozicijom prije nego što prihvatiš ili nastaviš.';

  @override
  String get tutorPhraseNoLegalPlay => 'Ovim bacanjem nema dopuštenog poteza.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Prisilno preskakanje nije pogreška; pričekaj sljedeće bacanje.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Postoji samo jedan dopušten završni položaj.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Odigraj prisilni potez. Ovim bacanjem nema izbora koji bi se mogao ocijeniti.';

  @override
  String get tutorPhrasePipCountsLevel => 'Broj pipova je izjednačen.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Imaš prednost od $count pipova.',
      few: 'Imaš prednost od $count pipa.',
      one: 'Imaš prednost od jednog pipa.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zaostaješ $count pipova.',
      few: 'Zaostaješ $count pipa.',
      one: 'Zaostaješ jedan pip.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dama je na prečki: prvo ih moraš vratiti u igru.',
      few: '$count dame su na prečki: prvo ih moraš vratiti u igru.',
      one: 'Jedna dama je na prečki: prvo je moraš vratiti u igru.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Prvo vrati dame s prečke, a zatim pomiči ostale; potraži sigurno odredište.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Protivnik ima $count zatvorenih polja u svojoj kućnoj ploči.',
      few: 'Protivnik ima $count zatvorena polja u svojoj kućnoj ploči.',
      one: 'Protivnik ima jedno zatvoreno polje u svojoj kućnoj ploči.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseBearOffRace => 'Utrka u iznošenju dama.';

  @override
  String get tutorPhrasePureRace => 'Čista utrka.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Iznesi dame s ploče i ostavi koristan raspored za sljedeće bacanje.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Dovedi zadnje dame kući, bez gomilanja previše njih na jednom polju.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Dame su se mimoišle; više nije moguće udariti protivnika.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt je još važan.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Protivnik ima $count dama na prečki.',
      few: 'Protivnik ima $count dame na prečki.',
      one: 'Protivnik ima jednu damu na prečki.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Održavaj polja zatvorenima dok dovodiš preostale dame kući.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Izgradi ili zadrži zatvorenu kućnu ploču dok se protivnik pokušava vratiti u igru.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Imaš $count zatvorenih polja u kućnoj ploči; svako zatvara jedan broj za ulazak.',
      few:
          'Imaš $count zatvorena polja u kućnoj ploči; svako zatvara jedan broj za ulazak.',
      one:
          'Imaš jedno zatvoreno polje u kućnoj ploči; ono zatvara jedan broj za ulazak.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uzastopnih zatvorenih polja',
      few: '$count uzastopna zatvorena polja',
      one: 'jednog uzastopnog zatvorenog polja',
    );
    return 'Kontakt s nizom od $_temp0.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Usporedi produljenje niza s čuvanjem rezervnih dama koje ga održavaju.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count rezervnih dama može se pomaknuti bez otvaranja svojeg polja.',
      few: '$count rezervne dame mogu se pomaknuti bez otvaranja svojeg polja.',
      one: 'Jedna rezervna dama može se pomaknuti bez otvaranja svojeg polja.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt sa sidrom na poljima $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Usporedi napredak zadnjih dama s sigurnošću koju pruža zadržavanje sidra.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Imaj na umu sigurno uporište dok tražiš priliku za udar ili poboljšavaš ploču.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Sidro se ne može pogoditi, ali te dame još imaju dug put do kuće.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt još traje: oba igrača mogu prijetiti udarom.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Potraži korisna polja, a zatim procijeni rizik ostavljanja pojedinačnih nezaštićenih dama.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Zatvorena polja u tvojoj kućnoj ploči: $count; nezaštićene dame koje ostavljaš: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Odaberi damu za početak poteza.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Započni dopušten potez i prikaži komentar.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count protivničkih dama',
      few: '$count protivničke dame',
      one: 'jednu protivničku damu',
    );
    return 'Udario si $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vratio si $count dama s prečke.',
      few: 'Vratio si $count dame s prečke.',
      one: 'Vratio si jednu damu s prečke.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dama',
      few: '$count dame',
      one: 'jednu damu',
    );
    return 'Iznošenjem si skinuo s ploče $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zatvorio si $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Dama na tvom polju $point zasad je nezaštićena.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Rezervna dama na tvom polju $point može se kasnije pomaknuti bez otvaranja polja.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Iskoristi preostale iskoristive kockice prije ocjenjivanja cijelog poteza.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Svih 15 dama izneseno je s ploče: partija je dobivena.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Udar donosi vrijeme dok se protivnik pokušava vratiti u igru.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Učinkovito iznošenje uklanja dame i ostavlja korisne brojeve za sljedeće bacanje.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'U utrci dovedi zadnje dame kući i ostavi korisna polja za njihovo iznošenje.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Iznošenje dama donosi napredak, ali zbog preostalog kontakta i dalje prijeti udar.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Povratak s prečke vraća damu u igru; zatim potraži sigurno odredište.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Novo zatvoreno polje u kućnoj ploči nakon budućeg udara zatvara jedan broj za ulazak.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Dulji niz zatvara više polja za slijetanje; rezervne dame pomažu da ostane cijeli.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Napuštanje sidra donosi napredak, ali gubiš sigurno uporište.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Novo sidro daje zadnjim damama sigurno uporište.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Zaštita nezaštićene dame uklanja protivniku metu.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Riječ je o ravnoteži razvoja i sigurnosti: korisne dame za gradnju mogu postati mete.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Cijeli potez je spreman; potvrdi ga da bi ga odigrao.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Ovim bacanjem nema izbora poteza damama pa se ne ocjenjuje kao odluka.';

  @override
  String get tutorMoveTopVerdict => 'Najbolji izbor za ovu poziciju.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Računalni mehanizam ovdje daje prednost drugom potezu.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Razlika u odnosu na najbolji potez: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Nakon ovog poteza: procijenjena šansa za pobjedu $winPercent%, za pobjedu s gammonom ili bolje $winGammonPercent%, a za poraz s gammonom ili gore $loseGammonPercent%. Procjene su iz perspektive igrača koji je na potezu.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Procijenjena šansa za pobjedu u meču: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Svih 15 dama izneseno je s ploče: partija je dobivena.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Iskoristi udarac za dobivanje vremena dok se protivnik vraća u igru. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Zadrži zatvorena polja u svojoj kućnoj ploči kako bi otežao protivnikov ulazak.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zatvori još polja u svojoj kućnoj ploči kako bi se protivnik teže oporavio od budućih udaraca.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Radi na učinkovitom iznošenju: skidaj dame s ploče i ostavi korisne brojeve za sljedeće bacanje.';

  @override
  String get tutorMovePlanRaceHome =>
      'Dovedi zadnje dame kući i rasporedi ih na korisna polja za iznošenje.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Iznesi dame iz igre, ali pazi na protivnikove zadnje dame: dok još postoji kontakt, usamljena dama pri iznošenju može postati meta.';

  @override
  String get tutorMovePlanReentry =>
      'Vrati se u igru, a zatim potraži sigurno polje za damu koja je ušla.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Ojačaj svoju kućnu ploču. Novo zatvoreno polje pojačava budući udar jer zatvara jedan broj za ulazak.';

  @override
  String get tutorMovePlanPrime =>
      'Održavaj niz zatvorenih polja povezanim. Sačuvaj rezervne dame kako te sljedeća bacanja ne bi prisilila da ga otvoriš.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Napuštanjem sidra zadnje dame napreduju, ali gubiš sigurno uporište. Pazi da ne budu izložene dok se vraćaju kući.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Koristi novo sidro kao sigurno uporište dok poboljšavaš ostatak pozicije.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Okupi dame. Zaštita usamljene nezaštićene dame uklanja metu, a korisna polja za slijetanje ostaju dostupna.';

  @override
  String get tutorMovePlanSafety =>
      'Uravnoteži razvoj i sigurnost: približi dame koje grade poziciju korisnim poljima i provjeri koje usamljene dame protivnik može udariti.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nema dopuštenog poteza damom: moraš preskočiti potez.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count protivničkih dama',
      few: '$count protivničke dame',
      one: 'jednu protivničku damu',
    );
    return 'Udaraš $_temp0; protivnik mora prvo vratiti dame s prečke prije pomicanja ostalih.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Broj dama vraćenih s prečke: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dama',
      few: '$count dame',
      one: 'jednu damu',
    );
    return 'Iznesi $_temp0 s ploče.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zatvaraš $points. Dvije ili više dama drže sigurno polje i sprječavaju protivnikovo slijetanje na njega.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Ponovno otvaraš zatvorena polja ($pointLabel): $points. Ta polja više ne blokiraju protivničko slijetanje.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Ne ostavljaš usamljene nezaštićene dame (prije: $previousCount). Protivnik nema usamljenu damu za udariti.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count usamljenih nezaštićenih dama',
      few: '$count usamljene nezaštićene dame',
      one: 'jednu usamljenu nezaštićenu damu',
    );
    return 'Ostavljaš $_temp0 (prije: $previousCount). Provjeri može li im protivnik prići prije nego što sigurnost odabereš umjesto druge prednosti.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Najdulji niz zatvorenih polja: $count (prije: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Zid od šest zatvorenih polja ne može se prijeći dok je cijeli.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Drži dame za gradnju u blizini želiš li produžiti ili sačuvati ovaj niz.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Broj rezervnih dama povrh dviju koje drže polja zatvorenima: $count. Pomicanje rezerve može sačuvati polje; pomicanje jedne od posljednje dvije dame ga otvara.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Sidra na protivničkoj kućnoj ploči: $points (prije: $previousPoints). Zadržavanje sidra štiti te dame od udaraca; napuštanjem mijenjaš sigurno uporište za napredak u utrci.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Čista utrka: dame su se mimoišle i nijedan igrač nema dame na prečki. Udarci više nisu mogući; važna je učinkovitost iznošenja.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'U ovoj poziciji protivnik nijednim dopuštenim sljedećim bacanjem ne može udariti tvoju damu. Kontakt još postoji pa budući potezi mogu stvoriti nove prilike za udar.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Protivnik može udariti pri $count od $total bacanja. Primjerice, $dieOne–$dieTwo omogućuje dopušten udar na tvojem polju $point. Udar je moguć, ali protivnik ga ne mora odabrati.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Broj zatvorenih polja u tvojoj kućnoj ploči: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Protivnik se ne može vratiti dok se neko polje ne otvori.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Bacanje koje odgovara otvorenom ulaznom polju može vratiti damu s prečke.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Procijenjena šansa za pobjedu najboljim potezom $direction je za $delta postotnih bodova.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'veća';

  @override
  String get tutorMoveComparisonLower => 'manja';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Ipak može biti bolje rangiran jer gammon i backgammon imaju drukčiju vrijednost pri trenutačnom $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'ulog';

  @override
  String get tutorMoveComparisonMatchScore => 'rezultat meča';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Broj protivničkih dama na prečki nakon najboljeg poteza: $bestCount, umjesto $playedCount. Dama na prečki mora se vratiti u igru prije nego što protivnik može pomaknuti ostale.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Broj zatvorenih polja u kućnoj ploči nakon najboljeg poteza: $bestCount, umjesto $playedCount nakon odigranog poteza. Nakon udarca $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore =>
      'zatvara se više brojeva za ulazak';

  @override
  String get tutorMoveComparisonLeavingMore => 'ostaje više otvorenih ulaza';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Najbolji potez dopušta uzvratni udar pri $bestCount od 36 bacanja, umjesto $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Time se smanjuje neposredna opasnost od povratka na prečku.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Usporedi dodatnu izloženost s onim što potez donosi na drugim područjima.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Najdulji niz zatvorenih polja ima $bestCount polja nakon najboljeg poteza, umjesto $playedCount. Usporedi blokadu s brojem dama koje je mogu održati.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Sidra nakon najboljeg poteza: $bestPoints, umjesto $playedPoints. Zadržavanje sidra pruža sigurno mjesto za slijetanje; napuštanje približava te dame kući.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Broj iznesenih dama nakon najboljeg poteza: $bestCount, umjesto $playedCount. Svaka iznesena dama jedna je manje koju treba iznijeti poslije.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Oba poteza ostavljaju jednak neposredni rizik od udarca, jednak broj zatvorenih polja u kućnoj ploči, sidara i iznesenih dama. Usporedi polja za slijetanje: sljedeće bacanje može drukčije iskoristiti te dame.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Najbolji potez šalje više protivničkih dama na prečku i odgađa njegove ostale poteze.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Najbolji potez zatvara više polja u kućnoj ploči i otežava povratak nakon udarca.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Najbolji potez dopušta manje prilika za neposredan udar i smanjuje opasnost od povratka na prečku.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Najbolji potez zadržava dulji niz zatvorenih polja.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Najbolji potez zadržava više sigurnih sidara na protivničkoj kućnoj ploči.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Najbolji potez iznosi više dama s ploče pa ih poslije ostaje manje.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ovaj potez ostavlja $playedCount usamljenih nezaštićenih dama; najbolji ostavlja $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Najbolji potez zadržava sigurno sidro na polju $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Najbolji potez zatvara više ulaznih polja u slučaju da protivnik udari tvoju damu.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Potezi ostavljaju slične neposredne rizike; usporedi koja polja za slijetanje ostaju korisna pri sljedećem bacanju.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return 'Izgubljeni equity: $value';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value postotnih bodova šanse za pobjedu u meču (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'polje';

  @override
  String get tutorMovePointPlural => 'polja';

  @override
  String get tutorMoveNoPoints => 'nijedno';

  @override
  String get gameTutorCommentaryOff => 'Komentar igre je isključen.';

  @override
  String get gameTutorToolsAvailable =>
      'Otvori tutora za dostupne uključene alate.';

  @override
  String get gameTutorNextRoll => 'Baci ponovno.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Za ovaj spremljeni potez nema procijenjenog objašnjenja.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiza nije dostupna';

  @override
  String get gameTutorReviewing => 'pregled u tijeku…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Najprije pokušaj odigrati svoj potez.';

  @override
  String get gameTutorKeepBuilding => 'Nastavi slagati potez.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Složi cijeli dopušteni potez prije prikaza poduke ili savjeta.';

  @override
  String get gameTutorReadyToConfirm => 'Spremno za potvrdu';

  @override
  String get gameTutorPlayTakingShape => 'Tvoj potez poprima oblik.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potvrdi i odigraj ili poništi pa razmisli ponovno.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Odigraj preostale kockice ili poništi potez.';

  @override
  String get gameTutorComputerConsidering => 'Računalo razmatra svoj potez.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Ovdje će se pregledati njegov dovršeni potez.';

  @override
  String get gameTutorYourPlay => 'Tvoj potez';

  @override
  String get gameTutorComputer => 'Računalo';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Tvoj potez: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'prisilni potez';

  @override
  String get gameTutorTopChoice => 'najbolji izbor';

  @override
  String get gameTutorSoundPlay => 'dobar potez';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'možda bi drugi potez bolje odgovarao';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'drugi potez bolje odgovara ovoj poziciji';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'bio je dostupan znatno bolji potez';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side ima procijenjenu prednost.';
  }

  @override
  String get gameTutorPositionEven => 'Pozicija je otprilike izjednačena.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Odigrano: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Najbolji potez: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Prikaži rangirane poteze';

  @override
  String get tutorReviewRecordedMove =>
      'Dodirnite dovršeni potez u zapisniku da biste ovdje pregledali tu odluku.';

  @override
  String get tutorTopPlays => 'Najbolji potezi';

  @override
  String get tutorNoHintsAvailable => 'Nema dostupnih savjeta.';

  @override
  String get tutorPreviewThenConfirm =>
      'Dodirnite potez da biste ga pregledali na ploči, a zatim potvrdite.';

  @override
  String get tutorTopChoiceForPosition => 'Najbolji izbor u ovoj poziciji';

  @override
  String get tutorAlternativePlay => 'Alternativni potez';

  @override
  String get tutorEngineEstimates => 'Procjene programa';

  @override
  String get tutorEstimateScope =>
      'Procjena od 0 ply · trenutačni rezultat i ulog · bez budućih odluka o udvostručenju';

  @override
  String get tutorEquity => 'Očekivana vrijednost';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Kod gotovo izjednačenih poteza dublja analiza može promijeniti poredak.';

  @override
  String get tutorWhyThisPlay => 'Zašto ovaj potez?';

  @override
  String get tutorCompareAlternative => 'Usporedite ovu alternativu';

  @override
  String get gameTutorCubeTake => 'Tutor: uzmi';

  @override
  String get gameTutorCubePass => 'Tutor: odustani';

  @override
  String get practiceScreenTitle => 'Vježbaj odluku';

  @override
  String get practiceUnavailable =>
      'Ova pozicija za vježbu više nije dostupna.';

  @override
  String get practiceSubmitError =>
      'Ovaj pokušaj nije bilo moguće procijeniti ni spremiti. Tvoj napredak nije promijenjen. Pokušaj ponovno.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side je na potezu · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Povijesni rezultat nije dostupan; procjena koristi equity bez kocke.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Rezultat: $whiteLabel $whiteScore – $blackLabel $blackScore, do $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Crawfordova partija';

  @override
  String get practiceNoDoublingCube => 'Bez kocke za udvostručavanje.';

  @override
  String practiceCubeValue(int value) {
    return 'Kocka $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Povijesna pravila kocke nisu poznata.';

  @override
  String get practiceAfterBestPosition => 'Pozicija nakon najboljeg poteza';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozicija nakon tvog odgovora';

  @override
  String get practiceFindYourPlayPrompt =>
      'Odigraj svoj potez na ploči pa provjeri odgovor. Savjeti nisu prikazani.';

  @override
  String get practiceUndo => 'Poništi';

  @override
  String get practiceCheckAnswer => 'Provjeri odgovor';

  @override
  String get practiceRevealNoCredit => 'Otkrij odgovor (bez bodova)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odgovor je otkriven — nema bodova za prisjećanje.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Najbolje: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Izvorna partija: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Tvoj odgovor: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Tvoj odgovor';

  @override
  String get practiceBestPlayChip => 'Najbolji potez';

  @override
  String practiceNextReview(Object date) {
    return 'Sljedeće ponavljanje: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Najbolji ili dobri odgovori računaju se kao uspješno prisjećanje. Ranija ponavljanja ne pomiču raspored.';

  @override
  String get practiceBackToLearning => 'Natrag na učenje';

  @override
  String get practiceMarkBest => 'Najbolje';

  @override
  String get practiceMarkGood => 'Dobro';

  @override
  String get practiceMarkDubious => 'Sumnjivo';

  @override
  String get practiceMarkError => 'Pogreška';

  @override
  String get practiceMarkBlunder => 'Velika pogreška';

  @override
  String get practiceMarkForced => 'Prisilno';

  @override
  String get newMatchYourSide => 'Tvoja strana';

  @override
  String get newMatchTutorMode => 'Način podučavanja';

  @override
  String get newMatchTutorDescription =>
      'Uči uz savjete, objašnjenja i komentare o partiji';

  @override
  String get newMatchTutoringOptions => 'Opcije podučavanja';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Za ovu partiju; možeš ih promijeniti tijekom igre';

  @override
  String get setupMatchLength => 'Duljina meča';

  @override
  String get setupDifficulty => 'Težina';

  @override
  String get setupDifficultyEasy => 'Lako';

  @override
  String get setupDifficultyMedium => 'Srednje';

  @override
  String get setupDifficultyHard => 'Teško';

  @override
  String get setupDifficultyExpert => 'Stručno';

  @override
  String get setupPlayWithoutCube => 'Igraj bez kocke';

  @override
  String get setupNoCubeThisMatch =>
      'U ovom meču nema kocke za udvostručavanje';

  @override
  String get analysisTitle => 'Analiza';

  @override
  String get gameMatchSummary => 'Sažetak meča';

  @override
  String get gameAnalyzeGame => 'Analiziraj partiju';

  @override
  String get analysisMetricsTooltip => 'Što znače ovi brojevi?';

  @override
  String analysisError(Object error) {
    return 'Analiza partije nije uspjela: $error';
  }

  @override
  String get analysisNoPositions => 'Ova partija nema pozicija za prikaz.';

  @override
  String get analysisInProgress => 'Analiziranje partije…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Odigrano';

  @override
  String get analysisBest => 'Najbolje';

  @override
  String get analysisPrevious => 'Prethodno';

  @override
  String get analysisNext => 'Sljedeće';

  @override
  String get analysisPositionBeforeCube => 'Pozicija prije odluke o kocki';

  @override
  String get analysisPositionAtPoint => 'Pozicija u ovom trenutku partije';

  @override
  String get analysisShowingBestBefore =>
      'Prikazuje se najbolji potez na poziciji prije poteza';

  @override
  String get analysisShowingBefore => 'Prikazuje se pozicija prije poteza';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · isključeno iz prosjeka';

  @override
  String get analysisNoPlay => '(bez poteza)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Najbolji potez: $move';
  }

  @override
  String get analysisExplain => 'Objasni';

  @override
  String get analysisSaveForPractice => 'Spremi za vježbu';

  @override
  String get analysisSaveError =>
      'Nije moguće spremiti ovu odluku. Pokušajte ponovno.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · gubitak $loss';
  }

  @override
  String get analysisCubeDecision => 'Odluka o kocki';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Odigrano: $action (šansa za pobjedu u meču $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Najbolje: $action (šansa za pobjedu u meču $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Procjena 0-ply iz perspektive igrača koji je na potezu. Pretpostavlja optimalno prihvaćanje ili odbijanje. Za granu prihvaćenog udvostručenja koristi približnu vrijednost trajanja kocke 0,7, a ne potpunu pretragu budućih ponovnih udvostručenja. Dublja analiza može promijeniti odgovor.';

  @override
  String get analysisClose => 'Zatvori';

  @override
  String get analysisMoves => 'Potezi';

  @override
  String get analysisForced => 'Prisilno';

  @override
  String get analysisMarkBest => 'Najbolje';

  @override
  String get analysisMarkGood => 'Dobro';

  @override
  String get analysisMarkDubious => 'Sumnjivo';

  @override
  String get analysisMarkError => 'Pogreška';

  @override
  String get analysisMarkBlunder => 'Velika pogreška';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Prosječni gubitak $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count odluka o figurama';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Velike pogreške $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Gubitak na kocki $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side baca bez udvostručavanja';
  }

  @override
  String get metricExplainerTitle => 'Razumijevanje mjernih podataka';

  @override
  String get metricExplainerTooltip => 'Što znače ovi brojevi?';

  @override
  String get metricExplainerMwcTitle => 'Vjerojatnost pobjede u meču (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Kad je rezultat poznat, potezi se rangiraju prema procijenjenoj šansi za pobjedu u meču. Gubitak se izražava u postotnim bodovima (pp): 1 pp znači pad s 51% na 50%. Uključeni su trenutni ulog kocke i gammon/backgammon ishodi. Prisilna predaja i bacanja s jednom legalnom pozicijom isključeni su iz prosjeka.';

  @override
  String get metricExplainerSearchTitle => 'Pretraga i nesigurnost';

  @override
  String get metricExplainerSearchBody =>
      'Rangiranje poteza statična je procjena nakon poteza na 0-ply, a ne simulacija. Vrijednosti meča koriste tablicu equityja bez budućih poteza kockom. Pregledi kocke koriste djelomičnu aproksimaciju trajanja kocke od 0,7 za prihvaćena udvostručenja. To nije potpuna cubeful pretraga. Za zaostatke veće od 25 vrijedi granica tablice od 25. Bliski rezultati mogu se promijeniti dubljom analizom; nema kalibriranog intervala pouzdanosti.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Ako rezultat nije dostupan, equity bez kocke pokazuje prosječnu vrijednost pozicije u bodovima uz kocku na 1. +1,0 znači očekivani dobitak jednog boda, a −0,5 očekivani gubitak pola boda.';

  @override
  String get metricExplainerEquityLossTitle => 'Gubitak equityja (npr. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Za svaki potez uspoređujemo tvoj odigrani potez s najboljim potezom enginea. Gubitak equityja pokazuje koliko si očekivane vrijednosti prepustio. −0,016 znači da je potez bio samo 0,016 bodova lošiji — mala pogreška. 0,000 znači da si pronašao najbolji potez.';

  @override
  String get metricExplainerErrorRateTitle => 'Stopa pogreške';

  @override
  String get metricExplainerErrorRateBody =>
      'Prosječni gubitak računa se iz ocijenjenih odluka o figurama u prikazanoj jedinici. Odluke o kocki imaju zaseban prosjek. Manje znači bliže najboljim procjenama enginea, a nije kalibrirana ocjena igrača.';

  @override
  String get metricExplainerMoveMarksTitle => 'Ocjene poteza';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC rasponi za učenje: Najbolje < 0,05 pp, Dobro < 0,5 pp, Sumnjivo < 1,5 pp, Pogreška < 3 pp, Velika pogreška ≥ 3 pp. To su rasponi učenja aplikacije, a ne kalibrirana pouzdanost ili turniraška ocjena.\n\nRasponi equityja bez kocke:';

  @override
  String get metricExplainerThresholdBest => 'gubitak < 0,001';

  @override
  String get metricExplainerThresholdGood => 'gubitak < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'gubitak < 0,050';

  @override
  String get metricExplainerThresholdError => 'gubitak < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'gubitak ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Razumijem';

  @override
  String get historyTitle => 'Povijest mečeva';

  @override
  String historyLoadFailed(Object error) {
    return 'Učitavanje povijesti nije uspjelo:\n$error';
  }

  @override
  String get historyEmpty => 'Još nema odigranih mečeva.';

  @override
  String get historyDeleteConfirmTitle => 'Izbrisati ovaj meč?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMeč i sve zabilježene partije bit će trajno izbrisani. Ovu radnju nije moguće poništiti.';
  }

  @override
  String get actionCancel => 'Odustani';

  @override
  String get actionDelete => 'Izbriši';

  @override
  String get historyDeleteFailed => 'Nije moguće izbrisati meč.';

  @override
  String get historyComplete => 'Završeno';

  @override
  String historyWinner(Object side) {
    return '$side je pobijedio';
  }

  @override
  String get historyUnfinished => 'Nedovršeno';

  @override
  String get historyMatchTitle => 'Meč';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Učitavanje meča nije uspjelo:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Učitavanje partija nije uspjelo:\n$error';
  }

  @override
  String get historyNoGames => 'Još nema zabilježenih partija.';

  @override
  String historyGameTitle(int number) {
    return 'Partija $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Bijeli $whiteScore — $blackScore Crni (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'protiv računala';

  @override
  String get historyModeTwoPlayers => 'Dva igrača';

  @override
  String get historyModeOnline => 'Na mreži';

  @override
  String get historyModeNearby => 'Igraj u blizini';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'U tijeku';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side pobjeđuje s $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'pojedinačna';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Osvježi napredak u učenju';

  @override
  String get learningOptions => 'Opcije učenja';

  @override
  String get learningResetMenu => 'Poništi napredak vježbanja';

  @override
  String get learningLoadFailed => 'Učitavanje napretka u učenju nije uspjelo.';

  @override
  String get actionRetry => 'Pokušaj ponovno';

  @override
  String get learningHeading => 'Uči iz svojih odluka';

  @override
  String get learningIntro =>
      'Napredak ostaje na ovom uređaju. Pregledaj teme koje se ponavljaju i ponovno odigraj spremljene pozicije bez uvida u odgovor. Bijele i Crne možeš pregledavati odvojeno.';

  @override
  String get learningBothSides => 'Obje strane';

  @override
  String get learningHumansOnly => 'Samo ljudske odluke';

  @override
  String get learningHumanOnlyHelp =>
      'Isključi da uključiš odluke računala i udaljenih igrača';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions odluka · $mistakes za poboljšati · $blunders velikih pogrešaka';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Prosječni gubitak ($decisions odluka): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Prisilni potezi nisu uključeni. Ovo su procjene enginea, a ne turniraška ocjena.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Spremljene partije ($count) treba analizirati ili ponovno analizirati.',
      one: 'Spremljenu partiju treba analizirati ili ponovno analizirati.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analiziraj spremljene partije';

  @override
  String get learningEmptyProfile =>
      'Odigraj i završi partiju da izgradiš profil učenja. Odluke možeš spremiti i iz pregleda odigrane partije.';

  @override
  String get learningOpenHistory => 'Otvori povijest mečeva';

  @override
  String get learningRecurringThemes => 'Ponavljajuće teme';

  @override
  String get learningNoThemes =>
      'U ovom odabiru još nema ponavljajućih tema pogrešaka.';

  @override
  String learningThemeDecisions(int count) {
    return '$count odluka za ponoviti. Jedna pozicija može imati više tema.';
  }

  @override
  String get learningSaveMistakes => 'Spremi ove pogreške za vježbu';

  @override
  String learningSavedMistakes(int count) {
    return '$count odluka nalazi se na popisu za vježbu. Već spremljene odluke ostaju.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Neke odluke nije bilo moguće spremiti. Uspješno spremljene ostaju; pokušaj ponovno.';

  @override
  String get learningSpacedPractice => 'Vježbanje s razmacima';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due dospjelo · $saved spremljeno · $attempts pokušaja · $successes uspješnih prisjećanja';
  }

  @override
  String get learningIntervalsHelp =>
      'Uspješna dospjela ponavljanja vraćaju se nakon 1, 3, 7, 14 i 30 dana. Pogreške ili otkriveni odgovori vraćaju se nakon 10 minuta. Ranija ponavljanja ne mijenjaju razmak.';

  @override
  String get learningAnswerContext =>
      'Rezultati vježbe odražavaju tvoje odgovore ovdje, čak i ako je izvorna pozicija pripadala protivniku.';

  @override
  String get learningNoSavedPositions =>
      'Spremi odluku iz pregleda partije ili upotrijebi gumb za pogreške iznad.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Odluka igrača $side · partija $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Ponovi $date';
  }

  @override
  String get learningReadyToReview => 'Spremno za ponavljanje';

  @override
  String learningSuccessStreak(int count) {
    return '$count uspješnih dospjelih ponavljanja';
  }

  @override
  String get learningRemoveTooltip => 'Ukloni spremljenu odluku';

  @override
  String get learningRecentPractice => 'Nedavne vježbe';

  @override
  String get learningAnswerRevealed => 'Odgovor otkriven';

  @override
  String get learningSuccessfulRecall => 'Uspješno prisjećanje';

  @override
  String get learningTryAgain => 'Pokušaj ponovno ovu odluku';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · spremljena pozicija $positionId';
  }

  @override
  String get learningRemoveTitle => 'Ukloniti ovu vježbu?';

  @override
  String get learningRemoveBody =>
      'Time se uklanjaju pokušaji vježbe. Izvorna partija ostaje u povijesti.';

  @override
  String get actionRemove => 'Ukloni';

  @override
  String get learningRemoveFailed => 'Nije moguće ukloniti ovu vježbu.';

  @override
  String get learningResetTitle => 'Poništiti napredak vježbanja?';

  @override
  String get learningResetBody =>
      'Svi pokušaji i razmaci ponavljanja bit će uklonjeni. Spremljene vježbe i povijest mečeva ostaju; sve vježbe dospijevaju odmah.';

  @override
  String get learningResetAction => 'Poništi napredak';

  @override
  String get learningResetFailed => 'Nije moguće poništiti napredak vježbanja.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analizirano partija: $completed · nedostupno: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analizirano partija: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analizirano $completed partija; $failed nije bilo moguće analizirati. Pokušaj ponovno kad engine bude spreman.';
  }

  @override
  String get learningThemeHitting => 'Udaranje i tempo';

  @override
  String get learningThemeSafety => 'Blotovi i sigurnost';

  @override
  String get learningThemePointMaking => 'Osvojeni punktovi';

  @override
  String get learningThemePrime => 'Primeovi i blokade';

  @override
  String get learningThemeAnchor => 'Sidra i bijeg';

  @override
  String get learningThemeRace => 'Učinkovitost utrke';

  @override
  String get learningThemeBearOff => 'Skidanje figura';

  @override
  String get learningThemeBarEntry => 'Ulazak s bara';

  @override
  String get learningThemeCube => 'Odluke o kocki';

  @override
  String get analysisCubeNoDouble => 'Bez udvostručavanja';

  @override
  String get analysisCubeDouble => 'Udvostruči';

  @override
  String get analysisCubeTake => 'Prihvati';

  @override
  String get analysisCubePass => 'Odustani';

  @override
  String get learningAnalysisStarting => 'Analiza spremljenih partija…';

  @override
  String get tutorCubelessEstimateScope =>
      'Procjena bez kocke, 0-ply · rezultat nije dostupan';

  @override
  String get tutorLossPp => 'Gubitak pp';

  @override
  String get tutorLoss => 'Gubitak';

  @override
  String get scoreSheetNoMoves => 'Još nema poteza';

  @override
  String get tutorOptions => 'Opcije podučavanja';

  @override
  String get tutorCollapseTooltip => 'Skupi tutora';

  @override
  String get tutorExpandTooltip => 'Proširi tutora';

  @override
  String get onlineTitle => 'Igraj na mreži';

  @override
  String get onlineUnassistedNote =>
      'Mrežne partije nemaju aktivnu pomoć tutora. Pregledaj poteze i vježbaj pogreške nakon meča.';

  @override
  String get onlineNotConfiguredTitle =>
      'Mrežna igra nije postavljena u ovoj verziji';

  @override
  String get onlineNotConfiguredBody =>
      'Ova verzija nema povezanu Firebase uslugu pa stvaranje i pridruživanje mečevima nije dostupno.';

  @override
  String get onlineErrorNoMatch =>
      'Nema meča s tim kodom. Provjeri ga i pokušaj ponovno.';

  @override
  String get onlineErrorSeatTaken =>
      'Taj meč više nije otvoren — mjesto je zauzeto.';

  @override
  String get onlineErrorPermission => 'Nemaš pristup tom meču.';

  @override
  String get onlineErrorGeneric => 'Došlo je do pogreške. Pokušaj ponovno.';

  @override
  String get onlineMatchFinished =>
      'Meč je završio — nema ga više za nastaviti.';

  @override
  String get onlineEnterCodeError => 'Unesi kod meča.';

  @override
  String get onlineOpponentShort => 'Protivnik';

  @override
  String get onlineMatchInProgress => 'Meč je u tijeku';

  @override
  String onlineResumePrompt(Object code) {
    return 'Igrao si meč $code.';
  }

  @override
  String get onlineRejoin => 'Nastavi';

  @override
  String get onlineForgetMatch => 'Zaboravi ovaj meč';

  @override
  String get onlineCreateTitle => 'Stvori meč';

  @override
  String get onlineMatchLength => 'Duljina meča';

  @override
  String get onlineNoCubeTitle => 'Igraj bez kocke';

  @override
  String get onlineNoCubeSubtitle =>
      'U ovom meču nema kocke za udvostručavanje';

  @override
  String get onlineCreate => 'Stvori';

  @override
  String get onlineWaitingOpponent => 'Čeka se protivnik…';

  @override
  String get onlineShareCode => 'Podijeli ovaj kod';

  @override
  String get onlineCopyCode => 'Kopiraj kod';

  @override
  String get onlineCodeCopied => 'Kod je kopiran';

  @override
  String get onlineJoinTitle => 'Pridruži se meču';

  @override
  String get onlineRoomCode => 'Kod meča';

  @override
  String get onlineJoin => 'Pridruži se';

  @override
  String get lanTitle => 'Igraj u blizini';

  @override
  String get lanTabHost => 'Udomi';

  @override
  String get lanTabJoin => 'Pridruži se';

  @override
  String get lanUnassistedNote =>
      'Lokalne partije nemaju aktivnu pomoć tutora. Pregledaj poteze i vježbaj pogreške nakon meča.';

  @override
  String get lanGameStartFailed =>
      'Partiju nije moguće pokrenuti. Drugi uređaj može se ponovno pokušati pridružiti.';

  @override
  String get lanHostPortInUse =>
      'Nije moguće pokrenuti udomljavanje — port se već koristi. Zatvori drugu kopiju Backgammon Buddyja i pokušaj ponovno.';

  @override
  String get lanHostStartFailed =>
      'Nije moguće pokrenuti udomljavanje. Provjeri Wi-Fi vezu i pokušaj ponovno.';

  @override
  String get lanHostTitle => 'Udomi partiju';

  @override
  String get lanStartHosting => 'Pokreni udomljavanje';

  @override
  String get lanHostHelp =>
      'Oba uređaja moraju biti na istoj Wi-Fi mreži. Ovaj uređaj baca kockice i vodi rezultat.';

  @override
  String get lanWaitingPlayerTitle => 'Čeka se igrač';

  @override
  String get lanRoomCodeInfo =>
      'Reci ovaj kod drugom igraču. Omogućuje mu ulaz — aplikacija ga nikad ne šalje mrežom.';

  @override
  String get lanWaitingPlayer => 'Čeka se igrač…';

  @override
  String get lanStopHosting => 'Zaustavi udomljavanje';

  @override
  String lanFindNearbyPort(int port) {
    return 'Zamoli drugi uređaj da potraži obližnje partije. Slušanje na portu $port.';
  }

  @override
  String get lanOnNetwork => 'Na ovoj mreži';

  @override
  String get lanCopyAddress => 'Kopiraj adresu';

  @override
  String get lanAddressCopied => 'Adresa je kopirana';

  @override
  String get lanScanHostTitle => 'Skeniraj domaćina';

  @override
  String get lanScanHostHelp =>
      'Drugi uređaj prikazuje QR kod na zaslonu domaćina. Skeniranjem se unose adresa i kod sobe.';

  @override
  String get lanScanQr => 'Skeniraj QR kod';

  @override
  String get lanScannerUnavailable =>
      'Kamera ili dopuštenje nisu dostupni. Umjesto toga unesi adresu i kod sobe ispod.';

  @override
  String get lanInvalidQr =>
      'Ovaj QR kod nije za Backgammon Buddy. Skeniraj kod na zaslonu domaćina drugog uređaja.';

  @override
  String get lanScannerFailed =>
      'Skener se ne može otvoriti. Umjesto toga unesi adresu i kod ispod.';

  @override
  String get lanNearbyGames => 'Obližnje partije';

  @override
  String get lanSearching => 'Traženje obližnjih partija…';

  @override
  String get lanNoGamesFound =>
      'Nema pronađenih partija. Provjeri udomljuje li drugi uređaj partiju i jesu li oba na istom Wi-Fiju ili ispod unesi njegovu adresu.';

  @override
  String get lanStillSearching => 'Još se traži…';

  @override
  String get lanEnterAddress => 'Unesi adresu';

  @override
  String get lanEnterAddressHelp =>
      'Automatsko otkrivanje ne radi na svakoj mreži, a na iOS-u može biti potpuno blokirano. Zaslon domaćina pokazuje što trebaš upisati.';

  @override
  String get lanIpAddress => 'IP adresa';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Unesi port između 1 i 65535.';

  @override
  String get lanEnterAddressError =>
      'Unesi adresu prikazanu na drugom uređaju.';

  @override
  String get lanEnterRoomCodeError =>
      'Unesi četveroznamenkasti kod s drugog uređaja.';

  @override
  String get lanJoinWrongCode => 'Pogrešan kod sobe. Provjeri četiri znamenke.';

  @override
  String get lanJoinVersionMismatch =>
      'Na drugom uređaju radi druga verzija Backgammon Buddyja.';

  @override
  String get lanJoinHandshakeFailed =>
      'Uređaj ne odgovara kao Backgammon Buddy. Provjeri adresu i port.';

  @override
  String get lanJoinFailed =>
      'Nije se moguće pridružiti. Provjeri adresu i kod pa pokušaj ponovno.';

  @override
  String lanJoinTarget(Object name) {
    return 'Pridruži se: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Unesi četveroznamenkasti kod prikazan na drugom uređaju.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Pridruživanje: $name';
  }

  @override
  String get lanConnect => 'Poveži se';

  @override
  String get lanBack => 'Natrag';

  @override
  String get lanTryAgain => 'Pokušaj ponovno';

  @override
  String get lanStatusBusy => 'Soba je zauzeta — čeka se…';

  @override
  String get lanStatusReconnecting =>
      'Veza je prekinuta — ponovno povezivanje…';

  @override
  String get lanStatusConnected => 'Povezano — pokretanje meča…';

  @override
  String get lanStatusFailed => 'Nije se moguće pridružiti.';

  @override
  String get lanStatusConnecting => 'Povezivanje…';

  @override
  String get diagnosticsCopySuccess => 'Dijagnostika je kopirana';

  @override
  String get diagnosticsReviewTitle => 'Pregledaj dijagnostički izvještaj';

  @override
  String get diagnosticsPrivacyNotice =>
      'Otvaranjem skice šalju se GitHubu podaci navedeni ispod: verzija aplikacije, platforma i detalji pogreške. Javni problem neće biti objavljen dok ga tamo ne pošalješ. Ako podaci sadrže privatne informacije, odustani i kopiraj izvještaj da ga sam pripremiš.';

  @override
  String get diagnosticsCancel => 'Odustani';

  @override
  String get diagnosticsOpenGitHub => 'Otvori GitHub';

  @override
  String get diagnosticsTitle => 'Dijagnostika';

  @override
  String get diagnosticsReportTooltip => 'Prijavi problem na GitHubu';

  @override
  String get diagnosticsCopyTooltip => 'Kopiraj u međuspremnik';

  @override
  String get diagnosticsClearTooltip => 'Očisti zapisnik';

  @override
  String get diagnosticsEmpty =>
      'Nema zabilježenih pogrešaka.\n\nAko nešto pođe po zlu, ovdje će se zapisati. Vrati se i kopiraj podatke u prijavu pogreške.';

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
  String get gameHudYou => 'Ti';

  @override
  String get gameHudAi => 'UI';

  @override
  String gameHudGameNumber(int number) {
    return 'Partija $number';
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
    return '$whiteLabel protiv $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'protiv $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'protiv $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipovi';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Udvostruči';

  @override
  String get gameHudMoreActions => 'Više radnji';

  @override
  String get gameHudSurrender => 'Predaj…';

  @override
  String get gameHudThinking => 'Razmišlja';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Možeš udvostručiti samo prije bacanja, na svom potezu.';

  @override
  String get gameHudNoDoubleCrawford =>
      'U Crawfordovoj partiji nema udvostručavanja — ova partija odlučuje meč.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Samo vlasnik kocke može udvostručiti; trenutačno je u vlasništvu druge strane.';

  @override
  String get gameHudDoubleUnavailable =>
      'Udvostručavanje trenutačno nije dostupno.';

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
    return '$winner pobjeđuje u ovoj partiji ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner pobjeđuje u ovoj partiji ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner pobjeđuje u ovoj partiji ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner pobjeđuje u ovoj partiji ($points) — $loser je odbio udvostručenje.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner pobjeđuje u ovoj partiji ($points) — $loser je predao.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Predaj uređaj';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Na potezu je $name';
  }

  @override
  String get gameDialogTapToContinue => 'Dodirni za nastavak';

  @override
  String get gameDialogCubeOfferedTitle => 'Udvostručenje ponuđeno';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler nudi udvostručenje na $value. Prihvatiti ili odbiti?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Odbij';

  @override
  String get gameDialogTake => 'Prihvati';

  @override
  String get gameDialogResignationTitle => 'Predaja ponuđena';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner nudi predaju za $value. Prihvatiti ili odbiti?';
  }

  @override
  String get gameDialogResignSingle => 'pojedinačna partija';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Odbij';

  @override
  String get gameDialogAccept => 'Prihvati';

  @override
  String get gameDialogGameOverTitle => 'Partija je završena';

  @override
  String get gameDialogNextGame => 'Sljedeća partija';

  @override
  String get gameDialogMatchOverTitle => 'Meč je završen';

  @override
  String get gameDialogNobody => 'Nitko';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner pobjeđuje u meču.';
  }

  @override
  String get gameDialogSavedToHistory => 'Spremljeno u povijest';

  @override
  String get gameDialogDone => 'Gotovo';

  @override
  String get gameTapNoLegalMove =>
      'Ta se figura ne može pomaknuti preostalim kockicama';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Ta se figura ne može pomaknuti preostalim kockicama — pokušaj poništiti potez';

  @override
  String get gameDragHint =>
      'Savjet: povuci figure ili ih dodirni — promijeni to u postavkama';

  @override
  String get commonGotIt => 'Razumijem';

  @override
  String get gameHintStageBeforeHint =>
      'Prvo odigraj cijeli legalan potez pa zatraži savjet.';

  @override
  String get surrenderTitle => 'Predaja';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player predaje trenutačnu partiju.';
  }

  @override
  String get surrenderConcedes => 'Predaje trenutačnu partiju.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Dostupno na početku poteza igrača $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Dostupno na početku tvog poteza';

  @override
  String get commonCancel => 'Odustani';

  @override
  String get surrenderSingle => 'Pojedinačna (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Tko predaje ovu partiju?';

  @override
  String get commonDone => 'Gotovo';

  @override
  String get cubeDouble => 'Udvostruči';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Drugi igrač je na potezu.';

  @override
  String get cubeBlockedCrawford =>
      'U Crawfordovoj partiji kocka nije dostupna.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Samo vlasnik kocke može udvostručiti, a trenutačno je posjeduje druga strana.';

  @override
  String get cubeBlockedUnavailable => 'Udvostručavanje sada nije dostupno.';

  @override
  String get gameStatusRolling => 'Bacanje…';

  @override
  String get gameStatusThinking => 'Razmišljanje…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Na potezu je $player';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Udvostruči — protivnik bi trebao prihvatiti';

  @override
  String get cubeAdviceOpponentPass =>
      'Udvostruči — protivnik bi trebao odbiti';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Pogreška: $error';
  }

  @override
  String get privacyTitle => 'Privatnost i podaci';

  @override
  String get privacyAppTitle => 'Backgammon Buddy tvrtke Freevia';

  @override
  String get privacyIntro =>
      'Ova stranica opisuje kako ova aplikacija obrađuje vaše podatke.';

  @override
  String get privacyLocalTitle => 'Igre i podučavanje na vašem uređaju';

  @override
  String get privacyLocalBody =>
      'Lokalne partije, postavke, analiza i napredak vježbanja pohranjuju se na ovom uređaju. Backgammon mehanizam i objašnjenja trenera rade ovdje. Izbriši spremljenu partiju iz Povijesti da ukloniš i njezine spremljene vježbe i pokušaje. Izbriši pojedinačne vježbe ili poništi napredak u Učenju; lokalne prijave pogrešaka izbriši u Postavke → Dijagnostika. Postavke sigurnosne kopije uređaja mogu obuhvatiti i povijest partija. Podaci za online prijavu čuvaju se u zaštićenoj pohrani uređaja.';

  @override
  String get privacyOnlineTitle => 'Online i lokalno igranje';

  @override
  String get privacyOnlineBody =>
      'Online igranje šalje anoniman identifikator igrača, postavke partije, poteze i zapise potvrde kockica u Google Firebase kako bi oba igrača igrala istu partiju. Brisanje Povijesti na ovom uređaju ne briše online zapise. Hostane partije istječu 30 dana nakon stvaranja; zakazano čišćenje uklanja njihove zapise u oblaku. Zapisi partija pohranjuju se u EU-u; Firebase Authentication obrađuje podatke za prijavu u Sjedinjenim Američkim Državama. Veze s Googleom šifrirane su tijekom prijenosa. Igranje u blizini razmjenjuje podatke s drugim uređajem nešifriranom lokalnom vezom; koristi pouzdanu Wi-Fi mrežu.';

  @override
  String get privacyDiagnosticsTitle =>
      'Neobavezna dijagnostika korištenja i rušenja';

  @override
  String get privacyDiagnosticsBody =>
      'Dijeljenje je isključeno dok ga ne odabereš u Postavkama. Ako ga uključiš, Google Firebase prima događaje korištenja, podatke o aplikaciji/uređaju, mjerenja performansi i izvješća o rušenju radi poboljšanja aplikacije. Dijeljenje možeš isključiti u bilo kojem trenutku kako bi zaustavio/la novo neobavezno prikupljanje. Time se ne brišu već poslani podaci. Lokalna dijagnostika i online partije ne ovise o ovom odabiru.';

  @override
  String get privacyCameraTitle => 'Kamera za obližnje QR kodove';

  @override
  String get privacyCameraBody =>
      'Neobavezna kamera skenira QR kodove za obližnje partije. Slike se obrađuju na uređaju i ne spremaju se niti prenose. Možeš odbiti pristup kameri i ručno unijeti adresu domaćina. Ova verzija ne koristi mikrofon niti podržava igranje na fizičkoj ploči.';

  @override
  String get privacyFeedbackTitle =>
      'Povratne informacije koje odlučite poslati';

  @override
  String get privacyFeedbackBody =>
      'Povratne informacije otvaraju nacrt GitHub prijave koji možeš pregledati. Otvaranjem se GitHubu šalju verzija aplikacije i platforma; povratne informacije iz Dijagnostike mogu sadržavati i pojedinosti o pogreškama. Prijava se ne objavljuje dok je ne pošalješ. Prijave mogu biti javne, zato ukloni privatne podatke prije slanja.';

  @override
  String get privacyContactTitle => 'Kontakt za privatnost';

  @override
  String get privacyReadPolicy => 'Pročitajte pravila privatnosti';

  @override
  String get privacyPolicyOpenFailed =>
      'Nije moguće otvoriti pravila privatnosti.';

  @override
  String get privacySupportTitle => 'Pomoć i podrška';

  @override
  String get privacySupportOpenFailed =>
      'Nije moguće otvoriti podršku. Obrati se na support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Izbrisati online identitet i podatke?';

  @override
  String get privacyDeleteConfirmBody =>
      'Ovo odmah ukida pristup ovog identiteta igrama u oblaku za oba igrača i traži brisanje identiteta i zajedničkih online zapisa u roku od 30 dana. Googleu može trebati do 180 dana nakon brisanja računa da ukloni podatke Authentication iz aktivnih i sigurnosnih sustava. Lokalna Povijest i vježbanje ostaju na ovom uređaju. Ranije poslana neobavezna dijagnostika zasebna je; za nju se obrati na privacy@freevia.org. Ovaj se zahtjev ne može poništiti.';

  @override
  String get privacyRequestDeletion => 'Zatraži brisanje';

  @override
  String get privacyDeleteSectionTitle => 'Brisanje online podataka';

  @override
  String get privacyDeleteInstructions =>
      'Za potvrdu vlasništva koristi spremljenu prijavu na ovom uređaju. Sam identifikator igrača ili kod pozivnice ne dokazuje vlasništvo. Lokalnim igračima nije potreban online račun.';

  @override
  String get privacySendingRequest => 'Slanje zahtjeva…';

  @override
  String get privacyDeleteAction => 'Izbriši online identitet i podatke';

  @override
  String get privacyDeleteRequested =>
      'Brisanje je zatraženo. Ovaj online identitet odjavljen je. Njegovi podaci u oblaku bit će izbrisani u roku od 30 dana. Ponovnim online igranjem stvara se novi identitet. Googleu može trebati do 180 dana za uklanjanje Authentication podataka. Za pomoć se obrati na privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Brisanje je zatraženo i podaci u oblaku bit će izbrisani u roku od 30 dana. Uređaj nije mogao ukloniti spremljenu prijavu, ali online identitet više ne može pristupiti partijama. Googleu može trebati do 180 dana za uklanjanje Authentication podataka. Obrati se na privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Na ovom uređaju nije spremljen upotrebljiv online identitet. Novi račun nije stvoren. Ako si prije igrao/la online, obrati se na privacy@freevia.org; hostane partije istječu nakon 30 dana.';

  @override
  String get privacyDeleteRequestFailed =>
      'Nije moguće potvrditi zahtjev za brisanje. Provjeri vezu i pokušaj ponovno ili se obrati na privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Podijeliti dijagnostiku korištenja i rušenja?';

  @override
  String get privacyConsentBody =>
      'To šalje događaje korištenja, podatke o aplikaciji/uređaju, izvješća o rušenju i mjerenja performansi u Google Firebase. Dijeljenje je neobavezno. Igre i podučavanje rade i bez njega, a možeš ga ponovno isključiti u Postavkama.';

  @override
  String get privacyKeepOff => 'Ostavi isključeno';

  @override
  String get privacyShareDiagnostics => 'Podijeli dijagnostiku';

  @override
  String get privacySaveFailed =>
      'Nije moguće spremiti odabir privatnosti. Pokušajte ponovno.';

  @override
  String get privacySettingsSubtitle =>
      'Što ostaje na uređaju, a što se dijeli';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Dijeli dijagnostiku korištenja i rušenja';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Neobavezno · isključeno po zadanim postavkama';

  @override
  String get lanScanToJoin => 'Skeniraj za pridruživanje';

  @override
  String get lanScanHostCode => 'Skeniraj kod domaćina';

  @override
  String get lanEnterAddressInstead => 'Umjesto toga unesi adresu';

  @override
  String get lanQrAccessibilityLabel => 'QR kod za pridruživanje ovoj partiji';

  @override
  String get lanJoinInstruction =>
      'Na drugom uređaju otvori Igranje u blizini, odaberi Pridruži se i skeniraj ovaj QR kod.';

  @override
  String get lanTorch => 'Svjetiljka';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ne može koristiti kameru. Dopustite pristup u postavkama uređaja ili ručno unesite adresu s drugog uređaja.';

  @override
  String get lanCameraUnsupported =>
      'Ovaj uređaj ne može skenirati QR kodove. Unesi adresu prikazanu na drugom uređaju.';

  @override
  String get lanCameraStartFailed =>
      'Nije moguće pokrenuti kameru. Unesi adresu prikazanu na drugom uređaju.';

  @override
  String get lanPointCameraAtQr =>
      'Usmjeri kameru prema QR kodu na drugom uređaju.';

  @override
  String get physicalBuddyUnavailableTitle => 'Igranje na fizičkoj ploči';

  @override
  String get physicalBuddyUnavailableBody =>
      'Igranje na fizičkoj ploči nije dostupno u ovoj verziji. Igre na zaslonu, podučavanje i vježbanje dostupni su na početnom zaslonu.';

  @override
  String get homePlayWithBuddy => 'Igraj s Buddyjem';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Backgammon ploča. $status';
  }

  @override
  String get boardWhiteToRoll => 'Bijeli je na redu za bacanje.';

  @override
  String get boardBlackToRoll => 'Crni je na redu za bacanje.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Bijeli igra, baci $die1 i $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Crni igra, baci $die1 i $die2.';
  }

  @override
  String get boardDoubleOffered => 'Ponudeno je udvostručenje.';

  @override
  String get boardResignationOffered => 'Ponuđena je predaja.';

  @override
  String get boardGameOver => 'Partija je završena.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Pogreška]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ideja]: Backgammon Buddy';

  @override
  String get feedbackBugSummary => 'Ovdje ukratko opiši što se dogodilo.';

  @override
  String get feedbackBugReproduction =>
      'Ovdje navedi korake koji su doveli do problema.';

  @override
  String get feedbackBugExpected =>
      'Ovdje napiši što si očekivao/la da će se dogoditi.';

  @override
  String get feedbackIdeaNeed =>
      'Ovdje napiši što si želio/željela učiniti ili naučiti.';

  @override
  String get feedbackIdeaSuggestion =>
      'Ovdje napiši promjenu koja bi ti bila korisna.';

  @override
  String get feedbackExcerptTruncated =>
      '(skraćeno — upotrijebi Kopiraj u međuspremnik na zaslonu Dijagnostika za cijeli zapisnik)';

  @override
  String get boardWhiteToMoveNoRoll => 'Bijeli je na potezu.';

  @override
  String get boardBlackToMoveNoRoll => 'Crni je na potezu.';

  @override
  String get feedbackFieldVersion => 'Verzija aplikacije';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Što se dogodilo';

  @override
  String get feedbackFieldReproduction => 'Koraci za ponavljanje';

  @override
  String get feedbackFieldExpected => 'Očekivani rezultat';

  @override
  String get feedbackFieldNeed => 'Što si želio/željela učiniti';

  @override
  String get feedbackFieldIdea => 'Predložena promjena';

  @override
  String get buddySetupTitle => 'Igrajte s Buddyjem';

  @override
  String get buddySetupSideLabel => 'Buddy igra';

  @override
  String get buddySetupSeatLabel => 'Vaše mjesto';

  @override
  String get buddySetupSeatNear => 'Uz telefon';

  @override
  String get buddySetupSeatFar => 'Suprotan';

  @override
  String get buddySetupSeatHelp =>
      'Na kojoj ste strani ploče. To je način na koji Buddy broji bodove i kako razlikuje vaše otvaranje od vlastitog.';

  @override
  String get buddySetupVoiceLabel => 'Kako Buddy priča';

  @override
  String get buddySetupVoiceTerse => 'Sažet';

  @override
  String get buddySetupVoiceFriendly => 'Prijateljski';

  @override
  String get buddySetupVoiceTerseHelp =>
      '“13/8, 24/22” — zapis, način na koji dva igrača za pločom zapravo razgovaraju.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '\"Pomaknite jedan žeton s 13 na 8, a jedan s 24 na 22.\"';

  @override
  String get buddySetupTutorHelp =>
      'Komentari nastavnika i objašnjenja pokreta slijede vaše spremljene postavke nastavnika u postavkama. Buddy daje povremene povratne informacije nakon vaših igranja; tipkane kockice i ručni potezi rade na isti način.';

  @override
  String get buddySetupCalibrate => 'Kalibrirajte ploču';

  @override
  String get buddyFixAim => 'Popravite cilj';

  @override
  String get buddyWaitingForOpening =>
      'Buddy čeka bacanje kojim počinje utakmica.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy je izgubio ploču. Popravite cilj i utakmica se nastavlja tamo gdje je stala.';

  @override
  String get buddyPromptWaitingPicture =>
      'Čekam sliku Buddy može čitati. Ništa nije izgubljeno.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy ne može pronaći kockice. Umjesto toga upišite rolu.';

  @override
  String get buddyPromptPlay =>
      'Igrajte na ploči. Dodirnite ga ovdje ako ga Buddy ne vidi.';

  @override
  String get buddyPromptWhichPlay => 'Koji ste potez odigrali?';

  @override
  String get buddyPromptCube =>
      'Buddy nudi udvostručenje. Prihvatiti ili odbiti?';

  @override
  String get buddyPromptMakeMove =>
      'Napravite potez Buddy na ploči, a zatim će Buddy nastaviti.';

  @override
  String get buddyPromptThinking => 'Buddy razmišlja.';

  @override
  String get buddyPromptWaitingCalibration => 'Čeka se kalibracija.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy još uvijek ne vidi njegov pokret. Ploča ispod je pozicija koju drži.';

  @override
  String get buddyPromptNotLegal => 'To nije dopušten potez.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'To nije dopušten potez. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Bacite početnu kocku — svaki po jednu kocku.';

  @override
  String get buddyThrowUser => 'Baci kocku.';

  @override
  String get buddyThrowBuddy => 'Baci Buddy-ovu kocku.';

  @override
  String get buddyMatchOver => 'Utakmica je gotova.';

  @override
  String get buddyYouWin => 'Dobili ste utakmicu.';

  @override
  String get buddyBuddyWins => 'Buddy pobjeđuje u utakmici.';

  @override
  String get buddyDoubleNoGame =>
      'Još nema igre za dupliranje — prvo je prvo bacanje.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Možete samo udvostručiti prije bacanja, na svom potezu.';

  @override
  String get buddyDoubleCrawford =>
      'Nema udvostručavanja u igri Crawford — ova pojedinačna igra odlučuje utakmicu.';

  @override
  String get buddyDoubleNotOwner =>
      'Samo vlasnik kocke može udvostručiti, a druga strana je posjeduje upravo sada.';

  @override
  String get buddyDoubleUnavailable => 'Udvostručenje trenutno nije dostupno.';

  @override
  String get buddyLookingAtBoard => 'Buddy gleda u ploču.';

  @override
  String get buddyCameraPlayFallback =>
      'Još uvijek možete igrati utakmicu: upišite svako bacanje na ploču s kockicama i dodirnite svoje igre na ploči ispod.';

  @override
  String get buddySkipCheck => 'Preskoči ovu provjeru';

  @override
  String get buddyFixedIt => 'Popravio sam to';

  @override
  String get buddyDrop => 'Odbij';

  @override
  String get buddyTake => 'Prihvati';

  @override
  String get buddyDone => 'Gotovo';

  @override
  String get buddyTranscriptLabel => 'Što je Buddy rekao';

  @override
  String get buddyUndo => 'Poništi';

  @override
  String get buddyConfirm => 'Potvrdi';

  @override
  String get buddyDice => 'Kocke';

  @override
  String get buddyDouble => 'Udvostručenje';

  @override
  String get buddyDicePadTitle => 'Što ste bacili?';

  @override
  String get buddyEnterRoll => 'Unesite bacanje';

  @override
  String get buddyContextBeforeGame => 'Igrajte se sa Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Vi $you–$buddy Buddy · do $length · Igra $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kamera se nije mogla pokrenuti. Provjerite dopuštenja i pokušajte ponovno.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy nema dozvolu za korištenje kamere. Dopustite pristup kameri u postavkama uređaja i pokušajte ponovo.';

  @override
  String get buddyCalibrationTitle => 'Pokažite Buddy ploču';

  @override
  String get buddyCalibrationCornersFold =>
      'Povucite četiri vanjske ručke na kutove filca - ne na drveni rub - a četiri male na šavove gdje se šarka spaja s daljim i bližim rubovima.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Povucite svaku ručku na kut filca - na površinu za igru, a ne na drveni rub oko nje.';

  @override
  String get buddyCalibrationCheckLines =>
      'Zatim provjerite dvanaest linija u svakoj polovici: svaka bi trebala ići duž jedne točke vaše ploče. Crta koja promašuje svoju bit je ručka koju treba gurnuti.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Koja je polovica vaša kućna ploča?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Polovica najbliža dnu slike. To je ono što popravlja brojeve bodova, tako da se crte iznad pomiču s tim.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Drži telefon mirno. Buddy čeka da se slika smiri prije nego što nauči ovu ploču.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Je li ovo vaša ploča?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy gleda u ploču koju je upravo naučio.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Ljudi nacrtani preko slike su ono što Buddy misli da je na ploči. Ako je bilo koji od njih na pogrešnom mjestu, počnite ispočetka — sada košta nekoliko sekundi, a kasnije igra.';

  @override
  String get buddyCalibrationNext => 'Sljedeći';

  @override
  String get buddyCalibrationBack => 'Nazad';

  @override
  String get buddyCalibrationCapture => 'Hvatanje';

  @override
  String get buddyCalibrationStartOver => 'Kreni ispočetka';

  @override
  String get buddyCalibrationLooksRight => 'Izgleda dobro';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Te četiri ručke ne ocrtavaju ploču — jedna je prešla drugu. Povucite ih natrag u kutove filca.';

  @override
  String get buddyCalibrationPrepTitle => 'Prvo tri stvari';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Skinite kockice s ploče.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy sada uči golu ploču. Kockica ostavljena na filcu uči se kao dio toga, a zatim Buddy nikada više ne može vidjeti kockicu u ovoj sesiji.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Postavite žetone u početni položaj.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Trideset žetona na poznatim mjestima pomaže Buddyju prepoznati dvije boje na ploči.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Uklopi cijelo polje za igru ​​na sliku.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Zatim ostavite telefon gdje jest. Ako se pomakne, Buddy će to reći i možete gurnuti uglove unazad.';

  @override
  String get buddyCalibrationBoardKind => 'Kakva je to ploča?';

  @override
  String get buddyCalibrationFlatBoard => 'Ravna ploča';

  @override
  String get buddyCalibrationFoldingBoard => 'Preklopna torbica';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Sklopiva daska treba četiri dodatne ručke na šavovima šarki.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy Mode promatra pravu ploču, tako da ne može započeti bez kamere. Sve ostalo u aplikaciji je nepromijenjeno.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Zglobni šav $number od 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Kutak ploče $number od 4';
  }

  @override
  String get buddyNudgeLeft => 'Pomakni lijevo';

  @override
  String get buddyNudgeRight => 'Pomaknite desno';

  @override
  String get buddyNudgeUp => 'Gurkati gore';

  @override
  String get buddyNudgeDown => 'Gurnuti dolje';

  @override
  String get buddyCalibrationProblemCorners =>
      'Ta četiri kuta ne ocrtavaju ploču. Povucite svaku ručku u kut polja za igru ​​i pokušajte ponovno.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Tih osam točaka ne ocrtava sklopivu ploču. Stavite četiri na kutove igrališta i četiri na šavove šarki, a zatim pokušajte ponovno.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Ne mogu razaznati samu ploču — svaki njen dio je prekriven ili izgubljen u sjeni ili odsjaju. Očistite ploču, dodajte malo svjetla i pokušajte ponovo.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ne mogu razaznati $region — možda nešto leži na njemu ili je taj kut ploče možda pretaman za čitanje. Obrišite ga ili dodajte malo svjetla i pokušajte ponovno.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Dva seta dama odavde izgledaju previše slični. Više svjetla, ili kut s manje odsjaja na ploči, obično to popravi.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Žetoni nisu u početnom položaju — polje $number ima pogrešnu boju. Postavite ploču za početak partije pa ponovno kalibrirajte.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Na ploči je toliko svjetla da se boje prelijevaju jedna u drugu. Prigušite svjetlo ili pomaknite telefon tako da lampa ne svijetli ravno u njega.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Mogu čitati ovu ploču, ali ne kao igru ​​koja će uskoro početi. Postavite ljude za početak igre, a zatim ponovno kalibrirajte.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Mogu pročitati ploču, ali ne mogu razaznati koliko se žetona nalazi u pojedinom nizu — zato bih mogao pogriješiti u brojanju. Obično pomaže više svjetla na bližim poljima ili malo viši kut kamere.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ne mogu vidjeti cijelu ploču. Pomaknite telefon natrag ili povucite kutove na igralište.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Više ne mogu vidjeti cijelu ploču — $region je izvan slike. Ponovno poravnajte kameru ili ponovno provjerite kutove.';
  }

  @override
  String get buddyConfirmStartingPosition => 'To izgleda kao početna pozicija.';

  @override
  String get buddyConfirmNoCheckers =>
      'Ne vidim žetone na početnim poljima. Postavite ih u početni položaj i pokušajte ponovno.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Ploča nije postavljena za početak igre: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region izgleda prazno, ali igra počinje sa $side tamo';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region ima $side na sebi, ali igra počinje s praznim';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region ima $observed na sebi, gdje igra počinje sa $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Stani mirno na trenutak — gubim ploču dok se telefon pomiče.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Slika koju sam dobio nije ona na kojoj je ova ploča postavljena, tako da ne mogu ništa poredati na njoj. Ponovno postavite ploču odavde.';

  @override
  String get buddyReadabilityBlur =>
      'Slika je previše mekana za čitanje ploče. Dajte kameri trenutak da se fokusira.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Ploča nije gdje je bila kad sam je naučio. Ponovno poravnajte kutove i ja ću odabrati igru ​​ravno gore.';

  @override
  String get buddyReadabilityOccluded =>
      'Nešto prekriva dio ploče. Nastavit ću čim bude jasno.';

  @override
  String get buddyReadabilityClear => 'Vidim ploču.';

  @override
  String get buddyReadabilityColorChanged =>
      'Svjetlo na ploči je promijenilo boju, tako da ploča više ne izgleda kao ona koju sam naučio. Ponovno poravnajte kutove pod ovim svjetlom i ja ću odabrati igru ​​ravno gore.';

  @override
  String get buddyReadabilityTooDark =>
      'It is too dark to read the board. Još malo svjetla i nastavit ću gdje smo bili.';

  @override
  String get buddyReadabilityTooBright =>
      'Na ploči je toliko svjetla da se boje prelijevaju jedna u drugu. Prigušite ga ili pomaknite telefon tako da lampa ne svijetli ravno u njega.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy još uvijek ne vidi svoj pokret — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nJoš uvijek možete igrati utakmicu: upišite svako bacanje na ploču s kockicama i dodirnite svoje igre na ploči ispod.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kamera se nije mogla pokrenuti. Provjerite dopuštenja i pokušajte ponovno.';

  @override
  String buddyRegionPoint(int number) {
    return 'točka $number';
  }

  @override
  String get buddyRegionBar => 'bar';

  @override
  String get buddyRegionWhiteTray => 'bijeli pladanj za iznošenje žetona';

  @override
  String get buddyRegionBlackTray => 'crni pladanj za iznošenje žetona';

  @override
  String get buddyRegionDiceZone => 'sredina ploče';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ne mogu vidjeti cijelu ploču. Pomaknite telefon natrag ili povucite kutove na igralište.';

  @override
  String buddyConfirmMore(int number) {
    return '(i još $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Svaki igrač baca po jednu kockicu. Veći broj određuje tko počinje.';

  @override
  String get buddyDiceOpeningFirst => 'bijela kockica';

  @override
  String get buddyDiceOpeningSecond => 'crna kockica';

  @override
  String get buddyDiceRegularCaption => 'Dva lica na stolu, bilo kojim redom.';

  @override
  String get buddyDiceRegularFirst => 'Jedan umri';

  @override
  String get buddyDiceRegularSecond => 'Drugi';

  @override
  String get evaluationEngine => 'Mehanizam procjene';

  @override
  String get parallelEngineAnalysis => 'Analiziraj s oba mehanizma';

  @override
  String get parallelEngineExplanation =>
      'Usporedite zasebne savjete wildbg i GNUbg u treneru.';

  @override
  String get engineComparison => 'Usporedba mehanizama';

  @override
  String get engineWinChance => 'Šansa za pobjedu';

  @override
  String get buddyBar => 'bar';

  @override
  String get buddyOff => 'isključeno';

  @override
  String get buddyHitSuffix => ', udaranje';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Premjesti jednu žetonicu s $from na $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Premjesti $count dama iz $from u $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Skinite jedan dah od $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Skinite $count dama od $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Bacio sam $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Bacili ste $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Oba su bacala $die. Ponovno zarolati.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Nema igre, pa je vaš red.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Nema igre, pa je Buddyjev red.';

  @override
  String get buddySpeechNoPlayPass => 'Nema igre — tvoj red prolazi.';

  @override
  String get buddySpeechNoPlayBack => 'Nema igre, pa se vraća vama.';

  @override
  String get buddySpeechIllegalPlay => 'To nije legalna igra.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'To nije sasvim točno. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Ploča se razlikuje od igre: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: igra očekuje $expected $side dama; kamera vidi $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Vjerujem vam na riječ. Nisam mogao vidjeti tu jednu zemlju, pa ako smo se rastali, to će se pokazati kao drama koju ne mogu čitati.';

  @override
  String get buddySpeechBuddyDouble => 'Udvostručim — uzeti ili ispustiti?';

  @override
  String get buddySpeechYouDouble => 'Ti dupli.';

  @override
  String get buddySpeechBuddyTakes => 'uzimam.';

  @override
  String get buddySpeechYouTake => 'ti uzmi.';

  @override
  String get buddySpeechBuddyDrops => 'padam.';

  @override
  String get buddySpeechYouDrop => 'Ti ispustiš.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Pobjeđujem u ovoj igri: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Pobijedili ste u ovoj igri: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'To mi odgovara.';

  @override
  String get buddySpeechMatchWinnerYou => 'Dobili ste utakmicu.';

  @override
  String get buddyTutorLastPlayBest =>
      'Vaša posljednja igra odgovarala je najboljem motoru.';

  @override
  String get buddyTutorLastPlayClose =>
      'Tvoja zadnja igra bila je blizu najboljeg motora.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Za vaše posljednje igranje, motor je preferirao $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Ostavlja $best protivničkih dama na traci umjesto $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Ostavlja $best mrlja umjesto $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Sadrži $best bodova početne ploče umjesto $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Isključeno je $best dama umjesto $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Poredak mjeri procijenjene pobjede i nagrade; niti jedna karakteristika ploče to ne objašnjava.';

  @override
  String buddySpeechPlay(String move) {
    return 'Igraj $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Bacio sam $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Check deletion confirmation';

  @override
  String get privacyDeletionReceiptHelp =>
      'After requesting deletion, return here to check completion. Your private receipt stays on this device and works after sign-out. Checks do not create an account. Completion receipts are available online for 90 days; keep this installation until confirmed.';

  @override
  String get privacyDeletionReceiptNone =>
      'No deletion receipt is saved on this device. For earlier requests or a lost device, contact support.';

  @override
  String get privacyDeletionReceiptPending =>
      'Deletion is not confirmed yet. Processing can take up to 30 days. Check again later. If more than 30 days have passed, contact support. An unavailable or expired receipt is not proof of deletion.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Deletion completed: all requests saved on this device are confirmed complete. This does not delete an online identity created afterward. Local history and learning remain. Google may retain backup and security records as described in the privacy policy.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Could not check deletion confirmation. Retry when connected, or contact support. No completion is implied.';
}
