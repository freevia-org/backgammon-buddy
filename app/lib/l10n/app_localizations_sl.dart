// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Slovenian (`sl`).
class AppLocalizationsSl extends AppLocalizations {
  AppLocalizationsSl([String locale = 'sl']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Izboljšajte igro s pomočjo trenerja';

  @override
  String get settings => 'Nastavitve';

  @override
  String get playVsComputer => 'Igraj proti računalniku';

  @override
  String get twoPlayers => 'Dva igralca';

  @override
  String get playNearby => 'Igraj v bližini';

  @override
  String get playOnline => 'Igraj prek spleta';

  @override
  String get learningPractice => 'Učenje in vadba';

  @override
  String get gamesArchive => 'Arhiv iger';

  @override
  String get followSystem => 'Jezik naprave';

  @override
  String get white => 'Beli';

  @override
  String get black => 'Črni';

  @override
  String get random => 'Naključno';

  @override
  String get startMatch => 'Začni igro';

  @override
  String get tutor => 'Trener';

  @override
  String get noMovesPass => 'Ni potez — prepusti';

  @override
  String get undo => 'Razveljavi';

  @override
  String get confirm => 'Potrdi';

  @override
  String get roll => 'Vrzi';

  @override
  String get hint => 'Namig';

  @override
  String get tutoringStyle => 'Slog učenja';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Samo namigi';

  @override
  String get tutorStyleTryFirst => 'Najprej poskusi';

  @override
  String get tutorCoachDescription =>
      'Namigi o položaju, povratne informacije o potezah, predlogi in nasveti glede kocke.';

  @override
  String get tutorHintsDescription =>
      'Razvrščene poteze na zahtevo. Namigi o položaju in samodejne povratne informacije po potezi ostanejo izklopljeni.';

  @override
  String get tutorTryFirstDescription =>
      'Najprej pripravi svojo potezo, nato si oglej razvrščene možnosti ali oceno; vodenje po igralni plošči ostane vključeno.';

  @override
  String get tutorCustomDescription =>
      'Poljubna kombinacija. Spodaj prilagodi katero koli možnost.';

  @override
  String get tutorBestMoveHints => 'Namigi za najboljšo potezo';

  @override
  String get tutorRevealRankedPlays =>
      'Med odločanjem prikaži razvrščene poteze';

  @override
  String get tutorMoveExplanations => 'Pojasnila potez';

  @override
  String get tutorCompareEstimates =>
      'Primerjaj ocene in spremembe na igralni plošči';

  @override
  String get tutorGameCommentary => 'Komentarji o igri';

  @override
  String get tutorPositionPrompts =>
      'Namigi o položaju in povratne informacije po vsaki potezi';

  @override
  String get tutorCubeAdvice => 'Nasveti glede kocke';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Predlogi za podvojitev, sprejem in predajo glede na rezultat dvoboja';

  @override
  String get tutorTryMoveFirst => 'Najprej poskusi potezo';

  @override
  String get tutorStageBeforeHints =>
      'Pripravi svojo potezo, preden prikažeš namige ali oceno';

  @override
  String get tutorStaticEstimateNote =>
      'Hitra statična ocena (0-ply, brez simulacij); opombe opisujejo spremembe na igralni plošči in možne odgovore, ne zagotavljajo pa, kaj se bo zgodilo.';

  @override
  String get tutorWhatToWatchNext => 'Na kaj bodi pozoren v nadaljevanju';

  @override
  String get tutorMoreBoardDetails => 'Več podrobnosti o igralni plošči';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Ocene in njihovo delovanje';

  @override
  String get tutorEstimateLimitations =>
      'Globina: statična nevronska ocena vsake dovoljene poteze (0-ply), brez simulacij ali iskanja prihodnjih odgovorov. MWC, ki upošteva rezultat, te ocene izidov uteži glede na rezultat dvoboja in trenutno kocko; prihodnjih dejanj s kocko ne modelira. Equity brez kocke pomeni pričakovane točke pri kocki z vrednostjo 1, kadar rezultat ni na voljo. Opazovanja igralne plošče opisujejo potezo, ne notranjega sklepanja nevronskega mehanizma. Skoraj izenačene ocene ne zagotavljajo gotovosti; kalibriranega intervala zaupanja ni.';

  @override
  String get tutorPointNumberNote =>
      'Številke polj v učnih opombah se štejejo od domače deske igralca, ki je na potezi.';

  @override
  String get tutorHittingRollNote =>
      'Število metov, ki omogočajo udarec, vključuje vseh 36 urejenih izidov kock in dovoljene neposredne ali posredne udarce; to so priložnosti, ne napoved nasprotnikove izbire.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Za to potezo ni na voljo ocenjenih alternativ.';

  @override
  String get tutorForcedPassNoDecision =>
      'Pri prisiljeni predaji ni odločitve o premiku figur.';

  @override
  String get settingsReset => 'Ponastavi';

  @override
  String get settingsAppLanguage => 'Jezik aplikacije';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeSystem => 'Sistemska';

  @override
  String get settingsThemeLight => 'Svetla';

  @override
  String get settingsThemeDark => 'Temna';

  @override
  String get settingsAnimationSpeed => 'Hitrost animacije';

  @override
  String get settingsAnimationNone => 'Brez animacije';

  @override
  String get settingsAnimationNormal => 'Običajna';

  @override
  String get settingsAnimationFast => 'Hitra';

  @override
  String get settingsDiceRollAnimation => 'Animacija meta kock';

  @override
  String get settingsDiceRollAnimationHelp => 'Pred vsakim metom zavrti kocke';

  @override
  String get settingsDefaultMatchLength => 'Privzeta dolžina dvoboja';

  @override
  String get settingsDefaultDifficulty => 'Privzeta težavnost';

  @override
  String get settingsDifficultyEasy => 'Lahka';

  @override
  String get settingsDifficultyMedium => 'Srednja';

  @override
  String get settingsDifficultyHard => 'Težka';

  @override
  String get settingsDifficultyExpert => 'Strokovna';

  @override
  String get settingsTutorModeDefault => 'Privzeti način tutorja';

  @override
  String get settingsTutorAuto => 'Samodejno';

  @override
  String get settingsTutorOn => 'Vklopljeno';

  @override
  String get settingsTutorOff => 'Izklopljeno';

  @override
  String get settingsTutorModeHelp =>
      'Samodejno vklopi tutorja pri vseh težavnostih računalnika. Vklopljeno in Izklopljeno določata začetno izbiro pri lokalnih dvobojih. Pri bližnjih in spletnih dvobojih tutor ne pomaga; shranjene igre lahko pregledaš pozneje. Spodnje učne nastavitve se shranijo v tej napravi.';

  @override
  String get settingsTutorPreferences => 'Nastavitve tutorja';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Privzete nastavitve za prihodnje dvoboje';

  @override
  String get settingsTutorSaveError =>
      'Nastavitev tutorja ni bilo mogoče shraniti.';

  @override
  String get settingsGameplay => 'Igra';

  @override
  String get settingsMoveHighlights => 'Označevanje potez';

  @override
  String get settingsMoveHighlightsHelp =>
      'Obkroži figure, ki jih lahko izbereš, in osvetli možna ciljna polja';

  @override
  String get settingsDragToMove => 'Povleci za premik';

  @override
  String get settingsDragToMoveHelp =>
      'Povleci figuro na ciljno polje (dotiki vedno delujejo)';

  @override
  String get settingsCombinedMoves => 'Združene poteze';

  @override
  String get settingsCombinedMovesHelp =>
      'Z enim dotikom premakneš figuro za vrednosti obeh kock';

  @override
  String get settingsRotateBoard => 'Med potezami obrni igralno ploščo';

  @override
  String get settingsRotateBoardHelp =>
      'Igra izmenično: obrni pogled za igralca na potezi';

  @override
  String get settingsPassDevice => 'Zaslon za predajo naprave';

  @override
  String get settingsPassDeviceHelp =>
      'Med potezami pri izmenični igri prekrij igralno ploščo';

  @override
  String get settingsShowScore => 'Pokaži rezultat';

  @override
  String get settingsShowScoreHelp =>
      'V glavi prikaži trenutni rezultat dvoboja';

  @override
  String get settingsBuddyMode => 'Buddyjev slog';

  @override
  String get settingsBuddyTerse => 'Jedrnat';

  @override
  String get settingsBuddyFriendly => 'Prijazen';

  @override
  String get settingsBuddyTerseHelp =>
      'Kako Buddy na glas pove potezo: »13/8, 24/22« — zapis, ki ga igralci uporabljajo ob plošči.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Kako Buddy na glas pove potezo: »Premakni eno figuro s 13 na 8 in drugo s 24 na 22.«';

  @override
  String get settingsListenForDice => 'Poslušaj kocke';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy pogleda igralno ploščo prej, ko zasliši met. Izklop ne spremeni ničesar drugega.';

  @override
  String get settingsDiagnostics => 'Diagnostika';

  @override
  String get settingsErrorLog => 'Dnevnik napak';

  @override
  String get settingsErrorLogHelp =>
      'Nedavne napake, pripravljene za kopiranje v prijavo napake';

  @override
  String get settingsReportBug => 'Prijavi napako';

  @override
  String get settingsReportBugHelp =>
      'Odpri vodeni obrazec za prijavo na GitHubu';

  @override
  String get settingsSuggestIdea => 'Predlagaj zamisel';

  @override
  String get settingsSuggestIdeaHelp =>
      'Pomagaj nam izboljšati tutorja in igro';

  @override
  String get settingsAbout => 'O aplikaciji';

  @override
  String get settingsOpenSourceLicenses =>
      'Licence odprtokodne programske opreme';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Igra je končana.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Preglej poteze in poišči odločitev za vajo.';

  @override
  String get tutorPhraseCubeOffered => 'Ponujena je bila kocka za podvojitev.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Pred načrtovanjem poteze s figurami se odloči, ali boš podvojitev sprejel ali predal.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Rezultat dvoboja vpliva na vrednost dodatnega vložka.';

  @override
  String get tutorPhraseResignationOffered => 'Ponujena je bila predaja igre.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Pred sprejetjem predaje ali nadaljevanjem primerjaj ponujene točke s položajem.';

  @override
  String get tutorPhraseNoLegalPlay => 'S tem metom ni dovoljene poteze.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Prisilna predaja ni napaka; počakaj na naslednji met.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Možen je samo en dovoljen končni položaj.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Odigraj prisilno potezo. Pri tem metu ni izbire za ocenjevanje.';

  @override
  String get tutorPhrasePipCountsLevel => 'Število pipov je izenačeno.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Vodiš za $count pipov.',
      few: 'Vodiš za $count pipe.',
      two: 'Vodiš za dva pipa.',
      one: 'Vodiš za en pip.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zaostajaš za $count pipov.',
      few: 'Zaostajaš za $count pipi.',
      two: 'Zaostajaš za dvema pipoma.',
      one: 'Zaostajaš za enim pipom.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count figur je na prečki: najprej jih moraš vrniti v igro.',
      few: '$count figure so na prečki: najprej jih moraš vrniti v igro.',
      two: 'Dve figuri sta na prečki: najprej ju moraš vrniti v igro.',
      one: 'Ena figura je na prečki: najprej jo moraš vrniti v igro.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Najprej vrni figure s prečke, nato premikaj druge; izberi varno ciljno polje.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nasprotnik ima $count zaprtih polj v svojem domačem območju.',
      few: 'Nasprotnik ima $count zaprta polja v svojem domačem območju.',
      two: 'Nasprotnik ima dve zaprti polji v svojem domačem območju.',
      one: 'Nasprotnik ima eno zaprto polje v svojem domačem območju.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseBearOffRace => 'Tekma v odstranjevanju figur.';

  @override
  String get tutorPhrasePureRace => 'Čista tekma.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Odstranjuj figure s plošče in ohrani uporabno razporeditev za naslednji met.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Zadnje figure pripelji domov, ne da bi jih preveč naložil na isto polje.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Skupini figur sta se že srečali in prešli; udarci niso več mogoči.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Stik je še vedno pomemben.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nasprotnik ima $count figur na prečki.',
      few: 'Nasprotnik ima $count figure na prečki.',
      two: 'Nasprotnik ima dve figuri na prečki.',
      one: 'Nasprotnik ima eno figuro na prečki.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Med vračanjem preostalih figur domov ohrani polja zaprta.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Ustvari ali ohrani zaprta polja v domačem območju, medtem ko nasprotnik poskuša znova vstopiti.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'V domačem območju imaš $count zaprtih polj; vsako zapre eno vstopno možnost.',
      few:
          'V domačem območju imaš $count zaprta polja; vsako zapre eno vstopno možnost.',
      two:
          'V domačem območju imaš dve zaprti polji, ki zapreta dve vstopni možnosti.',
      one:
          'V domačem območju imaš eno zaprto polje, ki zapre eno vstopno možnost.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zaporednih zaprtih polj',
      few: '$count zaporednih zaprtih polj',
      two: 'dveh zaporednih zaprtih polj',
      one: 'enega zaporednega zaprtega polja',
    );
    return 'Stik z nizom $_temp0.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Primerjaj podaljšanje niza z ohranjanjem rezervnih figur, ki ga pomagajo vzdrževati.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count rezervnih figur se lahko premakne, ne da bi takoj odprle svoje polje.',
      few:
          '$count rezervne figure se lahko premaknejo, ne da bi takoj odprle svoje polje.',
      two:
          'Dve rezervni figuri se lahko premakneta, ne da bi takoj odprli svoje polje.',
      one:
          'Ena rezervna figura se lahko premakne, ne da bi takoj odprla svoje polje.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Stik s sidrom na poljih $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Primerjaj vračanje zadnjih figur domov z varnostjo, ki jo daje ohranjeno sidro.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Med iskanjem udarca ali izboljšanjem položaja imej v mislih varno oporo.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Sidra ni mogoče zadeti, vendar imajo te figure do doma še dolgo pot.';

