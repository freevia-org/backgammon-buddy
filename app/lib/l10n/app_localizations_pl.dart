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
}
