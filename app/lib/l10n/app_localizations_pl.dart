// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get homeTagline => 'Popraw swoją grę z trenerem';

  @override
  String get settings => 'Ustawienia';

  @override
  String get playVsComputer => 'Graj z komputerem';

  @override
  String get twoPlayers => 'Dwóch graczy';

  @override
  String get playNearby => 'Graj w pobliżu';

  @override
  String get playOnline => 'Graj online';

  @override
  String get learningPractice => 'Nauka i trening';

  @override
  String get gamesArchive => 'Archiwum gier';

  @override
  String get followSystem => 'Język urządzenia';

  @override
  String get white => 'Białe';

  @override
  String get black => 'Czarne';

  @override
  String get random => 'Losowo';

  @override
  String get startMatch => 'Rozpocznij grę';

  @override
  String get tutor => 'Trener';

  @override
  String get noMovesPass => 'Brak ruchów — pas';

  @override
  String get undo => 'Cofnij';

  @override
  String get confirm => 'Zatwierdź';

  @override
  String get roll => 'Rzuć';

  @override
  String get hint => 'Podpowiedź';

  @override
  String get tutoringStyle => 'Styl nauki';

  @override
  String get tutorStyleCoach => 'Trener';

  @override
  String get tutorStyleHintsOnly => 'Tylko podpowiedzi';

  @override
  String get tutorStyleTryFirst => 'Najpierw spróbuj samodzielnie';

  @override
  String get tutorCoachDescription =>
      'Wskazówki dotyczące pozycji, ocena ruchów, podpowiedzi i rady dotyczące kostki podwajającej.';

  @override
  String get tutorHintsDescription =>
      'Ranking ruchów na żądanie. Bieżące wskazówki o pozycji i automatyczne oceny ruchów pozostają wyłączone.';

  @override
  String get tutorTryFirstDescription =>
      'Najpierw wypróbuj swój ruch, a dopiero potem zobacz ranking lub ocenę; wskazówki dotyczące pozycji pozostają włączone.';

  @override
  String get tutorCustomDescription =>
      'Własny zestaw. Dostosuj dowolne opcje poniżej.';

  @override
  String get tutorBestMoveHints => 'Podpowiedzi dotyczące najlepszego ruchu';

  @override
  String get tutorRevealRankedPlays =>
      'Pokaż ranking ruchów podczas podejmowania decyzji';

  @override
  String get tutorMoveExplanations => 'Wyjaśnienia ruchów';

  @override
  String get tutorCompareEstimates => 'Porównaj oceny i zmiany na planszy';

  @override
  String get tutorGameCommentary => 'Komentarz do partii';

  @override
  String get tutorPositionPrompts =>
      'Wskazówki dotyczące pozycji i komentarz po każdym ruchu';

  @override
  String get tutorCubeAdvice => 'Rady dotyczące kostki podwajającej';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Sugestie podwojenia, przyjęcia lub pasowania uwzględniające wynik meczu';

  @override
  String get tutorTryMoveFirst => 'Najpierw wypróbuj ruch';

  @override
  String get tutorStageBeforeHints =>
      'Wypróbuj swój ruch, zanim pokażemy podpowiedzi lub ocenę';

  @override
  String get tutorStaticEstimateNote =>
      'Szybka ocena statyczna (0-ply, bez symulacji); uwagi opisują zmiany na planszy i możliwe odpowiedzi, a nie gwarantują dalszego przebiegu.';

  @override
  String get tutorWhatToWatchNext =>
      'Na co zwrócić uwagę w następnej kolejności';

  @override
  String get tutorMoreBoardDetails => 'Więcej informacji o planszy';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Oceny i sposób ich działania';

  @override
  String get tutorEstimateLimitations =>
      'Głębokość: statyczna ocena sieci neuronowej po każdym legalnym ruchu (0-ply), bez symulacji ani wyszukiwania przyszłych odpowiedzi. MWC uwzględniające wynik waży szacunki rezultatów na podstawie wyniku meczu i bieżącej kostki; nie modeluje przyszłych decyzji dotyczących kostki. Jeśli wynik nie jest dostępny, equity bez kostki oznacza oczekiwaną liczbę punktów przy kostce o wartości 1. Obserwacje dotyczące planszy opisują ruch, a nie wewnętrzne rozumowanie silnika neuronowego. Podobne wyniki nie oznaczają pewności; brak skalibrowanego przedziału ufności.';

  @override
  String get tutorPointNumberNote =>
      'Numery pól w uwagach szkoleniowych liczy się od pola domowego gracza wykonującego ruch.';

  @override
  String get tutorHittingRollNote =>
      'Liczba rzutów umożliwiających zbicie obejmuje wszystkie 36 uporządkowanych wyników kości oraz legalne zbicia bezpośrednie i pośrednie; są to możliwości, a nie prognoza wyboru przeciwnika.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Brak ocenionych alternatyw dla tego ruchu.';

  @override
  String get tutorForcedPassNoDecision =>
      'Przymusowe pasowanie nie wiąże się z wyborem ruchu pionkami.';

  @override
  String get settingsReset => 'Resetuj';

  @override
  String get settingsAppLanguage => 'Język aplikacji';

  @override
  String get settingsTheme => 'Motyw';

  @override
  String get settingsThemeSystem => 'Systemowy';

  @override
  String get settingsThemeLight => 'Jasny';

  @override
  String get settingsThemeDark => 'Ciemny';

  @override
  String get settingsAnimationSpeed => 'Szybkość animacji';

  @override
  String get settingsAnimationNone => 'Brak';

  @override
  String get settingsAnimationNormal => 'Normalna';

  @override
  String get settingsAnimationFast => 'Szybka';

  @override
  String get settingsDiceRollAnimation => 'Animacja rzutu kośćmi';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Poturlaj kości przed każdym rzutem';

  @override
  String get settingsDefaultMatchLength => 'Domyślna długość meczu';

  @override
  String get settingsDefaultDifficulty => 'Domyślny poziom trudności';

  @override
  String get settingsDifficultyEasy => 'Łatwy';

  @override
  String get settingsDifficultyMedium => 'Średni';

  @override
  String get settingsDifficultyHard => 'Trudny';

  @override
  String get settingsDifficultyExpert => 'Ekspert';

  @override
  String get settingsTutorModeDefault => 'Domyślny tryb tutora';

  @override
  String get settingsTutorAuto => 'Automatycznie';

  @override
  String get settingsTutorOn => 'Włączony';

  @override
  String get settingsTutorOff => 'Wyłączony';

  @override
  String get settingsTutorModeHelp =>
      'Tryb automatyczny włącza tutora przy każdym poziomie trudności komputera. Opcje Włączony i Wyłączony określają początkowy wybór w lokalnych meczach. Mecze w pobliżu i online nie są wspomagane; zapisane partie można później przejrzeć. Poniższe preferencje nauki są zapisywane na tym urządzeniu.';

  @override
  String get settingsTutorPreferences => 'Preferencje tutora';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Domyślne ustawienia przyszłych meczów';

  @override
  String get settingsTutorSaveError =>
      'Nie udało się zapisać preferencji tutora.';

  @override
  String get settingsGameplay => 'Rozgrywka';

  @override
  String get settingsMoveHighlights => 'Podświetlanie ruchów';

  @override
  String get settingsMoveHighlightsHelp =>
      'Obrysowuje pionki, którymi można ruszyć, i podświetla pola docelowe';

  @override
  String get settingsDragToMove => 'Przeciągnij, aby przesunąć';

  @override
  String get settingsDragToMoveHelp =>
      'Przeciągnij pionek na pole docelowe (stuknięcia też działają)';

  @override
  String get settingsCombinedMoves => 'Łączenie ruchów';

  @override
  String get settingsCombinedMovesHelp =>
      'Jedno stuknięcie przesuwa pionek o wartości z obu kości';

  @override
  String get settingsRotateBoard => 'Obracaj planszę między turami';

  @override
  String get settingsRotateBoardHelp =>
      'Gra na zmianę: obróć widok dla aktywnego gracza';

  @override
  String get settingsPassDevice => 'Ekran przekazania urządzenia';

  @override
  String get settingsPassDeviceHelp =>
      'Zasłoń planszę między turami w grze na zmianę';

  @override
  String get settingsShowScore => 'Pokaż wynik';

  @override
  String get settingsShowScoreHelp =>
      'Wyświetlaj bieżący wynik meczu w nagłówku';

  @override
  String get settingsBuddyMode => 'Styl Buddy’ego';

  @override
  String get settingsBuddyTerse => 'Zwięzły';

  @override
  String get settingsBuddyFriendly => 'Przyjazny';

  @override
  String get settingsBuddyTerseHelp =>
      'Jak Buddy wypowiada ruch: „13/8, 24/22” — zapis, którym posługują się gracze przy planszy.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Jak Buddy wypowiada ruch: „Przesuń jeden pionek z 13 na 8, a drugi z 24 na 22”.';

  @override
  String get settingsListenForDice => 'Nasłuchuj kości';

  @override
  String get settingsListenForDiceHelp =>
      'Buddy szybciej analizuje planszę, gdy usłyszy rzut. Wyłączenie tej opcji nie zmienia niczego innego.';

  @override
  String get settingsDiagnostics => 'Diagnostyka';

  @override
  String get settingsErrorLog => 'Dziennik błędów';

  @override
  String get settingsErrorLogHelp =>
      'Ostatnie błędy, gotowe do skopiowania do zgłoszenia błędu';

  @override
  String get settingsReportBug => 'Zgłoś błąd';

  @override
  String get settingsReportBugHelp => 'Otwórz formularz zgłoszenia na GitHubie';

  @override
  String get settingsSuggestIdea => 'Zaproponuj pomysł';

  @override
  String get settingsSuggestIdeaHelp => 'Pomóż nam ulepszyć tutora i grę';

  @override
  String get settingsAbout => 'Informacje';

  @override
  String get settingsOpenSourceLicenses => 'Licencje open source';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Partia zakończona.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Przejrzyj ruchy, aby znaleźć decyzję do przećwiczenia.';

  @override
  String get tutorPhraseCubeOffered => 'Zaproponowano podwojenie stawki.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Zdecyduj, czy przyjąć podwojenie, czy spasować, zanim zaplanujesz ruch pionkami.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Wynik meczu wpływa na wartość dodatkowej stawki.';

  @override
  String get tutorPhraseResignationOffered =>
      'Przeciwnik zaproponował poddanie partii.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Przed przyjęciem poddania lub dalszą grą porównaj proponowaną liczbę punktów z pozycją.';

  @override
  String get tutorPhraseNoLegalPlay =>
      'Przy tym rzucie nie ma legalnego ruchu.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Przymusowe pasowanie nie jest błędem; poczekaj na kolejny rzut.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Możliwa jest tylko jedna legalna pozycja po ruchu.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Wykonaj wymuszony ruch. Przy tym rzucie nie ma wyboru do oceny.';

  @override
  String get tutorPhrasePipCountsLevel => 'Liczba pipów jest taka sama.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Masz przewagę $count pipów.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Masz stratę $count pipów.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return '$count pionków na barze: najpierw musisz je wprowadzić do gry.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Najpierw wprowadź pionki z baru, a dopiero potem ruszaj pozostałymi; wybierz bezpieczne pole docelowe.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Przeciwnik ma $count zamkniętych pól w swojej bazie.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Wyścig do zdjęcia pionków z planszy.';

  @override
  String get tutorPhrasePureRace => 'Czysty wyścig.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Zdejmuj pionki z planszy, zachowując przydatne rozłożenie na następny rzut.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Przesuwaj tylne pionki do bazy, nie gromadząc zbyt wielu na jednym polu.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Pionki minęły się; nie można już nikogo zbić.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Kontakt nadal ma znaczenie.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'Przeciwnik ma $count pionków na barze.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Utrzymuj zamknięte pola, sprowadzając pozostałe pionki do bazy.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Buduj lub utrzymuj zamkniętą bazę, gdy przeciwnik próbuje wprowadzić pionki.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Masz $count zamkniętych pól w bazie; każde blokuje jedną możliwość wejścia.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Kontakt z ciągiem $count kolejnych zamkniętych pól.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Rozważ, czy przedłużyć blokadę, czy zachować zapasowe pionki, które pomogą ją utrzymać.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return '$count zapasowych pionków może się ruszyć bez natychmiastowego otwierania pola.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Kontakt z kotwicą na polach $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Porównaj sprowadzanie tylnych pionków do bazy z bezpieczeństwem, jakie daje utrzymanie kotwicy.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Pamiętaj o bezpiecznym przyczółku, szukając możliwości zbicia lub poprawy swojej bazy.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Kotwicy nie można zbić, ale pionki nadal mają daleką drogę do bazy.';

  @override
  String get tutorPhraseContactThreats =>
      'Jest kontakt: obaj gracze nadal mogą grozić zbiciem.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Szukaj przydatnych zamkniętych pól, a potem oceń ryzyko pozostawienia odsłoniętych pojedynczych pionków.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Masz $count zamkniętych pól w bazie i pozostawiasz $otherCount odsłoniętych pionków.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Wybierz pionek, aby rozpocząć ruch.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Rozpocznij legalny ruch, aby zobaczyć komentarz.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pionka przeciwnika',
      many: '$count pionków przeciwnika',
      few: '$count pionki przeciwnika',
      one: 'jeden pionek przeciwnika',
    );
    return 'Zbijasz $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wprowadzasz z baru $count pionka',
      many: 'Wprowadzasz z baru $count pionków',
      few: 'Wprowadzasz z baru $count pionki',
      one: 'Wprowadzasz z baru jeden pionek',
    );
    return '$_temp0.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pionka',
      many: '$count pionków',
      few: '$count pionki',
      one: 'jeden pionek',
    );
    return 'Zdejmujesz z planszy $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Zamykasz pola $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Pojedynczy pionek na twoim polu $point jest teraz odsłonięty.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Zapasowy pionek na twoim polu $point może ruszyć się później bez otwierania tego pola.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Wykorzystaj pozostałe możliwe do zagrania kości, zanim ocenisz cały ruch.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Wszystkie 15 pionków jest już zdjętych z planszy: wygrywasz partię.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Zbicie zyskuje czas, gdy przeciwnik próbuje ponownie wejść do gry.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Efektywne zdejmowanie pionków z planszy zostawia przydatne wartości na kolejny rzut.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'W wyścigu sprowadzaj tylne pionki do bazy i zachowuj przydatne pola do zdejmowania pionków.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Zdejmowanie pionków z planszy daje postęp, ale pozostały kontakt nadal grozi zbiciem.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Wejście z baru przywraca pionek do gry; potem poszukaj bezpiecznego pola docelowego.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Nowe zamknięte pole w twojej bazie blokuje jedną możliwość wejścia po ewentualnym zbiciu.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Dłuższa blokada zamyka więcej pól do lądowania; zapasowe pionki pomagają ją utrzymać.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Opuszczenie kotwicy daje postęp, ale odbiera bezpieczny przyczółek.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Nowa kotwica daje tylnym pionkom bezpieczny przyczółek.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Osłonięcie odsłoniętego pionka odbiera przeciwnikowi cel.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'To kompromis między rozwojem a bezpieczeństwem: przydatne pionki budujące pozycję mogą stać się celem.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Cały ruch jest gotowy; naciśnij Potwierdź, aby go wykonać.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'Przy tym rzucie nie ma wyboru ruchu pionkami, więc nie jest on oceniany jako decyzja.';

  @override
  String get tutorMoveTopVerdict => 'Najlepszy wybór w tej pozycji.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'Silnik w tej pozycji preferuje inny ruch.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Różnica względem najlepszego ruchu: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Po tym ruchu: szacunkowa szansa na wygraną $winPercent%, na wygraną z gammonem lub lepiej $winGammonPercent%, a na przegraną z gammonem lub gorzej $loseGammonPercent%. To szacunki z perspektywy wykonującego ruch.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Szacowana szansa na wygranie meczu: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Wszystkie 15 pionków jest zdjętych z planszy: partia wygrana.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Wykorzystaj zbicie, aby zyskać czas, gdy przeciwnik wraca do gry. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Utrzymuj zamknięte pola w swojej bazie, by utrudnić przeciwnikowi wejście.';

  @override
  String get tutorMovePlanHitBuild =>
      'Zamknij więcej pól w swojej bazie, aby trudniej było przeciwnikowi odrobić straty po kolejnych zbiciach.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Dąż do sprawnego zdjęcia pionków: zdejmuj je z planszy, zachowując przydatne wyniki na następny rzut.';

  @override
  String get tutorMovePlanRaceHome =>
      'Przesuń tylne pionki do bazy i rozstaw je na polach przydatnych do zdejmowania.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Zdejmuj pionki z planszy, ale pilnuj tylnych pionków przeciwnika: dopóki jest kontakt, samotny pionek podczas zdejmowania może stać się celem.';

  @override
  String get tutorMovePlanReentry =>
      'Wróć do gry, a potem poszukaj bezpiecznego pola dla wprowadzonego pionka.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Wzmocnij swoją bazę. Nowe zamknięte pole zwiększy skuteczność przyszłego zbicia, blokując jedną możliwość wejścia.';

  @override
  String get tutorMovePlanPrime =>
      'Utrzymuj spójny ciąg zamkniętych pól. Zachowaj zapasowe pionki, aby kolejne rzuty nie zmusiły cię do otwarcia blokady.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Opuszczenie kotwicy przesuwa tylne pionki do przodu, ale odbiera bezpieczny przyczółek. Uważaj, by nie zostały zbite po drodze do bazy.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Wykorzystaj nową kotwicę jako bezpieczny przyczółek, poprawiając resztę pozycji.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Zbierz pionki. Osłonięcie odsłoniętego pionka usuwa go z celownika przeciwnika i zachowuje przydatne pola lądowania na przyszłość.';

  @override
  String get tutorMovePlanSafety =>
      'Równoważ rozwój i bezpieczeństwo: przesuwaj pionki budujące pozycję w stronę przydatnych pól i sprawdzaj, które pojedyncze pionki można zbić.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Brak legalnego ruchu pionkiem: musisz spasować.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pionka przeciwnika',
      many: '$count pionków przeciwnika',
      few: '$count pionki przeciwnika',
      one: 'jeden pionek przeciwnika',
    );
    return 'Zbijasz $_temp0; przeciwnik musi najpierw wejść pionkami z baru, zanim ruszy pozostałe.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Wprowadzasz $count pionka z baru.',
      many: 'Wprowadzasz $count pionków z baru.',
      few: 'Wprowadzasz $count pionki z baru.',
      one: 'Wprowadzasz jeden pionek z baru.',
    );
    return '$_temp0';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pionka',
      many: '$count pionków',
      few: '$count pionki',
      one: 'jeden pionek',
    );
    return 'Zdejmujesz z planszy $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Zamykasz pola $points. Co najmniej dwa pionki zajmują bezpieczne pole i blokują tam lądowanie przeciwnika.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Otwierasz zamknięte pola ($pointLabel): $points. Nie blokują już przeciwnikowi lądowania.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Nie zostawiasz odsłoniętych pojedynczych pionków (wcześniej: $previousCount). Przeciwnik nie ma pionków do zbicia.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count odsłoniętego pionka',
      many: '$count odsłoniętych pionków',
      few: '$count odsłonięte pionki',
      one: 'jeden odsłonięty pionek',
    );
    return 'Zostawiasz $_temp0 (wcześniej: $previousCount). Sprawdź, czy przeciwnik może do nich dotrzeć, zanim wybierzesz bezpieczeństwo zamiast innej korzyści.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Najdłuższy ciąg zamkniętych pól: $count (wcześniej: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Nie da się przekroczyć ściany z sześciu zamkniętych pól, dopóki pozostaje nienaruszona.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Trzymaj pionki do budowania pozycji w pobliżu, jeśli chcesz przedłużyć lub zachować ten ciąg.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Liczba zapasowych pionków poza dwoma utrzymującymi zamknięte pola: $count. Ruch zapasowym pionkiem może zachować pole; ruch jednym z dwóch ostatnich je otworzy.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Kotwice w bazie przeciwnika: $points (wcześniej: $previousPoints). Zachowanie kotwicy chroni te pionki przed zbiciem; jej opuszczenie zamienia bezpieczny przyczółek na postęp w wyścigu.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Czysty wyścig: pionki minęły się i żaden gracz nie ma pionków na barze. Zbijanie nie jest już możliwe; liczy się sprawne zdejmowanie pionków.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'W tej pozycji żaden legalny następny rzut nie pozwala przeciwnikowi zbić pionka. Kontakt nadal istnieje, więc kolejne ruchy mogą stworzyć nowe okazje do zbicia.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Przeciwnik może zbić pionek przy $count z $total rzutów. Na przykład $dieOne–$dieTwo pozwala legalnie zbić pionek na twoim polu $point. To tylko możliwość, nie pewność, że przeciwnik ją wybierze.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Zamknięte pola w twojej bazie: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Przeciwnik nie może wejść, dopóki któreś pole się nie otworzy.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Rzut pozwalający wejść na otwarte pole może sprowadzić pionek z baru do gry.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Szansa na wygraną przy najlepszym ruchu jest $direction o $delta punktów procentowych.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'większa';

  @override
  String get tutorMoveComparisonLower => 'mniejsza';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Może mimo to być oceniany wyżej, ponieważ gammon i backgammon mają inną wartość zależnie od $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'wysokości stawki';

  @override
  String get tutorMoveComparisonMatchScore => 'wyniku meczu';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Liczba pionków przeciwnika na barze po najlepszym ruchu: $bestCount, zamiast $playedCount. Pionek na barze musi wejść, zanim przeciwnik będzie mógł ruszyć pozostałe.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Liczba zamkniętych pól w twojej bazie po najlepszym ruchu: $bestCount, zamiast $playedCount. Po zbiciu $entryDifference.';
  }

  @override
  String get tutorMoveComparisonClosingMore =>
      'więcej możliwości wejścia będzie zablokowanych';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'więcej możliwości wejścia pozostanie otwartych';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Najlepszy ruch pozwala na zbicie w odpowiedzi przy $bestCount z 36 rzutów, zamiast $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'To zmniejsza bezpośrednie ryzyko odesłania pionka na bar.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Porównaj dodatkowe ryzyko odsłonięcia z korzyściami, jakie ruch przynosi w innych aspektach.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Najdłuższy ciąg zamkniętych pól ma $bestCount po najlepszym ruchu, zamiast $playedCount. Porównaj długość blokady z liczbą pionków, które mogą ją utrzymać.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Kotwice po najlepszym ruchu: $bestPoints, zamiast $playedPoints. Zachowanie kotwicy daje bezpieczne pole lądowania; jej opuszczenie przybliża te pionki do bazy.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Liczba pionków zdjętych z planszy po najlepszym ruchu: $bestCount, zamiast $playedCount. Każdy zdjęty pionek to jeden mniej do zdjęcia później.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Oba ruchy pozostawiają takie samo bezpośrednie ryzyko zbicia, tyle samo zamkniętych pól w bazie, kotwic i zdjętych pionków. Porównaj pola lądowania: kolejny rzut może inaczej wykorzystać te pionki.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Najlepszy ruch umieszcza więcej pionków przeciwnika na barze, opóźniając jego pozostałe ruchy.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Najlepszy ruch zamyka więcej pól w bazie i utrudnia wejście po zbiciu.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Najlepszy ruch dopuszcza mniej natychmiastowych okazji do zbicia, zmniejszając ryzyko odesłania pionka.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Najlepszy ruch zachowuje dłuższy ciąg zamkniętych pól.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Najlepszy ruch zachowuje więcej bezpiecznych kotwic w bazie przeciwnika.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Najlepszy ruch zdejmuje więcej pionków z planszy, więc później zostaje ich mniej.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Liczba odsłoniętych pojedynczych pionków: $playedCount po tym ruchu, $bestCount po najlepszym.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Najlepszy ruch zachowuje bezpieczną kotwicę na polu $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Najlepszy ruch zamyka więcej pól wejścia na wypadek zbicia twojego pionka.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Ruchy pozostawiają podobne bezpośrednie ryzyko; porównaj, które pola lądowania pozostaną przydatne przy następnym rzucie.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return 'Utrata equity: $value';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value pp szansy na wygranie meczu (MWC)';
  }

  @override
  String get tutorMovePointSingular => 'pole';

  @override
  String get tutorMovePointPlural => 'pola';

  @override
  String get tutorMoveNoPoints => 'żadne';

  @override
  String get gameTutorCommentaryOff => 'Komentarz do gry jest wyłączony.';

  @override
  String get gameTutorToolsAvailable =>
      'Otwórz tutora, aby skorzystać z włączonych narzędzi.';

  @override
  String get gameTutorNextRoll => 'Rzuć ponownie.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Brak ocenionego wyjaśnienia dla tego zapisanego ruchu.';

  @override
  String get gameTutorAnalysisUnavailable => 'analiza niedostępna';

  @override
  String get gameTutorReviewing => 'analiza w toku…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Najpierw spróbuj wykonać własny ruch.';

  @override
  String get gameTutorKeepBuilding => 'Dokończ swój ruch.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Przygotuj pełny legalny ruch, zanim odkryjesz wskazówki lub podpowiedzi.';

  @override
  String get gameTutorReadyToConfirm => 'Gotowe do potwierdzenia';

  @override
  String get gameTutorPlayTakingShape => 'Twój ruch nabiera kształtu.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Potwierdź, aby wykonać ruch, albo cofnij go i zastanów się ponownie.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Wykorzystaj pozostałe kości albo cofnij ruch.';

  @override
  String get gameTutorComputerConsidering =>
      'Komputer zastanawia się nad swoim ruchem.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Ukończony ruch komputera zostanie omówiony tutaj.';

  @override
  String get gameTutorYourPlay => 'Twój ruch';

  @override
  String get gameTutorComputer => 'Komputer';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Twój ruch: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'wymuszony ruch';

  @override
  String get gameTutorTopChoice => 'najlepszy wybór';

  @override
  String get gameTutorSoundPlay => 'dobry ruch';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'inny ruch może lepiej pasować';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'inny ruch lepiej pasuje do tej pozycji';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'dostępny był zdecydowanie lepszy ruch';

  @override
  String gameTutorPositionEdge(Object side) {
    return '$side ma szacowaną przewagę.';
  }

  @override
  String get gameTutorPositionEven => 'Pozycja jest mniej więcej wyrównana.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Zagrano: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Najlepszy ruch: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Pokaż ranking ruchów';

  @override
  String get tutorReviewRecordedMove =>
      'Dotknij zakończonego ruchu w dzienniku, aby przejrzeć tutaj tę decyzję.';

  @override
  String get tutorTopPlays => 'Najlepsze ruchy';

  @override
  String get tutorNoHintsAvailable => 'Brak podpowiedzi.';

  @override
  String get tutorPreviewThenConfirm =>
      'Dotknij ruchu, aby wyświetlić go na planszy, a następnie zatwierdź.';

  @override
  String get tutorTopChoiceForPosition => 'Najlepszy wybór w tej pozycji';

  @override
  String get tutorAlternativePlay => 'Alternatywny ruch';

  @override
  String get tutorEngineEstimates => 'Oceny silnika';

  @override
  String get tutorEstimateScope =>
      'Szacunek 0-ply · aktualny wynik i stawka · bez przyszłych decyzji o podwojeniu';

  @override
  String get tutorEquity => 'Oczekiwana wartość';

  @override
  String get tutorMwcPercent => 'MWC %';

  @override
  String get tutorNearTiesNote =>
      'Przy niemal równych ruchach głębsza analiza może zmienić kolejność.';

  @override
  String get tutorWhyThisPlay => 'Dlaczego ten ruch?';

  @override
  String get tutorCompareAlternative => 'Porównaj tę alternatywę';

  @override
  String get gameTutorCubeTake => 'Tutor: przyjmij';

  @override
  String get gameTutorCubePass => 'Tutor: pasuj';

  @override
  String get practiceScreenTitle => 'Ćwicz decyzję';

  @override
  String get practiceUnavailable =>
      'Ta pozycja treningowa nie jest już dostępna.';

  @override
  String get practiceSubmitError =>
      'Nie udało się ocenić ani zapisać tej próby. Twój postęp się nie zmienił. Spróbuj ponownie.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Ruch wykonuje $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Brak historycznego wyniku; ocena używa equity bez kostki.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Wynik: $whiteLabel $whiteScore – $blackLabel $blackScore, do $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · partia Crawforda';

  @override
  String get practiceNoDoublingCube => 'Bez kostki podwajającej.';

  @override
  String practiceCubeValue(int value) {
    return 'Kostka $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Nieznane historyczne zasady kostki.';

  @override
  String get practiceAfterBestPosition => 'Pozycja po najlepszym ruchu';

  @override
  String get practiceAfterYourAnswerPosition => 'Pozycja po twojej odpowiedzi';

  @override
  String get practiceFindYourPlayPrompt =>
      'Wykonaj ruch na planszy, a potem sprawdź odpowiedź. Podpowiedzi nie są wyświetlane.';

  @override
  String get practiceUndo => 'Cofnij';

  @override
  String get practiceCheckAnswer => 'Sprawdź odpowiedź';

  @override
  String get practiceRevealNoCredit => 'Pokaż odpowiedź (bez punktów)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Odpowiedź ujawniona — bez punktów za przypomnienie.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Najlepszy: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Oryginalna partia: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Twoja odpowiedź: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Twoja odpowiedź';

  @override
  String get practiceBestPlayChip => 'Najlepszy ruch';

  @override
  String practiceNextReview(Object date) {
    return 'Następna powtórka: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Najlepsze i dobre odpowiedzi liczą się jako skuteczne przypomnienie. Wcześniejsze powtórki nie przyspieszają harmonogramu.';

  @override
  String get practiceBackToLearning => 'Wróć do nauki';

  @override
  String get practiceMarkBest => 'Najlepszy';

  @override
  String get practiceMarkGood => 'Dobry';

  @override
  String get practiceMarkDubious => 'Wątpliwy';

  @override
  String get practiceMarkError => 'Błąd';

  @override
  String get practiceMarkBlunder => 'Rażący błąd';

  @override
  String get practiceMarkForced => 'Wymuszony';

  @override
  String get newMatchYourSide => 'Twoja strona';

  @override
  String get newMatchTutorMode => 'Tryb tutora';

  @override
  String get newMatchTutorDescription =>
      'Ucz się dzięki podpowiedziom, wyjaśnieniom i komentarzom do partii';

  @override
  String get newMatchTutoringOptions => 'Opcje nauki z tutorem';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Dla tej partii; można je zmienić podczas gry';

  @override
  String get setupMatchLength => 'Długość meczu';

  @override
  String get setupDifficulty => 'Poziom trudności';

  @override
  String get setupDifficultyEasy => 'Łatwy';

  @override
  String get setupDifficultyMedium => 'Średni';

  @override
  String get setupDifficultyHard => 'Trudny';

  @override
  String get setupDifficultyExpert => 'Ekspert';

  @override
  String get setupPlayWithoutCube => 'Graj bez kostki';

  @override
  String get setupNoCubeThisMatch => 'W tym meczu nie ma kostki podwajającej';

  @override
  String get analysisTitle => 'Analiza';

  @override
  String get gameMatchSummary => 'Podsumowanie meczu';

  @override
  String get gameAnalyzeGame => 'Analizuj partię';

  @override
  String get analysisMetricsTooltip => 'Co oznaczają te liczby?';

  @override
  String analysisError(Object error) {
    return 'Nie udało się przeanalizować partii: $error';
  }

  @override
  String get analysisNoPositions =>
      'Brak pozycji do wyświetlenia w tej partii.';

  @override
  String get analysisInProgress => 'Analizowanie partii…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Zagrano';

  @override
  String get analysisBest => 'Najlepszy';

  @override
  String get analysisPrevious => 'Poprzednia';

  @override
  String get analysisNext => 'Następna';

  @override
  String get analysisPositionBeforeCube => 'Pozycja przed decyzją o kostce';

  @override
  String get analysisPositionAtPoint => 'Pozycja w tym momencie partii';

  @override
  String get analysisShowingBestBefore =>
      'Najlepszy ruch na pozycji przed ruchem';

  @override
  String get analysisShowingBefore => 'Pozycja przed ruchem';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages => ' · pominięte w średniej';

  @override
  String get analysisNoPlay => '(brak ruchu)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Najlepszy ruch: $move';
  }

  @override
  String get analysisExplain => 'Wyjaśnij';

  @override
  String get analysisSaveForPractice => 'Zapisz do ćwiczeń';

  @override
  String analysisSaveError(Object error) {
    return 'Nie udało się zapisać tej decyzji: $error';
  }

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
  String get analysisCubeDecision => 'Decyzja o kostce';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Zagrano: $action (szansa wygrania meczu: $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Najlepszy: $action (szansa wygrania meczu: $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Szacunek 0-ply z perspektywy gracza wykonującego ruch. Zakłada optymalną odpowiedź: przyjęcie lub pas. W gałęzi przyjętego podwojenia stosuje przybliżenie żywotności kostki 0,7, a nie pełne przeszukiwanie przyszłych ponownych podwojeń. Głębsza analiza może zmienić wynik.';

  @override
  String get analysisClose => 'Zamknij';

  @override
  String get analysisMoves => 'Ruchy';

  @override
  String get analysisForced => 'Wymuszony';

  @override
  String get analysisMarkBest => 'Najlepszy';

  @override
  String get analysisMarkGood => 'Dobry';

  @override
  String get analysisMarkDubious => 'Wątpliwy';

  @override
  String get analysisMarkError => 'Błąd';

  @override
  String get analysisMarkBlunder => 'Rażący błąd';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Średnia strata $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count decyzji o ruchu';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Rażące błędy $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Strata kostki $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side rzuca bez podwajania';
  }

  @override
  String get metricExplainerTitle => 'Jak rozumieć statystyki';

  @override
  String get metricExplainerTooltip => 'Co oznaczają te liczby?';

  @override
  String get metricExplainerMwcTitle => 'Szansa na wygranie meczu (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Gdy wynik jest znany, ruchy pionami są oceniane według szacowanej szansy wygrania meczu. Strata jest podawana w punktach procentowych (pp): 1 pp oznacza spadek z 51% do 50%. Uwzględniane są bieżąca stawka kostki i wyniki gammon/backgammon. Wymuszone pasy i rzuty z jedną legalną pozycją nie są wliczane do średniej.';

  @override
  String get metricExplainerSearchTitle => 'Przeszukiwanie i niepewność';

  @override
  String get metricExplainerSearchBody =>
      'Rankingi ruchów to statyczne oceny 0-ply po ruchu, a nie symulacje. Wartości meczu korzystają z tabeli equity bez przyszłych tur kostki. Oceny kostki używają częściowego przybliżenia żywotności kostki 0,7 przy przyjętym podwojeniu. To nie jest pełne przeszukiwanie z kostką. Dla strat powyżej 25 tabela stosuje granicę 25 punktów. Niewielkie różnice mogą się zmienić przy głębszej analizie; nie ma skalibrowanego przedziału ufności.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Jeśli wynik jest niedostępny, equity bez kostki pokazuje średnią wartość pozycji w punktach przy kostce ustawionej na 1. +1,0 oznacza oczekiwany zysk jednego punktu, a −0,5 oczekiwaną stratę pół punktu.';

  @override
  String get metricExplainerEquityLossTitle => 'Strata equity (np. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Każdy ruch porównujemy z najlepszym ruchem silnika. Strata equity pokazuje oddaną wartość oczekiwaną. −0,016 oznacza, że ruch był gorszy od najlepszego tylko o 0,016 punktu — to drobna pomyłka. 0,000 oznacza znalezienie najlepszego ruchu.';

  @override
  String get metricExplainerErrorRateTitle => 'Wskaźnik błędów';

  @override
  String get metricExplainerErrorRateBody =>
      'Średnia strata obejmuje ocenione decyzje dotyczące pionów w wyświetlanej jednostce. Decyzje kostki mają osobną średnią. Niższa wartość oznacza wynik bliższy najlepszym ocenom silnika; to nie jest skalibrowana ocena gracza.';

  @override
  String get metricExplainerMoveMarksTitle => 'Oceny ruchów';

  @override
  String get metricExplainerMoveMarksBody =>
      'Progi edukacyjne MWC: Najlepszy < 0,05 pp, Dobry < 0,5 pp, Wątpliwy < 1,5 pp, Błąd < 3 pp, Rażący błąd ≥ 3 pp. To progi produktu do nauki, a nie skalibrowana pewność lub ranking turniejowy.\n\nProgi equity bez kostki:';

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
  String get historyTitle => 'Historia meczów';

  @override
  String historyLoadFailed(Object error) {
    return 'Nie udało się wczytać historii:\n$error';
  }

  @override
  String get historyEmpty => 'Nie rozegrano jeszcze żadnego meczu.';

  @override
  String get historyDeleteConfirmTitle => 'Usunąć ten mecz?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nMecz i wszystkie zapisane w nim partie zostaną trwale usunięte. Tej operacji nie można cofnąć.';
  }

  @override
  String get actionCancel => 'Anuluj';

  @override
  String get actionDelete => 'Usuń';

  @override
  String get historyDeleteFailed => 'Nie udało się usunąć meczu.';

  @override
  String get historyComplete => 'Zakończony';

  @override
  String historyWinner(Object side) {
    return 'Wygrywa $side';
  }

  @override
  String get historyUnfinished => 'Niezakończony';

  @override
  String get historyMatchTitle => 'Mecz';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Nie udało się wczytać meczu:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Nie udało się wczytać partii:\n$error';
  }

  @override
  String get historyNoGames => 'Nie zapisano jeszcze żadnej partii.';

  @override
  String historyGameTitle(int number) {
    return 'Partia $number';
  }

  @override
  String get historyCrawford => 'Crawford';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Białe $whiteScore — $blackScore Czarne (do $matchLength)';
  }

  @override
  String get historyModeComputer => 'z komputerem';

  @override
  String get historyModeTwoPlayers => 'Dwóch graczy';

  @override
  String get historyModeOnline => 'Online';

  @override
  String get historyModeNearby => 'Gra w pobliżu';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'W toku';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side wygrywa $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'pojedyncza';

  @override
  String get historyOutcomeGammon => 'gammon';

  @override
  String get historyOutcomeBackgammon => 'backgammon';

  @override
  String get learningRefreshTooltip => 'Odśwież postępy nauki';

  @override
  String get learningOptions => 'Opcje nauki';

  @override
  String get learningResetMenu => 'Zresetuj postępy ćwiczeń';

  @override
  String get learningLoadFailed => 'Nie udało się wczytać postępów nauki.';

  @override
  String get actionRetry => 'Spróbuj ponownie';

  @override
  String get learningHeading => 'Ucz się na podstawie swoich decyzji';

  @override
  String get learningIntro =>
      'Postępy są przechowywane na tym urządzeniu. Przejrzyj powtarzające się tematy, a potem ponownie rozegraj zapisane pozycje bez podglądania odpowiedzi. Białe i Czarne możesz przeglądać osobno.';

  @override
  String get learningBothSides => 'Obie strony';

  @override
  String get learningHumansOnly => 'Tylko decyzje ludzi';

  @override
  String get learningHumanOnlyHelp =>
      'Wyłącz, aby uwzględnić decyzje komputera i graczy zdalnych';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions decyzji · $mistakes do poprawy · $blunders rażących błędów';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Średnia strata ($decisions decyzji): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Wymuszone ruchy są pomijane. To szacunki silnika, a nie ranking turniejowy.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zapisane partie wymagają analizy lub ponownej analizy.',
      one: 'Zapisana partia wymaga analizy lub ponownej analizy.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Analizuj zapisane partie';

  @override
  String get learningEmptyProfile =>
      'Rozegraj i ukończ partię, aby zbudować profil nauki. Możesz też zapisywać pojedyncze decyzje z powtórki.';

  @override
  String get learningOpenHistory => 'Otwórz historię meczów';

  @override
  String get learningRecurringThemes => 'Powtarzające się tematy';

  @override
  String get learningNoThemes =>
      'W tym wyborze nie ma jeszcze powtarzających się tematów błędów.';

  @override
  String learningThemeDecisions(int count) {
    return '$count decyzji do ponownego przejrzenia. Jedna pozycja może mieć kilka tematów.';
  }

  @override
  String get learningSaveMistakes => 'Zapisz te błędy do ćwiczeń';

  @override
  String learningSavedMistakes(int count) {
    return '$count decyzji znajduje się na liście ćwiczeń. Wcześniej zapisane pozycje pozostają.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Nie udało się zapisać części decyzji. Zapisane pozycje pozostają; spróbuj ponownie.';

  @override
  String get learningSpacedPractice => 'Nauka rozłożona w czasie';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due do powtórki · $saved zapisanych · $attempts prób · $successes poprawnych przypomnień';
  }

  @override
  String get learningIntervalsHelp =>
      'Udane powtórki wracają po 1, 3, 7, 14 i 30 dniach. Błędy i ujawnione odpowiedzi wracają po 10 minutach. Wcześniejsze powtórki nie zmieniają odstępu.';

  @override
  String get learningAnswerContext =>
      'Wyniki ćwiczeń odzwierciedlają twoje odpowiedzi tutaj, nawet jeśli pierwotna pozycja należała do przeciwnika.';

  @override
  String get learningNoSavedPositions =>
      'Zapisz decyzję z powtórki albo użyj przycisku błędów powyżej.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Decyzja strony $side · partia $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Powtórka $date';
  }

  @override
  String get learningReadyToReview => 'Gotowe do powtórki';

  @override
  String learningSuccessStreak(int count) {
    return '$count udanych powtórek w terminie';
  }

  @override
  String get learningRemoveTooltip => 'Usuń zapisaną decyzję';

  @override
  String get learningRecentPractice => 'Ostatnie ćwiczenia';

  @override
  String get learningAnswerRevealed => 'Odpowiedź ujawniona';

  @override
  String get learningSuccessfulRecall => 'Poprawne przypomnienie';

  @override
  String get learningTryAgain => 'Spróbuj ponownie tej decyzji';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · zapisana pozycja $positionId';
  }

  @override
  String get learningRemoveTitle => 'Usunąć to ćwiczenie?';

  @override
  String get learningRemoveBody =>
      'Usunie to próby ćwiczenia. Oryginalna partia pozostanie w historii.';

  @override
  String get actionRemove => 'Usuń';

  @override
  String get learningRemoveFailed => 'Nie udało się usunąć ćwiczenia.';

  @override
  String get learningResetTitle => 'Zresetować postępy ćwiczeń?';

  @override
  String get learningResetBody =>
      'Wszystkie próby i odstępy powtórek zostaną usunięte. Zapisane ćwiczenia i historia meczów pozostaną; każde ćwiczenie będzie od razu do powtórki.';

  @override
  String get learningResetAction => 'Zresetuj postępy';

  @override
  String get learningResetFailed => 'Nie udało się zresetować postępów.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Przeanalizowano partii: $completed · niedostępnych: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Przeanalizowano $completed partii.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Przeanalizowano $completed partii; nie udało się przeanalizować $failed. Spróbuj ponownie, gdy silnik będzie gotowy.';
  }

  @override
  String get learningThemeHitting => 'Bicie i tempo';

  @override
  String get learningThemeSafety => 'Bloty i bezpieczeństwo';

  @override
  String get learningThemePointMaking => 'Tworzenie punktów';

  @override
  String get learningThemePrime => 'Prime’y i blokady';

  @override
  String get learningThemeAnchor => 'Kotwice i ucieczka';

  @override
  String get learningThemeRace => 'Efektywność wyścigu';

  @override
  String get learningThemeBearOff => 'Zdejmowanie pionów';

  @override
  String get learningThemeBarEntry => 'Wejście z baru';

  @override
  String get learningThemeCube => 'Decyzje o kostce';

  @override
  String get analysisCubeNoDouble => 'Nie podwajaj';

  @override
  String get analysisCubeDouble => 'Podwój';

  @override
  String get analysisCubeTake => 'Przyjmij';

  @override
  String get analysisCubePass => 'Pasuj';

  @override
  String get learningAnalysisStarting => 'Analizowanie zapisanych partii…';

  @override
  String get tutorCubelessEstimateScope =>
      'Szacunek bez kostki 0-ply · wynik niedostępny';

  @override
  String get tutorLossPp => 'Strata pp';

  @override
  String get tutorLoss => 'Strata';

  @override
  String get scoreSheetNoMoves => 'Brak ruchów';

  @override
  String get tutorOptions => 'Opcje nauki z tutorem';

  @override
  String get tutorCollapseTooltip => 'Zwiń tutora';

  @override
  String get tutorExpandTooltip => 'Rozwiń tutora';

  @override
  String get onlineTitle => 'Graj online';

  @override
  String get onlineUnassistedNote =>
      'Rozgrywki online nie mają bieżącego wsparcia tutora. Przejrzyj ruchy i poćwicz błędy po meczu.';

  @override
  String get onlineNotConfiguredTitle =>
      'Gra online nie jest skonfigurowana w tej wersji';

  @override
  String get onlineNotConfiguredBody =>
      'Ta wersja nie ma podłączonego Firebase, więc tworzenie i dołączanie do meczów jest niedostępne.';

  @override
  String get onlineErrorNoMatch =>
      'Brak meczu o tym kodzie. Sprawdź go i spróbuj ponownie.';

  @override
  String get onlineErrorSeatTaken =>
      'Ten mecz nie jest już otwarty — miejsce zostało zajęte.';

  @override
  String get onlineErrorPermission => 'Nie masz dostępu do tego meczu.';

  @override
  String get onlineErrorGeneric => 'Coś poszło nie tak. Spróbuj ponownie.';

  @override
  String get onlineMatchFinished =>
      'Mecz się zakończył i nie można go wznowić.';

  @override
  String get onlineEnterCodeError => 'Wpisz kod meczu.';

  @override
  String get onlineOpponentShort => 'Przeciwnik';

  @override
  String get onlineMatchInProgress => 'Mecz w toku';

  @override
  String onlineResumePrompt(Object code) {
    return 'Rozgrywasz mecz $code.';
  }

  @override
  String get onlineRejoin => 'Wznów';

  @override
  String get onlineForgetMatch => 'Zapomnij o tym meczu';

  @override
  String get onlineCreateTitle => 'Utwórz mecz';

  @override
  String get onlineMatchLength => 'Długość meczu';

  @override
  String get onlineNoCubeTitle => 'Graj bez kostki';

  @override
  String get onlineNoCubeSubtitle => 'W tym meczu nie ma kostki podwajającej';

  @override
  String get onlineCreate => 'Utwórz';

  @override
  String get onlineWaitingOpponent => 'Oczekiwanie na przeciwnika…';

  @override
  String get onlineShareCode => 'Udostępnij kod';

  @override
  String get onlineCopyCode => 'Kopiuj kod';

  @override
  String get onlineCodeCopied => 'Kod skopiowany';

  @override
  String get onlineJoinTitle => 'Dołącz do meczu';

  @override
  String get onlineRoomCode => 'Kod meczu';

  @override
  String get onlineJoin => 'Dołącz';

  @override
  String get lanTitle => 'Graj w pobliżu';

  @override
  String get lanTabHost => 'Hostuj';

  @override
  String get lanTabJoin => 'Dołącz';

  @override
  String get lanUnassistedNote =>
      'Lokalne rozgrywki nie mają bieżącego wsparcia tutora. Przejrzyj ruchy i poćwicz błędy po meczu.';

  @override
  String get lanGameStartFailed =>
      'Nie udało się rozpocząć gry. Drugie urządzenie może spróbować dołączyć ponownie.';

  @override
  String get lanHostPortInUse =>
      'Nie udało się uruchomić hosta — port jest już zajęty. Zamknij inne kopie Backgammon Buddy i spróbuj ponownie.';

  @override
  String get lanHostStartFailed =>
      'Nie udało się uruchomić hosta. Sprawdź Wi-Fi i spróbuj ponownie.';

  @override
  String get lanHostTitle => 'Hostuj grę';

  @override
  String get lanStartHosting => 'Rozpocznij hostowanie';

  @override
  String get lanHostHelp =>
      'Oba urządzenia muszą być w tej samej sieci Wi-Fi. To urządzenie rzuca kośćmi i prowadzi wynik.';

  @override
  String get lanWaitingPlayerTitle => 'Oczekiwanie na gracza';

  @override
  String get lanRoomCodeInfo =>
      'Podaj ten kod drugiemu graczowi. Umożliwia dołączenie; aplikacja nigdy nie wysyła go przez sieć.';

  @override
  String get lanWaitingPlayer => 'Oczekiwanie na gracza…';

  @override
  String get lanStopHosting => 'Zatrzymaj hostowanie';

  @override
  String lanFindNearbyPort(int port) {
    return 'Poproś drugie urządzenie o wyszukanie gier w pobliżu. Nasłuchiwanie na porcie $port.';
  }

  @override
  String get lanOnNetwork => 'W tej sieci';

  @override
  String get lanCopyAddress => 'Kopiuj adres';

  @override
  String get lanAddressCopied => 'Adres skopiowany';

  @override
  String get lanScanHostTitle => 'Skanuj hosta';

  @override
  String get lanScanHostHelp =>
      'Drugie urządzenie pokazuje kod QR na ekranie hosta. Skanowanie uzupełni adres i kod pokoju.';

  @override
  String get lanScanQr => 'Skanuj kod QR';

  @override
  String get lanScannerUnavailable =>
      'Aparat lub uprawnienie jest niedostępne. Wpisz poniżej adres i kod pokoju.';

  @override
  String get lanInvalidQr =>
      'Ten kod QR nie pochodzi z Backgammon Buddy. Zeskanuj kod z ekranu hosta drugiego urządzenia.';

  @override
  String get lanScannerFailed =>
      'Nie udało się otworzyć skanera. Wpisz poniżej adres i kod.';

  @override
  String get lanNearbyGames => 'Gry w pobliżu';

  @override
  String get lanSearching => 'Wyszukiwanie gier w pobliżu…';

  @override
  String get lanNoGamesFound =>
      'Nie znaleziono gier. Upewnij się, że drugie urządzenie hostuje, a oba są w tej samej sieci Wi-Fi, albo wpisz poniżej jego adres.';

  @override
  String get lanStillSearching => 'Wyszukiwanie trwa…';

  @override
  String get lanEnterAddress => 'Wpisz adres';

  @override
  String get lanEnterAddressHelp =>
      'Automatyczne wykrywanie nie działa w każdej sieci i może być całkowicie zablokowane w iOS. Ekran hosta pokazuje, co wpisać.';

  @override
  String get lanIpAddress => 'Adres IP';

  @override
  String get lanPort => 'Port';

  @override
  String get lanInvalidPort => 'Wpisz port z zakresu od 1 do 65535.';

  @override
  String get lanEnterAddressError =>
      'Wpisz adres wyświetlony na drugim urządzeniu.';

  @override
  String get lanEnterRoomCodeError =>
      'Wpisz 4-cyfrowy kod z drugiego urządzenia.';

  @override
  String get lanJoinWrongCode =>
      'Nieprawidłowy kod pokoju. Sprawdź cztery cyfry.';

  @override
  String get lanJoinVersionMismatch =>
      'Drugie urządzenie ma inną wersję Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'To urządzenie nie odpowiada jak Backgammon Buddy. Sprawdź adres i port.';

  @override
  String get lanJoinFailed =>
      'Nie udało się dołączyć. Sprawdź adres i kod, a następnie spróbuj ponownie.';

  @override
  String lanJoinTarget(Object name) {
    return 'Dołącz do $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Wpisz 4-cyfrowy kod wyświetlony na drugim urządzeniu.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Łączenie z $name';
  }

  @override
  String get lanConnect => 'Połącz';

  @override
  String get lanBack => 'Wstecz';

  @override
  String get lanTryAgain => 'Spróbuj ponownie';

  @override
  String get lanStatusBusy => 'Pokój zajęty — oczekiwanie…';

  @override
  String get lanStatusReconnecting => 'Połączenie utracone — ponawianie…';

  @override
  String get lanStatusConnected => 'Połączono — uruchamianie meczu…';

  @override
  String get lanStatusFailed => 'Nie udało się dołączyć.';

  @override
  String get lanStatusConnecting => 'Łączenie…';

  @override
  String get diagnosticsCopySuccess => 'Diagnostyka skopiowana';

  @override
  String get diagnosticsReviewTitle => 'Przejrzyj raport diagnostyczny';

  @override
  String get diagnosticsPrivacyNotice =>
      'Otwarcie wersji roboczej wyśle do GitHuba poniższe dane: wersję aplikacji, platformę i szczegóły błędu. Zgłoszenie nie będzie publiczne, dopóki go tam nie wyślesz. Jeśli dane zawierają informacje prywatne, anuluj i skopiuj je, aby przygotować raport samodzielnie.';

  @override
  String get diagnosticsCancel => 'Anuluj';

  @override
  String get diagnosticsOpenGitHub => 'Otwórz GitHub';

  @override
  String get diagnosticsTitle => 'Diagnostyka';

  @override
  String get diagnosticsReportTooltip => 'Zgłoś problem w GitHubie';

  @override
  String get diagnosticsCopyTooltip => 'Kopiuj do schowka';

  @override
  String get diagnosticsClearTooltip => 'Wyczyść dziennik';

  @override
  String get diagnosticsEmpty =>
      'Nie zapisano błędów.\n\nJeśli coś pójdzie nie tak, informacja pojawi się tutaj. Wróć, aby skopiować szczegóły do zgłoszenia.';

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
  String get gameHudYou => 'Ty';

  @override
  String get gameHudAi => 'SI';

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
    return '$whiteLabel kontra $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'kontra $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'kontra $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Pipsy';

  @override
  String get gameHudCrawford => 'Crawford';

  @override
  String get gameHudDouble => 'Podwój';

  @override
  String get gameHudMoreActions => 'Więcej działań';

  @override
  String get gameHudSurrender => 'Poddaj…';

  @override
  String get gameHudThinking => 'Myślenie';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Możesz podwoić tylko przed rzutem, w swojej turze.';

  @override
  String get gameHudNoDoubleCrawford =>
      'W partii Crawforda nie można podwajać — ta partia rozstrzyga mecz.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Podwajać może tylko właściciel kostki; teraz należy ona do drugiej strony.';

  @override
  String get gameHudDoubleUnavailable => 'Podwajanie jest teraz niedostępne.';

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
    return '$winner wygrywa tę partię ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner wygrywa tę partię ($points, gammon).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner wygrywa tę partię ($points, backgammon).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner wygrywa tę partię ($points) — $loser odrzuca podwojenie.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner wygrywa tę partię ($points) — $loser poddaje się.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Przekaż urządzenie';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Ruch wykonuje $name';
  }

  @override
  String get gameDialogTapToContinue => 'Dotknij, aby kontynuować';

  @override
  String get gameDialogCubeOfferedTitle => 'Zaproponowano podwojenie';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler proponuje podwojenie do $value. Przyjąć czy pasować?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Pas';

  @override
  String get gameDialogTake => 'Weź';

  @override
  String get gameDialogResignationTitle => 'Zapropnowano poddanie';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner proponuje poddanie za $value. Przyjąć czy odrzucić?';
  }

  @override
  String get gameDialogResignSingle => 'pojedyncza partia';

  @override
  String get gameDialogResignGammon => 'gammon';

  @override
  String get gameDialogResignBackgammon => 'backgammon';

  @override
  String get gameDialogDecline => 'Odrzuć';

  @override
  String get gameDialogAccept => 'Przyjmij';

  @override
  String get gameDialogGameOverTitle => 'Koniec partii';

  @override
  String get gameDialogNextGame => 'Następna partia';

  @override
  String get gameDialogMatchOverTitle => 'Koniec meczu';

  @override
  String get gameDialogNobody => 'Nikt';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner wygrywa mecz.';
  }

  @override
  String get gameDialogSavedToHistory => 'Zapisano w historii';

  @override
  String get gameDialogDone => 'Gotowe';

  @override
  String get gameTapNoLegalMove =>
      'Tym pionem nie można wykonać ruchu pozostałymi kośćmi';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Tym pionem nie można wykonać ruchu pozostałymi kośćmi — spróbuj cofnąć';

  @override
  String get gameDragHint =>
      'Wskazówka: przeciągnij piony lub je dotknij — zmień to w ustawieniach';

  @override
  String get commonGotIt => 'Rozumiem';

  @override
  String get gameHintStageBeforeHint =>
      'Najpierw wykonaj pełny legalny ruch, a potem poproś o podpowiedź.';

  @override
  String get surrenderTitle => 'Poddaj się';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player poddaje bieżącą partię.';
  }

  @override
  String get surrenderConcedes => 'Poddaje bieżącą partię.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Dostępne na początku tury $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Dostępne na początku twojej tury';

  @override
  String get commonCancel => 'Anuluj';

  @override
  String get surrenderSingle => 'Pojedyncza (1)';

  @override
  String get surrenderGammon => 'Gammon (2)';

  @override
  String get surrenderBackgammon => 'Backgammon (3)';

  @override
  String get surrenderChoosePlayer => 'Kto poddaje tę partię?';

  @override
  String get commonDone => 'Gotowe';

  @override
  String get cubeDouble => 'Podwój';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Ruch przeciwnika.';

  @override
  String get cubeBlockedCrawford =>
      'Kostka jest niedostępna w partii Crawforda.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Podwajać może tylko właściciel kostki; teraz należy ona do drugiej strony.';

  @override
  String get cubeBlockedUnavailable => 'Podwajanie jest teraz niedostępne.';

  @override
  String get gameStatusRolling => 'Rzut…';

  @override
  String get gameStatusThinking => 'Myślenie…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Ruch wykonuje $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Podwój — przeciwnik powinien przyjąć';

  @override
  String get cubeAdviceOpponentPass => 'Podwój — przeciwnik powinien spasować';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Błąd: $error';
  }
}