  @override
  String get tutorPhraseContactThreats =>
      'Stik še obstaja: oba igralca lahko še zagrozita z udarcem.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Poišči uporabna polja, nato oceni tveganje zaradi izpostavljenih posameznih figur.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Zaprta polja v tvojem domačem območju: $count; izpostavljene posamezne figure, ki jih puščaš: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Izberi figuro za začetek poteze.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Začni dovoljeno potezo, da si ogledaš komentar.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nasprotnikovih figur',
      few: '$count nasprotnikove figure',
      two: 'dve nasprotnikovi figuri',
      one: 'eno nasprotnikovo figuro',
    );
    return 'Zadel si $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'S prečke si vrnil $count figur.',
      few: 'S prečke si vrnil $count figure.',
      two: 'S prečke si vrnil dve figuri.',
      one: 'S prečke si vrnil eno figuro.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count figur',
      few: '$count figure',
      two: 'dve figuri',
      one: 'eno figuro',
    );
    return 'S plošče si odstranil $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zaprl si $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Figura na tvojem polju $point je za zdaj izpostavljena.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Rezervna figura na tvojem polju $point se lahko pozneje premakne, ne da bi odprla polje.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Preden oceniš celotno potezo, uporabi še preostale kocke, ki jih lahko odigraš.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Vseh 15 figur je odstranjenih s plošče: igra je dobljena.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Udar ti prinese čas, medtem ko nasprotnik znova vstopa v igro.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Učinkovito odstranjevanje figur sprosti figure in pusti uporabne vrednosti za naslednji met.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'V tekmi pripelji zadnje figure domov in ohrani uporabna polja za njihovo odstranitev.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Odstranjevanje figur prinaša napredek, vendar zaradi preostalega stika še vedno grozijo udarci.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Z vstopom se figura vrne v igro; nato poišči varno ciljno polje.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Novo zaprto polje v domačem območju po morebitnem udarcu zapre eno možnost za vstop.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Daljši niz zapre več ciljnih polj; rezervne figure ga pomagajo ohraniti.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Zapuščanje sidra prinese napredek, vendar izgubiš varno oporo.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Novo sidro zadnjim figuram nudi varno oporo.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Če zaščitiš izpostavljeno figuro, nasprotnik izgubi tarčo.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Gre za ravnotežje med razvojem in varnostjo: uporabne figure za gradnjo lahko postanejo tarče.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Celotna poteza je pripravljena; tapni Potrdi, da jo odigraš.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Ta met ne omogoča izbire poteze s figurami, zato se ne ocenjuje kot odločitev.';

  @override
  String get tutorMoveTopVerdict => 'Najboljša izbira za ta položaj.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Ocenjevalnik v tem položaju daje prednost drugi potezi.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Razlika glede na najboljšo potezo: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Po tej potezi: ocenjena možnost zmage $winPercent %, zmage z gammonom ali bolje $winGammonPercent %, poraza z gammonom ali slabše $loseGammonPercent %. Ocene so z vidika igralca, ki je na potezi.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Ocenjena možnost zmage v dvoboju: $percent %.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Vseh 15 figur je odstranjenih z igralne plošče: igra je dobljena.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Z udarcem pridobi čas, medtem ko nasprotnik znova vstopa v igro. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Ohrani zaprta polja v svojem domačem območju, da nasprotniku otežiš vstop.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zapri več polj v domačem območju, da se bo nasprotnik po prihodnjih udarcih težje pobral.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Prizadevaj si za učinkovito odstranjevanje figur: umikaj jih s plošče in ohrani uporabne vrednosti za naslednji met.';

  @override
  String get tutorMovePlanRaceHome =>
      'Zadnje figure pripelji domov in jih razporedi na uporabna polja za odstranjevanje.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Odstranjuj figure z igralne plošče, vendar pazi na nasprotnikove zadnje figure: dokler obstaja stik, je lahko osamljena figura pri odstranjevanju tarča.';

  @override
  String get tutorMovePlanReentry =>
      'Vrni se v igro, nato poišči varno polje za figuro, ki je vstopila.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Okrepi svoje domače območje. Novo zaprto polje okrepi prihodnji udarec, ker zapre eno možnost za vstop.';

  @override
  String get tutorMovePlanPrime =>
      'Ohrani povezan niz zaprtih polj. Prihrani rezervne figure, da te prihodnji meti ne bodo prisilili, da ga odpreš.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Če zapustiš sidro, zadnje figure napredujejo, vendar izgubiš varno oporo. Pazi, da na poti domov ne bodo izpostavljene.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Novo sidro uporabi kot varno oporo, medtem ko izboljšuješ preostali položaj.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Združi svoje figure. Če zaščitiš osamljeno izpostavljeno figuro, nasprotniku odvzameš tarčo in ohraniš uporabna ciljna polja.';

  @override
  String get tutorMovePlanSafety =>
      'Uskladi razvoj in varnost: gradilne figure pomakni proti uporabnim poljem ter preveri, katere osamljene figure lahko nasprotnik udari.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Ni dovoljene poteze s figurami: predati moraš potezo.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nasprotnikovih figur',
      few: '$count nasprotnikove figure',
      two: 'dve nasprotnikovi figuri',
      one: 'eno nasprotnikovo figuro',
    );
    return 'Udariš $_temp0; nasprotnik mora najprej vrniti figure s prečke, šele nato lahko premakne druge.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Število figur, ki so vstopile s prečke: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count figur',
      few: '$count figure',
      two: 'dve figuri',
      one: 'eno figuro',
    );
    return 'Z igralne plošče odstraniš $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zapreš polja $points. Dve ali več figur zasedajo varno polje in nasprotniku preprečujejo pristanek na njem.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Znova odpreš zaprta polja ($pointLabel): $points. Ta polja nasprotniku ne preprečujejo več pristanka.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Ne puščaš osamljenih izpostavljenih figur (prej: $previousCount). Nasprotnik nima osamljene figure, ki bi jo lahko udaril.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count osamljenih izpostavljenih figur',
      few: '$count osamljene izpostavljene figure',
      two: 'dve osamljeni izpostavljeni figuri',
      one: 'eno osamljeno izpostavljeno figuro',
    );
    return 'Puščaš $_temp0 (prej: $previousCount). Preveri, ali jih nasprotnik lahko doseže, preden namesto druge koristi izbereš varnost.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Najdaljši niz zaprtih polj: $count (prej: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Zidu iz šestih zaprtih polj ni mogoče prečkati, dokler ostane neprekinjen.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'V bližini ohrani gradilne figure, če želiš ta niz podaljšati ali ohraniti.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Število rezervnih figur poleg dveh, ki držita polji zaprti: $count. Premik rezervne figure lahko ohrani polje; premik ene od zadnjih dveh ga odpre.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Sidra v nasprotnikovem domačem območju: $points (prej: $previousPoints). Ohranjeno sidro ščiti te figure pred udarci; če ga zapustiš, varno oporo zamenjaš za napredek v tekmi.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Čista tekma: figure so se že srečale in prešle, noben igralec pa nima figure na prečki. Udarci niso več mogoči; pomembno je učinkovito odstranjevanje.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'V tem položaju noben dovoljen naslednji met nasprotniku ne omogoča udarca tvoje figure. Stik še ostaja, zato lahko poznejše poteze ustvarijo nove priložnosti za udarec.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Nasprotnik lahko udari pri $count od $total metov. Na primer, $dieOne–$dieTwo omogoča dovoljen udarec na tvojem polju $point. Udar je mogoč, vendar ga nasprotnik ni dolžan izbrati.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Število zaprtih polj v tvojem domačem območju: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Nasprotnik ne more znova vstopiti, dokler se katero od polj ne odpre.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Met, ki ustreza odprtemu vstopnemu polju, lahko vrne figuro s prečke v igro.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Ocenjena možnost zmage je pri najboljši potezi za $delta odstotnih točk $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'višja';

  @override
  String get tutorMoveComparisonLower => 'nižja';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Kljub temu je lahko uvrščena višje, saj imata gammon in backgammon različno vrednost glede na trenutni $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'vložek';

  @override
  String get tutorMoveComparisonMatchScore => 'rezultat dvoboja';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Število nasprotnikovih figur na prečki po najboljši potezi: $bestCount, namesto $playedCount. Figura na prečki mora znova vstopiti, preden lahko nasprotnik premakne druge.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Število zaprtih polj v domačem območju po najboljši potezi: $bestCount, namesto $playedCount po odigrani potezi. Po udarcu $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore =>
      'je zaprtih več vstopnih številk';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'ostane odprtih več vstopnih številk';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Najboljša poteza omogoča povratni udarec pri $bestCount od 36 metov, namesto pri $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'To zmanjša neposredno nevarnost, da te pošljejo nazaj na prečko.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Dodatno izpostavljenost primerjaj s koristmi poteze na drugih področjih.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Najdaljši niz zaprtih polj je po najboljši potezi dolg $bestCount, po odigrani pa $playedCount. Primerjaj blokado s številom figur, ki jo lahko ohranijo.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Sidra po najboljši potezi: $bestPoints, namesto $playedPoints. Ohranjeno sidro zagotavlja varno ciljno polje; če ga zapustiš, se te figure približajo domu.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Število figur, odstranjenih z igralne plošče po najboljši potezi: $bestCount, namesto $playedCount. Vsaka odstranjena figura je ena manj, ki jo bo treba odstraniti pozneje.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Obe potezi puščata enako neposredno tveganje udarca, enako število zaprtih polj v domačem območju, sider in odstranjenih figur. Primerjaj ciljna polja: naslednji met lahko te figure uporabi drugače.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Najboljša poteza pošlje več nasprotnikovih figur na prečko in odloži njegove druge poteze.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Najboljša poteza zapre več polj v domačem območju in oteži ponovni vstop po udarcu.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Najboljša poteza omogoča manj takojšnjih priložnosti za udarec, zato je nevarnost vrnitve na prečko manjša.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Najboljša poteza ohrani daljši niz zaprtih polj.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Najboljša poteza ohrani več varnih sider v nasprotnikovem domačem območju.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Najboljša poteza odstrani več figur z igralne plošče, zato jih pozneje ostane manj.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Ta poteza pušča $playedCount osamljenih izpostavljenih figur; najboljša poteza jih pušča $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Najboljša poteza ohrani varno sidro na polju $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Najboljša poteza zapre več vstopnih polj za primer, da nasprotnik udari tvojo figuro.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Potezi puščata podobno neposredno tveganje; primerjaj, katera ciljna polja ostanejo uporabna pri naslednjem metu.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return 'Izguba equityja: $value';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value odstotnih točk možnosti zmage v dvoboju (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'polje';

  @override
  String get tutorMovePointPlural => 'polja';

  @override
  String get tutorMoveNoPoints => 'nobeno';

  @override
  String get gameTutorCommentaryOff => 'Komentarji igre so izklopljeni.';

  @override
  String get gameTutorToolsAvailable => 'Odpri tutorja za vključena orodja.';

  @override
  String get gameTutorNextRoll => 'Vrzi še enkrat.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Za to shranjeno potezo ni na voljo ocenjene razlage.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiza ni na voljo';

  @override
  String get gameTutorReviewing => 'pregledovanje…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Najprej poskusi odigrati svojo potezo.';

  @override
  String get gameTutorKeepBuilding => 'Nadaljuj s sestavljanjem poteze.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Pripravi celotno dovoljeno potezo, preden prikažeš vodenje ali namige.';

  @override
  String get gameTutorReadyToConfirm => 'Pripravljeno za potrditev';

  @override
  String get gameTutorPlayTakingShape => 'Tvoja poteza dobiva obliko.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potrdi potezo ali jo razveljavi in premisli znova.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Porabi preostale mete ali razveljavi potezo.';

  @override
  String get gameTutorComputerConsidering =>
      'Računalnik razmišlja o svoji potezi.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Tukaj bo pregledana njegova zaključena poteza.';

  @override
  String get gameTutorYourPlay => 'Tvoja poteza';

  @override
  String get gameTutorComputer => 'Računalnik';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Tvoja poteza: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'prisilna poteza';

  @override
  String get gameTutorTopChoice => 'najboljša izbira';

  @override
  String get gameTutorSoundPlay => 'dobra poteza';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'morda bi bila primernejša druga poteza';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'ta položaj bolje ustreza drugi potezi';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'na voljo je bila očitno močnejša poteza';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side ima po oceni prednost.';
  }

  @override
  String get gameTutorPositionEven => 'Položaj je približno izenačen.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Odigrano: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Najboljša poteza: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Prikaži razvrščene poteze';

  @override
  String get tutorReviewRecordedMove =>
      'Tapnite zaključeno potezo v dnevniku, da si tukaj ogledate njeno oceno.';

  @override
  String get tutorTopPlays => 'Najboljše poteze';

  @override
  String get tutorNoHintsAvailable => 'Namigi niso na voljo.';

  @override
  String get tutorPreviewThenConfirm =>
      'Tapnite potezo, da si jo ogledate na plošči, nato jo potrdite.';

  @override
  String get tutorTopChoiceForPosition => 'Najboljša izbira v tem položaju';

  @override
  String get tutorAlternativePlay => 'Alternativna poteza';

  @override
  String get tutorEngineEstimates => 'Ocene motorja';

  @override
  String get tutorEstimateScope =>
      'Ocena 0-ply · trenutni rezultat in vložek · brez prihodnjih odločitev o kocki';

  @override
  String get tutorEquity => 'Pričakovana vrednost';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Pri skoraj izenačenih potezah lahko podrobnejša analiza spremeni vrstni red.';

  @override
  String get tutorWhyThisPlay => 'Zakaj ta poteza?';

  @override
  String get tutorCompareAlternative => 'Primerjaj to alternativo';

  @override
  String get gameTutorCubeTake => 'Tutor: sprejmi';

  @override
  String get gameTutorCubePass => 'Tutor: odstopi';

  @override
  String get practiceScreenTitle => 'Vadi odločitev';

  @override
  String get practiceUnavailable => 'Ta vadbeni položaj ni več na voljo.';

  @override
  String get practiceSubmitError =>
      'Poskusa ni bilo mogoče oceniti ali shraniti. Tvoj napredek se ni spremenil. Poskusi znova.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Na potezi je $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Zgodovinski rezultat ni na voljo; ocena uporablja equity brez kocke.';

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
  String get practiceCrawfordGame => ' · Crawfordova igra';

  @override
  String get practiceNoDoublingCube => 'Brez kocke za podvajanje.';

  @override
  String practiceCubeValue(int value) {
    return 'Kocka $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Zgodovinska pravila kocke niso znana.';

  @override
  String get practiceAfterBestPosition => 'Položaj po najboljši potezi';

  @override
  String get practiceAfterYourAnswerPosition => 'Položaj po tvojem odgovoru';

  @override
  String get practiceFindYourPlayPrompt =>
      'Odigraj svojo potezo na plošči in nato preveri odgovor. Namigi niso prikazani.';

  @override
  String get practiceUndo => 'Razveljavi';

  @override
  String get practiceCheckAnswer => 'Preveri odgovor';

  @override
  String get practiceRevealNoCredit => 'Razkrij odgovor (brez točk)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odgovor je razkrit — brez točk za priklic.';

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
    return 'Izvirna igra: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Tvoj odgovor: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Tvoj odgovor';

  @override
  String get practiceBestPlayChip => 'Najboljša poteza';

  @override
  String practiceNextReview(Object date) {
    return 'Naslednja ponovitev: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Najboljši ali dobri odgovori štejejo kot uspešen priklic. Zgodnje ponovitve ne premaknejo urnika.';

  @override
  String get practiceBackToLearning => 'Nazaj k učenju';

  @override
  String get practiceMarkBest => 'Najboljše';

  @override
  String get practiceMarkGood => 'Dobro';

  @override
  String get practiceMarkDubious => 'Vprašljivo';

  @override
  String get practiceMarkError => 'Napaka';

  @override
  String get practiceMarkBlunder => 'Huda napaka';

  @override
  String get practiceMarkForced => 'Prisilno';

  @override
  String get newMatchYourSide => 'Tvoja stran';

  @override
  String get newMatchTutorMode => 'Način tutorja';

  @override
  String get newMatchTutorDescription =>
      'Uči se z namigi, razlagami in komentarji o igri';

  @override
  String get newMatchTutoringOptions => 'Možnosti tutorja';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Za to igro; prilagodiš jih lahko med igranjem';

  @override
  String get setupMatchLength => 'Dolžina dvoboja';

  @override
  String get setupDifficulty => 'Težavnost';

  @override
  String get setupDifficultyEasy => 'Lahko';

  @override
  String get setupDifficultyMedium => 'Srednja';

  @override
  String get setupDifficultyHard => 'Težka';

  @override
  String get setupDifficultyExpert => 'Strokovna';

  @override
  String get setupPlayWithoutCube => 'Igraj brez kocke';

  @override
  String get setupNoCubeThisMatch => 'V tem dvoboju ni kocke za podvajanje';

  @override
  String get analysisTitle => 'Analiza';

  @override
  String get gameMatchSummary => 'Povzetek dvoboja';

  @override
  String get gameAnalyzeGame => 'Analiziraj igro';

  @override
  String get analysisMetricsTooltip => 'Kaj pomenijo te številke?';

  @override
  String analysisError(Object error) {
    return 'Analiza igre ni uspela: $error';
  }

  @override
  String get analysisNoPositions => 'Ta igra nima položajev za prikaz.';

  @override
  String get analysisInProgress => 'Analiziranje igre…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Odigrano';

  @override
  String get analysisBest => 'Najboljše';

  @override
  String get analysisPrevious => 'Prejšnja';

  @override
  String get analysisNext => 'Naslednja';

  @override
  String get analysisPositionBeforeCube => 'Položaj pred odločitvijo o kocki';

  @override
  String get analysisPositionAtPoint => 'Položaj na tej točki igre';

  @override
  String get analysisShowingBestBefore =>
      'Prikazana je najboljša poteza v položaju pred potezo';

  @override
  String get analysisShowingBefore => 'Prikazan je položaj pred potezo';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · izključeno iz povprečij';

  @override
  String get analysisNoPlay => '(brez poteze)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Najboljša poteza: $move';
  }

  @override
  String get analysisExplain => 'Pojasni';

  @override
  String get analysisSaveForPractice => 'Shrani za vajo';

  @override
  String get analysisSaveError =>
      'Te odločitve ni bilo mogoče shraniti. Poskusite znova.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · izguba $loss';
  }

  @override
  String get analysisCubeDecision => 'Odločitev o kocki';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Odigrano: $action (možnost za zmago v dvoboju: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Najboljše: $action (možnost za zmago v dvoboju: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Ocena 0-ply z vidika igralca, ki je na potezi. Predpostavlja optimalen odgovor: vzemi ali odstopi. Pri sprejetem podvajanju uporabi približek življenjske dobe kocke 0,7, ne pa celotnega iskanja prihodnjih ponovnih podvajanj. Poglobljena analiza lahko spremeni odgovor.';

  @override
  String get analysisClose => 'Zapri';

  @override
  String get analysisMoves => 'Poteze';

  @override
  String get analysisForced => 'Prisilno';

  @override
  String get analysisMarkBest => 'Najboljše';

  @override
  String get analysisMarkGood => 'Dobro';

  @override
  String get analysisMarkDubious => 'Vprašljivo';

  @override
  String get analysisMarkError => 'Napaka';

  @override
  String get analysisMarkBlunder => 'Huda napaka';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Povprečna izguba $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count odločitev o figurah';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Hude napake $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Izguba zaradi kocke $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side meče brez podvajanja';
  }

  @override
  String get metricExplainerTitle => 'Razumevanje meritev';

  @override
  String get metricExplainerTooltip => 'Kaj pomenijo te številke?';

  @override
  String get metricExplainerMwcTitle => 'Možnost za zmago v dvoboju (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Ko je rezultat znan, so poteze razvrščene po ocenjeni možnosti za zmago v dvoboju. Izguba je izražena v odstotnih točkah (pp): 1 pp pomeni padec z 51 % na 50 %. Upoštevani so trenutni vložek kocke ter rezultati gammon/backgammon. Prisilni odstopi in meti z enim samim dovoljenim položajem so izključeni iz povprečja.';

  @override
  String get metricExplainerSearchTitle => 'Iskanje in negotovost';

  @override
  String get metricExplainerSearchBody =>
      'Razvrstitve potez so statične ocene 0-ply po potezi, ne simulacije. Vrednosti dvoboja uporabljajo tabelo equity brez prihodnjih potez s kocko. Ocene kocke uporabljajo delni približek življenjske dobe kocke 0,7 pri sprejetem podvajanju. To ni popolno iskanje s kocko. Za zaostanke nad 25 tabela uporabi mejo 25 točk. Skoraj izenačeni rezultati se lahko pri globlji analizi spremenijo; kalibriranega intervala zaupanja ni.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Če rezultat ni znan, equity brez kocke pokaže povprečno vrednost položaja v točkah pri kocki na 1. +1,0 pomeni pričakovano osvojeno točko, −0,5 pa pričakovano izgubo polovice točke.';

  @override
  String get metricExplainerEquityLossTitle => 'Izguba equityja (npr. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Vsako potezo primerjamo z najboljšo potezo motorja. Izguba equityja pokaže, koliko pričakovane vrednosti si žrtvoval. −0,016 pomeni, da je bila poteza le za 0,016 točke slabša — majhna napaka. 0,000 pomeni, da si našel najboljšo potezo.';

  @override
  String get metricExplainerErrorRateTitle => 'Stopnja napak';

  @override
  String get metricExplainerErrorRateBody =>
      'Povprečna izguba povpreči ocenjene odločitve o figurah v prikazani enoti. Odločitve o kocki imajo svoje povprečje. Nižja vrednost je bližje najboljšim ocenam motorja; ne gre za kalibrirano oceno igralca.';

  @override
  String get metricExplainerMoveMarksTitle => 'Ocene potez';

  @override
  String get metricExplainerMoveMarksBody =>
      'Učne meje MWC: Najboljše < 0,05 pp, Dobro < 0,5 pp, Vprašljivo < 1,5 pp, Napaka < 3 pp, Huda napaka ≥ 3 pp. To so učne meje aplikacije, ne kalibrirana zanesljivost ali turnirska ocena.\n\nUčne meje equityja brez kocke:';

  @override
  String get metricExplainerThresholdBest => 'izguba < 0,001';

  @override
  String get metricExplainerThresholdGood => 'izguba < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'izguba < 0,050';

  @override
  String get metricExplainerThresholdError => 'izguba < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'izguba ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Razumem';

  @override
  String get historyTitle => 'Zgodovina dvobojev';

  @override
  String historyLoadFailed(Object error) {
    return 'Zgodovine ni bilo mogoče naložiti:\n$error';
  }

  @override
  String get historyEmpty => 'Še ni odigranih dvobojev.';

  @override
  String get historyDeleteConfirmTitle => 'Izbrišem ta dvoboj?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nDvoboj in vse zabeležene igre bodo trajno izbrisani. Tega ni mogoče razveljaviti.';
  }

  @override
  String get actionCancel => 'Prekliči';

  @override
  String get actionDelete => 'Izbriši';

  @override
  String get historyDeleteFailed => 'Dvoboja ni bilo mogoče izbrisati.';

  @override
  String get historyComplete => 'Končano';

  @override
  String historyWinner(Object side) {
    return '$side je zmagal';
  }

  @override
  String get historyUnfinished => 'Nedokončano';

  @override
  String get historyMatchTitle => 'Dvoboj';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Dvoboja ni bilo mogoče naložiti:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Iger ni bilo mogoče naložiti:\n$error';
  }

  @override
  String get historyNoGames => 'Še ni zabeleženih iger.';

  @override
  String historyGameTitle(int number) {
    return 'Igra $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Beli $whiteScore — $blackScore Črni (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'proti računalniku';

  @override
  String get historyModeTwoPlayers => 'Dva igralca';

  @override
  String get historyModeOnline => 'Spletno';

  @override
  String get historyModeNearby => 'Igra v bližini';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'V teku';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side zmaga za $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'ena';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Osveži napredek učenja';

  @override
  String get learningOptions => 'Možnosti učenja';

  @override
  String get learningResetMenu => 'Ponastavi napredek vaj';

  @override
  String get learningLoadFailed => 'Nalaganje napredka učenja ni uspelo.';

  @override
  String get actionRetry => 'Poskusi znova';

  @override
  String get learningHeading => 'Uči se iz svojih odločitev';

  @override
  String get learningIntro =>
      'Napredek ostane v tej napravi. Preglej ponavljajoče se teme, nato ponovno odigraj shranjene položaje brez prikaza odgovora. Beli in Črni strani lahko pregledaš ločeno.';

  @override
  String get learningBothSides => 'Obe strani';

  @override
  String get learningHumansOnly => 'Samo človeške odločitve';

  @override
  String get learningHumanOnlyHelp =>
      'Izklopi, če želiš vključiti odločitve računalnika in oddaljenih igralcev';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions odločitev · $mistakes za izboljšati · $blunders hudih napak';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Povprečna izguba ($decisions odločitev): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Prisilne poteze so izključene. To so ocene motorja, ne turnirska ocena.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Shranjene igre ($count) potrebujejo analizo ali ponovno analizo.',
      one: 'Shranjena igra potrebuje analizo ali ponovno analizo.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analiziraj shranjene igre';

  @override
  String get learningEmptyProfile =>
      'Odigraj in zaključi igro, da ustvariš svoj učni profil. Posamezne odločitve lahko shraniš tudi iz ponovitve.';

  @override
  String get learningOpenHistory => 'Odpri zgodovino dvobojev';

  @override
  String get learningRecurringThemes => 'Ponavljajoče se teme';

  @override
  String get learningNoThemes =>
      'V tem izboru še ni ponavljajočih se tem napak.';

  @override
  String learningThemeDecisions(int count) {
    return '$count odločitev za ponovni pregled. En položaj ima lahko več tem.';
  }

  @override
  String get learningSaveMistakes => 'Shrani te napake za vajo';

  @override
  String learningSavedMistakes(int count) {
    return '$count odločitev je na seznamu za vajo. Že shranjene ostanejo.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Nekaterih odločitev ni bilo mogoče shraniti. Uspešno shranjene ostanejo; poskusi znova.';

  @override
  String get learningSpacedPractice => 'Razmaknjena vaja';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due zapadlo · $saved shranjeno · $attempts poskusov · $successes uspešnih priklicev';
  }

  @override
  String get learningIntervalsHelp =>
      'Uspešne ponovitve pridejo na vrsto po 1, 3, 7, 14 in 30 dneh. Napake ali razkriti odgovori se vrnejo po 10 minutah. Zgodnje ponovitve ne spremenijo razmika.';

  @override
  String get learningAnswerContext =>
      'Rezultati vaje odražajo tvoje odgovore tukaj, tudi če je izvirni položaj pripadal nasprotniku.';

  @override
  String get learningNoSavedPositions =>
      'Odločitev shrani iz ponovitve ali uporabi zgornji gumb za napake.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Odločitev strani $side · igra $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Ponovi $date';
  }

  @override
  String get learningReadyToReview => 'Pripravljeno za ponovitev';

  @override
  String learningSuccessStreak(int count) {
    return '$count uspešnih zapadlih ponovitev';
  }

  @override
  String get learningRemoveTooltip => 'Odstrani shranjeno odločitev';

  @override
  String get learningRecentPractice => 'Nedavne vaje';

  @override
  String get learningAnswerRevealed => 'Odgovor razkrit';

  @override
  String get learningSuccessfulRecall => 'Uspešen priklic';

  @override
  String get learningTryAgain => 'Ponovno poskusi to odločitev';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · shranjen položaj $positionId';
  }

  @override
  String get learningRemoveTitle => 'Odstranim to vajo?';

  @override
  String get learningRemoveBody =>
      'S tem se odstranijo poskusi vaje. Izvirna igra ostane v zgodovini.';

  @override
  String get actionRemove => 'Odstrani';

  @override
  String get learningRemoveFailed => 'Te vaje ni bilo mogoče odstraniti.';

  @override
  String get learningResetTitle => 'Ponastavim napredek vaj?';

  @override
  String get learningResetBody =>
      'Vsi poskusi in razmiki ponovitev bodo odstranjeni. Shranjene vaje in zgodovina ostanejo; vse vaje bodo takoj zapadle.';

  @override
  String get learningResetAction => 'Ponastavi napredek';

  @override
  String get learningResetFailed => 'Napredka vaj ni bilo mogoče ponastaviti.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Analiziranih iger: $completed · nedosegljivih: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Analiziranih $completed iger.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Analiziranih $completed iger; $failed ni bilo mogoče analizirati. Poskusi znova, ko bo motor pripravljen.';
  }

  @override
  String get learningThemeHitting => 'Udarjanje in tempo';

  @override
  String get learningThemeSafety => 'Bloti in varnost';

  @override
  String get learningThemePointMaking => 'Ustvarjanje točk';

  @override
  String get learningThemePrime => 'Prime in zapore';

  @override
  String get learningThemeAnchor => 'Sidra in pobeg';

  @override
  String get learningThemeRace => 'Učinkovitost dirke';

  @override
  String get learningThemeBearOff => 'Odlaganje figur';

  @override
  String get learningThemeBarEntry => 'Vstop z bara';

  @override
  String get learningThemeCube => 'Odločitve o kocki';

  @override
  String get analysisCubeNoDouble => 'Brez podvajanja';

  @override
  String get analysisCubeDouble => 'Podvoji';

  @override
  String get analysisCubeTake => 'Vzemi';

  @override
  String get analysisCubePass => 'Odstopi';

  @override
  String get learningAnalysisStarting => 'Analiziranje shranjenih iger…';

  @override
  String get tutorCubelessEstimateScope =>
      'Ocena brez kocke pri 0 ply · rezultat ni na voljo';

  @override
  String get tutorLossPp => 'Izguba pp';

  @override
  String get tutorLoss => 'Izguba';

  @override
  String get scoreSheetNoMoves => 'Še ni potez';

  @override
  String get tutorOptions => 'Možnosti tutorja';

  @override
  String get tutorCollapseTooltip => 'Skrči tutorja';

  @override
  String get tutorExpandTooltip => 'Razširi tutorja';

  @override
  String get onlineTitle => 'Igraj prek spleta';

  @override
  String get onlineUnassistedNote =>
      'Spletne igre nimajo sprotnega tutorja. Preglej poteze in po igri vadi napake.';

  @override
  String get onlineNotConfiguredTitle =>
      'Spletno igranje v tej različici ni nastavljeno';

  @override
  String get onlineNotConfiguredBody =>
      'Ta različica ni povezana s Firebase, zato ustvarjanje in pridružitev dvoboju nista na voljo.';

  @override
  String get onlineErrorNoMatch =>
      'Dvoboj s to kodo ne obstaja. Preveri jo in poskusi znova.';

  @override
  String get onlineErrorSeatTaken =>
      'Ta dvoboj ni več odprt — mesto je zasedeno.';

  @override
  String get onlineErrorPermission => 'Do tega dvoboja nimaš dostopa.';

  @override
  String get onlineErrorGeneric => 'Prišlo je do napake. Poskusi znova.';

  @override
  String get onlineMatchFinished =>
      'Dvoboj je končan in ga ni več mogoče nadaljevati.';

  @override
  String get onlineEnterCodeError => 'Vnesi kodo dvoboja.';

  @override
  String get onlineOpponentShort => 'Nasprotnik';

  @override
  String get onlineMatchInProgress => 'Dvoboj poteka';

  @override
  String onlineResumePrompt(Object code) {
    return 'Igral si dvoboj $code.';
  }

  @override
  String get onlineRejoin => 'Nadaljuj';

  @override
  String get onlineForgetMatch => 'Pozabi ta dvoboj';

  @override
  String get onlineCreateTitle => 'Ustvari dvoboj';

  @override
  String get onlineMatchLength => 'Dolžina dvoboja';

  @override
  String get onlineNoCubeTitle => 'Igraj brez kocke';

  @override
  String get onlineNoCubeSubtitle => 'V tem dvoboju ni kocke za podvajanje';

  @override
  String get onlineCreate => 'Ustvari';

  @override
  String get onlineWaitingOpponent => 'Čakanje na nasprotnika…';

  @override
  String get onlineShareCode => 'Deli to kodo';

  @override
  String get onlineCopyCode => 'Kopiraj kodo';

  @override
  String get onlineCodeCopied => 'Koda je kopirana';

  @override
  String get onlineJoinTitle => 'Pridruži se dvoboju';

  @override
  String get onlineRoomCode => 'Koda dvoboja';

  @override
  String get onlineJoin => 'Pridruži se';

  @override
  String get lanTitle => 'Igraj v bližini';

  @override
  String get lanTabHost => 'Gostitelj';

  @override
  String get lanTabJoin => 'Pridruži se';

  @override
  String get lanUnassistedNote =>
      'Lokalne igre nimajo sprotnega tutorja. Preglej poteze in po igri vadi napake.';

  @override
  String get lanGameStartFailed =>
      'Igre ni bilo mogoče začeti. Druga naprava se lahko znova poskusi pridružiti.';

  @override
  String get lanHostPortInUse =>
      'Gostovanja ni mogoče začeti — vrata so že zasedena. Zapri druge izvode Backgammon Buddy in poskusi znova.';

  @override
  String get lanHostStartFailed =>
      'Gostovanja ni mogoče začeti. Preveri povezavo Wi-Fi in poskusi znova.';

  @override
  String get lanHostTitle => 'Gostuj igro';

  @override
  String get lanStartHosting => 'Začni gostovanje';

  @override
  String get lanHostHelp =>
      'Obe napravi morata biti v istem omrežju Wi-Fi. Ta naprava meče kocke in vodi rezultat.';

  @override
  String get lanWaitingPlayerTitle => 'Čakanje na igralca';

  @override
  String get lanRoomCodeInfo =>
      'Povej to kodo drugemu igralcu. Omogoča mu vstop; aplikacija je nikoli ne pošlje prek omrežja.';

  @override
  String get lanWaitingPlayer => 'Čakanje na igralca…';

  @override
  String get lanStopHosting => 'Ustavi gostovanje';

  @override
  String lanFindNearbyPort(int port) {
    return 'Prosi drugo napravo, naj poišče igre v bližini. Poslušanje na vratih $port.';
  }

  @override
  String get lanOnNetwork => 'V tem omrežju';

  @override
  String get lanCopyAddress => 'Kopiraj naslov';

  @override
  String get lanAddressCopied => 'Naslov je kopiran';

  @override
  String get lanScanHostTitle => 'Skeniraj gostitelja';

  @override
  String get lanScanHostHelp =>
      'Druga naprava na zaslonu gostitelja prikaže QR-kodo. Skeniranje izpolni naslov in kodo sobe.';

  @override
  String get lanScanQr => 'Skeniraj QR-kodo';

  @override
  String get lanScannerUnavailable =>
      'Kamera ali dovoljenje ni na voljo. Spodaj vnesi naslov in kodo sobe.';

  @override
  String get lanInvalidQr =>
      'Ta QR-koda ni za Backgammon Buddy. Skeniraj tisto na zaslonu gostitelja druge naprave.';

  @override
  String get lanScannerFailed =>
      'Optičnega bralnika ni bilo mogoče odpreti. Spodaj vnesi naslov in kodo.';

  @override
  String get lanNearbyGames => 'Igre v bližini';

  @override
  String get lanSearching => 'Iskanje iger v bližini…';

  @override
  String get lanNoGamesFound =>
      'Iger ni bilo mogoče najti. Preveri, ali druga naprava gosti igro in sta obe v istem omrežju Wi-Fi, ali spodaj vnesi njen naslov.';

  @override
  String get lanStillSearching => 'Iskanje še poteka…';

  @override
  String get lanEnterAddress => 'Vnesi naslov';

  @override
  String get lanEnterAddressHelp =>
      'Samodejno odkrivanje ne deluje v vseh omrežjih in je lahko v sistemu iOS povsem blokirano. Zaslon gostitelja pokaže, kaj vnesti.';

  @override
  String get lanIpAddress => 'Naslov IP';

  @override
  String get lanPort => 'Vrata';

  @override
  String get lanInvalidPort => 'Vnesi vrata med 1 in 65535.';

  @override
  String get lanEnterAddressError => 'Vnesi naslov, prikazan na drugi napravi.';

  @override
  String get lanEnterRoomCodeError => 'Vnesi 4-mestno kodo z druge naprave.';

  @override
  String get lanJoinWrongCode =>
      'Napačna koda sobe. Preveri vse štiri številke.';

  @override
  String get lanJoinVersionMismatch =>
      'Druga naprava uporablja drugo različico Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Naprava se ni odzvala kot Backgammon Buddy. Preveri naslov in vrata.';

  @override
  String get lanJoinFailed =>
      'Pridružitev ni uspela. Preveri naslov in kodo ter poskusi znova.';

  @override
  String lanJoinTarget(Object name) {
    return 'Pridruži se: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Vnesi 4-mestno kodo, prikazano na drugi napravi.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Povezovanje z $name';
  }

  @override
  String get lanConnect => 'Poveži';

  @override
  String get lanBack => 'Nazaj';

  @override
  String get lanTryAgain => 'Poskusi znova';

  @override
  String get lanStatusBusy => 'Soba je zasedena — čakanje…';

  @override
  String get lanStatusReconnecting =>
      'Povezava je prekinjena — ponovni poskus…';

  @override
  String get lanStatusConnected => 'Povezano — začenjanje dvoboja…';

  @override
  String get lanStatusFailed => 'Pridružitev ni uspela.';

  @override
  String get lanStatusConnecting => 'Povezovanje…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostika je kopirana';

  @override
  String get diagnosticsReviewTitle => 'Preglej diagnostično poročilo';

  @override
  String get diagnosticsPrivacyNotice =>
      'Ob odprtju osnutka bodo na GitHub poslani spodnji podatki, vključno z različico aplikacije, platformo in podrobnostmi napake. Javno poročilo ne bo objavljeno, dokler ga tam ne oddaš. Če vsebuje zasebne podatke, prekliči in jih kopiraj za lastno pripravo poročila.';

  @override
  String get diagnosticsCancel => 'Prekliči';

  @override
  String get diagnosticsOpenGitHub => 'Odpri GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostika';

  @override
  String get diagnosticsReportTooltip => 'Prijavi težavo na GitHubu';

  @override
  String get diagnosticsCopyTooltip => 'Kopiraj v odložišče';

  @override
  String get diagnosticsClearTooltip => 'Počisti dnevnik';

  @override
  String get diagnosticsEmpty =>
      'Ni zabeleženih napak.\n\nČe gre kaj narobe, bo zapisano tukaj. Vrni se in kopiraj podatke v prijavo napake.';

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
    return 'Igra $number';
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
  String get gameHudPips => 'Pipi';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Podvoji';

  @override
  String get gameHudMoreActions => 'Več dejanj';

  @override
  String get gameHudSurrender => 'Odstopi…';

  @override
  String get gameHudThinking => 'Razmišljanje';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Podvojiš lahko le pred metom, ko si na potezi.';

  @override
  String get gameHudNoDoubleCrawford =>
      'V Crawfordovi igri ni podvajanja — ta igra odloči dvoboj.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Podvaja lahko le lastnik kocke; trenutno jo ima druga stran.';

  @override
  String get gameHudDoubleUnavailable => 'Podvajanje trenutno ni na voljo.';

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
    return '$winner je zmagal v tej igri ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner je zmagal v tej igri ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner je zmagal v tej igri ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner je zmagal v tej igri ($points) — $loser je zavrnil podvojitev.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner je zmagal v tej igri ($points) — $loser je odstopil.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Predaj napravo';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Na potezi je $name';
  }

  @override
  String get gameDialogTapToContinue => 'Tapni za nadaljevanje';

  @override
  String get gameDialogCubeOfferedTitle => 'Ponujena podvojitev';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler ponudi podvojitev na $value. Vzemi ali odstopi?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Odstopi';

  @override
  String get gameDialogTake => 'Vzemi';

  @override
  String get gameDialogResignationTitle => 'Ponujena predaja';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner ponudi predajo za $value. Sprejmi ali zavrni?';
  }

  @override
  String get gameDialogResignSingle => 'posamezna igra';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Zavrni';

  @override
  String get gameDialogAccept => 'Sprejmi';

  @override
  String gameResultGameNumber(int number) {
    return 'Igra $number';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Rezultat dvoboja: $score';
  }

  @override
  String get gameResultRolls => 'Meti';

  @override
  String get gameResultDiceNote =>
      'Povprečne vsote metov pogosto nihajo okoli 7. Ta majhen vzorec ne more dokazati pristranskosti kock.';

  @override
  String get gameResultRatingNotAvailable =>
      'Ocena potez še ni na voljo. Preglejte igro za celovito analizo.';

  @override
  String get gameResultRematch => 'Povratna igra';

  @override
  String get gameDialogGameOverTitle => 'Konec igre';

  @override
  String get gameDialogNextGame => 'Naslednja igra';

  @override
  String get gameDialogMatchOverTitle => 'Konec dvoboja';

  @override
  String get gameDialogNobody => 'Nihče';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner je zmagal v dvoboju.';
  }

  @override
  String get gameDialogSavedToHistory => 'Shranjeno v zgodovino';

  @override
  String get gameDialogDone => 'Končano';

  @override
  String get gameTapNoLegalMove =>
      'Te figure ni mogoče premakniti s preostalimi kockami';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Te figure ni mogoče premakniti s preostalimi kockami — poskusi razveljaviti';

  @override
  String get gameDragHint =>
      'Namig: povleci figure ali jih tapni — spremeni v nastavitvah';

  @override
  String get commonGotIt => 'Razumem';

  @override
  String get gameHintStageBeforeHint =>
      'Najprej odigraj celotno dovoljeno potezo, nato prosi za namig.';

  @override
  String get surrenderTitle => 'Predaja';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player preda trenutno igro.';
  }

  @override
  String get surrenderConcedes => 'Preda trenutno igro.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Na voljo na začetku poteze igralca $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Na voljo na začetku tvoje poteze';

  @override
  String get commonCancel => 'Prekliči';

  @override
  String get surrenderSingle => 'Posamezna (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kdo predaja to igro?';

  @override
  String get commonDone => 'Končano';

  @override
  String get cubeDouble => 'Podvoji';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Na potezi je drugi igralec.';

  @override
  String get cubeBlockedCrawford => 'Kocka v Crawfordovi igri ni na voljo.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Podvaja lahko le lastnik kocke; trenutno jo ima druga stran.';

  @override
  String get cubeBlockedUnavailable => 'Podvajanje trenutno ni na voljo.';

  @override
  String get gameStatusRolling => 'Metanje…';

  @override
  String get gameStatusThinking => 'Razmišljanje…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Na potezi je $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Podvoji — nasprotnik naj vzame';

  @override
  String get cubeAdviceOpponentPass => 'Podvoji — nasprotnik naj odstopi';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Napaka: $error';
  }

  @override
  String get privacyTitle => 'Zasebnost in podatki';

  @override
  String get privacyAppTitle => 'Backgammon Buddy avtorja Freevia';

  @override
  String get privacyIntro =>
      'Na tej strani je opisano, kako trenutna aplikacija obravnava vaše podatke.';

  @override
  String get privacyLocalTitle => 'Igre in poučevanje na vaši napravi';

  @override
  String get privacyLocalBody =>
      'Lokalne tekme, nastavitve, analize in napredek pri vadbi so shranjeni v tej napravi. Tukaj delujeta igralni pogon in razlaga trenerja. Če shranjeno tekmo izbrišete iz Arhiva iger, se izbrišejo tudi shranjene vaje in poskusi za to tekmo. Posamezne vaje lahko izbrišete ali ponastavite napredek v razdelku Učenje in vadba; lokalna poročila o napakah izbrišite v Nastavitve → Diagnostika. Varnostne kopije naprave lahko vključujejo tudi zgodovino tekem. Podatki za spletno prijavo so shranjeni v zaščitenem pomnilniku naprave.';

  @override
  String get privacyOnlineTitle => 'Igrajte na spletu in v bližini';

  @override
  String get privacyOnlineBody =>
      'Spletna igra pošlje v Google Firebase anonimen identifikator igralca, nastavitve tekme, poteze in zapise protokola za usklajevanje metov kock, da lahko oba igralca igrata isto tekmo. Izbris zgodovine v tej napravi ne izbriše spletnih zapisov. Gostovane tekme potečejo 30 dni po ustvarjanju; načrtovano čiščenje odstrani njihove dnevnike iz oblaka. Zapisi tekem so shranjeni v EU; Firebase Authentication obdeluje podatke za prijavo v Združenih državah. Povezave z Googlom so med prenosom šifrirane. Pri igri v bližini si napravi izmenjujeta podatke o tekmi prek nešifrirane lokalne povezave; uporabljajte zaupanja vredno omrežje Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle =>
      'Izbirna diagnostika uporabe in zrušitev';

  @override
  String get privacyDiagnosticsBody =>
      'Skupna raba je izklopljena, dokler je ne vklopite v nastavitvah. Če jo vklopite, Google Firebase prejema dogodke uporabe, podatke o aplikaciji in napravi, meritve zmogljivosti ter poročila o zrušitvah, da pomaga izboljšati aplikacijo. Skupno rabo lahko kadar koli izklopite in tako ustavite zbiranje novih izbirnih podatkov. Že poslanih podatkov to ne izbriše. Lokalna diagnostika in spletne tekme niso odvisne od te nastavitve.';

  @override
  String get privacyCameraTitle => 'Kamera za bližnje kode QR';

  @override
  String get privacyCameraBody =>
      'Izbirna kamera skenira kode QR za igro v bližini. Slike se obdelajo v napravi, ne shranijo in ne naložijo. Dostop do kamere lahko zavrnete in naslov gostitelja vnesete ročno. Ta različica ne uporablja mikrofona in ne omogoča igranja na fizični igralni plošči.';

  @override
  String get privacyFeedbackTitle =>
      'Povratne informacije, ki jih želite poslati';

  @override
  String get privacyFeedbackBody =>
      'Povratne informacije odprejo osnutek prijave na GitHubu, ki ga lahko pregledate. Ko odprete osnutek, se na GitHub pošljeta različica aplikacije in platforma; povratne informacije z zaslona Diagnostika lahko vsebujejo tudi podrobnosti o napaki. Prijava ni objavljena, dokler je ne pošljete. Prijave so lahko javne, zato pred pošiljanjem odstranite zasebne podatke.';

  @override
  String get privacyContactTitle => 'Kontakt za zasebnost';

  @override
  String get privacyReadPolicy => 'Preberite pravilnik o zasebnosti';

  @override
  String get privacyPolicyOpenFailed =>
      'Ni bilo mogoče odpreti pravilnika o zasebnosti.';

  @override
  String get privacySupportTitle => 'Pomoč in podpora';

  @override
  String get privacySupportOpenFailed =>
      'Podpore ni bilo mogoče odpreti. Obrnite se na support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Želite izbrisati spletno identiteto in podatke?';

  @override
  String get privacyDeleteConfirmBody =>
      'Dostop obeh igralcev do tekem v oblaku, povezanih s to identiteto, se takoj prekine. Zahteva se izbris identitete in skupnih dnevnikov spletnih tekem v 30 dneh. Google lahko po izbrisu računa potrebuje do 180 dni, da iz aktivnih in varnostnih sistemov odstrani podatke za preverjanje pristnosti. Lokalna zgodovina tekem in vadbene naloge ostanejo v tej napravi. Predhodno poslani izbirni diagnostični podatki se obravnavajo ločeno; glede njih se obrnite na privacy@freevia.org. Te zahteve ni mogoče preklicati.';

  @override
  String get privacyRequestDeletion => 'Zahtevaj izbris';

  @override
  String get privacyDeleteSectionTitle => 'Brisanje spletnih podatkov';

  @override
  String get privacyDeleteInstructions =>
      'Za potrditev lastništva uporabite prijavne podatke, shranjene v tej napravi. Sam identifikator igralca ali koda povabila ne dokazuje lastništva. Za igranje samo v tej napravi ne potrebujete spletnega računa.';

  @override
  String get privacySendingRequest => 'Pošiljanje zahteve …';

  @override
  String get privacyDeleteAction => 'Izbrišite spletno identiteto in podatke';

  @override
  String get privacyDeleteRequested =>
      'Zahteva za izbris je bila poslana. Ta spletna identiteta je odjavljena. Njeni podatki v oblaku bodo izbrisani v 30 dneh. Ko znova začnete spletno igro, bo ustvarjena nova identiteta. Google lahko za odstranitev podatkov za preverjanje pristnosti potrebuje do 180 dni. Za pomoč se obrnite na privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Zahteva za izbris je bila poslana. Podatki v oblaku bodo izbrisani v 30 dneh. Naprava ni mogla izbrisati shranjenih podatkov za prijavo, vendar spletna identiteta nima več dostopa do tekem. Google lahko za odstranitev podatkov za preverjanje pristnosti potrebuje do 180 dni. Za pomoč se obrnite na privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'V tej napravi ni shranjenega uporabnega spletnega identifikatorja. Nov račun ni bil ustvarjen. Če ste že igrali prek spleta, za pomoč pišite na privacy@freevia.org; gostovane tekme potečejo 30 dni po ustvarjanju.';

  @override
  String get privacyDeleteRequestFailed =>
      'Zahteve za izbris ni bilo mogoče potrditi. Preverite povezavo in poskusite znova ali pišite na privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Želite deliti diagnostiko uporabe in zrušitev?';

  @override
  String get privacyConsentBody =>
      'Ta možnost pošilja dogodke uporabe, podatke o aplikaciji in napravi, poročila o zrušitvah ter meritve zmogljivosti v Google Firebase. Skupna raba je neobvezna. Igre in vadba delujejo tudi, ko je skupna raba izklopljena; kadar koli jo lahko izklopite v nastavitvah.';

  @override
  String get privacyKeepOff => 'Naj ostane izklopljeno.';

  @override
  String get privacyShareDiagnostics => 'Delite diagnostiko';

  @override
  String get privacySaveFailed =>
      'Izbire zasebnosti ni bilo mogoče shraniti. prosim poskusite ponovno';

  @override
  String get privacySettingsSubtitle =>
      'Kaj ostane v vaši napravi in kaj se deli';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Delite diagnostiko uporabe in zrušitev';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Izbirno · privzeto izklopljeno';

  @override
  String get lanScanToJoin => 'Skeniraj, da se pridružiš';

  @override
  String get lanScanHostCode => 'Skenirajte kodo gostitelja';

  @override
  String get lanEnterAddressInstead => 'Namesto tega vnesite naslov';

  @override
  String get lanQrAccessibilityLabel => 'Koda QR za pridružitev tej igri';

  @override
  String get lanJoinInstruction =>
      'V drugi napravi odprite Igraj v bližini, izberite Pridruži se in skenirajte to kodo QR.';

  @override
  String get lanTorch => 'Bliskavica';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy ne more uporabljati kamere. Dovolite dostop do kamere v nastavitvah naprave ali ročno vnesite naslov, ki je prikazan na drugi napravi.';

  @override
  String get lanCameraUnsupported =>
      'Ta naprava ne more skenirati kod QR. Ročno vnesite naslov, prikazan na drugi napravi.';

  @override
  String get lanCameraStartFailed =>
      'Kamere ni bilo mogoče zagnati. Ročno vnesite naslov, prikazan na drugi napravi.';

  @override
  String get lanPointCameraAtQr =>
      'Kamero usmerite proti kodi QR na drugi napravi.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Igranje na fizični igralni plošči v tej različici ni na voljo. Zaslonske igre, učenje in vadba so na voljo na začetnem zaslonu.';

  @override
  String get homePlayWithBuddy => 'Igraj z Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Igralna plošča za backgammon. $status';
  }

  @override
  String get boardWhiteToRoll => 'Bele figure so na potezi za met kock.';

  @override
  String get boardBlackToRoll => 'Črne figure so na potezi za met kock.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Bele figure so na potezi; na kockah je $die1 in $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Črne figure so na potezi; na kockah je $die1 in $die2.';
  }

  @override
  String get boardDoubleOffered => 'Ponujeno je podvajanje kocke.';

  @override
  String get boardResignationOffered => 'Ponujena je predaja partije.';

  @override
  String get boardGameOver => 'Igra je končana.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Napaka]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Ideja]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Zamenjajte to s kratkim opisom, kaj se je zgodilo.';

  @override
  String get feedbackBugReproduction =>
      'Zamenjajte to s koraki, ki so pripeljali do težave.';

  @override
  String get feedbackBugExpected =>
      'Zamenjajte to s tem, kar ste pričakovali, da se bo zgodilo.';

  @override
  String get feedbackIdeaNeed =>
      'Nadomestite to s tem, kar ste želeli narediti ali naučiti.';

  @override
  String get feedbackIdeaSuggestion =>
      'Zamenjajte to s spremembo, ki bi se vam zdela koristna.';

  @override
  String get feedbackExcerptTruncated =>
      '(prirezano — uporabite Kopiraj v odložišče na diagnostičnem zaslonu za celoten dnevnik)';

  @override
  String get boardWhiteToMoveNoRoll => 'Bele figure so na potezi.';

  @override
  String get boardBlackToMoveNoRoll => 'Črne figure so na potezi.';

  @override
  String get feedbackFieldVersion => 'Različica aplikacije';

  @override
  String get feedbackFieldPlatform => 'Platforma';

  @override
  String get feedbackFieldSummary => 'Kaj se je zgodilo';

  @override
  String get feedbackFieldReproduction => 'Koraki za razmnoževanje';

  @override
  String get feedbackFieldExpected => 'Pričakovan rezultat';

  @override
  String get feedbackFieldNeed => 'Kaj ste želeli narediti?';

  @override
  String get feedbackFieldIdea => 'Predlagana sprememba';

  @override
  String get buddySetupTitle => 'Igraj z Buddyjem';

  @override
  String get buddySetupSideLabel => 'Buddy igra';

  @override
  String get buddySetupSeatLabel => 'Tvoja stran';

  @override
  String get buddySetupSeatNear => 'Ob telefonu';

  @override
  String get buddySetupSeatFar => 'Nasproti';

  @override
  String get buddySetupSeatHelp =>
      'Na kateri strani igralne plošče sediš? Tako Buddy oštevilči polja in loči tvoj začetni met od svojega.';

  @override
  String get buddySetupVoiceLabel => 'Kako govori Buddy';

  @override
  String get buddySetupVoiceTerse => 'Jedrnato';

  @override
  String get buddySetupVoiceFriendly => 'Prijazno';

  @override
  String get buddySetupVoiceTerseHelp =>
      '»13/8, 24/22« — zapis, kot se ob plošči pogovarjata dva igralca.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '»Premakni eno figuro s 13 na 8 in eno s 24 na 22.«';

  @override
  String get buddySetupTutorHelp =>
      'Komentarji in razlage potez sledijo shranjenim nastavitvam Tutorja. Buddy občasno komentira tvoje poteze; vnos meta in ročne poteze delujejo enako.';

  @override
  String get buddySetupCalibrate => 'Umeri ploščo';

  @override
  String get buddyFixAim => 'Popravi kader';

  @override
  String get buddyWaitingForOpening => 'Buddy čaka na met, ki začne partijo.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy je izgubil ploščo. Popravi kader in partija se bo nadaljevala tam, kjer se je ustavila.';

  @override
  String get buddyPromptWaitingPicture =>
      'Čakam na sliko, ki jo Buddy lahko prebere. Nič ni izgubljeno.';

  @override
  String get buddyPromptTypeDice => 'Buddy ne vidi kock. Vnesi met ročno.';

  @override
  String get buddyPromptPlay =>
      'Izvedi potezo na plošči. Če je Buddy ne vidi, jo vnesi tukaj.';

  @override
  String get buddyPromptWhichPlay => 'Katero potezo si izvedel?';

  @override
  String get buddyPromptCube => 'Buddy podvoji. Sprejmeš ali odstopiš?';

  @override
  String get buddyPromptMakeMove =>
      'Izvedi Buddyjevo potezo na plošči, nato bo nadaljeval.';

  @override
  String get buddyPromptThinking => 'Buddy razmišlja.';

  @override
  String get buddyPromptWaitingCalibration => 'Čakam na umerjanje.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy še vedno ne vidi svoje poteze. Spodnja plošča prikazuje položaj, ki ga spremlja.';

  @override
  String get buddyPromptNotLegal => 'Ta poteza ni dovoljena.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Ta poteza ni dovoljena. $reason';
  }

  @override
  String get buddyThrowOpening => 'Vrzi začetni kocki — vsak po eno.';

  @override
  String get buddyThrowUser => 'Vrzi svoje kocke.';

  @override
  String get buddyThrowBuddy => 'Vrzi Buddyjeve kocke.';

  @override
  String get buddyMatchOver => 'Partija je končana.';

  @override
  String get buddyYouWin => 'Zmagal si partijo.';

  @override
  String get buddyBuddyWins => 'Buddy je zmagal partijo.';

  @override
  String get buddyDoubleNoGame =>
      'Za zdaj še ni igre za podvojitev — najprej vrzi začetni kocki.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Podvojiš lahko le na svoji potezi in pred metom.';

  @override
  String get buddyDoubleCrawford =>
      'V Crawfordovi partiji ni podvojitev — ta posamezna partija odloči dvoboj.';

  @override
  String get buddyDoubleNotOwner =>
      'Podvoji lahko le lastnik kocke, trenutno pa je kocka pri drugi strani.';

  @override
  String get buddyDoubleUnavailable => 'Podvojitev trenutno ni na voljo.';

  @override
  String get buddyLookingAtBoard => 'Buddy gleda ploščo.';

  @override
  String get buddyCameraPlayFallback =>
      'Partijo lahko nadaljuješ: vsak met vnesi na ploščici za kocke, poteze pa izvedi na spodnji plošči.';

  @override
  String get buddySkipCheck => 'Preskoči preverjanje';

  @override
  String get buddyFixedIt => 'Popravil sem';

  @override
  String get buddyDrop => 'Odstopi';

  @override
  String get buddyTake => 'Sprejmi';

  @override
  String get buddyDone => 'Končano';

  @override
  String get buddyTranscriptLabel => 'Kaj je rekel Buddy';

  @override
  String get buddyUndo => 'Razveljavi';

  @override
  String get buddyConfirm => 'Potrdi';

  @override
  String get buddyDice => 'Kocke';

  @override
  String get buddyDouble => 'Podvoji';

  @override
  String get buddyDicePadTitle => 'Kaj si vrgel?';

  @override
  String get buddyEnterRoll => 'Vnesi met';

  @override
  String get buddyContextBeforeGame => 'Igraj z Buddyjem';

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
      'Kamere ni bilo mogoče zagnati. Preveri dovoljenja in poskusi znova.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy nima dovoljenja za uporabo kamere. Dovoli dostop v nastavitvah naprave in poskusi znova.';

  @override
  String get buddyCalibrationTitle => 'Pokaži Buddyju ploščo';

  @override
  String get buddyCalibrationCornersFold =>
      'Štiri zunanje ročice povleci na vogale igralne površine, ne na lesen rob; štiri manjše pa na stike tečaja z oddaljenim in bližnjim robom.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Vsako ročico povleci na vogal igralne površine, ne na lesen rob.';

  @override
  String get buddyCalibrationCheckLines =>
      'Nato preveri dvanajst črt na vsaki polovici: vsaka naj poteka vzdolž polja. Če zgreši polje, premakni ustrezno ročico.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Katera polovica je tvoje domače območje?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Polovica bližje spodnjemu robu slike. Ta določi oštevilčenje polj, zgornje črte pa se poravnajo z njo.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Telefon drži pri miru. Buddy čaka, da se slika umiri, preden se nauči ploščo.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Je to tvoja plošča?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy gleda ploščo, ki se jo je pravkar naučil.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Figure, narisane čez sliko, kažejo, kje Buddy misli, da so. Če je katera napačno, začni znova — zdaj traja le nekaj sekund, pozneje pa lahko pokvari partijo.';

  @override
  String get buddyCalibrationNext => 'Naprej';

  @override
  String get buddyCalibrationBack => 'Nazaj';

  @override
  String get buddyCalibrationCapture => 'Zajemi';

  @override
  String get buddyCalibrationStartOver => 'Začni znova';

  @override
  String get buddyCalibrationLooksRight => 'Videti je prav';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Te štiri ročice ne obdajajo plošče — ena prečka drugo. Povleci jih nazaj na vogale igralne površine.';

  @override
  String get buddyCalibrationPrepTitle => 'Najprej tri stvari';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Umakni kocke s plošče.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy se zdaj uči prazno ploščo. Če kocka ostane na igralni površini, jo bo prepoznal kot del plošče in v tej seji kock ne bo več videl.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Figure postavi v začetni položaj.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Trideset figur na znanih mestih Buddyju pove, kateri sta barvi plošče, ne da bi mu ju moral povedati.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'V kader spravi celotno igralno površino.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Nato pusti telefon pri miru. Če se premakne, bo Buddy povedal, ti pa lahko znova prilagodiš vogale.';

  @override
  String get buddyCalibrationBoardKind => 'Kakšno ploščo imaš?';

  @override
  String get buddyCalibrationFlatBoard => 'Ravna plošča';

  @override
  String get buddyCalibrationFoldingBoard => 'Zložljiva plošča';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Zložljiva plošča potrebuje še štiri ročice na stikih tečaja.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Način Buddy spremlja pravo ploščo, zato brez kamere ne more začeti. Vse drugo v aplikaciji še naprej deluje.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Stik tečaja $number od 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Vogal plošče $number od 4';
  }

  @override
  String get buddyNudgeLeft => 'Premakni levo';

  @override
  String get buddyNudgeRight => 'Premakni desno';

  @override
  String get buddyNudgeUp => 'Premakni navzgor';

  @override
  String get buddyNudgeDown => 'Premakni navzdol';

  @override
  String get buddyCalibrationProblemCorners =>
      'Ti štirje vogali ne obdajajo plošče. Vsako ročico povleci na vogal igralne površine in poskusi znova.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Teh osem točk ne obroblja zložljive plošče. Štiri postavi na vogale igralne površine, štiri pa na stike tečaja, nato poskusi znova.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Same plošče ne razločim — povsem je zakrita ali izgubljena v senci oziroma bleščanju. Sprosti ploščo, dodaj svetlobo in poskusi znova.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Ne razločim $region — morda nekaj leži na njem ali pa je vogal pretemen. Odstrani oviro ali dodaj svetlobo in poskusi znova.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Obe barvi figur sta od tod videti preveč podobni. Običajno pomaga več svetlobe ali kot z manj bleščanja.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Figure niso v začetnem položaju — na polju $number je figura napačne barve. Postavi ploščo v začetni položaj in jo znova umeri.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Na ploščo pada preveč svetlobe, zato se barve zlivajo. Zatemni prostor ali premakni telefon, da se svetilka ne bo odbijala naravnost v kamero.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Ploščo lahko preberem, vendar ni pripravljena za začetek partije. Postavi figure v začetni položaj in jo znova umeri.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Ploščo lahko preberem, vendar ne razločim, koliko ena figura zakriva drugo, zato bi jih napačno preštel. Običajno pomaga več svetlobe na bližnjih poljih ali nekoliko višji kot kamere.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Ne vidim cele plošče. Odmakni telefon ali povleci vogale na igralno površino.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Cele plošče ne vidim več — $region je zunaj slike. Znova poravnaj kamero ali preveri vogale.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Videti je kot začetni položaj.';

  @override
  String get buddyConfirmNoCheckers =>
      'Nobene figure ne vidim na začetnih mestih. Postavi ploščo za začetek partije in poskusi znova.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Plošča ni postavljena za začetek partije: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region je videti prazno, vendar so na začetku partije tam figure $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'Na območju $region so figure $side, vendar mora biti na začetku prazno';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'Na območju $region so figure $observed, začetni položaj pa predvideva $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Za trenutek miruj — ko se telefon premika, izgubim ploščo.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Dobil sem drugo sliko od tiste, na kateri je bila plošča nastavljena, zato je ne morem poravnati. Ploščo nastavi znova od tukaj.';

  @override
  String get buddyReadabilityBlur =>
      'Slika je preveč neostra, da bi prebral ploščo. Počakaj trenutek, da kamera izostri.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Plošča ni več tam, kjer sem se je naučil. Znova poravnaj vogale in takoj nadaljujem partijo.';

  @override
  String get buddyReadabilityOccluded =>
      'Nekaj prekriva del plošče. Nadaljujem, ko bo spet vidna.';

  @override
  String get buddyReadabilityClear => 'Ploščo vidim.';

  @override
  String get buddyReadabilityColorChanged =>
      'Barva svetlobe na plošči se je spremenila, zato ni več videti kot tista, ki sem se je naučil. V tej svetlobi znova poravnaj vogale in nadaljujem partijo.';

  @override
  String get buddyReadabilityTooDark =>
      'Pretemno je, da bi prebral ploščo. Dodaj malo svetlobe in nadaljujem, kjer sva končala.';

  @override
  String get buddyReadabilityTooBright =>
      'Na ploščo pada preveč svetlobe in barve se zlivajo. Zatemni prostor ali premakni telefon, da se svetilka ne odbija v kamero.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy še vedno ne vidi svoje poteze — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nPartijo lahko nadaljuješ: vsak met vnesi na ploščici za kocke, poteze pa izvedi na spodnji plošči.';
  }

  @override
  String get buddyCameraGenericError =>
      'Kamere ni bilo mogoče zagnati. Preveri dovoljenja in poskusi znova.';

  @override
  String buddyRegionPoint(int number) {
    return 'polje $number';
  }

  @override
  String get buddyRegionBar => 'prečka';

  @override
  String get buddyRegionWhiteTray => 'pladenj za pobrane bele figure';

  @override
  String get buddyRegionBlackTray => 'pladenj za pobrane črne figure';

  @override
  String get buddyRegionDiceZone => 'sredina plošče';

  @override
  String get buddyCalibrationProblemVisible =>
      'Ne vidim cele plošče. Odmakni telefon ali povleci vogale na igralno površino.';

  @override
  String buddyConfirmMore(int number) {
    return ' (in še $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Vsak vrže po eno kocko. Vrednosti določita, kdo začne.';

  @override
  String get buddyDiceOpeningFirst => 'Bela kocka';

  @override
  String get buddyDiceOpeningSecond => 'Črna kocka';

  @override
  String get buddyDiceRegularCaption =>
      'Vrednosti obeh kock v poljubnem vrstnem redu.';

  @override
  String get buddyDiceRegularFirst => 'Ena kocka';

  @override
  String get buddyDiceRegularSecond => 'Druga kocka';

  @override
  String get evaluationEngine => 'Mehanizem ocenjevanja';

  @override
  String get parallelEngineAnalysis => 'Analiziraj z obema mehanizmoma';

  @override
  String get parallelEngineExplanation =>
      'Primerjajte ločene nasvete wildbg in GNUbg v vaditelju.';

  @override
  String get engineComparison => 'Primerjava mehanizmov';

  @override
  String get engineWinChance => 'Možnost zmage';

  @override
  String get buddyBar => 'bar';

  @override
  String get buddyOff => 'izklopljeno';

  @override
  String get buddyHitSuffix => ', udarjanje';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Premakni en žeton iz $from v $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Premakni $count žetonov iz $from v $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Odnesite en dam od $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Odnesite $count dama od $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Vrgel sem $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Vrgli ste $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Oba sta zavrgla $die. Ponovno zavijte.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Ni igre, torej ste na vrsti vi.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Ni igre, zato je na vrsti Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Ni igre — ti prideš na vrsto.';

  @override
  String get buddySpeechNoPlayBack => 'Ni igre, zato se vrnemo k vam.';

  @override
  String get buddySpeechIllegalPlay => 'To ni legalna igra.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'To ni čisto prav. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Tabla se razlikuje od igre: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: igra pričakuje $expected $side dama; kamera vidi $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Verjamem vam na besedo. Te dežele nisem mogel videti, tako da, če sva se razšla, se bo to pokazalo kot igra, ki je ne morem brati.';

  @override
  String get buddySpeechBuddyDouble => 'Podvojim — vzamem ali spustim?';

  @override
  String get buddySpeechYouDouble => 'Podvajaš se.';

  @override
  String get buddySpeechBuddyTakes => 'vzamem.';

  @override
  String get buddySpeechYouTake => 'Ti vzameš.';

  @override
  String get buddySpeechBuddyDrops => 'spustim se.';

  @override
  String get buddySpeechYouDrop => 'Spustiš se.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Zmagal sem v tej igri: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Zmagaš v tej igri: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'To mi ustreza.';

  @override
  String get buddySpeechMatchWinnerYou => 'Zmagal si na tekmi.';

  @override
  String get buddyTutorLastPlayBest =>
      'Vaša zadnja igra se je ujemala z najboljšim motorjem.';

  @override
  String get buddyTutorLastPlayClose =>
      'Vaša zadnja igra je bila blizu najboljšemu motorju.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Pri vašem zadnjem predvajanju je motor izbral $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Namesto $played pusti $best nasprotnih damarjev na palici.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Namesto $played pušča $best madežev.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Vsebuje $best točk domače deske namesto $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Namesto $played ima $best dama.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Razvrstitev tehta ocenjene zmage in zmage; nobena funkcija posamezne plošče tega ne razloži.';

  @override
  String buddySpeechPlay(String move) {
    return 'Predvajaj $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Vrgel sem $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Preveri potrditev izbrisa';

  @override
  String get privacyDeletionReceiptHelp =>
      'Po zahtevi za izbris se vrnite sem in preverite, ali je postopek končan. Vaše zasebno potrdilo o zahtevi ostane v tej napravi in deluje po odjavi. Preverjanje ne ustvari računa. Potrditve dokončanega izbrisa so na spletu na voljo 90 dni; to namestitev ohranite do potrditve.';

  @override
  String get privacyDeletionReceiptNone =>
      'V tej napravi ni shranjenega potrdila o zahtevi za izbris. Za prejšnje zahteve ali izgubljeno napravo se obrnite na podporo.';

  @override
  String get privacyDeletionReceiptPending =>
      'Izbris še ni potrjen. Obdelava lahko traja do 30 dni. Preverite pozneje. Če je minilo več kot 30 dni, se obrnite na podporo. Nedostopno ali poteklo potrdilo o zahtevi ni dokaz izbrisa.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Izbris je končan: vse zahteve, shranjene v tej napravi, so potrjene kot zaključene. S tem se ne izbriše spletna identiteta, ustvarjena pozneje. Lokalna zgodovina in učni podatki ostanejo. Google lahko hrani varnostne kopije in varnostne dnevnike, kot je opisano v pravilniku o zasebnosti.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Potrditve izbrisa ni bilo mogoče preveriti. Poskusite znova, ko ste povezani, ali se obrnite na podporo. To ne potrjuje dokončanega izbrisa.';
}
