// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Serbian (`sr`).
class AppLocalizationsSr extends AppLocalizations {
  AppLocalizationsSr([String locale = 'sr']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Unapredite igru uz trenera';

  @override
  String get settings => 'Podešavanja';

  @override
  String get playVsComputer => 'Igraj protiv računara';

  @override
  String get twoPlayers => 'Dva igrača';

  @override
  String get playNearby => 'Igraj u blizini';

  @override
  String get playOnline => 'Igraj onlajn';

  @override
  String get learningPractice => 'Učenje i vežbanje';

  @override
  String get gamesArchive => 'Arhiva partija';

  @override
  String get followSystem => 'Jezik uređaja';

  @override
  String get white => 'Beli';

  @override
  String get black => 'Crni';

  @override
  String get random => 'Nasumično';

  @override
  String get startMatch => 'Započni partiju';

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
  String get hint => 'Savet';

  @override
  String get tutoringStyle => 'Stil podučavanja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo saveti';

  @override
  String get tutorStyleTryFirst => 'Prvo pokušaj';

  @override
  String get tutorCoachDescription =>
      'Nagoveštaji o poziciji, povratne informacije o potezima, saveti i preporuke za kocku.';

  @override
  String get tutorHintsDescription =>
      'Rangirani potezi na zahtev. Nagoveštaji o poziciji i automatske povratne informacije posle svakog poteza ostaju isključeni.';

  @override
  String get tutorTryFirstDescription =>
      'Pripremi svoj potez pre nego što vidiš rangirane opcije ili ocenu; vođenje po tabli ostaje uključeno.';

  @override
  String get tutorCustomDescription =>
      'Prilagođena kombinacija. Podesi bilo koju od opcija ispod.';

  @override
  String get tutorBestMoveHints => 'Saveti za najbolji potez';

  @override
  String get tutorRevealRankedPlays => 'Prikaži rangirane poteze dok odlučuješ';

  @override
  String get tutorMoveExplanations => 'Objašnjenja poteza';

  @override
  String get tutorCompareEstimates => 'Uporedi procene i promene na tabli';

  @override
  String get tutorGameCommentary => 'Komentari o partiji';

  @override
  String get tutorPositionPrompts =>
      'Nagoveštaji o poziciji i povratne informacije posle svakog poteza';

  @override
  String get tutorCubeAdvice => 'Saveti za kocku';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Predlozi za dupliranje, prihvatanje ili predaju u skladu sa rezultatom meča';

  @override
  String get tutorTryMoveFirst => 'Prvo pokušaj potez';

  @override
  String get tutorStageBeforeHints =>
      'Pripremi potez pre prikazivanja saveta ili ocene';

  @override
  String get tutorStaticEstimateNote =>
      'Brza statička procena (0-ply, bez simulacija); beleške opisuju promene na tabli i moguće odgovore, a ne garantuju šta će se sledeće dogoditi.';

  @override
  String get tutorWhatToWatchNext => 'Na šta da obratiš pažnju dalje';

  @override
  String get tutorMoreBoardDetails => 'Više detalja o tabli';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Procene i kako funkcionišu';

  @override
  String get tutorEstimateLimitations =>
      'Dubina: statička neuronska procena posle svakog dozvoljenog poteza (0-ply), bez simulacija ili pretrage budućih odgovora. MWC uzima u obzir rezultat i ponderiše procene ishoda prema rezultatu meča i trenutnoj kocki; ne modeluje buduće odluke o kocki. Equity bez kocke predstavlja očekivane poene uz kocku vrednosti 1 kada rezultat nije dostupan. Zapažanja o tabli opisuju potez, a ne unutrašnje rezonovanje neuronskog mehanizma. Slične procene ne znače sigurnost; kalibrisan interval pouzdanosti nije dostupan.';

  @override
  String get tutorPointNumberNote =>
      'Brojevi polja u nastavnim beleškama računaju se od matične table igrača koji je na potezu.';

  @override
  String get tutorHittingRollNote =>
      'Broj bacanja koja omogućavaju udarac obuhvata svih 36 uređenih ishoda kockica i dozvoljene direktne ili indirektne udarce; to su prilike, a ne predviđanje protivnikovog izbora.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za ovaj potez nema procenjenih alternativa.';

  @override
  String get tutorForcedPassNoDecision =>
      'Prinudno preskakanje ne uključuje odluku o pomeranju figura.';

  @override
  String get settingsReset => 'Resetuj';

  @override
  String get settingsAppLanguage => 'Jezik aplikacije';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistemska';

  @override
  String get settingsThemeLight => 'Svetla';

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
      'Zavrti kockice pre svakog bacanja.';

  @override
  String get settingsDefaultMatchLength => 'Podrazumevana dužina meča';

  @override
  String get settingsDefaultDifficulty => 'Podrazumevana težina';

  @override
  String get settingsDifficultyEasy => 'Lako';

  @override
  String get settingsDifficultyMedium => 'Srednje';

  @override
  String get settingsDifficultyHard => 'Teško';

  @override
  String get settingsDifficultyExpert => 'Ekspertsko';

  @override
  String get settingsTutorModeDefault => 'Podrazumevani režim trenera';

  @override
  String get settingsTutorAuto => 'Automatski';

  @override
  String get settingsTutorOn => 'Uključeno';

  @override
  String get settingsTutorOff => 'Isključeno';

  @override
  String get settingsTutorModeHelp =>
      'Automatski uključuje trenera na svim nivoima težine protiv računara. Uključeno i Isključeno određuju početni izbor za lokalne mečeve. U partijama u blizini i na mreži nema pomoći; sačuvane partije mogu se naknadno pregledati. Podešavanja podučavanja ispod čuvaju se na ovom uređaju.';

  @override
  String get settingsTutorPreferences => 'Podešavanja trenera';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Sačuvane podrazumevane vrednosti za buduće mečeve';

  @override
  String get settingsTutorSaveError =>
      'Nije moguće sačuvati podešavanja trenera.';

  @override
  String get settingsGameplay => 'Igra';

  @override
  String get settingsMoveHighlights => 'Isticanje poteza';

  @override
  String get settingsMoveHighlightsHelp =>
      'Označi figure koje možeš da izabereš i osvetli odredišta.';

  @override
  String get settingsDragToMove => 'Prevlačenje za pomeranje';

  @override
  String get settingsDragToMoveHelp =>
      'Prevuci figuru do odredišta (dodiri takođe rade).';

  @override
  String get settingsCombinedMoves => 'Spojeni potezi';

  @override
  String get settingsCombinedMovesHelp =>
      'Jednim dodirom pomeri figuru prema oba bacanja.';

  @override
  String get settingsRotateBoard => 'Okreni tablu između poteza';

  @override
  String get settingsRotateBoardHelp =>
      'Za igru udvoje naizmenično okreni prikaz aktivnom igraču.';

  @override
  String get settingsPassDevice => 'Ekran za predaju uređaja';

  @override
  String get settingsPassDeviceHelp =>
      'Sakrij tablu između poteza u igri udvoje.';

  @override
  String get settingsShowScore => 'Prikaži rezultat';

  @override
  String get settingsShowScoreHelp =>
      'Prikaži trenutni rezultat meča u zaglavlju.';

  @override
  String get settingsBuddyMode => 'Buddy režim';

  @override
  String get settingsBuddyTerse => 'Kratko';

  @override
  String get settingsBuddyFriendly => 'Prijateljski';

  @override
  String get settingsBuddyTerseHelp =>
      'Kako Buddy izgovara potez: „13/8, 24/22“ – zapisom kakvim dva igrača za tablom stvarno govore.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Kako Buddy izgovara potez: „Pomeri jednu figuru sa 13 na 8, a drugu sa 24 na 22.“';

  @override
  String get settingsListenForDice => 'Slušaj bacanje kockica';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy ranije pogleda tablu kad čuje bacanje. Isključivanje ne menja ništa drugo.';

  @override
  String get settingsDiagnostics => 'Dijagnostika';

  @override
  String get settingsErrorLog => 'Zapis grešaka';

  @override
  String get settingsErrorLogHelp =>
      'Nedavne greške spremne za kopiranje u prijavu problema.';

  @override
  String get settingsReportBug => 'Prijavi grešku';

  @override
  String get settingsReportBugHelp =>
      'Otvori vođeni obrazac za prijavu na GitHubu.';

  @override
  String get settingsSuggestIdea => 'Predloži ideju';

  @override
  String get settingsSuggestIdeaHelp =>
      'Pomozi nam da unapredimo trenera i igru.';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String get settingsOpenSourceLicenses => 'Licence otvorenog koda';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partija je završena.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Pregledaj poteze i pronađi odluku za vežbanje.';

  @override
  String get tutorPhraseCubeOffered => 'Ponuđena je kocka za dupliranje.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Odluči da li ćeš prihvatiti dupliranje ili odustati pre nego što planiraš potez figurama.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Rezultat meča menja vrednost dodatnog uloga.';

  @override
  String get tutorPhraseResignationOffered => 'Ponuđeno je odustajanje.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Uporedi ponuđene poene sa pozicijom pre nego što prihvatiš ili nastaviš.';

  @override
  String get tutorPhraseNoLegalPlay => 'Nema legalnog poteza za ovo bacanje.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Prinudno preskakanje nije greška; sačekaj sledeće bacanje.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Postoji samo jedan legalan završni raspored.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Odigraj prinudni potez. Ovo bacanje ne nudi izbor koji bi se ocenjivao.';

  @override
  String get tutorPhrasePipCountsLevel => 'Broj pipova je izjednačen.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Imaš prednost od $count pipova.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Zaostaješ $count pipova.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count figura je na baru: prvo ih vrati u igru.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Prvo uđi u igru, pa potraži bezbedno mesto za sletanje.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Protivnik ima $count zatvorenih poena u kućici.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Trka u skidanju figura.';

  @override
  String get tutorPhrasePureRace => 'Čista trka.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Skidaj figure, ali ostavi koristan raspored za sledeće bacanje.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Vrati zadnje figure kući, bez gomilanja previše njih na jednom poenu.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Strane su se mimoišle; dalji udarci nisu mogući.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt je i dalje važan.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return '$count protivničkih figura je na baru.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Održi tablu zatvorenom dok vraćaš preostale figure kući.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Izgradi ili sačuvaj kućicu dok protivnik pokušava da uđe.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Držiš $count poena kućice; svaki zatvara jedan broj za ulazak.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt sa nizom od $count poena.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Uporedi produženje niza sa čuvanjem rezervnih figura za njegovo održavanje.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count rezervnih figura može da se pomeri, a da se poen odmah ne otvori.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt sa sidrom na poenima $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Uporedi vraćanje zadnjih figura kući sa sigurnošću koju pruža zadržavanje sidra.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Dok tražiš udarac ili jačaš tablu, imaj na umu sigurnost uporišta.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Sidro se ne može udariti, ali ove figure još imaju dug put do kuće.';

  @override
  String get tutorPhraseContactThreats =>
      'Kontakt: obe strane i dalje mogu da zaprete udarcem.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Traži korisne poene, pa uporedi rizik ostavljanja usamljenih figura izloženim.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Držiš $count poena kućice i ostavljaš $otherCount usamljenih figura.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Izaberi figuru kojom ćeš započeti potez.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Započni legalan potez da bi video komentare.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'figura',
      one: 'figuru',
    );
    return 'Udario si $count protivničku $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Uveo si $count figuru sa bara.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'figure',
      one: 'figuru',
    );
    return 'Skinuo si $count $_temp0 sa table.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zauzeo si poene $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Figura na tvom poenu $point za sada je usamljena i izložena.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Rezervnu figuru na poenu $point kasnije možeš pomeriti bez otvaranja poena.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Iskoristi preostale igrive kockice pre nego što oceniš ceo potez.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Svih 15 figura je skinuto: partija je dobijena.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Udarac donosi vreme dok protivnik pokušava da ponovo uđe.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Efikasno skidanje uklanja figure i ostavlja korisne brojeve za sledeće bacanje.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'Plan trke je da vratiš zadnje figure kući uz korisne poene za skidanje.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Skidanje donosi napredak, ali preostali kontakt i dalje nosi rizik od udarca.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Ulaskom se figura vraća u igru; sledeće potraži sigurno mesto za sletanje.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Novi poen u kućici uklanja jedan broj za ulazak posle budućeg udarca.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Duži niz zatvara više poena za sletanje; rezervne figure pomažu da ostane zatvoren.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Napuštanje sidra donosi napredak, ali se odričeš sigurnog uporišta.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Novo sidro pruža zadnjim figurama sigurno uporište.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Pokrivanje usamljene figure uklanja protivničku metu.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Ovde biraš između razvoja i sigurnosti: korisni graditelji mogu postati i mete.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Ceo potez je spreman; potvrdi da bi ga odigrao.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Ovo bacanje ne ostavlja izbor za pomeranje figura; ne ocenjuje se kao odluka.';

  @override
  String get tutorMoveTopVerdict => 'Najbolji izbor u ovoj poziciji.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Program u ovoj poziciji daje prednost drugom potezu.';

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
    return 'Posle ovog poteza: šansa za pobedu $winPercent%, pobedu uz gamon ili bolje $winGammonPercent%, poraz uz gamon ili gore $loseGammonPercent%. Procene su iz ugla igrača koji je na potezu.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Procenjena verovatnoća pobede u meču: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Svih 15 figura je skinuto sa table: partija je dobijena.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Iskoristi udarac da dobiješ na vremenu dok se protivnik vraća sa bara. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Zadrži zatvorene poene u svojoj kućici da bi protivniku otežao ulazak.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zatvori još poena u svojoj kućici kako bi se protivnik teže oporavio od budućih udaraca.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Skidaj figure efikasno: uklanjaj ih sa table i sačuvaj korisne brojeve za sledeće bacanje.';

  @override
  String get tutorMovePlanRaceHome =>
      'Vrati zaostale figure kući i rasporedi ih na korisne poene za skidanje.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Skidaj figure, ali pazi na zaostale protivničke figure: dok postoji kontakt, nezaštićena figura može postati meta.';

  @override
  String get tutorMovePlanReentry =>
      'Vrati se u igru, pa potraži siguran poen za figuru koja je upravo ušla.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Ojačaj svoju kućicu. Novi zatvoreni poen čini budući udarac jačim jer uklanja jedan broj za ulazak.';

  @override
  String get tutorMovePlanPrime =>
      'Očuvaj niz zatvorenih poena. Sačuvaj rezervne figure da te kasnije bacanje ne primora da ga otvoriš.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Napuštanjem sidra pomeraš zaostale figure, ali gubiš sigurno uporište. Pazi na njihovu izloženost dok se vraćaju kući.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Koristi novo sidro kao sigurno uporište dok popravljaš ostatak pozicije.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Grupiši figure. Pokrivanjem usamljene figure uklanjaš metu i čuvaš buduće mogućnosti za zauzimanje poena.';

  @override
  String get tutorMovePlanSafety =>
      'Uravnoteži razvoj i sigurnost: približi graditelje korisnim poenima i proveri koje usamljene figure mogu biti udarene.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nema legalnog poteza figurama: moraš da preskočiš potez.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'figura',
      one: 'figuru',
    );
    return 'Udara $count protivničku $_temp0; protivnik mora da uđe sa bara pre nego što pomeri ostale figure.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Uvodi $count figure sa bara.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'figure',
      one: 'figuru',
    );
    return 'Skida $count $_temp0 sa table.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zauzima poene $points. Dve ili više figura drže siguran poen i blokiraju protivniku sletanje na njega.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Oslobađa zauzete $pointLabel $points. Ti poeni više ne blokiraju protivnika.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Ne ostavlja usamljene izložene figure (ranije $previousCount). Nema pojedinačnih figura koje protivnik može da udari.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'figura',
      one: 'figuru',
    );
    return 'Ostavlja $count usamljenih izloženih $_temp0 (ranije $previousCount). Proveri može li protivnik da ih dosegne pre nego što izabereš sigurnost umesto druge koristi.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Najduži niz zauzetih poena: $count (ranije $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Prime od šest poena ne može se preći dok je zatvoren.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Drži graditelje u blizini ako želiš da produžiš ili sačuvaš ovaj niz.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Iznad dve figure koje drže zauzete poene ima $count rezervnih figura. Pomeranje rezervne može sačuvati poen; pomeranje jedne od poslednje dve ga otvara.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Sidra u protivničkoj kućici: $points (ranije $previousPoints). Sidro štiti ove figure od udaraca; napuštanjem menjaš sigurno uporište za napredak u trci.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Čista trka: strane su se mimoišle i nijedna nema figure na baru. Udaranje više nije moguće; važno je efikasno skidanje figura.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Nijedno legalno sledeće bacanje ne omogućava protivniku da udari figuru u ovoj poziciji. Kontakt i dalje postoji, pa kasniji potezi mogu otvoriti nove šanse.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Protivnik može da udari u $count od $total bacanja. Na primer, $dieOne–$dieTwo omogućava legalan udar na tvoju figuru na poenu $point. To što udar postoji ne znači da će ga protivnik izabrati.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'U tvojoj kućici je zatvoreno $closedPoints poena. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Protivnik ne može da uđe dok se neki poen ne otvori.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Bacanje koje odgovara otvorenom ulaznom poenu može vratiti figuru sa bara.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Procenjena šansa za pobedu najboljim potezom je $delta procentnih poena $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'veća';

  @override
  String get tutorMoveComparisonLower => 'manja';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Ipak može biti bolje rangiran jer se vrednost gamona i bek-gamona razlikuje prema trenutnom $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'rezultatu';

  @override
  String get tutorMoveComparisonMatchScore => 'rezultatu meča';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Najbolji potez ostavlja $bestCount protivničkih figura na baru umesto $playedCount. Figura na baru mora da uđe pre nego što protivnik pomeri ostale.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Najbolji potez drži zatvorenim $bestCount poena u kućici umesto $playedCount, odnosno $entryDifference ulaznih poena posle udarca.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'zatvaranjem više poena';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'ostavljanjem više otvorenih poena';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Najbolji potez dopušta protivnički udar u $bestCount od 36 bacanja umesto $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'To smanjuje neposredan rizik da budeš vraćen na bar.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Uporedi tu dodatnu izloženost sa onim što potez dobija na drugoj strani.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Najduži niz zatvorenih poena kod najboljeg poteza ima $bestCount poena, a ne $playedCount; uporedi blokadu sa figurama kojima možeš da je održiš.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Najbolji potez čuva $bestPoints sidara umesto $playedPoints. Sidro čuva siguran poen; napuštanjem se figure približavaju kući.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Najbolji potez skida $bestCount figura umesto $playedCount. Svaka skinuta figura je jedna manje za kasnije uklanjanje.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Oba poteza ostavljaju isti neposredni rizik od udarca, poene kućice, sidra i broj skinutih figura. Uporedi mesta sletanja: sledeće bacanje može drugačije da iskoristi te figure.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Najbolji potez šalje više protivničkih figura na bar i odlaže njihove ostale poteze.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Najbolji potez zatvara više poena kućice i otežava ulazak posle udarca.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Najbolji potez dopušta manje neposrednih prilika za udar i smanjuje rizik od uzvratnog udarca.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Najbolji potez čuva duži niz zatvorenih poena.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Najbolji potez čuva više sigurnih sidara u protivničkoj kućici.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Najbolji potez skida više figura, pa ih kasnije ostaje manje za skidanje.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ovaj potez ostavlja $playedCount usamljenih figura; najbolji potez ostavlja $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Najbolji potez čuva sigurno sidro na poenu $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Najbolji potez zatvara više ulaznih poena za slučaj da ti protivnik udari figuru.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Neposredni rizici su slični; uporedi koji će poeni za sletanje ostati korisni pri sledećem bacanju.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value ekvitija';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value procentnih poena šanse za pobedu u meču';
  }

  @override
  String get tutorMovePointSingular => 'poen';

  @override
  String get tutorMovePointPlural => 'poeni';

  @override
  String get tutorMoveNoPoints => 'nema';

  @override
  String get gameTutorCommentaryOff => 'Komentari partije su isključeni.';

  @override
  String get gameTutorToolsAvailable =>
      'Otvori trenera da pristupiš uključenim alatima.';

  @override
  String get gameTutorNextRoll => 'Sada baci kockice.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Za ovaj zabeleženi potez nije dostupno ocenjeno objašnjenje.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiza nije dostupna';

  @override
  String get gameTutorReviewing => 'Analiza je u toku…';

  @override
  String get gameTutorTryYourPlayFirst => 'Prvo pokušaj sam da odigraš.';

  @override
  String get gameTutorKeepBuilding => 'Nastavi da sastavljaš svoj potez.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Završi ceo legalan potez pre nego što otkriješ savete ili nagoveštaje.';

  @override
  String get gameTutorReadyToConfirm => 'Spremno za potvrdu';

  @override
  String get gameTutorPlayTakingShape => 'Tvoj potez dobija oblik.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potvrdi potez ili ga poništi i razmisli ponovo.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Iskoristi preostale kockice ili poništi potez.';

  @override
  String get gameTutorComputerConsidering => 'Računar razmatra svoj potez.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Završen potez računara biće analiziran ovde.';

  @override
  String get gameTutorYourPlay => 'Tvoj potez';

  @override
  String get gameTutorComputer => 'Računar';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Tvoj potez: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'prinudan potez';

  @override
  String get gameTutorTopChoice => 'najbolji izbor';

  @override
  String get gameTutorSoundPlay => 'dobar potez';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Možda bi drugi potez bolje odgovarao.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Drugi potez bolje odgovara ovoj poziciji.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Bio je dostupan znatno jači potez.';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Prema proceni, $side ima prednost.';
  }

  @override
  String get gameTutorPositionEven => 'Pozicija je približno izjednačena.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Odigrano: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Najbolje: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Prikaži rangirane poteze';

  @override
  String get tutorReviewRecordedMove =>
      'Dodirni završen potez u zapisniku da bi ovde pregledao odluku.';

  @override
  String get tutorTopPlays => 'Najbolji potezi';

  @override
  String get tutorNoHintsAvailable => 'Nema dostupnih nagoveštaja.';

  @override
  String get tutorPreviewThenConfirm =>
      'Dodirni potez da ga vidiš na tabli, pa potvrdi.';

  @override
  String get tutorTopChoiceForPosition => 'Najbolji izbor za ovu poziciju';

  @override
  String get tutorAlternativePlay => 'Alternativni potez';

  @override
  String get tutorEngineEstimates => 'Procene programa';

  @override
  String get tutorEstimateScope =>
      'Procena na 0 polupoteza – trenutni rezultat i ulog – bez budućih dupliranja';

  @override
  String get tutorEquity => 'Ekvitija';

  @override
  String get tutorMwcPercent => 'Verovatnoća pobede u meču, %';

  @override
  String get tutorNearTiesNote =>
      'Dublja analiza može promeniti redosled skoro izjednačenih poteza.';

  @override
  String get tutorWhyThisPlay => 'Zašto ovaj potez?';

  @override
  String get tutorCompareAlternative => 'Uporedi ovu alternativu';

  @override
  String get gameTutorCubeTake => 'Savet trenera: prihvati';

  @override
  String get gameTutorCubePass => 'Savet trenera: odbij';

  @override
  String get practiceScreenTitle => 'Vežbajte odluku';

  @override
  String get practiceUnavailable => 'Ova pozicija za vežbu više nije dostupna.';

  @override
  String get practiceSubmitError =>
      'Potez nije mogao da se proceni ili sačuva. Vaš napredak nije promenjen. Pokušajte ponovo.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return '$side je na potezu · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Istorijski rezultat nije dostupan; potez se ocenjuje bez kocke, prema equity vrednosti.';

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
  String get practiceCrawfordGame => ' · Krofordova partija';

  @override
  String get practiceNoDoublingCube => 'Bez kocke za dupliranje.';

  @override
  String practiceCubeValue(int value) {
    return 'Vrednost kocke $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Istorijska pravila za kocku nisu poznata.';

  @override
  String get practiceAfterBestPosition => 'Pozicija posle najboljeg poteza';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozicija posle vašeg odgovora';

  @override
  String get practiceFindYourPlayPrompt =>
      'Odigrate potez na tabli, pa proverite odgovor. Nema nagoveštaja.';

  @override
  String get practiceUndo => 'Poništi';

  @override
  String get practiceCheckAnswer => 'Proveri odgovor';

  @override
  String get practiceRevealNoCredit => 'Otkrij odgovor (bez poena)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odgovor je otkriven — nema poena za prisećanje.';

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
    return 'Potez iz prvobitne partije: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Vaš odgovor: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Vaš odgovor';

  @override
  String get practiceBestPlayChip => 'Najbolji potez';

  @override
  String practiceNextReview(Object date) {
    return 'Sledeća vežba: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Dobri i najbolji odgovori računaju se kao uspešno prisećanje. Rano ponavljanje ne produžava interval.';

  @override
  String get practiceBackToLearning => 'Nazad na učenje';

  @override
  String get practiceMarkBest => 'Najbolji';

  @override
  String get practiceMarkGood => 'Dobar';

  @override
  String get practiceMarkDubious => 'Sumnjiv';

  @override
  String get practiceMarkError => 'Greška';

  @override
  String get practiceMarkBlunder => 'Veliki previd';

  @override
  String get practiceMarkForced => 'Prinudan';

  @override
  String get newMatchYourSide => 'Vaša strana';

  @override
  String get newMatchTutorMode => 'Režim tutora';

  @override
  String get newMatchTutorDescription =>
      'Učite uz nagoveštaje, objašnjenja i komentare o partiji';

  @override
  String get newMatchTutoringOptions => 'Opcije podučavanja';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Za ovu partiju; mogu se menjati tokom igre';

  @override
  String get setupMatchLength => 'Dužina meča';

  @override
  String get setupDifficulty => 'Težina';

  @override
  String get setupDifficultyEasy => 'Lako';

  @override
  String get setupDifficultyMedium => 'Srednje';

  @override
  String get setupDifficultyHard => 'Teško';

  @override
  String get setupDifficultyExpert => 'Ekspert';

  @override
  String get setupPlayWithoutCube => 'Igraj bez kocke';

  @override
  String get setupNoCubeThisMatch => 'Bez kocke za dupliranje u ovoj partiji';

  @override
  String get analysisTitle => 'Analiza';

  @override
  String get gameMatchSummary => 'Pregled meča';

  @override
  String get gameAnalyzeGame => 'Analiziraj partiju';

  @override
  String get analysisMetricsTooltip => 'Šta znače ovi brojevi?';

  @override
  String analysisError(Object error) {
    return 'Analiza partije nije uspela: $error';
  }

  @override
  String get analysisNoPositions => 'Ova partija nema pozicije za prikaz.';

  @override
  String get analysisInProgress => 'Analiza u toku…';

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
  String get analysisNext => 'Sledeće';

  @override
  String get analysisPositionBeforeCube => 'Pozicija pre odluke o kocki';

  @override
  String get analysisPositionAtPoint => 'Pozicija u ovom trenutku partije';

  @override
  String get analysisShowingBestBefore =>
      'Prikazuje se najbolji potez u poziciji pre poteza';

  @override
  String get analysisShowingBefore => 'Prikazuje se pozicija pre poteza';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · isključeno iz proseka';

  @override
  String get analysisNoPlay => '(nema poteza)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Najbolje: $move';
  }

  @override
  String get analysisExplain => 'Objasni';

  @override
  String get analysisSaveForPractice => 'Sačuvaj za vežbu';

  @override
  String get analysisSaveError =>
      'Ovu odluku nije moguće sačuvati. Pokušajte ponovo.';

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
    return 'Odigrano: $action ($percent% šanse za pobedu u meču).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Najbolje: $action ($percent% šanse za pobedu u meču).';
  }

  @override
  String get analysisCubeEstimate =>
      '0-ply procena iz perspektive igrača koji je na potezu. Pretpostavlja optimalan odgovor — prihvatanje ili predaju. Za granu prihvaćenog dupliranja koristi približnu vrednost od 0,7 životnog veka kocke, a ne potpunu pretragu budućih ponovnih dupliranja. Dublja analiza može promeniti odgovor.';

  @override
  String get analysisClose => 'Zatvori';

  @override
  String get analysisMoves => 'Potezi';

  @override
  String get analysisForced => 'Prinudno';

  @override
  String get analysisMarkBest => 'Najbolje';

  @override
  String get analysisMarkGood => 'Dobro';

  @override
  String get analysisMarkDubious => 'Sumnjivo';

  @override
  String get analysisMarkError => 'Greška';

  @override
  String get analysisMarkBlunder => 'Velika greška';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Prosečan gubitak $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count odluka o figurama';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Velike greške $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Gubitak na kocki $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side baca bez dupliranja';
  }

  @override
  String get metricExplainerTitle => 'Razumevanje metrika';

  @override
  String get metricExplainerTooltip => 'Šta znače ovi brojevi?';

  @override
  String get metricExplainerMwcTitle => 'Šansa za pobedu u meču (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Kada je rezultat poznat, potezi figurama se rangiraju prema procenjenoj šansi za pobedu u meču. Gubitak je izražen u procentnim poenima (pp): 1 pp znači pad sa 51% na 50%. Uračunati su ulog kocke i ishodi gamona/bekgemona. Prinudni pasovi i bacanja sa jednom legalnom pozicijom izostavljaju se iz proseka.';

  @override
  String get metricExplainerSearchTitle => 'Pretraga i neizvesnost';

  @override
  String get metricExplainerSearchBody =>
      'Rangiranje poteza figurama su statičke 0-ply procene nakon poteza, a ne simulacije. Vrednosti meča koriste tabelu meč-ekvitija bez budućih poteza kockom. Analiza kocke koristi delimičnu aproksimaciju 0,7 životnog veka kocke kod prihvaćenih dupliranja; to nije potpuna cubeful pretraga. Za rezultat više od 25 koristi se granica 25-away iz tabele. Dublja analiza može promeniti bliske rezultate; kalibrisan interval pouzdanosti se ne računa.';

  @override
  String get metricExplainerEquityTitle => 'Ekvitij';

  @override
  String get metricExplainerEquityBody =>
      'Ako rezultat nije dostupan, ekvitij bez kocke pokazuje prosečnu vrednost pozicije u poenima kada je kocka na 1. +1,0 znači očekivan dobitak jednog poena, a −0,5 gubitak pola poena.';

  @override
  String get metricExplainerEquityLossTitle => 'Gubitak ekvitija (npr. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Poredi se odigrani potez sa najboljim potezom motora. Gubitak ekvitija pokazuje koliko je očekivane vrednosti potez prepustio. −0,016 znači da je bio samo 0,016 poena slabiji — sitan propust. 0,000 znači da si pronašao najbolji potez.';

  @override
  String get metricExplainerErrorRateTitle => 'Stopa grešaka';

  @override
  String get metricExplainerErrorRateBody =>
      'Prosečan gubitak računa prosek ocenjenih odluka figurama u prikazanoj jedinici. Odluke kockom imaju poseban prosek. Manja vrednost znači da su potezi bliži najboljim procenama motora; to nije kalibrisan rejting igrača.';

  @override
  String get metricExplainerMoveMarksTitle => 'Ocene poteza';

  @override
  String get metricExplainerMoveMarksBody =>
      'MWC granice za učenje: Najbolje < 0,05 pp, Dobro < 0,5 pp, Sumnjivo < 1,5 pp, Greška < 3 pp, Velika greška ≥ 3 pp. To su granice za učenje, a ne kalibrisana pouzdanost ili turnirski rejting.\n\nGranice ekvitija bez kocke za učenje:';

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
  String get metricExplainerGotIt => 'Razumem';

  @override
  String get historyTitle => 'Istorija mečeva';

  @override
  String historyLoadFailed(Object error) {
    return 'Istorija nije mogla da se učita:\n$error';
  }

  @override
  String get historyEmpty => 'Još nema odigranih mečeva.';

  @override
  String get historyDeleteConfirmTitle => 'Obrisati ovaj meč?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMeč i sve zabeležene partije u njemu biće trajno uklonjeni. Ovo ne može da se opozove.';
  }

  @override
  String get actionCancel => 'Otkaži';

  @override
  String get actionDelete => 'Obriši';

  @override
  String get historyDeleteFailed => 'Meč nije mogao da se obriše.';

  @override
  String get historyComplete => 'Završen';

  @override
  String historyWinner(Object side) {
    return 'Pobedio je $side';
  }

  @override
  String get historyUnfinished => 'Nedovršen';

  @override
  String get historyMatchTitle => 'Meč';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Meč nije mogao da se učita:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partije nisu mogle da se učitaju:\n$error';
  }

  @override
  String get historyNoGames => 'Još nema zabeleženih partija.';

  @override
  String historyGameTitle(int number) {
    return 'Partija $number';
  }

  @override
  String get historyCrawford => 'Krofordovo pravilo';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Beli $whiteScore — $blackScore Crni  (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'protiv računara';

  @override
  String get historyModeTwoPlayers => 'Dva igrača';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Igraj u blizini';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'U toku';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side pobeđuje $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'jednostruki';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'bekgemmon';

  @override
  String get learningRefreshTooltip => 'Osveži napredak u učenju';

  @override
  String get learningOptions => 'Opcije učenja';

  @override
  String get learningResetMenu => 'Resetuj napredak vežbanja';

  @override
  String get learningLoadFailed => 'Nije moguće učitati napredak u učenju.';

  @override
  String get actionRetry => 'Pokušaj ponovo';

  @override
  String get learningHeading => 'Uči iz svojih odluka';

  @override
  String get learningIntro =>
      'Napredak se čuva na ovom uređaju. Pregledaj ponavljajuće teme, pa ponovo pokušaj sačuvane pozicije bez prikaza odgovora. Bele i Crne možeš pregledati odvojeno.';

  @override
  String get learningBothSides => 'Obe strane';

  @override
  String get learningHumansOnly => 'Samo ljudske odluke';

  @override
  String get learningHumanOnlyHelp =>
      'Isključi da uključiš odluke računara i udaljenih igrača';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions odluka · za poboljšanje: $mistakes · velikih grešaka: $blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Prosečan gubitak ($decisions odluka): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Prinudni potezi su izuzeti. Ovo su procene motora, a ne turnirski rejting.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Sačuvane partije ($count) zahtevaju analizu ili osveženu analizu.',
      one: 'Sačuvana partija zahteva analizu ili osveženu analizu.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analiziraj sačuvane partije';

  @override
  String get learningEmptyProfile =>
      'Odigraj i završi meč da napraviš profil učenja. Pojedinačne odluke možeš sačuvati i iz pregleda partije.';

  @override
  String get learningOpenHistory => 'Otvori istoriju mečeva';

  @override
  String get learningRecurringThemes => 'Ponavljajuće teme';

  @override
  String get learningNoThemes =>
      'U ovom izboru još nema ponavljajućih tema grešaka.';

  @override
  String learningThemeDecisions(int count) {
    return '$count odluka za ponavljanje. Jedna pozicija može imati više tema.';
  }

  @override
  String get learningSaveMistakes => 'Sačuvaj ove greške za vežbu';

  @override
  String learningSavedMistakes(int count) {
    return '$count odluka je na listi za vežbu. Postojeća čuvanja se ne dupliraju.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Neke odluke nisu mogle da se sačuvaju. Završena čuvanja su zadržana; pokušaj ponovo.';

  @override
  String get learningSpacedPractice => 'Razmaknuto vežbanje';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'Za ponavljanje: $due · sačuvano: $saved · pokušaja: $attempts · uspešnih prisećanja: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Uspešni pregledi ponovo dolaze posle 1, 3, 7, 14 i 30 dana. Greške ili otkriveni odgovori vraćaju se posle 10 minuta. Rano ponavljanje ne produžava interval.';

  @override
  String get learningAnswerContext =>
      'Rezultati vežbanja odražavaju tvoje odgovore ovde, čak i kada je početna pozicija pripadala protivniku.';

  @override
  String get learningNoSavedPositions =>
      'Sačuvaj odluku iz pregleda ili koristi dugme za greške iznad.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Odluka igrača $side · partija $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Pregled $date';
  }

  @override
  String get learningReadyToReview => 'Spremno za pregled';

  @override
  String learningSuccessStreak(int count) {
    return '$count uspešnih pregleda zaredom';
  }

  @override
  String get learningRemoveTooltip => 'Ukloni sačuvanu odluku';

  @override
  String get learningRecentPractice => 'Nedavno vežbanje';

  @override
  String get learningAnswerRevealed => 'Odgovor je otkriven';

  @override
  String get learningSuccessfulRecall => 'Uspešno prisećanje';

  @override
  String get learningTryAgain => 'Pokušaj ponovo';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · sačuvana pozicija $positionId';
  }

  @override
  String get learningRemoveTitle => 'Ukloniti ovu vežbu?';

  @override
  String get learningRemoveBody =>
      'Ovim se uklanjaju njeni pokušaji vežbanja. Originalna partija ostaje u istoriji.';

  @override
  String get actionRemove => 'Ukloni';

  @override
  String get learningRemoveFailed => 'Vežba nije mogla da se ukloni.';

  @override
  String get learningResetTitle => 'Resetovati napredak vežbanja?';

  @override
  String get learningResetBody =>
      'Svi pokušaji i intervali pregleda biće uklonjeni. Sačuvane vežbe i istorija mečeva ostaju; sve vežbe dospevaju odmah.';

  @override
  String get learningResetAction => 'Resetuj napredak';

  @override
  String get learningResetFailed =>
      'Napredak vežbanja nije mogao da se resetuje.';

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
    return 'Analizirano $completed partija; $failed nije moglo da se analizira. Pokušaj ponovo kada motor bude spreman.';
  }

  @override
  String get learningThemeHitting => 'Udarci i tempo';

  @override
  String get learningThemeSafety => 'Izložene figure i sigurnost';

  @override
  String get learningThemePointMaking => 'Pravljenje poena';

  @override
  String get learningThemePrime => 'Blokade i prepreke';

  @override
  String get learningThemeAnchor => 'Uporišta i bekstvo';

  @override
  String get learningThemeRace => 'Efikasnost trke';

  @override
  String get learningThemeBearOff => 'Skidanje figura';

  @override
  String get learningThemeBarEntry => 'Ulazak sa prečke';

  @override
  String get learningThemeCube => 'Odluke o kocki';

  @override
  String get analysisCubeNoDouble => 'Ne dupliraj';

  @override
  String get analysisCubeDouble => 'Dupliraj';

  @override
  String get analysisCubeTake => 'Prihvati';

  @override
  String get analysisCubePass => 'Predaj';

  @override
  String get learningAnalysisStarting => 'Analiza sačuvanih partija…';

  @override
  String get tutorCubelessEstimateScope =>
      '0-ply procena bez kocke · rezultat nije dostupan';

  @override
  String get tutorLossPp => 'Gubitak pp';

  @override
  String get tutorLoss => 'Gubitak';

  @override
  String get scoreSheetNoMoves => 'Nema poteza';

  @override
  String get tutorOptions => 'Opcije tutora';

  @override
  String get tutorCollapseTooltip => 'Skupi tutora';

  @override
  String get tutorExpandTooltip => 'Proširi tutora';

  @override
  String get onlineTitle => 'Online igra';

  @override
  String get onlineUnassistedNote => 'Tutor nije dostupan u online igri.';

  @override
  String get onlineNotConfiguredTitle => 'Online igra nije podešena';

  @override
  String get onlineNotConfiguredBody =>
      'Online igra nije dostupna u ovom izdanju.';

  @override
  String get onlineErrorNoMatch => 'Meč nije pronađen.';

  @override
  String get onlineErrorSeatTaken => 'Mesto je već zauzeto.';

  @override
  String get onlineErrorPermission => 'Nemaš dozvolu za ovu radnju.';

  @override
  String get onlineErrorGeneric => 'Povezivanje sa online igrom nije uspelo.';

  @override
  String get onlineMatchFinished => 'Meč je završen.';

  @override
  String get onlineEnterCodeError => 'Unesi važeći kod.';

  @override
  String get onlineOpponentShort => 'Protivnik';

  @override
  String get onlineMatchInProgress => 'Meč je u toku';

  @override
  String onlineResumePrompt(Object code) {
    return 'Igrao/la si meč $code. Nastaviti?';
  }

  @override
  String get onlineRejoin => 'Ponovo se pridruži';

  @override
  String get onlineForgetMatch => 'Zaboravi meč';

  @override
  String get onlineCreateTitle => 'Napravi online meč';

  @override
  String get onlineMatchLength => 'Dužina meča';

  @override
  String get onlineNoCubeTitle => 'Igra bez kocke';

  @override
  String get onlineNoCubeSubtitle => 'Igraj bez kocke za dupliranje.';

  @override
  String get onlineCreate => 'Napravi';

  @override
  String get onlineWaitingOpponent => 'Čeka se protivnik';

  @override
  String get onlineShareCode => 'Podeli kod';

  @override
  String get onlineCopyCode => 'Kopiraj kod';

  @override
  String get onlineCodeCopied => 'Kod je kopiran';

  @override
  String get onlineJoinTitle => 'Pridruži se meču';

  @override
  String get onlineRoomCode => 'Kod sobe';

  @override
  String get onlineJoin => 'Pridruži se';

  @override
  String get lanTitle => 'Igraj u blizini';

  @override
  String get lanTabHost => 'Domaćin';

  @override
  String get lanTabJoin => 'Pridruži se';

  @override
  String get lanUnassistedNote =>
      'U igrama u blizini nema tutora. Posle meča pregledaj poteze i vežbaj greške.';

  @override
  String get lanGameStartFailed =>
      'Partija nije mogla da počne. Drugi uređaj može ponovo da pokuša da se pridruži.';

  @override
  String get lanHostPortInUse =>
      'Hosting nije mogao da se pokrene — port se već koristi. Zatvori druge kopije Backgammon Buddy i pokušaj ponovo.';

  @override
  String get lanHostStartFailed =>
      'Hosting nije mogao da se pokrene. Proveri Wi-Fi vezu i pokušaj ponovo.';

  @override
  String get lanHostTitle => 'Pokreni partiju kao domaćin';

  @override
  String get lanStartHosting => 'Počni hosting';

  @override
  String get lanHostHelp =>
      'Oba uređaja moraju biti na istoj Wi-Fi mreži. Ovaj uređaj baca kockice i vodi rezultat.';

  @override
  String get lanWaitingPlayerTitle => 'Čeka se igrač';

  @override
  String get lanRoomCodeInfo =>
      'Reci ovaj kod drugom igraču. On mu omogućava pristup — aplikacija ga ne šalje preko mreže.';

  @override
  String get lanWaitingPlayer => 'Čeka se igrač…';

  @override
  String get lanStopHosting => 'Zaustavi hosting';

  @override
  String lanFindNearbyPort(int port) {
    return 'Zamoli drugi uređaj da potraži igre u blizini. Sluša se na portu $port.';
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
      'Drugi uređaj prikazuje QR kod na ekranu domaćina. Skeniranje popunjava adresu i kod sobe.';

  @override
  String get lanScanQr => 'Skeniraj QR kod';

  @override
  String get lanScannerUnavailable =>
      'Kamera ili dozvola za nju nisu dostupni. Unesi adresu i kod sobe ispod.';

  @override
  String get lanInvalidQr =>
      'Ovaj QR kod nije Backgammon Buddy igra. Skeniraj kod na ekranu domaćina drugog uređaja.';

  @override
  String get lanScannerFailed =>
      'Skener nije mogao da se otvori. Unesi adresu i kod ispod.';

  @override
  String get lanNearbyGames => 'Igre u blizini';

  @override
  String get lanSearching => 'Traženje igara u blizini…';

  @override
  String get lanNoGamesFound =>
      'Igre još nisu pronađene. Proveri da li drugi uređaj hostuje i da li su oba na istom Wi-Fi-ju, ili unesi njegovu adresu.';

  @override
  String get lanStillSearching => 'Još se traži…';

  @override
  String get lanEnterAddress => 'Unesi adresu';

  @override
  String get lanEnterAddressHelp =>
      'Automatsko otkrivanje ne radi na svakoj mreži (na iOS-u može biti blokirano). Ekran domaćina prikazuje šta treba uneti.';

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
      'Unesi četvorocifreni kod sa drugog uređaja.';

  @override
  String get lanJoinWrongCode =>
      'Pogrešan kod sobe. Proveri četiri cifre na drugom uređaju.';

  @override
  String get lanJoinVersionMismatch =>
      'Drugi uređaj koristi drugu verziju Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Uređaj nije odgovorio kao Backgammon Buddy. Proveri adresu i port.';

  @override
  String get lanJoinFailed =>
      'Pridruživanje nije uspelo. Proveri adresu i kod sobe, pa pokušaj ponovo.';

  @override
  String lanJoinTarget(Object name) {
    return 'Pridruži se: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Unesi četvorocifreni kod prikazan na drugom uređaju.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Pridruživanje igri $name';
  }

  @override
  String get lanConnect => 'Poveži se';

  @override
  String get lanBack => 'Nazad';

  @override
  String get lanTryAgain => 'Pokušaj ponovo';

  @override
  String get lanStatusBusy => 'Soba je zauzeta — čeka se…';

  @override
  String get lanStatusReconnecting => 'Veza je prekinuta — pokušava se ponovo…';

  @override
  String get lanStatusConnected => 'Povezano — meč počinje…';

  @override
  String get lanStatusFailed => 'Pridruživanje nije uspelo.';

  @override
  String get lanStatusConnecting => 'Povezivanje…';

  @override
  String get diagnosticsCopySuccess =>
      'Dijagnostika je kopirana u privremenu memoriju';

  @override
  String get diagnosticsReviewTitle => 'Pregledajte dijagnostički izveštaj';

  @override
  String get diagnosticsPrivacyNotice =>
      'Otvaranjem nacrta šalju se GitHub-u detalji ispod, uključujući verziju aplikacije, platformu i podatke o greškama. Javni problem neće biti objavljen dok ga tamo ne pošaljete. Ako detalji sadrže privatne podatke, otkažite i sami pripremite prijavu kopiranjem.';

  @override
  String get diagnosticsCancel => 'Otkaži';

  @override
  String get diagnosticsOpenGitHub => 'Otvori GitHub';

  @override
  String get diagnosticsTitle => 'Dijagnostika';

  @override
  String get diagnosticsReportTooltip => 'Prijavi problem na GitHub-u';

  @override
  String get diagnosticsCopyTooltip => 'Kopiraj u privremenu memoriju';

  @override
  String get diagnosticsClearTooltip => 'Obriši dnevnik';

  @override
  String get diagnosticsEmpty =>
      'Nema zabeleženih grešaka.\n\nAko nešto pođe po zlu, biće zabeleženo ovde — vratite se i kopirajte detalje u prijavu greške.';

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
  String get gameHudYou => 'Vi';

  @override
  String get gameHudAi => 'Računar';

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
  String get gameHudCrawford => 'Krofordova';

  @override
  String get gameHudDouble => 'Dupliraj';

  @override
  String get gameHudMoreActions => 'Još radnji';

  @override
  String get gameHudSurrender => 'Predaj se…';

  @override
  String get gameHudThinking => 'Razmišlja';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Dupliranje je moguće samo pre bacanja, kada ste vi na potezu.';

  @override
  String get gameHudNoDoubleCrawford =>
      'U Krofordovoj partiji nema dupliranja — ova partija odlučuje meč.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Samo vlasnik kocke može da duplira, a trenutno je poseduje druga strana.';

  @override
  String get gameHudDoubleUnavailable => 'Dupliranje trenutno nije dostupno.';

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
    return '$winner je pobedio u ovoj partiji ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner je pobedio u ovoj partiji ($points, gamon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner je pobedio u ovoj partiji ($points, bekgejmon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner je pobedio u ovoj partiji ($points) — $loser je odbio dupliranje.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner je pobedio u ovoj partiji ($points) — $loser je predao.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Predajte uređaj';

  @override
  String gameDialogPlayersTurn(Object name) {
    return '$name je na potezu';
  }

  @override
  String get gameDialogTapToContinue => 'Dodirnite za nastavak';

  @override
  String get gameDialogCubeOfferedTitle => 'Ponuđeno dupliranje';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler nudi dupliranje na $value. Prihvatiti ili odbiti?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Odbij';

  @override
  String get gameDialogTake => 'Prihvati';

  @override
  String get gameDialogResignationTitle => 'Ponuđena predaja';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner nudi predaju za $value. Prihvatiti ili odbiti?';
  }

  @override
  String get gameDialogResignSingle => 'obična partija';

  @override
  String get gameDialogResignGammon => 'gamon';

  @override
  String get gameDialogResignBackgammon => 'bekgejmon';

  @override
  String get gameDialogDecline => 'Odbij';

  @override
  String get gameDialogAccept => 'Prihvati';

  @override
  String gameResultGameNumber(int number) {
    return 'Partija $number';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Rezultat meča: $score';
  }

  @override
  String get gameResultRolls => 'Bacanja';

  @override
  String get gameResultDiceNote =>
      'Prosečni zbirovi bacanja često variraju oko 7. Ovaj mali uzorak ne može da utvrdi da li su kockice pristrasne.';

  @override
  String get gameResultRatingNotAvailable =>
      'Ocena poteza još nije dostupna. Pregledajte partiju za potpunu analizu.';

  @override
  String get gameResultRematch => 'Revanš';

  @override
  String get gameDialogGameOverTitle => 'Partija je završena';

  @override
  String get gameDialogNextGame => 'Sledeća partija';

  @override
  String get gameDialogMatchOverTitle => 'Meč je završen';

  @override
  String get gameDialogNobody => 'Niko';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner je pobedio u meču.';
  }

  @override
  String get gameDialogSavedToHistory => 'Sačuvano u istoriji';

  @override
  String get gameDialogDone => 'Gotovo';

  @override
  String get gameTapNoLegalMove =>
      'Dodirni svoju figuru da vidiš dozvoljene poteze.';

  @override
  String get gameTapNoLegalMoveUndo => 'Dodirni figuru, pa odredište.';

  @override
  String get gameDragHint => 'Prevuci figuru do odredišta.';

  @override
  String get commonGotIt => 'Razumem';

  @override
  String get gameHintStageBeforeHint => 'Pre saveta';

  @override
  String get surrenderTitle => 'Predati partiju?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player predaje trenutnu partiju.';
  }

  @override
  String get surrenderConcedes => 'Predaje trenutnu partiju.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Dostupno na početku poteza igrača $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Dostupno na početku tvog poteza';

  @override
  String get commonCancel => 'Otkaži';

  @override
  String get surrenderSingle => 'Običan poraz';

  @override
  String get surrenderGammon => 'Gamonski poraz';

  @override
  String get surrenderBackgammon => 'Bekgemonski poraz';

  @override
  String get surrenderChoosePlayer => 'Izaberi igrača';

  @override
  String get commonDone => 'Gotovo';

  @override
  String get cubeDouble => 'Dupliraj';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Sada je potez drugog igrača.';

  @override
  String get cubeBlockedCrawford =>
      'Kocka nije dostupna u Krofordovoj partiji.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Samo vlasnik kocke može da duplira; trenutno je poseduje druga strana.';

  @override
  String get cubeBlockedUnavailable => 'Dupliranje trenutno nije dostupno.';

  @override
  String get gameStatusRolling => 'Bacanje';

  @override
  String get gameStatusThinking => 'Računar razmišlja';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Potez igrača $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Dupliraj — protivnik treba da prihvati';

  @override
  String get cubeAdviceOpponentPass => 'Dupliraj — protivnik treba da preda';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Greška: $error';
  }

  @override
  String get privacyTitle => 'Privatnost i podaci';

  @override
  String get privacyAppTitle => 'Backgammon Buddy od Freevia';

  @override
  String get privacyIntro =>
      'Ova stranica opisuje kako trenutna aplikacija rukuje vašim podacima.';

  @override
  String get privacyLocalTitle => 'Igre i podučavanje na vašem uređaju';

  @override
  String get privacyLocalBody =>
      'Lokalni mečevi, podešavanja, analiza i napredak u vežbanju čuvaju se na ovom uređaju. Ovde rade mehanizam igre i objašnjenja trenera. Brisanje sačuvanog meča iz Arhive igara briše i sačuvane vežbe i pokušaje za taj meč. Pojedinačne vežbe možete obrisati ili resetovati napredak u odeljku Učenje i vežbanje; lokalne izveštaje o greškama obrišite u Podešavanja → Dijagnostika. Rezervne kopije uređaja mogu da obuhvate i istoriju mečeva. Podaci za onlajn prijavu čuvaju se u zaštićenom prostoru uređaja.';

  @override
  String get privacyOnlineTitle => 'Igra na mreži i u blizini';

  @override
  String get privacyOnlineBody =>
      'Onlajn igra šalje na Google Firebase anoniman identifikator igrača, podešavanja meča, poteze i zapise protokola za usaglašavanje bacanja kockica, kako bi oba igrača mogla da igraju isti meč. Brisanje istorije na ovom uređaju ne briše onlajn zapise. Hostovani mečevi ističu 30 dana nakon kreiranja; zakazano čišćenje uklanja njihove dnevnike iz oblaka. Zapisi mečeva čuvaju se u EU; Firebase Authentication obrađuje podatke za prijavu u Sjedinjenim Državama. Veze sa Google-om šifruju se tokom prenosa. Tokom igre u blizini, podaci o meču razmenjuju se sa drugim uređajem preko nešifrovane lokalne veze; koristite pouzdanu Wi-Fi mrežu.';

  @override
  String get privacyDiagnosticsTitle =>
      'Opciona dijagnostika korišćenja i padova';

  @override
  String get privacyDiagnosticsBody =>
      'Deljenje je isključeno dok ga ne uključite u podešavanjima. Ako ga uključite, Google Firebase prima događaje korišćenja, informacije o aplikaciji i uređaju, merenja performansi i izveštaje o padovima, kako bi pomogao u poboljšanju aplikacije. Deljenje možete isključiti u bilo kom trenutku i tako zaustaviti prikupljanje novih opcionih podataka. To ne briše već poslate podatke. Lokalna dijagnostika i onlajn mečevi ne zavise od ove opcije.';

  @override
  String get privacyCameraTitle => 'Kamera za obližnje QR kodove';

  @override
  String get privacyCameraBody =>
      'Opciona kamera skenira QR kodove za igru u blizini. Slike se obrađuju na uređaju i ne čuvaju se niti otpremaju. Pristup kameri možete odbiti i ručno uneti adresu uređaja domaćina. Ova verzija ne koristi mikrofon i ne podržava igru na fizičkoj tabli.';

  @override
  String get privacyFeedbackTitle =>
      'Povratne informacije koje odaberete da pošaljete';

  @override
  String get privacyFeedbackBody =>
      'Slanje povratnih informacija otvara nacrt prijave na GitHub-u koji možete da pregledate. Otvaranjem nacrta na GitHub se šalju verzija aplikacije i platforma; povratne informacije sa ekrana Dijagnostika mogu da sadrže i detalje greške. Prijava se ne objavljuje dok je ne pošaljete. Prijave mogu biti javne, zato pre slanja uklonite privatne podatke.';

  @override
  String get privacyContactTitle => 'Kontakt za privatnost';

  @override
  String get privacyReadPolicy => 'Pročitajte politiku privatnosti';

  @override
  String get privacyPolicyOpenFailed =>
      'Nije moguće otvoriti politiku privatnosti.';

  @override
  String get privacySupportTitle => 'Pomoć i podrška';

  @override
  String get privacySupportOpenFailed =>
      'Nije moguće otvoriti podršku. Kontakt support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Želite li da izbrišete onlajn identitet i podatke?';

  @override
  String get privacyDeleteConfirmBody =>
      'Pristup oba igrača mečevima u oblaku povezanim sa ovim onlajn identifikatorom odmah se prekida. Zahteva se brisanje identifikatora i zajedničkih evidencija onlajn mečeva u roku od 30 dana. Google-u može biti potrebno do 180 dana nakon brisanja naloga da ukloni podatke za autentifikaciju iz aktivnih i rezervnih sistema. Lokalna istorija mečeva i vežbe ostaju na ovom uređaju. Ranije poslati opcioni dijagnostički podaci obrađuju se zasebno; za pitanja o njima pišite na privacy@freevia.org. Ovaj zahtev se ne može opozvati.';

  @override
  String get privacyRequestDeletion => 'Zahtevaj brisanje';

  @override
  String get privacyDeleteSectionTitle => 'Brisanje onlajn podataka';

  @override
  String get privacyDeleteInstructions =>
      'Koristite podatke za prijavu sačuvane na ovom uređaju da potvrdite da onlajn identitet pripada vama. Sam identifikator igrača ili pozivni kod ne dokazuju vlasništvo. Za igranje samo na ovom uređaju nije potreban onlajn nalog.';

  @override
  String get privacySendingRequest => 'Slanje zahteva…';

  @override
  String get privacyDeleteAction => 'Izbrišite onlajn identitet i podatke';

  @override
  String get privacyDeleteRequested =>
      'Zahtev za brisanje je poslat. Ova onlajn identifikacija je odjavljena. Njeni podaci iz oblaka biće izbrisani u roku od 30 dana. Kada ponovo pokrenete onlajn igru, kreiraće se novi identifikator. Google-u može biti potrebno do 180 dana da ukloni podatke za autentifikaciju. Za pomoć pišite na privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Zahtev za brisanje je poslat. Podaci iz oblaka biće izbrisani u roku od 30 dana. Uređaj nije uspeo da ukloni sačuvane podatke za prijavu, ali je onlajn identifikator blokiran i više ne može da pristupa mečevima. Google-u može biti potrebno do 180 dana da ukloni podatke za autentifikaciju. Za pomoć pišite na privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Na ovom uređaju nije sačuvan upotrebljiv onlajn identifikator. Novi nalog nije napravljen. Ako ste ranije igrali onlajn, za pomoć pišite na privacy@freevia.org; hostovani mečevi ističu 30 dana nakon kreiranja.';

  @override
  String get privacyDeleteRequestFailed =>
      'Nije moguće potvrditi zahtev za brisanje. Proverite vezu i pokušajte ponovo ili pišite na privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Želite li da delite dijagnostiku korišćenja i padova?';

  @override
  String get privacyConsentBody =>
      'Ova opcija šalje događaje korišćenja, informacije o aplikaciji i uređaju, izveštaje o padovima i merenja performansi na Google Firebase. Deljenje je opciono. Igre i podučavanje rade i kada je deljenje isključeno; možete ga isključiti u podešavanjima.';

  @override
  String get privacyKeepOff => 'Neka ostane isključeno.';

  @override
  String get privacyShareDiagnostics => 'Delite dijagnostiku';

  @override
  String get privacySaveFailed =>
      'Nije moguće sačuvati izbor privatnosti. Pokušajte ponovo.';

  @override
  String get privacySettingsSubtitle =>
      'Šta ostaje na vašem uređaju i šta se deli';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Delite dijagnostiku korišćenja i otkazivanja';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Opciono · podrazumevano isključeno';

  @override
  String get lanScanToJoin => 'Skenirajte da biste se pridružili';

  @override
  String get lanScanHostCode => 'Skenirajte kod domaćina';

  @override
  String get lanEnterAddressInstead => 'Umesto toga unesite adresu';

  @override
  String get lanQrAccessibilityLabel => 'QR kod za pridruživanje ovoj igri';

  @override
  String get lanJoinInstruction =>
      'Na drugom uređaju otvorite Igraj u blizini, izaberite Pridruži se, pa skenirajte ovaj QR kod.';

  @override
  String get lanTorch => 'Blic';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ne može da koristi kameru. Dozvolite pristup kameri u podešavanjima uređaja ili ručno unesite adresu prikazanu na drugom uređaju.';

  @override
  String get lanCameraUnsupported =>
      'Ovaj uređaj ne može da skenira QR kodove. Ručno unesite adresu prikazanu na drugom uređaju.';

  @override
  String get lanCameraStartFailed =>
      'Kamera nije mogla da se pokrene. Ručno unesite adresu prikazanu na drugom uređaju.';

  @override
  String get lanPointCameraAtQr =>
      'Usmerite kameru ka QR kodu na drugom uređaju.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Igra na fizičkoj tabli nije dostupna u ovoj verziji. Igre na ekranu, podučavanje i vežbanje dostupni su na početnom ekranu.';

  @override
  String get homePlayWithBuddy => 'Igraj sa Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Tabla za tavlu. $status';
  }

  @override
  String get boardWhiteToRoll => 'Bele figure su na potezu da bace kockice.';

  @override
  String get boardBlackToRoll => 'Crne figure su na potezu da bace kockice.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Bele figure su na potezu; kockice su $die1 i $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Crne figure su na potezu; kockice su $die1 i $die2.';
  }

  @override
  String get boardDoubleOffered => 'Ponuđeno je dupliranje kocke.';

  @override
  String get boardResignationOffered => 'Ponuđeno je predavanje partije.';

  @override
  String get boardGameOver => 'Igra je gotova.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Greška]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ideja]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Zamenite ovo kratkim opisom onoga što se dogodilo.';

  @override
  String get feedbackBugReproduction =>
      'Zamenite ovo koracima koji su doveli do problema.';

  @override
  String get feedbackBugExpected =>
      'Zamenite ovo onim što ste očekivali da će se dogoditi.';

  @override
  String get feedbackIdeaNeed =>
      'Zamenite ovo onim što ste želeli da uradite ili naučite.';

  @override
  String get feedbackIdeaSuggestion =>
      'Zamenite ovo promenom koja bi vam pomogla.';

  @override
  String get feedbackExcerptTruncated =>
      '(skraćeno — koristite Kopiraj u klipbord na ekranu Dijagnostika za ceo dnevnik)';

  @override
  String get boardWhiteToMoveNoRoll => 'Bele figure su na potezu.';

  @override
  String get boardBlackToMoveNoRoll => 'Crne figure su na potezu.';

  @override
  String get feedbackFieldVersion => 'Verzija aplikacije';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Šta se desilo';

  @override
  String get feedbackFieldReproduction => 'Koraci za reprodukciju';

  @override
  String get feedbackFieldExpected => 'Očekivani rezultat';

  @override
  String get feedbackFieldNeed => 'Šta ste želeli da uradite?';

  @override
  String get feedbackFieldIdea => 'Predložena promena';

  @override
  String get buddySetupTitle => 'Igraj sa Buddyjem';

  @override
  String get buddySetupSideLabel => 'Buddy igra';

  @override
  String get buddySetupSeatLabel => 'Tvoja strana';

  @override
  String get buddySetupSeatNear => 'Pored telefona';

  @override
  String get buddySetupSeatFar => 'Nasuprot';

  @override
  String get buddySetupSeatHelp =>
      'Na kojoj strani table sediš? Tako Buddy numeriše polja i razlikuje tvoj početni bacaj od svog.';

  @override
  String get buddySetupVoiceLabel => 'Kako Buddy govori';

  @override
  String get buddySetupVoiceTerse => 'Sažeto';

  @override
  String get buddySetupVoiceFriendly => 'Prijateljski';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22“ — zapis kojim igrači razgovaraju za tablom.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Pomeri jednu figuru sa 13 na 8, a drugu sa 24 na 22.“';

  @override
  String get buddySetupTutorHelp =>
      'Komentari i objašnjenja poteza prate podešavanja Tutora sačuvana u Podešavanjima. Buddy povremeno komentariše tvoje poteze; unos bacanja i ručni potezi rade isto.';

  @override
  String get buddySetupCalibrate => 'Kalibriši tablu';

  @override
  String get buddyFixAim => 'Ispravi kadar';

  @override
  String get buddyWaitingForOpening => 'Buddy čeka bacanje kojim počinje meč.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy je izgubio tablu. Ispravi kadar i meč će se nastaviti tamo gde je stao.';

  @override
  String get buddyPromptWaitingPicture =>
      'Čekam sliku koju Buddy može da pročita. Ništa nije izgubljeno.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy ne vidi kockice. Unesi rezultat bacanja.';

  @override
  String get buddyPromptPlay =>
      'Odigraj potez na tabli. Ako ga Buddy ne vidi, unesi ga ovde.';

  @override
  String get buddyPromptWhichPlay => 'Koji potez si odigrao?';

  @override
  String get buddyPromptCube => 'Buddy udvostručuje. Prihvataš ili odustaješ?';

  @override
  String get buddyPromptMakeMove =>
      'Odigraj Buddyjev potez na tabli, pa će Buddy nastaviti.';

  @override
  String get buddyPromptThinking => 'Buddy razmišlja.';

  @override
  String get buddyPromptWaitingCalibration => 'Čeka se kalibracija.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy i dalje ne vidi svoj potez. Tabla ispod prikazuje poziciju koju prati.';

  @override
  String get buddyPromptNotLegal => 'Taj potez nije dozvoljen.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Taj potez nije dozvoljen. $reason';
  }

  @override
  String get buddyThrowOpening => 'Bacite početne kockice — po jednu svaki.';

  @override
  String get buddyThrowUser => 'Baci svoje kockice.';

  @override
  String get buddyThrowBuddy => 'Baci Buddyjeve kockice.';

  @override
  String get buddyMatchOver => 'Meč je završen.';

  @override
  String get buddyYouWin => 'Pobedio si u meču.';

  @override
  String get buddyBuddyWins => 'Buddy je pobedio u meču.';

  @override
  String get buddyDoubleNoGame =>
      'Još nema igre za udvostručavanje — prvo se bacaju početne kockice.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Možeš da udvostručiš samo na svom potezu, pre bacanja.';

  @override
  String get buddyDoubleCrawford =>
      'U Krafordovoj partiji nema udvostručavanja — ova jedina partija odlučuje meč.';

  @override
  String get buddyDoubleNotOwner =>
      'Samo vlasnik kocke može da udvostruči, a sada je kocka kod druge strane.';

  @override
  String get buddyDoubleUnavailable =>
      'Udvostručavanje trenutno nije dostupno.';

  @override
  String get buddyLookingAtBoard => 'Buddy gleda tablu.';

  @override
  String get buddyCameraPlayFallback =>
      'Možeš da nastaviš meč: unesi svako bacanje na tastaturi za kockice i odigraj poteze na tabli ispod.';

  @override
  String get buddySkipCheck => 'Preskoči proveru';

  @override
  String get buddyFixedIt => 'Ispravio sam';

  @override
  String get buddyDrop => 'Odustani';

  @override
  String get buddyTake => 'Prihvati';

  @override
  String get buddyDone => 'Gotovo';

  @override
  String get buddyTranscriptLabel => 'Šta je Buddy rekao';

  @override
  String get buddyUndo => 'Opozovi';

  @override
  String get buddyConfirm => 'Potvrdi';

  @override
  String get buddyDice => 'Kockice';

  @override
  String get buddyDouble => 'Udvostruči';

  @override
  String get buddyDicePadTitle => 'Šta si bacio?';

  @override
  String get buddyEnterRoll => 'Unesi bacanje';

  @override
  String get buddyContextBeforeGame => 'Igraj sa Buddyjem';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Ti $you–$buddy Buddy · do $length · partija $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Kameru nije moguće pokrenuti. Proveri dozvole i pokušaj ponovo.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy nema dozvolu za korišćenje kamere. Dozvoli pristup kameri u podešavanjima uređaja i pokušaj ponovo.';

  @override
  String get buddyCalibrationTitle => 'Pokaži Buddyju tablu';

  @override
  String get buddyCalibrationCornersFold =>
      'Prevuci četiri spoljne oznake na uglove podloge za igru, ne na drveni okvir, a četiri manje na spojeve šarke sa daljom i bližom ivicom.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Prevuci svaku oznaku na ugao podloge za igru, ne na drveni okvir.';

  @override
  String get buddyCalibrationCheckLines =>
      'Zatim proveri dvanaest linija na svakoj polovini: svaka treba da prati jedno polje table. Ako promaši polje, pomeri odgovarajuću oznaku.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Koja polovina je tvoje kućno polje?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Polovina bliža donjoj ivici slike. Ona određuje numeraciju polja, pa se i linije iznad poravnavaju prema njoj.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Drži telefon mirno. Buddy čeka da se slika umiri pre nego što nauči tablu.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Da li je ovo tvoja tabla?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy gleda tablu koju je upravo naučio.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Figure nacrtane preko slike pokazuju gde Buddy misli da su. Ako je neka na pogrešnom mestu, počni ponovo — sada traje nekoliko sekundi, a kasnije može da košta partije.';

  @override
  String get buddyCalibrationNext => 'Dalje';

  @override
  String get buddyCalibrationBack => 'Nazad';

  @override
  String get buddyCalibrationCapture => 'Snimi';

  @override
  String get buddyCalibrationStartOver => 'Počni ponovo';

  @override
  String get buddyCalibrationLooksRight => 'Izgleda dobro';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Ove četiri oznake ne uokviruju tablu — jedna prelazi preko druge. Prevuci ih nazad u uglove podloge za igru.';

  @override
  String get buddyCalibrationPrepTitle => 'Prvo tri stvari';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Skloni kockice sa table.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy sada uči praznu tablu. Ako kockica ostane na podlozi, naučiće je kao deo table i tokom ove sesije više neće videti kockice.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Postavi figure za početak partije.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Trideset figura na poznatim mestima pomaže Buddyju da nauči dve boje table bez tvog objašnjenja.';

  @override
  String get buddyCalibrationFitBoardTitle => 'Uokviri celu površinu za igru.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Zatim ostavi telefon na mestu. Ako se pomeri, Buddy će ti reći, a ti možeš ponovo da podesiš uglove.';

  @override
  String get buddyCalibrationBoardKind => 'Kakva je tvoja tabla?';

  @override
  String get buddyCalibrationFlatBoard => 'Ravna tabla';

  @override
  String get buddyCalibrationFoldingBoard => 'Sklopiva tabla';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Sklopivoj tabli potrebne su još četiri oznake na spojevima šarke.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Buddy režim prati stvarnu tablu, pa ne može da se pokrene bez kamere. Sve ostalo u aplikaciji radi normalno.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Spoj šarke $number od 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Ugao table $number od 4';
  }

  @override
  String get buddyNudgeLeft => 'Pomeri ulevo';

  @override
  String get buddyNudgeRight => 'Pomeri udesno';

  @override
  String get buddyNudgeUp => 'Pomeri nagore';

  @override
  String get buddyNudgeDown => 'Pomeri nadole';

  @override
  String get buddyCalibrationProblemCorners =>
      'Ova četiri ugla ne uokviruju tablu. Prevuci svaku oznaku na ugao površine za igru i pokušaj ponovo.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Ovih osam tačaka ne uokviruje sklopivu tablu. Postavi četiri na uglove površine za igru, a četiri na spojeve šarke, pa pokušaj ponovo.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Ne mogu da razaznam samu tablu — potpuno je prekrivena ili se gubi u senci ili odsjaju. Oslobodi tablu, dodaj svetla i pokušaj ponovo.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ne mogu da razaznam $region — možda nešto leži na njemu ili je taj ugao previše taman. Ukloni prepreku ili dodaj svetla i pokušaj ponovo.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Dve boje figura odavde izgledaju previše slično. Obično pomaže više svetla ili ugao sa manje odsjaja.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Figure nisu u početnom položaju — na polju $number nalazi se figura pogrešne boje. Postavi tablu za početak partije i ponovo je kalibriši.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Na tablu pada toliko svetla da se boje stapaju. Priguši svetlo ili pomeri telefon da se lampa ne odbija pravo u kameru.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Mogu da pročitam tablu, ali nije spremna za početak partije. Postavi figure u početni položaj i ponovo kalibriši.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Mogu da pročitam tablu, ali ne vidim koliko je jedna figura iza druge, pa bih ih pogrešno prebrojao. Obično pomaže više svetla na bližim poljima ili malo viši ugao kamere.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ne vidim celu tablu. Odmakni telefon ili prevuci uglove na površinu za igru.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Više ne vidim celu tablu — $region je van slike. Ponovo usmeri kameru ili proveri uglove.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Izgleda kao početni položaj.';

  @override
  String get buddyConfirmNoCheckers =>
      'Ne vidim nijednu figuru na početnim poljima. Postavi tablu za početak partije i pokušaj ponovo.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Tabla nije postavljena za početak partije: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region izgleda prazno, ali se partija započinje sa figurama $side na tom mestu';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Na polju $region su figure $side, ali to polje na početku treba da bude prazno';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Na polju $region su figure $observed, a početni položaj zahteva $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Zastani na trenutak — gubim tablu dok se telefon pomera.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Dobijam drugu sliku od one na kojoj je tabla podešena, pa ne mogu da je poravnam. Ponovo podesi tablu odavde.';

  @override
  String get buddyReadabilityBlur =>
      'Slika je previše mutna da bih pročitao tablu. Sačekaj trenutak da kamera fokusira.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Tabla više nije tamo gde sam je naučio. Ponovo poravnaj uglove i odmah nastavljam partiju.';

  @override
  String get buddyReadabilityOccluded =>
      'Nešto zaklanja deo table. Nastaviću čim tabla bude vidljiva.';

  @override
  String get buddyReadabilityClear => 'Vidim tablu.';

  @override
  String get buddyReadabilityColorChanged =>
      'Promenila se boja svetla na tabli, pa više ne izgleda kao ona koju sam naučio. Ponovo poravnaj uglove pod ovim svetlom i nastavljam partiju.';

  @override
  String get buddyReadabilityTooDark =>
      'Pretamno je da pročitam tablu. Dodaj malo svetla i nastavljam tamo gde smo stali.';

  @override
  String get buddyReadabilityTooBright =>
      'Na tablu pada previše svetla i boje se stapaju. Priguši svetlo ili pomeri telefon da se lampa ne odbija u kameru.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy i dalje ne vidi svoj potez — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nMeč možeš da nastaviš: unesi svako bacanje na tastaturi za kockice i odigraj poteze na tabli ispod.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kameru nije moguće pokrenuti. Proveri dozvole i pokušaj ponovo.';

  @override
  String buddyRegionPoint(int number) {
    return 'polje $number';
  }

  @override
  String get buddyRegionBar => 'bara';

  @override
  String get buddyRegionWhiteTray => 'poslužavnik za iznete bele figure';

  @override
  String get buddyRegionBlackTray => 'poslužavnik za iznete crne figure';

  @override
  String get buddyRegionDiceZone => 'sredina table';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ne vidim celu tablu. Odmakni telefon ili prevuci uglove na površinu za igru.';

  @override
  String buddyConfirmMore(int number) {
    return ' (i još $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Svako baca po jednu kockicu. Vrednosti određuju ko počinje.';

  @override
  String get buddyDiceOpeningFirst => 'Bela kockica';

  @override
  String get buddyDiceOpeningSecond => 'Crna kockica';

  @override
  String get buddyDiceRegularCaption =>
      'Dve bačene vrednosti, bilo kojim redom.';

  @override
  String get buddyDiceRegularFirst => 'Jedna kockica';

  @override
  String get buddyDiceRegularSecond => 'Druga kockica';

  @override
  String get evaluationEngine => 'Механизам процене';

  @override
  String get parallelEngineAnalysis => 'Анализирај оба механизма';

  @override
  String get parallelEngineExplanation =>
      'Упоредите одвојене савете wildbg и GNUbg у тренеру.';

  @override
  String get engineComparison => 'Поређење механизама';

  @override
  String get engineWinChance => 'Шанса за победу';

  @override
  String get buddyBar => 'бар';

  @override
  String get buddyOff => 'искључено';

  @override
  String get buddyHitSuffix => ', ударање';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Премести један чекрк са $from на $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Премести $count даме са $from на $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Спустите један дах од $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Однесите $count даме од $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Убацио сам $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Добили сте $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Обојица су одиграла $die. Ролл поново.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Нема игре, па је твој ред.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Нема игре, па је на Бадија ред.';

  @override
  String get buddySpeechNoPlayPass => 'Нема игре - ваш ред пролази.';

  @override
  String get buddySpeechNoPlayBack => 'Нема игре, тако да вам се враћа.';

  @override
  String get buddySpeechIllegalPlay => 'То није легална игра.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'То није сасвим тачно. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Табла се разликује од игре: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: игра очекује $expected $side дама; камера види $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Верујем вам на реч. Нисам могао да видим ту једну земљу, па ако смо се раздвојили појавиће се као комад који не могу да читам.';

  @override
  String get buddySpeechBuddyDouble => 'Удвостручујем - узми или испусти?';

  @override
  String get buddySpeechYouDouble => 'Ти дупло.';

  @override
  String get buddySpeechBuddyTakes => 'ја узимам.';

  @override
  String get buddySpeechYouTake => 'Ти узимаш.';

  @override
  String get buddySpeechBuddyDrops => 'падам.';

  @override
  String get buddySpeechYouDrop => 'Ти паднеш.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Побеђујем у овој игри: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Побеђујете у овој игри: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'То ми одговара.';

  @override
  String get buddySpeechMatchWinnerYou => 'Побеђујеш у мечу.';

  @override
  String get buddyTutorLastPlayBest =>
      'Ваша последња игра је најбоље одговарала мотору.';

  @override
  String get buddyTutorLastPlayClose =>
      'Ваша последња игра била је близу најбољег мотора.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'За вашу последњу репродукцију, машина је преферирала $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Оставља $best противничких дама на траци уместо $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Оставља $best мрље уместо $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Садржи $best поена матичне плоче уместо $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Искључено је $best дама уместо $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Рангирање тежи процењеним победама и гамонима; ниједна карактеристика плоче то не објашњава.';

  @override
  String buddySpeechPlay(String move) {
    return 'Пусти $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Убацио сам $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Proveri potvrdu brisanja';

  @override
  String get privacyDeletionReceiptHelp =>
      'Nakon zahteva za brisanje vratite se ovde da proverite da li je postupak završen. Vaša privatna potvrda zahteva ostaje na ovom uređaju i radi nakon odjave. Provere ne kreiraju nalog. Potvrde o završenom brisanju dostupne su onlajn 90 dana; zadržite ovu instalaciju do potvrde.';

  @override
  String get privacyDeletionReceiptNone =>
      'Na ovom uređaju nije sačuvana potvrda zahteva za brisanje. Za ranije zahteve ili izgubljen uređaj obratite se podršci.';

  @override
  String get privacyDeletionReceiptPending =>
      'Brisanje još nije potvrđeno. Obrada može da traje do 30 dana. Proverite ponovo kasnije. Ako je prošlo više od 30 dana, obratite se podršci. Nedostupna ili istekla potvrda zahteva nije dokaz brisanja.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Brisanje je završeno: svi zahtevi sačuvani na ovom uređaju potvrđeni su kao završeni. Time se ne briše onlajn identitet kreiran kasnije. Lokalna istorija i podaci o učenju ostaju sačuvani. Google može da zadrži rezervne kopije i bezbednosne zapise, kao što je opisano u politici privatnosti.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Nije moguće proveriti potvrdu brisanja. Pokušajte ponovo kada ste povezani ili se obratite podršci. Time se ne potvrđuje završetak brisanja.';
}
