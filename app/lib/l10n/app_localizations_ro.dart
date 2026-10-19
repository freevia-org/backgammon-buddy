// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

  @override
  String get homeTagline => 'Îmbunătățește-ți jocul cu un antrenor';

  @override
  String get settings => 'Setări';

  @override
  String get playVsComputer => 'Joacă împotriva calculatorului';

  @override
  String get twoPlayers => 'Doi jucători';

  @override
  String get playNearby => 'Joacă în apropiere';

  @override
  String get playOnline => 'Joacă online';

  @override
  String get learningPractice => 'Învață și exersează';

  @override
  String get gamesArchive => 'Arhiva jocurilor';

  @override
  String get followSystem => 'Limba dispozitivului';

  @override
  String get white => 'Albe';

  @override
  String get black => 'Negre';

  @override
  String get random => 'Aleatoriu';

  @override
  String get startMatch => 'Începe jocul';

  @override
  String get tutor => 'Antrenor';

  @override
  String get noMovesPass => 'Nu există mutări — pasează';

  @override
  String get undo => 'Anulează';

  @override
  String get confirm => 'Confirmă';

  @override
  String get roll => 'Aruncă';

  @override
  String get hint => 'Indiciu';

  @override
  String get tutoringStyle => 'Stilul de instruire';

  @override
  String get tutorStyleCoach => 'Antrenor';

  @override
  String get tutorStyleHintsOnly => 'Doar indicii';

  @override
  String get tutorStyleTryFirst => 'Încearcă mai întâi';

  @override
  String get tutorCoachDescription =>
      'Indicații despre poziție, feedback pentru mutări, sugestii și sfaturi despre cub.';

  @override
  String get tutorHintsDescription =>
      'Mutări clasificate, la cerere. Indicațiile despre poziție și feedbackul automat după mutare rămân dezactivate.';

  @override
  String get tutorTryFirstDescription =>
      'Încearcă mutarea înainte să vezi mutările clasificate sau evaluarea; îndrumarea pe tablă rămâne activă.';

  @override
  String get tutorCustomDescription =>
      'Combinație personalizată. Ajustează oricare dintre opțiunile de mai jos.';

  @override
  String get tutorBestMoveHints => 'Sugestii pentru cea mai bună mutare';

  @override
  String get tutorRevealRankedPlays =>
      'Afișează mutările clasificate în timp ce alegi';

  @override
  String get tutorMoveExplanations => 'Explicații pentru mutări';

  @override
  String get tutorCompareEstimates =>
      'Compară estimările și schimbările de pe tablă';

  @override
  String get tutorGameCommentary => 'Comentarii despre joc';

  @override
  String get tutorPositionPrompts =>
      'Indicații despre poziție și feedback după fiecare mutare';

  @override
  String get tutorCubeAdvice => 'Sfaturi despre cub';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Sugestii de dublare, acceptare și renunțare în funcție de scorul meciului';

  @override
  String get tutorTryMoveFirst => 'Încearcă mai întâi o mutare';

  @override
  String get tutorStageBeforeHints =>
      'Încearcă mutarea înainte să afișezi sugestiile sau evaluarea';

  @override
  String get tutorStaticEstimateNote =>
      'Estimare statică rapidă (0-ply, fără simulări); notele descriu schimbările de pe tablă și răspunsurile posibile, nu garantează ce se va întâmpla.';

  @override
  String get tutorWhatToWatchNext => 'La ce să fii atent în continuare';

  @override
  String get tutorMoreBoardDetails => 'Mai multe detalii despre tablă';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Estimări și cum funcționează';

  @override
  String get tutorEstimateLimitations =>
      'Profunzime: evaluare statică realizată de rețeaua neuronală după fiecare mutare legală (0-ply), fără simulări sau căutarea răspunsurilor viitoare. MWC ține cont de scor: ponderază aceste estimări ale rezultatelor în funcție de scorul meciului și de cubul actual; nu modelează acțiunile viitoare cu cubul. Echitatea fără cub reprezintă punctele așteptate la cubul 1 când scorul nu este disponibil. Observațiile despre tablă descriu mutarea, nu raționamentul intern al motorului neuronal. Apropierea estimărilor nu garantează certitudine; nu există un interval de încredere calibrat.';

  @override
  String get tutorPointNumberNote =>
      'În notele de instruire, punctele se numără din perspectiva tablei de casă a jucătorului care mută.';

  @override
  String get tutorHittingRollNote =>
      'Numărul aruncărilor care permit lovirea include toate cele 36 de rezultate ordonate ale zarurilor și loviturile directe sau indirecte legale; sunt oportunități, nu o predicție a alegerii adversarului.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Nu există alternative evaluate pentru această mutare.';

  @override
  String get tutorForcedPassNoDecision =>
      'La un pas forțat nu există o decizie de mutare a pieselor.';

  @override
  String get settingsReset => 'Resetează';

  @override
  String get settingsAppLanguage => 'Limba aplicației';

  @override
  String get settingsTheme => 'Temă';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsThemeLight => 'Luminoasă';

  @override
  String get settingsThemeDark => 'Întunecată';

  @override
  String get settingsAnimationSpeed => 'Viteza animației';

  @override
  String get settingsAnimationNone => 'Fără animație';

  @override
  String get settingsAnimationNormal => 'Normală';

  @override
  String get settingsAnimationFast => 'Rapidă';

  @override
  String get settingsDiceRollAnimation => 'Animația aruncării zarurilor';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Agită zarurile înainte de fiecare aruncare';

  @override
  String get settingsDefaultMatchLength => 'Durata implicită a meciului';

  @override
  String get settingsDefaultDifficulty => 'Dificultatea implicită';

  @override
  String get settingsDifficultyEasy => 'Ușor';

  @override
  String get settingsDifficultyMedium => 'Mediu';

  @override
  String get settingsDifficultyHard => 'Dificil';

  @override
  String get settingsDifficultyExpert => 'Expert';

  @override
  String get settingsTutorModeDefault => 'Modul implicit al tutorului';

  @override
  String get settingsTutorAuto => 'Automat';

  @override
  String get settingsTutorOn => 'Activat';

  @override
  String get settingsTutorOff => 'Dezactivat';

  @override
  String get settingsTutorModeHelp =>
      'Automat activează tutorul la orice nivel al calculatorului. Activat și Dezactivat stabilesc alegerea inițială pentru meciurile locale. Meciurile din apropiere și cele online nu au asistență; jocurile salvate pot fi analizate ulterior. Preferințele de învățare de mai jos se salvează pe acest dispozitiv.';

  @override
  String get settingsTutorPreferences => 'Preferințele tutorului';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Setări implicite pentru meciurile viitoare';

  @override
  String get settingsTutorSaveError =>
      'Preferințele tutorului nu au putut fi salvate.';

  @override
  String get settingsGameplay => 'Joc';

  @override
  String get settingsMoveHighlights => 'Evidențierea mutărilor';

  @override
  String get settingsMoveHighlightsHelp =>
      'Încercuiește piesele care pot fi selectate și luminează destinațiile posibile';

  @override
  String get settingsDragToMove => 'Trage pentru a muta';

  @override
  String get settingsDragToMoveHelp =>
      'Trage o piesă la destinație (atingerile funcționează întotdeauna)';

  @override
  String get settingsCombinedMoves => 'Mutări combinate';

  @override
  String get settingsCombinedMovesHelp =>
      'O atingere mută o piesă folosind ambele zaruri';

  @override
  String get settingsRotateBoard => 'Rotește tabla între ture';

  @override
  String get settingsRotateBoardHelp =>
      'Joc pe rând: întoarce perspectiva pentru jucătorul activ';

  @override
  String get settingsPassDevice => 'Ecran pentru predarea dispozitivului';

  @override
  String get settingsPassDeviceHelp =>
      'Acoperă tabla între turele jocului pe rând';

  @override
  String get settingsShowScore => 'Afișează scorul';

  @override
  String get settingsShowScoreHelp =>
      'Afișează scorul actual al meciului în antet';

  @override
  String get settingsBuddyMode => 'Stilul lui Buddy';

  @override
  String get settingsBuddyTerse => 'Succint';

  @override
  String get settingsBuddyFriendly => 'Prietenos';

  @override
  String get settingsBuddyTerseHelp =>
      'Cum rostește Buddy o mutare: „13/8, 24/22” — notația folosită de jucători la tablă.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Cum rostește Buddy o mutare: „Mută o piesă de la 13 la 8 și una de la 24 la 22.”';

  @override
  String get settingsListenForDice => 'Ascultă zarurile';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy privește tabla mai devreme când aude o aruncare. Dezactivarea nu schimbă nimic altceva.';

  @override
  String get settingsDiagnostics => 'Diagnosticare';

  @override
  String get settingsErrorLog => 'Jurnal de erori';

  @override
  String get settingsErrorLogHelp =>
      'Erori recente, gata de copiat într-o raportare de eroare';

  @override
  String get settingsReportBug => 'Raportează o problemă';

  @override
  String get settingsReportBugHelp =>
      'Deschide un formular de raportare ghidat pe GitHub';

  @override
  String get settingsSuggestIdea => 'Sugerează o idee';

  @override
  String get settingsSuggestIdeaHelp =>
      'Ajută-ne să îmbunătățim tutorul și jocul';

  @override
  String get settingsAbout => 'Despre aplicație';

  @override
  String get settingsOpenSourceLicenses => 'Licențe open-source';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partida s-a încheiat.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Revezi mutările pentru a găsi o decizie pe care să o exersezi.';

  @override
  String get tutorPhraseCubeOffered => 'A fost oferit cubul de dublare.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Decide dacă accepți dublarea sau pasezi înainte să planifici mutarea pieselor.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Scorul meciului schimbă valoarea mizei suplimentare.';

  @override
  String get tutorPhraseResignationOffered =>
      'A fost propusă renunțarea la partidă.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Compară punctele oferite cu poziția înainte să accepți sau să continui.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Nu există mutări legale cu această aruncare.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Pasul forțat nu este o greșeală; așteaptă următoarea aruncare.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Există o singură poziție finală legală.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Joacă tura forțată. La această aruncare nu există nicio alegere de evaluat.';

  @override
  String get tutorPhrasePipCountsLevel => 'Numărul de pip-uri este egal.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ai un avans de $count de pip-uri.',
      few: 'Ai un avans de $count pip-uri.',
      one: 'Ai un avans de un pip.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ai un deficit de $count de pip-uri.',
      few: 'Ai un deficit de $count pip-uri.',
      one: 'Ai un deficit de un pip.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ai $count de piese pe bară: mai întâi trebuie să le reintroduci în joc.',
      few:
          'Ai $count piese pe bară: mai întâi trebuie să le reintroduci în joc.',
      one: 'Ai o piesă pe bară: mai întâi trebuie să o reintroduci în joc.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Reintrodu piesele de pe bară înainte să muți altele; apoi caută un punct de aterizare sigur.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Adversarul are $count de puncte închise în tabla sa interioară.',
      few: 'Adversarul are $count puncte închise în tabla sa interioară.',
      one: 'Adversarul are un punct închis în tabla sa interioară.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseBearOffRace => 'Cursă de scoatere a pieselor.';

  @override
  String get tutorPhrasePureRace => 'O cursă pură.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Scoate piesele de pe tablă păstrând o distribuție utilă pentru următoarea aruncare.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Adu piesele din spate acasă fără să înghesui prea multe pe același punct.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Piesele s-au depășit; nu mai sunt posibile lovituri.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Contactul încă contează.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Adversarul are $count de piese pe bară.',
      few: 'Adversarul are $count piese pe bară.',
      one: 'Adversarul are o piesă pe bară.',
    );
    return '$_temp0';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Păstrează punctele închise în timp ce aduci acasă piesele rămase.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Construiește sau păstrează tabla interioară închisă în timp ce adversarul încearcă să reintre.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Ai $count de puncte închise în tabla interioară; fiecare blochează un număr de intrare.',
      few:
          'Ai $count puncte închise în tabla interioară; fiecare blochează un număr de intrare.',
      one:
          'Ai un punct închis în tabla interioară; acesta blochează un număr de intrare.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de puncte consecutive',
      few: '$count puncte consecutive',
      one: 'un punct consecutiv',
    );
    return 'Contact printr-un șir închis de $_temp0.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Compară extinderea șirului cu păstrarea pieselor de rezervă care îl mențin intact.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count de piese de rezervă se pot muta fără să-și deschidă imediat punctul.',
      few:
          '$count piese de rezervă se pot muta fără să-și deschidă imediat punctul.',
      one:
          'O piesă de rezervă se poate muta fără să-și deschidă imediat punctul.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Contact cu o ancoră pe punctele $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Compară aducerea pieselor din spate acasă cu siguranța oferită de păstrarea ancorei.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Ține cont de sprijinul sigur în timp ce cauți o lovitură sau îți îmbunătățești tabla.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Ancora nu poate fi lovită, dar piesele respective mai au mult până acasă.';

  @override
  String get tutorPhraseContactThreats =>
      'Există contact: ambii jucători încă pot amenința cu lovituri.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Caută puncte utile, apoi compară riscul de a lăsa piese izolate expuse.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Puncte închise în tabla interioară: $count; piese izolate expuse lăsate: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Alege o piesă pentru a începe mutarea.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Începe o mutare legală pentru a vedea comentariul.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de piese ale adversarului',
      few: '$count piese ale adversarului',
      one: 'o piesă a adversarului',
    );
    return 'Ai lovit $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ai reintrodus $count de piese de pe bară.',
      few: 'Ai reintrodus $count piese de pe bară.',
      one: 'Ai reintrodus o piesă de pe bară.',
    );
    return '$_temp0';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de piese',
      few: '$count piese',
      one: 'o piesă',
    );
    return 'Ai scos de pe tablă $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Ai închis punctele $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Piesa de pe punctul tău $point este momentan izolată și expusă.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Piesa de rezervă de pe punctul tău $point se poate muta mai târziu fără să deschidă punctul.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Folosește zarurile rămase care pot fi jucate înainte să evaluezi întreaga mutare.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Toate cele 15 piese au fost scoase de pe tablă: ai câștigat partida.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Lovitura câștigă timp în timp ce adversarul încearcă să reintre.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Scoaterea eficientă a pieselor lasă valori utile pentru următoarea aruncare.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'În cursă, adu piesele din spate acasă și păstrează puncte de aterizare utile pentru scoatere.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Scoaterea pieselor te ajută să avansezi, dar contactul rămas încă te expune loviturilor.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Reintrarea readuce piesa în joc; apoi caută un punct de aterizare sigur.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Noul punct din tabla interioară blochează un număr de intrare după o eventuală lovitură.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Șirul mai lung închide mai multe puncte de aterizare; piesele de rezervă îl ajută să rămână intact.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Renunțarea la ancoră câștigă teren, dar te lasă fără un sprijin sigur.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Noua ancoră oferă pieselor din spate un sprijin sigur.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Acoperirea unei piese expuse îi ia adversarului o țintă.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Este un compromis între dezvoltare și siguranță: piesele utile pentru construire pot deveni și ținte.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Mutarea completă este pregătită; apasă Confirmă pentru a o executa.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Această aruncare nu lasă nicio alegere de mutare a pieselor; nu este evaluată ca decizie.';

  @override
  String get tutorMoveTopVerdict =>
      'Cea mai bună alegere pentru această poziție.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Motorul preferă aici o altă mutare.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Diferența față de cea mai bună mutare: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'După această mutare: $winPercent% șanse estimate de câștig, $winGammonPercent% de câștig cu gammon sau mai bine și $loseGammonPercent% de pierdere cu gammon sau mai rău. Estimările sunt din perspectiva jucătorului care mută.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Șansa estimată de a câștiga meciul: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Toate cele 15 piese au fost scoase de pe tablă: partida este câștigată.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Folosește lovitura pentru a câștiga timp cât adversarul reintră în joc. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Păstrează punctele închise din tabla interioară pentru a-i îngreuna reintrarea.';

  @override
  String get tutorMovePlanHitBuild =>
      'Închide mai multe puncte în tabla interioară, ca adversarului să-i fie mai greu să-și revină după lovituri.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Urmărește să scoți piesele eficient: elimină-le de pe tablă păstrând valori utile pentru următoarea aruncare.';

  @override
  String get tutorMovePlanRaceHome =>
      'Adu piesele din spate acasă și distribuie-le pe puncte utile pentru a le scoate de pe tablă.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Scoate piesele din joc, dar urmărește piesele din spate ale adversarului: cât timp există contact, o piesă rămasă singură la scoatere poate fi lovită.';

  @override
  String get tutorMovePlanReentry =>
      'Reintră în joc, apoi caută un punct sigur pentru piesa tocmai introdusă.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Întărește-ți tabla interioară. Noul punct închis face o lovitură viitoare mai eficientă, blocând un număr de intrare.';

  @override
  String get tutorMovePlanPrime =>
      'Păstrează șirul de puncte închise unit. Menține piese de rezervă, ca aruncările viitoare să nu te oblige să-l deschizi.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Renunțarea la ancoră avansează piesele din spate, dar te lasă fără un sprijin sigur. Ai grijă să nu fie lovite pe drumul spre casă.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Folosește noua ancoră ca sprijin sigur în timp ce îți îmbunătățești restul poziției.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Consolidează-ți piesele. Acoperirea unei piese expuse elimină acea țintă și păstrează disponibile puncte utile pentru mutările viitoare.';

  @override
  String get tutorMovePlanSafety =>
      'Echilibrează dezvoltarea cu siguranța: apropie piesele care construiesc poziția de punctele utile și verifică ce piese singure pot fi lovite.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Nu există nicio mutare legală cu piesele: trebuie să pasezi tura.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de piese ale adversarului',
      few: '$count piese ale adversarului',
      one: 'o piesă a adversarului',
    );
    return 'Lovești $_temp0; acesta trebuie să reintre cu piesele de pe bară înainte de a le muta pe celelalte.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Reintroduci $count de pe bară.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de piese',
      few: '$count piese',
      one: 'o piesă',
    );
    return 'Scoți de pe tablă $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Închizi punctele $points. Cel puțin două piese ocupă un punct sigur și îl blochează pentru adversar.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Redeschizi $pointLabel: $points. Aceste puncte nu-l mai blochează pe adversar.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nu lași nicio piesă singură expusă (înainte: $previousCount). Adversarul nu are nicio piesă izolată pe care s-o poată lovi.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de piese singure expuse',
      few: '$count piese singure expuse',
      one: 'o piesă singură expusă',
    );
    return 'Lași $_temp0 (înainte: $previousCount). Verifică dacă adversarul le poate atinge înainte să alegi siguranța în locul unui alt câștig.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Cel mai lung șir de puncte închise: $count (înainte: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Un zid complet de șase puncte închise nu poate fi trecut cât timp rămâne intact.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Păstrează piese de construcție în apropiere dacă vrei să prelungești sau să menții acest șir.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Ai $count piese de rezervă peste cele două care țin punctele închise. Mutarea unei rezerve poate păstra punctul; mutarea uneia dintre ultimele două îl deschide.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Ancore în tabla interioară a adversarului: $points (înainte: $previousPoints). O ancoră îți protejează piesele de lovituri; dacă renunți la ea, schimbi acest sprijin sigur pe progres în cursă.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Cursă pură: piesele s-au depășit și niciun jucător nu are piese pe bară. Loviturile nu mai sunt posibile; contează eficiența scoaterii pieselor.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Nicio aruncare legală la următoarea tură nu-i permite adversarului să lovească o piesă în această poziție. Contactul continuă, deci mutări ulterioare pot crea noi ocazii de lovire.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Adversarul poate lovi la $count din $total aruncări. De exemplu, $dieOne–$dieTwo permite o lovitură legală pe punctul tău $point. Lovitura este posibilă, nu sigură: adversarul poate alege altă mutare.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Numărul de puncte închise în tabla ta interioară: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Adversarul nu poate reintra până când se deschide un punct.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'O aruncare care folosește un punct de intrare deschis poate readuce o piesă de pe bară.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Șansa estimată de câștig cu mutarea optimă este cu $delta puncte procentuale $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'mai mare';

  @override
  String get tutorMoveComparisonLower => 'mai mică';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Poate totuși să fie clasată mai sus, deoarece gammons și backgammons au valori diferite în funcție de $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'miză';

  @override
  String get tutorMoveComparisonMatchScore => 'scorul meciului';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Numărul pieselor adversarului de pe bară la mutarea optimă: $bestCount, față de $playedCount. O piesă de pe bară trebuie să reintre înainte ca adversarul să le poată muta pe celelalte.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Puncte închise în tabla ta interioară la mutarea optimă: $bestCount, față de $playedCount la mutarea jucată; după o lovitură, $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'mai multe intrări sunt blocate';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'mai multe intrări rămân deschise';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Mutarea optimă permite o lovitură de răspuns la $bestCount din 36 de aruncări, față de $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Astfel, riscul imediat de a fi trimis înapoi scade.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Compară expunerea suplimentară cu avantajele pe care le aduce mutarea în alte privințe.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Cel mai lung șir de puncte închise are $bestCount la mutarea optimă, față de $playedCount la cea jucată. Compară lungimea barierei cu numărul de piese disponibile pentru a o menține intactă.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Ancorele după mutarea optimă sunt $bestPoints, față de $playedPoints. Păstrarea unei ancore oferă un punct sigur de aterizare; renunțarea la ea apropie piesele respective de casă.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Mutarea optimă scoate de pe tablă $bestCount piese, față de $playedCount. Fiecare piesă scoasă este una mai puțin de eliminat mai târziu.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Ambele mutări lasă același risc imediat de lovire, același număr de puncte închise în tabla interioară și de ancore, precum și același număr de piese scoase. Compară punctele de aterizare: următoarea aruncare poate folosi diferit aceste piese.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Mutarea optimă lasă mai multe piese ale adversarului pe bară, întârziindu-i celelalte mutări.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Mutarea optimă închide mai multe puncte în tabla interioară, îngreunând reintrarea după o lovitură.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Mutarea optimă permite mai puține aruncări imediate de lovire, reducând riscul de a fi trimis înapoi.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Mutarea optimă păstrează un șir mai lung de puncte închise.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Mutarea optimă păstrează mai multe ancore sigure în tabla interioară a adversarului.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Mutarea optimă scoate mai multe piese de pe tablă, așa că rămân mai puține de eliminat ulterior.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Această mutare lasă $playedCount piese singure expuse; mutarea optimă lasă $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Mutarea optimă păstrează o ancoră sigură pe punctul $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Mutarea optimă închide mai multe puncte de intrare, în cazul în care una dintre piesele tale este lovită.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Mutările lasă riscuri imediate asemănătoare; compară care puncte de aterizare rămân utile la următoarea aruncare.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return 'Pierdere de echitate: $value';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value pp pentru șansa de câștig a meciului (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'un punct';

  @override
  String get tutorMovePointPlural => 'puncte';

  @override
  String get tutorMoveNoPoints => 'niciunul';

  @override
  String get gameTutorCommentaryOff => 'Comentariul partidei este dezactivat.';

  @override
  String get gameTutorToolsAvailable =>
      'Deschide tutorul pentru instrumentele activate.';

  @override
  String get gameTutorNextRoll => 'Aruncă zarurile.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Nu există o explicație evaluată pentru această mutare înregistrată.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiza nu este disponibilă';

  @override
  String get gameTutorReviewing => 'se analizează…';

  @override
  String get gameTutorTryYourPlayFirst => 'Încearcă mai întâi propria mutare.';

  @override
  String get gameTutorKeepBuilding => 'Continuă să-ți construiești mutarea.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Finalizează o mutare legală înainte să afișezi îndrumări sau sugestii.';

  @override
  String get gameTutorReadyToConfirm => 'Gata de confirmare';

  @override
  String get gameTutorPlayTakingShape => 'Mutarea ta prinde contur.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Confirmă pentru a juca sau anulează și reconsideră.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Folosește zarurile rămase sau anulează mutarea.';

  @override
  String get gameTutorComputerConsidering =>
      'Calculatorul își analizează mutarea.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Mutarea lui completă va fi analizată aici.';

  @override
  String get gameTutorYourPlay => 'Mutarea ta';

  @override
  String get gameTutorComputer => 'Calculator';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Mutarea ta: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'mutare forțată';

  @override
  String get gameTutorTopChoice => 'cea mai bună alegere';

  @override
  String get gameTutorSoundPlay => 'mutare bună';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'o altă mutare s-ar putea potrivi mai bine';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'o altă mutare se potrivește mai bine acestei poziții';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'era disponibilă o mutare clar mai bună';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Evaluarea indică un avantaj pentru $side.';
  }

  @override
  String get gameTutorPositionEven => 'Poziția este aproximativ egală.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Jucat: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Cel mai bun: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Arată mutările ordonate';

  @override
  String get tutorReviewRecordedMove =>
      'Atinge o mutare încheiată din jurnal pentru a-i analiza decizia aici.';

  @override
  String get tutorTopPlays => 'Cele mai bune mutări';

  @override
  String get tutorNoHintsAvailable => 'Nu există indicii disponibile.';

  @override
  String get tutorPreviewThenConfirm =>
      'Atinge o mutare pentru a o previzualiza pe tablă, apoi confirmă.';

  @override
  String get tutorTopChoiceForPosition =>
      'Cea mai bună alegere pentru această poziție';

  @override
  String get tutorAlternativePlay => 'Mutare alternativă';

  @override
  String get tutorEngineEstimates => 'Estimările motorului';

  @override
  String get tutorEstimateScope =>
      'Estimare la 0 ply — scorul și miza actuală — fără dublări viitoare';

  @override
  String get tutorEquity => 'Echitate';

  @override
  String get tutorMwcPercent => 'Probabilitatea de a câștiga meciul, %';

  @override
  String get tutorNearTiesNote =>
      'O analiză mai aprofundată poate schimba ordinea mutărilor aproape egale.';

  @override
  String get tutorWhyThisPlay => 'De ce această mutare?';

  @override
  String get tutorCompareAlternative => 'Compară această alternativă';

  @override
  String get gameTutorCubeTake => 'Sfatul tutorului: acceptă';

  @override
  String get gameTutorCubePass => 'Sfatul tutorului: pasează';

  @override
  String get practiceScreenTitle => 'Exersează o decizie';

  @override
  String get practiceUnavailable =>
      'Această poziție de exersare nu mai este disponibilă.';

  @override
  String get practiceSubmitError =>
      'Încercarea nu a putut fi evaluată sau salvată. Progresul nu s-a modificat. Încearcă din nou.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Mută $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Scorul istoric nu este disponibil; mutarea este evaluată fără cub, după equity.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Scor: $whiteLabel $whiteScore – $blackLabel $blackScore, până la $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · Joc Crawford';

  @override
  String get practiceNoDoublingCube => 'Fără cub de dublare.';

  @override
  String practiceCubeValue(int value) {
    return 'Valoarea cubului $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Regulile istorice ale cubului sunt necunoscute.';

  @override
  String get practiceAfterBestPosition => 'Poziția după cea mai bună mutare';

  @override
  String get practiceAfterYourAnswerPosition => 'Poziția după răspunsul tău';

  @override
  String get practiceFindYourPlayPrompt =>
      'Fă-ți mutarea pe tablă, apoi verifică răspunsul. Nu primești indicii.';

  @override
  String get practiceUndo => 'Anulează';

  @override
  String get practiceCheckAnswer => 'Verifică răspunsul';

  @override
  String get practiceRevealNoCredit => 'Arată răspunsul (fără puncte)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Răspunsul a fost dezvăluit — fără credit de memorare.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Cea mai bună: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Mutarea din partida inițială: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Răspunsul tău: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Răspunsul tău';

  @override
  String get practiceBestPlayChip => 'Cea mai bună mutare';

  @override
  String practiceNextReview(Object date) {
    return 'Următoarea revizuire: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Răspunsurile bune și cele mai bune contează ca reamintire reușită. Repetările timpurii nu prelungesc intervalul.';

  @override
  String get practiceBackToLearning => 'Înapoi la învățare';

  @override
  String get practiceMarkBest => 'Cea mai bună';

  @override
  String get practiceMarkGood => 'Bună';

  @override
  String get practiceMarkDubious => 'Discutabilă';

  @override
  String get practiceMarkError => 'Greșeală';

  @override
  String get practiceMarkBlunder => 'Gafă';

  @override
  String get practiceMarkForced => 'Forțată';

  @override
  String get newMatchYourSide => 'Partea ta';

  @override
  String get newMatchTutorMode => 'Modul tutore';

  @override
  String get newMatchTutorDescription =>
      'Învață cu indicii, explicații și comentarii despre partidă';

  @override
  String get newMatchTutoringOptions => 'Opțiuni de îndrumare';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Pentru această partidă; le poți schimba în timpul jocului';

  @override
  String get setupMatchLength => 'Lungimea partidei';

  @override
  String get setupDifficulty => 'Dificultate';

  @override
  String get setupDifficultyEasy => 'Ușor';

  @override
  String get setupDifficultyMedium => 'Mediu';

  @override
  String get setupDifficultyHard => 'Greu';

  @override
  String get setupDifficultyExpert => 'Expert';

  @override
  String get setupPlayWithoutCube => 'Joacă fără cub';

  @override
  String get setupNoCubeThisMatch => 'Fără cub de dublare în această partidă';

  @override
  String get analysisTitle => 'Analiză';

  @override
  String get gameMatchSummary => 'Rezumatul meciului';

  @override
  String get gameAnalyzeGame => 'Analizează partida';

  @override
  String get analysisMetricsTooltip => 'Ce înseamnă aceste numere?';

  @override
  String analysisError(Object error) {
    return 'Analiza partidei a eșuat: $error';
  }

  @override
  String get analysisNoPositions => 'Partida nu are poziții de afișat.';

  @override
  String get analysisInProgress => 'Se analizează…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Jucat';

  @override
  String get analysisBest => 'Cel mai bun';

  @override
  String get analysisPrevious => 'Anterior';

  @override
  String get analysisNext => 'Următor';

  @override
  String get analysisPositionBeforeCube =>
      'Poziția înaintea deciziei privind cubul';

  @override
  String get analysisPositionAtPoint => 'Poziția în acest moment al partidei';

  @override
  String get analysisShowingBestBefore =>
      'Se afișează cea mai bună mutare din poziția anterioară mutării';

  @override
  String get analysisShowingBefore =>
      'Se afișează poziția de dinaintea mutării';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · exclus din medii';

  @override
  String get analysisNoPlay => '(fără mutare)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Cel mai bun: $move';
  }

  @override
  String get analysisExplain => 'Explică';

  @override
  String get analysisSaveForPractice => 'Salvează pentru antrenament';

  @override
  String get analysisSaveError =>
      'Decizia nu a putut fi salvată. Încearcă din nou.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · pierdere $loss';
  }

  @override
  String get analysisCubeDecision => 'Decizie privind cubul';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Jucat: $action ($percent% șanse de câștig al meciului).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Cel mai bun: $action ($percent% șanse de câștig al meciului).';
  }

  @override
  String get analysisCubeEstimate =>
      'Estimare 0-ply din perspectiva jucătorului aflat la mutare. Presupune un răspuns optim de acceptare sau pasare. Pentru ramura unei dublări acceptate folosește o aproximație de 0,7 a duratei cubului, nu o căutare completă a redublărilor viitoare. Analiza mai profundă poate schimba răspunsul.';

  @override
  String get analysisClose => 'Închide';

  @override
  String get analysisMoves => 'Mutări';

  @override
  String get analysisForced => 'Forțat';

  @override
  String get analysisMarkBest => 'Cel mai bun';

  @override
  String get analysisMarkGood => 'Bun';

  @override
  String get analysisMarkDubious => 'Discutabil';

  @override
  String get analysisMarkError => 'Eroare';

  @override
  String get analysisMarkBlunder => 'Greșeală gravă';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Pierdere medie $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count decizii cu piesele';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Greșeli grave $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Pierdere la cub $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side aruncă fără să dubleze';
  }

  @override
  String get metricExplainerTitle => 'Înțelegerea indicatorilor';

  @override
  String get metricExplainerTooltip => 'Ce înseamnă aceste numere?';

  @override
  String get metricExplainerMwcTitle => 'Șanse de câștig al meciului (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Când scorul este cunoscut, mutările cu piesele sunt clasate după șansa estimată de câștig al meciului. Pierderea este în puncte procentuale (pp): 1 pp înseamnă că 51% scade la 50%. Sunt incluse miza cubului și rezultatele gammon/backgammon. Pasurile forțate și aruncările cu o singură poziție legală sunt excluse din medii.';

  @override
  String get metricExplainerSearchTitle => 'Căutare și incertitudine';

  @override
  String get metricExplainerSearchBody =>
      'Clasarea mutărilor este o estimare statică 0-ply după mutare, nu o simulare. Valorile meciului folosesc un tabel de echitate și nu includ ture viitoare ale cubului. Analiza cubului folosește o aproximație parțială de 0,7 a duratei cubului pentru dublările acceptate; nu este o căutare completă cu cubul. Pentru scoruri rămase peste 25 se folosește limita 25-away a tabelului. Analiza mai profundă poate schimba rezultatele apropiate; nu există un interval de încredere calibrat.';

  @override
  String get metricExplainerEquityTitle => 'Echitate';

  @override
  String get metricExplainerEquityBody =>
      'Dacă scorul nu este disponibil, echitatea fără cub arată valoarea medie a poziției în puncte cu cubul la 1. +1,0 înseamnă că te aștepți să câștigi un punct; −0,5, să pierzi jumătate de punct.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Pierdere de echitate (ex. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Comparăm mutarea jucată cu cea mai bună mutare a motorului. Pierderea de echitate arată câtă valoare estimată ai cedat. −0,016 înseamnă că mutarea a fost cu doar 0,016 puncte mai slabă — o scăpare minoră. 0,000 înseamnă că ai găsit cea mai bună mutare.';

  @override
  String get metricExplainerErrorRateTitle => 'Rata erorilor';

  @override
  String get metricExplainerErrorRateBody =>
      'Pierderea medie este media deciziilor evaluate cu piesele, în unitatea afișată. Deciziile cu cubul au o medie separată. O valoare mai mică înseamnă mutări mai apropiate de estimările motorului; nu este un rating calibrat al jucătorului.';

  @override
  String get metricExplainerMoveMarksTitle => 'Marcajele mutărilor';

  @override
  String get metricExplainerMoveMarksBody =>
      'Praguri MWC pentru învățare: Cel mai bun < 0,05 pp, Bun < 0,5 pp, Discutabil < 1,5 pp, Eroare < 3 pp, Greșeală gravă ≥ 3 pp. Sunt praguri educative, nu valori calibrate de încredere sau ratinguri de turneu.\n\nPraguri educative pentru echitatea fără cub:';

  @override
  String get metricExplainerThresholdBest => 'pierdut < 0,001';

  @override
  String get metricExplainerThresholdGood => 'pierdut < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'pierdut < 0,050';

  @override
  String get metricExplainerThresholdError => 'pierdut < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'pierdut ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Am înțeles';

  @override
  String get historyTitle => 'Istoricul meciurilor';

  @override
  String historyLoadFailed(Object error) {
    return 'Istoricul nu a putut fi încărcat:\n$error';
  }

  @override
  String get historyEmpty => 'Nu ai jucat încă niciun meci.';

  @override
  String get historyDeleteConfirmTitle => 'Ștergi acest meci?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMeciul și toate partidele înregistrate în el vor fi șterse definitiv. Acțiunea nu poate fi anulată.';
  }

  @override
  String get actionCancel => 'Anulează';

  @override
  String get actionDelete => 'Șterge';

  @override
  String get historyDeleteFailed => 'Meciul nu a putut fi șters.';

  @override
  String get historyComplete => 'Încheiat';

  @override
  String historyWinner(Object side) {
    return '$side a câștigat';
  }

  @override
  String get historyUnfinished => 'Neterminat';

  @override
  String get historyMatchTitle => 'Meci';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Meciul nu a putut fi încărcat:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Partidele nu au putut fi încărcate:\n$error';
  }

  @override
  String get historyNoGames => 'Nu există partide înregistrate încă.';

  @override
  String historyGameTitle(int number) {
    return 'Partida $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Albe $whiteScore — $blackScore Negre  (până la $matchLength)';
  }

  @override
  String get historyModeComputer => 'contra calculatorului';

  @override
  String get historyModeTwoPlayers => 'Doi jucători';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Joacă în apropiere';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'În desfășurare';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side câștigă $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'simplă';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Reîmprospătează progresul';

  @override
  String get learningOptions => 'Opțiuni de învățare';

  @override
  String get learningResetMenu => 'Resetează progresul antrenamentului';

  @override
  String get learningLoadFailed => 'Progresul nu a putut fi încărcat.';

  @override
  String get actionRetry => 'Încearcă din nou';

  @override
  String get learningHeading => 'Învață din deciziile tale';

  @override
  String get learningIntro =>
      'Progresul este păstrat pe acest dispozitiv. Revizuiește temele recurente, apoi încearcă din nou pozițiile salvate fără să vezi răspunsul. Poți revizui separat Albele și Negrele.';

  @override
  String get learningBothSides => 'Ambele părți';

  @override
  String get learningHumansOnly => 'Doar decizii ale oamenilor';

  @override
  String get learningHumanOnlyHelp =>
      'Dezactivează pentru a include deciziile calculatorului și ale adversarilor de la distanță';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decizii · $mistakes de îmbunătățit · $blunders greșeli grave';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Pierdere medie ($decisions decizii): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Mutările forțate sunt excluse. Acestea sunt estimări ale motorului, nu un rating de turneu.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          '$count de partide salvate au nevoie de analiză sau de o analiză actualizată.',
      few:
          '$count partide salvate au nevoie de analiză sau de o analiză actualizată.',
      one:
          'Partida salvată are nevoie de analiză sau de o analiză actualizată.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analizează partidele salvate';

  @override
  String get learningEmptyProfile =>
      'Joacă și termină un meci pentru a-ți construi profilul de învățare. Poți salva și decizii individuale din reluarea unui meci.';

  @override
  String get learningOpenHistory => 'Deschide istoricul meciurilor';

  @override
  String get learningRecurringThemes => 'Teme recurente';

  @override
  String get learningNoThemes =>
      'Nu există încă teme recurente de greșeli în această selecție.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decizii de revizuit. O poziție poate avea mai multe teme.';
  }

  @override
  String get learningSaveMistakes =>
      'Salvează aceste greșeli pentru antrenament';

  @override
  String learningSavedMistakes(int count) {
    return 'Ai $count decizii în lista de antrenament. Salvările existente se păstrează o singură dată.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Unele decizii nu au putut fi salvate. Cele finalizate sunt păstrate; încearcă din nou.';

  @override
  String get learningSpacedPractice => 'Antrenament distribuit';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'Scadente acum: $due · salvate: $saved · încercări: $attempts · reamintiri reușite: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Revizuirile reușite revin după 1, 3, 7, 14 și 30 de zile. Greșelile sau răspunsurile dezvăluite revin după 10 minute. Repetările timpurii nu măresc intervalul.';

  @override
  String get learningAnswerContext =>
      'Rezultatele antrenamentului reflectă răspunsurile tale aici, chiar dacă poziția inițială aparținea adversarului.';

  @override
  String get learningNoSavedPositions =>
      'Salvează o decizie din reluare sau folosește butonul de greșeli de mai sus.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Decizia lui $side · partida $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Revizuire $date';
  }

  @override
  String get learningReadyToReview => 'Gata de revizuire';

  @override
  String learningSuccessStreak(int count) {
    return '$count revizuiri reușite consecutive';
  }

  @override
  String get learningRemoveTooltip => 'Elimină decizia salvată';

  @override
  String get learningRecentPractice => 'Antrenament recent';

  @override
  String get learningAnswerRevealed => 'Răspunsul a fost dezvăluit';

  @override
  String get learningSuccessfulRecall => 'Reamintire reușită';

  @override
  String get learningTryAgain => 'Încearcă din nou';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · poziția salvată $positionId';
  }

  @override
  String get learningRemoveTitle => 'Elimini acest exercițiu?';

  @override
  String get learningRemoveBody =>
      'Acest lucru elimină încercările sale de antrenament. Meciul original rămâne în istoric.';

  @override
  String get actionRemove => 'Elimină';

  @override
  String get learningRemoveFailed => 'Exercițiul nu a putut fi eliminat.';

  @override
  String get learningResetTitle => 'Resetezi progresul antrenamentului?';

  @override
  String get learningResetBody =>
      'Toate încercările și intervalele de revizuire vor fi eliminate. Exercițiile salvate și istoricul meciurilor se păstrează; toate exercițiile devin scadente acum.';

  @override
  String get learningResetAction => 'Resetează progresul';

  @override
  String get learningResetFailed =>
      'Progresul antrenamentului nu a putut fi resetat.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Partide analizate: $completed · indisponibile: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Partide analizate: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Au fost analizate $completed partide; $failed nu au putut fi analizate. Încearcă din nou când motorul este gata.';
  }

  @override
  String get learningThemeHitting => 'Lovire și tempo';

  @override
  String get learningThemeSafety => 'Piese expuse și siguranță';

  @override
  String get learningThemePointMaking => 'Formarea punctelor';

  @override
  String get learningThemePrime => 'Prime și blocaje';

  @override
  String get learningThemeAnchor => 'Ancore și evadare';

  @override
  String get learningThemeRace => 'Eficiența cursei';

  @override
  String get learningThemeBearOff => 'Scoaterea pieselor';

  @override
  String get learningThemeBarEntry => 'Intrarea de pe bară';

  @override
  String get learningThemeCube => 'Decizii privind cubul';

  @override
  String get analysisCubeNoDouble => 'Nu dubla';

  @override
  String get analysisCubeDouble => 'Dublează';

  @override
  String get analysisCubeTake => 'Acceptă';

  @override
  String get analysisCubePass => 'Renunță';

  @override
  String get learningAnalysisStarting => 'Se analizează partidele salvate…';

  @override
  String get tutorCubelessEstimateScope =>
      'Estimare 0-ply fără cub · scor indisponibil';

  @override
  String get tutorLossPp => 'Pierdere pp';

  @override
  String get tutorLoss => 'Pierdere';

  @override
  String get scoreSheetNoMoves => 'Nu există mutări';

  @override
  String get tutorOptions => 'Opțiuni tutor';

  @override
  String get tutorCollapseTooltip => 'Restrânge tutorul';

  @override
  String get tutorExpandTooltip => 'Extinde tutorul';

  @override
  String get onlineTitle => 'Joc online';

  @override
  String get onlineUnassistedNote =>
      'Tutorul nu este disponibil în jocul online.';

  @override
  String get onlineNotConfiguredTitle => 'Jocul online nu este configurat';

  @override
  String get onlineNotConfiguredBody =>
      'Jocul online nu este disponibil în această versiune.';

  @override
  String get onlineErrorNoMatch => 'Meciul nu a fost găsit.';

  @override
  String get onlineErrorSeatTaken => 'Locul este deja ocupat.';

  @override
  String get onlineErrorPermission =>
      'Nu ai permisiunea pentru această acțiune.';

  @override
  String get onlineErrorGeneric => 'Conectarea la jocul online a eșuat.';

  @override
  String get onlineMatchFinished => 'Meciul s-a încheiat.';

  @override
  String get onlineEnterCodeError => 'Introdu un cod valid.';

  @override
  String get onlineOpponentShort => 'Adversar';

  @override
  String get onlineMatchInProgress => 'Meci în desfășurare';

  @override
  String onlineResumePrompt(Object code) {
    return 'Jucai meciul $code. Continui?';
  }

  @override
  String get onlineRejoin => 'Reconectează-te';

  @override
  String get onlineForgetMatch => 'Uită meciul';

  @override
  String get onlineCreateTitle => 'Creează un meci online';

  @override
  String get onlineMatchLength => 'Durata meciului';

  @override
  String get onlineNoCubeTitle => 'Joc fără cub';

  @override
  String get onlineNoCubeSubtitle => 'Joacă fără cubul de dublare.';

  @override
  String get onlineCreate => 'Creează';

  @override
  String get onlineWaitingOpponent => 'Se așteaptă adversarul';

  @override
  String get onlineShareCode => 'Partajează codul';

  @override
  String get onlineCopyCode => 'Copiază codul';

  @override
  String get onlineCodeCopied => 'Cod copiat';

  @override
  String get onlineJoinTitle => 'Alătură-te unui meci';

  @override
  String get onlineRoomCode => 'Codul camerei';

  @override
  String get onlineJoin => 'Alătură-te';

  @override
  String get lanTitle => 'Joacă în apropiere';

  @override
  String get lanTabHost => 'Găzduiește';

  @override
  String get lanTabJoin => 'Alătură-te';

  @override
  String get lanUnassistedNote =>
      'Jocurile locale nu au tutor. După meci, revizuiește mutările și exersează greșelile.';

  @override
  String get lanGameStartFailed =>
      'Jocul nu a putut porni. Celălalt dispozitiv poate încerca să se conecteze din nou.';

  @override
  String get lanHostPortInUse =>
      'Găzduirea nu a putut porni — portul este deja folosit. Închide alte copii Backgammon Buddy și încearcă din nou.';

  @override
  String get lanHostStartFailed =>
      'Găzduirea nu a putut porni. Verifică Wi-Fi și încearcă din nou.';

  @override
  String get lanHostTitle => 'Găzduiește un joc';

  @override
  String get lanStartHosting => 'Pornește găzduirea';

  @override
  String get lanHostHelp =>
      'Ambele dispozitive trebuie să fie în aceeași rețea Wi-Fi. Acesta aruncă zarurile și ține scorul.';

  @override
  String get lanWaitingPlayerTitle => 'Se așteaptă un jucător';

  @override
  String get lanRoomCodeInfo =>
      'Spune-i celuilalt jucător acest cod. Îi permite accesul — aplicația nu îl trimite prin rețea.';

  @override
  String get lanWaitingPlayer => 'Se așteaptă un jucător…';

  @override
  String get lanStopHosting => 'Oprește găzduirea';

  @override
  String lanFindNearbyPort(int port) {
    return 'Cere celuilalt dispozitiv să caute jocuri din apropiere. Ascultă pe portul $port.';
  }

  @override
  String get lanOnNetwork => 'În această rețea';

  @override
  String get lanCopyAddress => 'Copiază adresa';

  @override
  String get lanAddressCopied => 'Adresă copiată';

  @override
  String get lanScanHostTitle => 'Scanează gazda';

  @override
  String get lanScanHostHelp =>
      'Celălalt dispozitiv afișează un cod QR pe ecranul de gazdă. Scanarea completează adresa și codul camerei.';

  @override
  String get lanScanQr => 'Scanează codul QR';

  @override
  String get lanScannerUnavailable =>
      'Camera sau permisiunea ei nu este disponibilă. Introdu mai jos adresa și codul camerei.';

  @override
  String get lanInvalidQr =>
      'Acest cod QR nu este un joc Backgammon Buddy. Scanează codul de pe ecranul de gazdă al celuilalt dispozitiv.';

  @override
  String get lanScannerFailed =>
      'Scannerul nu a putut fi deschis. Introdu mai jos adresa și codul.';

  @override
  String get lanNearbyGames => 'Jocuri din apropiere';

  @override
  String get lanSearching => 'Se caută jocuri din apropiere…';

  @override
  String get lanNoGamesFound =>
      'Nu s-au găsit jocuri încă. Asigură-te că celălalt dispozitiv găzduiește jocul și ambele folosesc aceeași rețea Wi-Fi sau introdu adresa.';

  @override
  String get lanStillSearching => 'Se caută în continuare…';

  @override
  String get lanEnterAddress => 'Introdu adresa';

  @override
  String get lanEnterAddressHelp =>
      'Descoperirea automată nu funcționează în toate rețelele (pe iOS poate fi blocată complet). Ecranul de gazdă arată ce trebuie introdus.';

  @override
  String get lanIpAddress => 'Adresă IP';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Introdu un port între 1 și 65535.';

  @override
  String get lanEnterAddressError =>
      'Introdu adresa afișată pe celălalt dispozitiv.';

  @override
  String get lanEnterRoomCodeError =>
      'Introdu codul de 4 cifre de pe celălalt dispozitiv.';

  @override
  String get lanJoinWrongCode =>
      'Cod de cameră greșit. Verifică cele patru cifre de pe celălalt dispozitiv.';

  @override
  String get lanJoinVersionMismatch =>
      'Celălalt dispozitiv folosește o altă versiune Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Dispozitivul nu a răspuns ca Backgammon Buddy. Verifică adresa și portul.';

  @override
  String get lanJoinFailed =>
      'Conectarea a eșuat. Verifică adresa și codul camerei, apoi încearcă din nou.';

  @override
  String lanJoinTarget(Object name) {
    return 'Alătură-te: $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Introdu codul de 4 cifre afișat pe celălalt dispozitiv.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Se alătură la $name';
  }

  @override
  String get lanConnect => 'Conectează-te';

  @override
  String get lanBack => 'Înapoi';

  @override
  String get lanTryAgain => 'Încearcă din nou';

  @override
  String get lanStatusBusy => 'Camera este ocupată — se așteaptă…';

  @override
  String get lanStatusReconnecting => 'Conexiunea s-a pierdut — se reîncearcă…';

  @override
  String get lanStatusConnected => 'Conectat — începe meciul…';

  @override
  String get lanStatusFailed => 'Conectarea a eșuat.';

  @override
  String get lanStatusConnecting => 'Se conectează…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostice copiate în clipboard';

  @override
  String get diagnosticsReviewTitle => 'Verifică raportul de diagnostic';

  @override
  String get diagnosticsPrivacyNotice =>
      'Deschiderea ciornei trimite către GitHub detaliile de mai jos, inclusiv versiunea aplicației, platforma și eventualele informații despre erori. Problema nu devine publică până când nu o trimiți acolo. Dacă aceste detalii conțin informații private, anulează și folosește copierea pentru a pregăti singur un raport.';

  @override
  String get diagnosticsCancel => 'Anulează';

  @override
  String get diagnosticsOpenGitHub => 'Deschide GitHub';

  @override
  String get diagnosticsTitle => 'Diagnosticare';

  @override
  String get diagnosticsReportTooltip => 'Raportează o problemă pe GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Copiază în clipboard';

  @override
  String get diagnosticsClearTooltip => 'Șterge jurnalul';

  @override
  String get diagnosticsEmpty =>
      'Nu s-au înregistrat erori.\n\nDacă apare o problemă, este înregistrată aici — revino și copiază detaliile într-un raport de eroare.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · până la $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · până la $matchLength';
  }

  @override
  String get gameHudYou => 'Tu';

  @override
  String get gameHudAi => 'Calculator';

  @override
  String gameHudGameNumber(int number) {
    return 'Jocul $number';
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
    return '$whiteLabel contra $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contra $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'contra $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipuri';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Dublați';

  @override
  String get gameHudMoreActions => 'Mai multe acțiuni';

  @override
  String get gameHudSurrender => 'Abandonează…';

  @override
  String get gameHudThinking => 'Se gândește';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Poți dubla doar înainte de zaruri, când e rândul tău.';

  @override
  String get gameHudNoDoubleCrawford =>
      'Nu se dublează în jocul Crawford — această partidă decide meciul.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Doar proprietarul cubului poate dubla, iar acum cubul aparține celeilalte părți.';

  @override
  String get gameHudDoubleUnavailable => 'Dublarea nu este disponibilă acum.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (până la $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner câștigă această partidă ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner câștigă această partidă ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner câștigă această partidă ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner câștigă această partidă ($points) — $loser a refuzat dublarea.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner câștigă această partidă ($points) — $loser a abandonat.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Predă dispozitivul';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Rândul lui $name';
  }

  @override
  String get gameDialogTapToContinue => 'Atinge pentru a continua';

  @override
  String get gameDialogCubeOfferedTitle => 'Dublare oferită';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler oferă dublarea la $value. Accepți sau renunți?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Renunță';

  @override
  String get gameDialogTake => 'Acceptă';

  @override
  String get gameDialogResignationTitle => 'Abandon oferit';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner oferă să abandoneze pentru $value. Accepți sau refuzi?';
  }

  @override
  String get gameDialogResignSingle => 'partidă simplă';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Refuză';

  @override
  String get gameDialogAccept => 'Acceptă';

  @override
  String get gameDialogGameOverTitle => 'Partidă încheiată';

  @override
  String get gameDialogNextGame => 'Partida următoare';

  @override
  String get gameDialogMatchOverTitle => 'Meci încheiat';

  @override
  String get gameDialogNobody => 'Nimeni';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner câștigă meciul.';
  }

  @override
  String get gameDialogSavedToHistory => 'Salvat în istoric';

  @override
  String get gameDialogDone => 'Gata';

  @override
  String get gameTapNoLegalMove =>
      'Atinge piesa ta pentru a vedea mutările legale.';

  @override
  String get gameTapNoLegalMoveUndo => 'Atinge o piesă, apoi destinația.';

  @override
  String get gameDragHint => 'Trage piesa la destinație.';

  @override
  String get commonGotIt => 'Am înțeles';

  @override
  String get gameHintStageBeforeHint => 'Înainte de indiciu';

  @override
  String get surrenderTitle => 'Renunți la partidă?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player renunță la partida curentă.';
  }

  @override
  String get surrenderConcedes => 'Renunță la partida curentă.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Disponibil la începutul turei lui $player';
  }

  @override
  String get surrenderAvailableAtYourTurn =>
      'Disponibil la începutul turei tale';

  @override
  String get commonCancel => 'Anulează';

  @override
  String get surrenderSingle => 'Pierdere simplă';

  @override
  String get surrenderGammon => 'Pierdere gammon';

  @override
  String get surrenderBackgammon => 'Pierdere backgammon';

  @override
  String get surrenderChoosePlayer => 'Alege jucătorul';

  @override
  String get commonDone => 'Gata';

  @override
  String get cubeDouble => 'Dublează';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Este rândul celuilalt jucător.';

  @override
  String get cubeBlockedCrawford =>
      'Cubul nu este disponibil în partida Crawford.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Doar proprietarul cubului poate dubla, iar acum cubul aparține celeilalte părți.';

  @override
  String get cubeBlockedUnavailable => 'Dublarea nu este disponibilă acum.';

  @override
  String get gameStatusRolling => 'Se aruncă zarurile';

  @override
  String get gameStatusThinking => 'Calculatorul gândește';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Tura lui $player';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Dublează — adversarul ar trebui să accepte';

  @override
  String get cubeAdviceOpponentPass =>
      'Dublează — adversarul ar trebui să renunțe';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Eroare: $error';
  }

  @override
  String get privacyTitle => 'Confidențialitate și date';

  @override
  String get privacyAppTitle => 'Backgammon Buddy de Freevia';

  @override
  String get privacyIntro =>
      'Această pagină descrie modul în care aplicația actuală vă gestionează datele.';

  @override
  String get privacyLocalTitle => 'Jocuri și instruire pe dispozitivul dvs';

  @override
  String get privacyLocalBody =>
      'Meciurile locale, setările, analizele și progresul exercițiilor sunt stocate pe acest dispozitiv. Motorul jocului și explicațiile antrenorului rulează aici. Ștergerea unei partide salvate din Arhiva jocurilor șterge și exercițiile de antrenament salvate, precum și încercările acestora. Șterge exerciții individuale sau resetează progresul în secțiunea Învățare și practică; șterge rapoartele locale de erori din Setări → Diagnosticare. Istoricul partidelor poate fi inclus și în copiile de siguranță ale dispozitivului. Datele de conectare online sunt păstrate în spațiul de stocare protejat al dispozitivului.';

  @override
  String get privacyOnlineTitle => 'Joacă online și în apropiere';

  @override
  String get privacyOnlineBody =>
      'Jocul online trimite către Google Firebase un identificator anonim al jucătorului, setările meciului, mutările și înregistrările protocolului de sincronizare a zarurilor, pentru ca ambii jucători să poată juca același meci. Ștergerea Istoricului de pe acest dispozitiv nu șterge înregistrările online. Meciurile găzduite expiră la 30 de zile după creare; o curățare programată le șterge jurnalele din cloud. Înregistrările meciurilor sunt stocate în UE; Firebase Authentication procesează datele de conectare în Statele Unite. Conexiunile online la Google folosesc criptarea în tranzit. În jocurile în apropiere, informațiile despre meci sunt schimbate cu celălalt dispozitiv printr-o conexiune locală necriptată; folosiți o rețea Wi-Fi de încredere.';

  @override
  String get privacyDiagnosticsTitle =>
      'Diagnosticare opțională a utilizării și a blocărilor';

  @override
  String get privacyDiagnosticsBody =>
      'Partajarea rămâne dezactivată până când o activezi în Setări. Dacă o activezi, Google Firebase primește evenimente de utilizare, informații despre aplicație și dispozitiv, măsurători de performanță și rapoarte despre blocări, pentru a ajuta la îmbunătățirea aplicației. Poți dezactiva partajarea oricând pentru a opri colectarea opțională de date noi. Datele trimise deja nu sunt șterse. Diagnosticarea locală și meciurile online nu depind de această opțiune.';

  @override
  String get privacyCameraTitle => 'Cameră pentru codurile QR din apropiere';

  @override
  String get privacyCameraBody =>
      'Camera opțională scanează codurile QR pentru jocurile în apropiere. Imaginile sunt procesate pe dispozitiv și nu sunt salvate sau încărcate. Poți refuza accesul la cameră și poți introduce manual adresa gazdei. Această versiune nu folosește microfonul și nu permite jocul pe o tablă fizică.';

  @override
  String get privacyFeedbackTitle => 'Feedback pe care alegeți să îl trimiteți';

  @override
  String get privacyFeedbackBody =>
      'Feedbackul deschide o schiță de issue pe GitHub pe care o poți verifica. Deschiderea schiței trimite către GitHub versiunea aplicației și platforma; feedbackul din Diagnosticare poate include și detalii despre erori. Issue-ul nu este publicat până când nu îl trimiți. Issue-urile pot fi publice, așa că elimină informațiile private înainte de trimitere.';

  @override
  String get privacyContactTitle => 'Contact pentru confidențialitate';

  @override
  String get privacyReadPolicy => 'Citește politica de confidențialitate';

  @override
  String get privacyPolicyOpenFailed =>
      'Politica de confidențialitate nu a putut fi deschisă.';

  @override
  String get privacySupportTitle => 'Ajutor și sprijin';

  @override
  String get privacySupportOpenFailed =>
      'Nu s-a putut deschide pagina de asistență. Contactează support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Ștergeți identitatea și datele online?';

  @override
  String get privacyDeleteConfirmBody =>
      'Accesul ambilor jucători la meciurile din cloud asociate acestei identități încetează imediat. Se solicită ștergerea identității și a jurnalelor comune ale meciurilor online în termen de 30 de zile. Google poate avea nevoie de până la 180 de zile după ștergerea contului pentru a elimina datele de autentificare din sistemele active și de rezervă. Istoricul local și exercițiile de antrenament rămân pe acest dispozitiv. Datele de diagnostic opționale trimise anterior sunt tratate separat; contactează privacy@freevia.org în legătură cu ele. Această solicitare nu poate fi anulată.';

  @override
  String get privacyRequestDeletion => 'Solicită ștergerea';

  @override
  String get privacyDeleteSectionTitle => 'Ștergerea datelor online';

  @override
  String get privacyDeleteInstructions =>
      'Folosește datele de conectare salvate pe acest dispozitiv pentru a confirma că identitatea îți aparține. Un identificator de jucător sau un cod de invitație, singur, nu dovedește acest lucru. Pentru jocul doar local nu este nevoie de un cont online.';

  @override
  String get privacySendingRequest => 'Se trimite cererea...';

  @override
  String get privacyDeleteAction => 'Șterge identitatea și datele online';

  @override
  String get privacyDeleteRequested =>
      'Cererea de ștergere a fost trimisă. S-a încheiat sesiunea acestei identități online. Datele sale din cloud vor fi șterse în cel mult 30 de zile. Dacă începi din nou un joc online, se va crea o identitate nouă. Eliminarea datelor de autentificare de către Google poate dura până la 180 de zile. Pentru ajutor, contactează privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Cererea de ștergere a fost trimisă. Datele din cloud vor fi șterse în cel mult 30 de zile. Dispozitivul nu a putut șterge datele de conectare salvate, însă identitatea online nu mai poate accesa meciuri. Eliminarea datelor de autentificare de către Google poate dura până la 180 de zile. Pentru ajutor, contactează privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'Pe acest dispozitiv nu este salvată nicio identitate online utilizabilă. Nu a fost creat niciun cont nou. Dacă ai jucat online înainte, contactează privacy@freevia.org pentru ajutor; meciurile găzduite expiră la 30 de zile după creare.';

  @override
  String get privacyDeleteRequestFailed =>
      'Cererea de ștergere nu a putut fi confirmată. Verifică conexiunea și încearcă din nou sau contactează privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Partajați utilizarea și diagnosticarea erorilor?';

  @override
  String get privacyConsentBody =>
      'Această opțiune trimite către Google Firebase evenimente de utilizare, informații despre aplicație și dispozitiv, rapoarte despre blocări și măsurători de performanță. Partajarea este opțională. Jocurile și antrenamentul funcționează cu partajarea dezactivată; o poți dezactiva oricând în Setări.';

  @override
  String get privacyKeepOff => 'Păstrează dezactivat';

  @override
  String get privacyShareDiagnostics => 'Partajează datele de diagnosticare';

  @override
  String get privacySaveFailed =>
      'Nu s-a putut salva opțiunea de confidențialitate. Încearcă din nou.';

  @override
  String get privacySettingsSubtitle =>
      'Ce rămâne pe dispozitiv și ce este partajat';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Partajați diagnosticarea utilizării și a erorilor';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Opțional · dezactivat în mod implicit';

  @override
  String get lanScanToJoin => 'Scanează pentru a te alătura';

  @override
  String get lanScanHostCode => 'Scanează codul gazdei';

  @override
  String get lanEnterAddressInstead => 'Introdu adresa în schimb';

  @override
  String get lanQrAccessibilityLabel => 'Cod QR pentru a intra în acest joc';

  @override
  String get lanJoinInstruction =>
      'Pe celălalt dispozitiv, deschideți Joacă în apropiere, alegeți Alătură-te, apoi scanați acest cod QR.';

  @override
  String get lanTorch => 'Bliț';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy nu poate folosi camera. Permite accesul la cameră din setările dispozitivului sau introdu manual adresa afișată pe celălalt dispozitiv.';

  @override
  String get lanCameraUnsupported =>
      'Acest dispozitiv nu poate scana coduri QR. Introdu manual adresa afișată pe celălalt dispozitiv.';

  @override
  String get lanCameraStartFailed =>
      'Camera nu a putut porni. Introdu manual adresa afișată pe celălalt dispozitiv.';

  @override
  String get lanPointCameraAtQr =>
      'Îndreaptă camera spre codul QR de pe celălalt dispozitiv.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Jocul pe o tablă fizică nu este disponibil în această versiune. Jocurile pe ecran, îndrumarea și antrenamentul sunt disponibile pe ecranul principal.';

  @override
  String get homePlayWithBuddy => 'Joacă cu Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Tablă de table. $status';
  }

  @override
  String get boardWhiteToRoll =>
      'Este rândul pieselor albe să arunce zarurile.';

  @override
  String get boardBlackToRoll =>
      'Este rândul pieselor negre să arunce zarurile.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Piesele albe sunt la mutare; zarurile sunt $die1 și $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Piesele negre sunt la mutare; zarurile sunt $die1 și $die2.';
  }

  @override
  String get boardDoubleOffered => 'A fost oferită dublarea cubului.';

  @override
  String get boardResignationOffered => 'S-a oferit cedarea partidei.';

  @override
  String get boardGameOver => 'Jocul s-a terminat.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Eroare]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Idee]: Backgammon Buddy';

  @override
  String get feedbackBugSummary => 'Descrie pe scurt ce s-a întâmplat.';

  @override
  String get feedbackBugReproduction =>
      'Descrie pașii care au dus la problemă.';

  @override
  String get feedbackBugExpected => 'Descrie ce te așteptai să se întâmple.';

  @override
  String get feedbackIdeaNeed => 'Descrie ce voiai să faci sau să înveți.';

  @override
  String get feedbackIdeaSuggestion =>
      'Descrie schimbarea care ți-ar fi de ajutor.';

  @override
  String get feedbackExcerptTruncated =>
      '(trunchiat - utilizați Copiere în clipboard pe ecranul Diagnosticare pentru jurnalul complet)';

  @override
  String get boardWhiteToMoveNoRoll => 'Este rândul pieselor albe să mute.';

  @override
  String get boardBlackToMoveNoRoll => 'Este rândul pieselor negre să mute.';

  @override
  String get feedbackFieldVersion => 'Versiunea aplicației';

  @override
  String get feedbackFieldPlatform => 'Platformă';

  @override
  String get feedbackFieldSummary => 'Ce s-a întâmplat';

  @override
  String get feedbackFieldReproduction => 'Pași pentru reproducere';

  @override
  String get feedbackFieldExpected => 'Rezultat așteptat';

  @override
  String get feedbackFieldNeed => 'Ce ai vrut să faci';

  @override
  String get feedbackFieldIdea => 'Modificare sugerată';

  @override
  String get buddySetupTitle => 'Joacă cu Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy joacă';

  @override
  String get buddySetupSeatLabel => 'Locul tău';

  @override
  String get buddySetupSeatNear => 'Lângă telefon';

  @override
  String get buddySetupSeatFar => 'În partea opusă';

  @override
  String get buddySetupSeatHelp =>
      'Pe ce latură a tablei stai? Așa numerotează Buddy punctele și își deosebește zarul de deschidere de al tău.';

  @override
  String get buddySetupVoiceLabel => 'Cum vorbește Buddy';

  @override
  String get buddySetupVoiceTerse => 'Concis';

  @override
  String get buddySetupVoiceFriendly => 'Prietenos';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22” — notația folosită de doi jucători la tablă.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Mută o piesă de la 13 la 8 și una de la 24 la 22.”';

  @override
  String get buddySetupTutorHelp =>
      'Comentariile și explicațiile mutărilor urmează preferințele Tutorului salvate în Setări. Buddy oferă uneori feedback după mutările tale; introducerea zarurilor și mutările manuale funcționează la fel.';

  @override
  String get buddySetupCalibrate => 'Calibrează tabla';

  @override
  String get buddyFixAim => 'Corectează încadrarea';

  @override
  String get buddyWaitingForOpening =>
      'Buddy așteaptă aruncarea care începe partida.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy a pierdut tabla. Corectează încadrarea, iar partida continuă de unde s-a oprit.';

  @override
  String get buddyPromptWaitingPicture =>
      'Aștept o imagine pe care Buddy o poate citi. Nu s-a pierdut nimic.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy nu găsește zarurile. Introdu rezultatul aruncării.';

  @override
  String get buddyPromptPlay =>
      'Fă mutarea pe tablă. Dacă Buddy nu o vede, introdu-o aici.';

  @override
  String get buddyPromptWhichPlay => 'Ce mutare ai făcut?';

  @override
  String get buddyPromptCube => 'Buddy dublează. Accepți sau abandonezi?';

  @override
  String get buddyPromptMakeMove =>
      'Fă mutarea lui Buddy pe tablă, apoi Buddy va continua.';

  @override
  String get buddyPromptThinking => 'Buddy se gândește.';

  @override
  String get buddyPromptWaitingCalibration => 'Aștept calibrarea.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy încă nu își vede mutarea. Tabla de mai jos arată poziția pe care o urmărește.';

  @override
  String get buddyPromptNotLegal => 'Mutarea nu este legală.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Mutarea nu este legală. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Aruncă zarurile de deschidere — câte unul pentru fiecare.';

  @override
  String get buddyThrowUser => 'Aruncă zarurile tale.';

  @override
  String get buddyThrowBuddy => 'Aruncă zarurile lui Buddy.';

  @override
  String get buddyMatchOver => 'Partida s-a încheiat.';

  @override
  String get buddyYouWin => 'Ai câștigat partida.';

  @override
  String get buddyBuddyWins => 'Buddy a câștigat partida.';

  @override
  String get buddyDoubleNoGame =>
      'Nu există încă un joc care să poată fi dublat — întâi se aruncă zarurile de deschidere.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Poți dubla doar la rândul tău, înainte să arunci.';

  @override
  String get buddyDoubleCrawford =>
      'Nu se dublează în jocul Crawford — acest joc decide partida.';

  @override
  String get buddyDoubleNotOwner =>
      'Doar deținătorul cubului poate dubla, iar acum cubul aparține celeilalte părți.';

  @override
  String get buddyDoubleUnavailable => 'Dublarea nu este disponibilă acum.';

  @override
  String get buddyLookingAtBoard => 'Buddy se uită la tablă.';

  @override
  String get buddyCameraPlayFallback =>
      'Poți continua partida: introdu fiecare aruncare pe panoul cu zaruri și execută mutările pe tabla de mai jos.';

  @override
  String get buddySkipCheck => 'Omite verificarea';

  @override
  String get buddyFixedIt => 'Am corectat';

  @override
  String get buddyDrop => 'Abandonează';

  @override
  String get buddyTake => 'Acceptă';

  @override
  String get buddyDone => 'Gata';

  @override
  String get buddyTranscriptLabel => 'Ce a spus Buddy';

  @override
  String get buddyUndo => 'Anulează';

  @override
  String get buddyConfirm => 'Confirmă';

  @override
  String get buddyDice => 'Zaruri';

  @override
  String get buddyDouble => 'Dublează';

  @override
  String get buddyDicePadTitle => 'Ce ai aruncat?';

  @override
  String get buddyEnterRoll => 'Introdu aruncarea';

  @override
  String get buddyContextBeforeGame => 'Joacă cu Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Tu $you–$buddy Buddy · până la $length · Jocul $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Camera nu a putut porni. Verifică permisiunile și încearcă din nou.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy nu are permisiunea de a folosi camera. Permite accesul la cameră în setările dispozitivului și încearcă din nou.';

  @override
  String get buddyCalibrationTitle => 'Arată-i tabla lui Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Trage cele patru mânere exterioare în colțurile suprafeței de joc, nu pe rama de lemn, iar cele patru mici pe îmbinările balamalei cu marginile îndepărtată și apropiată.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Trage fiecare mâner într-un colț al suprafeței de joc, nu pe rama de lemn.';

  @override
  String get buddyCalibrationCheckLines =>
      'Apoi verifică cele douăsprezece linii din fiecare jumătate: fiecare trebuie să urmeze un punct al tablei. Dacă o linie ratează punctul, ajustează mânerul corespunzător.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Care jumătate este zona ta de joc?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Jumătatea aflată mai aproape de marginea de jos a imaginii. Aceasta fixează numerotarea punctelor, iar liniile de mai sus se aliniază după ea.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Ține telefonul nemișcat. Buddy așteaptă ca imaginea să se stabilizeze înainte să învețe tabla.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Aceasta este tabla ta?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy privește tabla pe care tocmai a învățat-o.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Piesele desenate peste imagine arată ce crede Buddy că se află pe tablă. Dacă vreuna este în locul greșit, reia procesul — acum durează câteva secunde, mai târziu poate costa o partidă.';

  @override
  String get buddyCalibrationNext => 'Înainte';

  @override
  String get buddyCalibrationBack => 'Înapoi';

  @override
  String get buddyCalibrationCapture => 'Capturează';

  @override
  String get buddyCalibrationStartOver => 'Reia de la început';

  @override
  String get buddyCalibrationLooksRight => 'Arată bine';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Aceste patru mânere nu conturează o tablă — unul îl intersectează pe altul. Trage-le înapoi în colțurile suprafeței de joc.';

  @override
  String get buddyCalibrationPrepTitle => 'Mai întâi, trei lucruri';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Ia zarurile de pe tablă.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Buddy învață acum tabla goală. Dacă lași un zar pe suprafața de joc, îl va învăța ca parte a tablei și nu va mai putea vedea zarurile în această sesiune.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Așază piesele în poziția de început a unei partide.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Cele treizeci de piese în poziții cunoscute îl ajută pe Buddy să învețe cele două culori ale tablei fără să-i spui care sunt.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Încadrează toată suprafața de joc.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Apoi lasă telefonul pe loc. Dacă se mișcă, Buddy te anunță și poți regla din nou colțurile.';

  @override
  String get buddyCalibrationBoardKind => 'Ce tip de tablă ai?';

  @override
  String get buddyCalibrationFlatBoard => 'Tablă simplă';

  @override
  String get buddyCalibrationFoldingBoard => 'Tablă pliabilă';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'O tablă pliabilă are nevoie de încă patru mânere pe îmbinările balamalei.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Modul Buddy urmărește o tablă reală, deci nu poate porni fără cameră. Restul aplicației funcționează în continuare.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Îmbinarea balamalei $number din 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Colțul tablei $number din 4';
  }

  @override
  String get buddyNudgeLeft => 'Mută puțin la stânga';

  @override
  String get buddyNudgeRight => 'Mută puțin la dreapta';

  @override
  String get buddyNudgeUp => 'Mută puțin în sus';

  @override
  String get buddyNudgeDown => 'Mută puțin în jos';

  @override
  String get buddyCalibrationProblemCorners =>
      'Aceste patru colțuri nu conturează tabla. Trage fiecare mâner într-un colț al suprafeței de joc și încearcă din nou.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Aceste opt puncte nu conturează o tablă pliabilă. Pune patru în colțurile suprafeței de joc și patru pe îmbinările balamalei, apoi încearcă din nou.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Nu pot distinge tabla — este acoperită complet sau se pierde în umbră ori reflexii. Eliberează tabla, adaugă lumină și încearcă din nou.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Nu pot distinge $region — poate este ceva așezat acolo sau colțul este prea întunecat. Eliberează-l ori adaugă lumină și încearcă din nou.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Cele două culori ale pieselor seamănă prea mult din acest unghi. De obicei, ajută mai multă lumină sau un unghi cu mai puține reflexii.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Piesele nu sunt în poziția de început — punctul $number are o piesă de culoarea greșită. Așază tabla pentru începutul unei partide și calibrează din nou.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Este atât de multă lumină pe tablă încât culorile se confundă. Redu lumina sau mută telefonul astfel încât lampa să nu se reflecte direct în cameră.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Pot citi tabla, dar nu este pregătită pentru începutul unei partide. Așază piesele în poziția inițială și calibrează din nou.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Pot citi tabla, dar nu disting cât de mult se află o piesă în spatele alteia, așa că aș număra greșit. Mai multă lumină pe punctele apropiate sau un unghi puțin mai ridicat al camerei rezolvă de obicei problema.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Nu văd toată tabla. Îndepărtează telefonul sau trage colțurile pe suprafața de joc.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Nu mai văd toată tabla — $region este în afara imaginii. Realiniază camera sau verifică din nou colțurile.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Arată ca poziția de început.';

  @override
  String get buddyConfirmNoCheckers =>
      'Nu văd nicio piesă în pozițiile de început. Așază tabla pentru o partidă nouă și încearcă din nou.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Tabla nu este așezată pentru începutul unei partide: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region pare gol, dar partida începe cu $side acolo';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return '$region are $side, dar partida începe cu acel loc gol';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return '$region are $observed, dar partida începe cu $expected acolo';
  }

  @override
  String get buddyReadabilityMotion =>
      'Stai nemișcat o clipă — pierd tabla când se mișcă telefonul.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Imaginea primită nu este cea pe care a fost configurată tabla, așa că nu pot alinia nimic. Configurează din nou tabla de aici.';

  @override
  String get buddyReadabilityBlur =>
      'Imaginea este prea neclară pentru a citi tabla. Așteaptă puțin să focalizeze camera.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Tabla nu mai este în locul în care am învățat-o. Realiniază colțurile și reiau partida imediat.';

  @override
  String get buddyReadabilityOccluded =>
      'Ceva acoperă o parte din tablă. Continui imediat ce este liberă.';

  @override
  String get buddyReadabilityClear => 'Văd tabla.';

  @override
  String get buddyReadabilityColorChanged =>
      'Culoarea luminii de pe tablă s-a schimbat, iar tabla nu mai arată ca cea pe care am învățat-o. Realiniază colțurile în această lumină și reiau partida.';

  @override
  String get buddyReadabilityTooDark =>
      'Este prea întuneric ca să citesc tabla. Cu puțină lumină în plus, continui de unde am rămas.';

  @override
  String get buddyReadabilityTooBright =>
      'Este atât de multă lumină pe tablă încât culorile se confundă. Redu lumina sau mută telefonul ca lampa să nu se reflecte direct în cameră.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy încă nu își poate vedea mutarea — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nPoți continua partida: introdu fiecare aruncare pe panoul cu zaruri și execută mutările pe tabla de mai jos.';
  }

  @override
  String get buddyCameraGenericError =>
      'Camera nu a putut porni. Verifică permisiunile și încearcă din nou.';

  @override
  String buddyRegionPoint(int number) {
    return 'punctul $number';
  }

  @override
  String get buddyRegionBar => 'bara';

  @override
  String get buddyRegionWhiteTray => 'tava de scoatere a pieselor albe';

  @override
  String get buddyRegionBlackTray => 'tava de scoatere a pieselor negre';

  @override
  String get buddyRegionDiceZone => 'mijlocul tablei';

  @override
  String get buddyCalibrationProblemVisible =>
      'Nu văd toată tabla. Îndepărtează telefonul sau trage colțurile pe suprafața de joc.';

  @override
  String buddyConfirmMore(int number) {
    return ' (și încă $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Câte un zar fiecare. Fețele aruncate stabilesc cine începe.';

  @override
  String get buddyDiceOpeningFirst => 'Zarul albului';

  @override
  String get buddyDiceOpeningSecond => 'Zarul negrului';

  @override
  String get buddyDiceRegularCaption =>
      'Cele două fețe de pe masă, în orice ordine.';

  @override
  String get buddyDiceRegularFirst => 'Un zar';

  @override
  String get buddyDiceRegularSecond => 'Celălalt zar';

  @override
  String get evaluationEngine => 'Motor de evaluare';

  @override
  String get parallelEngineAnalysis => 'Analizează cu ambele motoare';

  @override
  String get parallelEngineExplanation =>
      'Compară sfaturile separate wildbg și GNUbg în tutor.';

  @override
  String get engineComparison => 'Compararea motoarelor';

  @override
  String get engineWinChance => 'Șansă de câștig';

  @override
  String get buddyBar => 'barul';

  @override
  String get buddyOff => 'oprit';

  @override
  String get buddyHitSuffix => ', lovind';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Mutați o pică de la $from la $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Mutați $count dame din $from în $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Reduceți o pică de la $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Reduceți $count pime de la $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Am aruncat $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Ai aruncat $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'Ambele au rostogolit $die. Rotiți din nou.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Fără joc, așa că e rândul tău.';

  @override
  String get buddySpeechNoPlayBuddyTurn =>
      'Fără joc, așa că este rândul lui Buddy.';

  @override
  String get buddySpeechNoPlayPass => 'Fără joc – îți trece rândul.';

  @override
  String get buddySpeechNoPlayBack => 'Fără joc, așa că este înapoi la tine.';

  @override
  String get buddySpeechIllegalPlay => 'Asta nu este o piesă legală.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Nu este tocmai corect. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Tabla diferă de joc: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: jocul așteaptă $expected $side dame; camera vede $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'O să te cred pe cuvânt. Nu am putut vedea acel teren, așa că dacă ne-am despărțit, va apărea ca o piesă pe care nu o pot citi.';

  @override
  String get buddySpeechBuddyDouble => 'Mă dublez - iau sau las?';

  @override
  String get buddySpeechYouDouble => 'Te dublezi.';

  @override
  String get buddySpeechBuddyTakes => 'iau.';

  @override
  String get buddySpeechYouTake => 'Tu iei.';

  @override
  String get buddySpeechBuddyDrops => 'scap.';

  @override
  String get buddySpeechYouDrop => 'Tu scapi.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Câștig acest joc: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Câștigi acest joc: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Acesta este meciul pentru mine.';

  @override
  String get buddySpeechMatchWinnerYou => 'Tu câștigi meciul.';

  @override
  String get buddyTutorLastPlayBest =>
      'Ultima ta joc s-a potrivit cu cel mai bun motor.';

  @override
  String get buddyTutorLastPlayClose =>
      'Ultima ta joacă a fost aproape de cea mai bună a motorului.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'Pentru ultima ta redare, motorul a preferat $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Lasă $best dame adverse pe bară în loc de $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Lasă $best pete în loc de $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Acesta deține $best puncte de acasă în loc de $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Are $best dame dezactivate în loc de $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Clasamentul cântărește câștigurile estimate și gammons; nicio caracteristică a plăcii nu o explică.';

  @override
  String buddySpeechPlay(String move) {
    return 'Joacă $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Am aruncat $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck => 'Verifică confirmarea ștergerii';

  @override
  String get privacyDeletionReceiptHelp =>
      'După ce soliciți ștergerea, revino aici pentru a verifica dacă s-a încheiat. Dovada ta privată rămâne pe acest dispozitiv și funcționează după deconectare. Verificările nu creează un cont. Confirmările finalizării sunt disponibile online timp de 90 de zile; păstrează această instalare până la confirmare.';

  @override
  String get privacyDeletionReceiptNone =>
      'Pe acest dispozitiv nu este salvată nicio dovadă a cererii de ștergere. Pentru cereri anterioare sau un dispozitiv pierdut, contactează asistența.';

  @override
  String get privacyDeletionReceiptPending =>
      'Ștergerea nu este încă confirmată. Procesarea poate dura până la 30 de zile. Verifică din nou mai târziu. Dacă au trecut mai mult de 30 de zile, contactează asistența. O dovadă indisponibilă sau expirată nu reprezintă o confirmare a ștergerii.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Ștergere finalizată: toate cererile salvate pe acest dispozitiv sunt confirmate ca finalizate. Aceasta nu șterge o identitate online creată ulterior. Istoricul local și datele de învățare rămân. Google poate păstra copii de rezervă și jurnale de securitate, conform politicii de confidențialitate.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Confirmarea ștergerii nu a putut fi verificată. Încearcă din nou când ai conexiune sau contactează asistența. Aceasta nu confirmă finalizarea ștergerii.';
}
