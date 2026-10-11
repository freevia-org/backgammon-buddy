// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get homeTagline => 'Подобрете играта си с наставник';

  @override
  String get settings => 'Настройки';

  @override
  String get playVsComputer => 'Игра срещу компютъра';

  @override
  String get twoPlayers => 'Двама играчи';

  @override
  String get playNearby => 'Игра наблизо';

  @override
  String get playOnline => 'Игра онлайн';

  @override
  String get learningPractice => 'Учене и практика';

  @override
  String get gamesArchive => 'Архив с игри';

  @override
  String get followSystem => 'Езикът на устройството';

  @override
  String get white => 'Бели';

  @override
  String get black => 'Черни';

  @override
  String get random => 'Случайно';

  @override
  String get startMatch => 'Започни игра';

  @override
  String get tutor => 'Треньор';

  @override
  String get noMovesPass => 'Няма ходове — пас';

  @override
  String get undo => 'Отмяна';

  @override
  String get confirm => 'Потвърди';

  @override
  String get roll => 'Хвърли';

  @override
  String get hint => 'Подсказка';

  @override
  String get tutoringStyle => 'Стил на обучение';

  @override
  String get tutorStyleCoach => 'Треньор';

  @override
  String get tutorStyleHintsOnly => 'Само подсказки';

  @override
  String get tutorStyleTryFirst => 'Първо опитай';

  @override
  String get tutorCoachDescription =>
      'Насоки за позицията, обратна връзка за ходовете, подсказки и съвети за удвояващия куб.';

  @override
  String get tutorHintsDescription =>
      'По заявка показва класирани ходове. Насоките за позицията и автоматичната обратна връзка са изключени.';

  @override
  String get tutorTryFirstDescription =>
      'Първо изпълнете хода си, за да видите класираните подсказки или оценката; насоките за позицията остават включени.';

  @override
  String get tutorCustomDescription =>
      'Персонализиран набор. Променете която и да е от опциите по-долу.';

  @override
  String get tutorBestMoveHints => 'Подсказки за най-добрия ход';

  @override
  String get tutorRevealRankedPlays =>
      'Показвайте класираните ходове, докато избирате';

  @override
  String get tutorMoveExplanations => 'Обяснения за ходовете';

  @override
  String get tutorCompareEstimates =>
      'Сравнете оценките и промените по дъската';

  @override
  String get tutorGameCommentary => 'Коментар за играта';

  @override
  String get tutorPositionPrompts =>
      'Насоки за позицията и обратна връзка след всеки ход';

  @override
  String get tutorCubeAdvice => 'Съвети за куба';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Съвети за удвояване, приемане и отказ според резултата от мача';

  @override
  String get tutorTryMoveFirst => 'Първо опитайте ход';

  @override
  String get tutorStageBeforeHints =>
      'Изпълнете текущия си ход, преди да покажете подсказките или оценката му';

  @override
  String get tutorStaticEstimateNote =>
      'Бърза статична оценка (0 хода напред, без симулации); бележките описват промените по дъската и възможните отговори, а не гарантират какво ще се случи.';

  @override
  String get tutorWhatToWatchNext => 'Какво да следите след това';

  @override
  String get tutorMoreBoardDetails => 'Още подробности за дъската';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Оценки и как се изчисляват';

  @override
  String get tutorEstimateLimitations =>
      'Дълбочина: статична невронна оценка след всеки законен ход (0 хода напред), без симулации или търсене на бъдещи отговори. MWC отчита резултата от мача и текущия куб при претеглянето на тези оценки, но не моделира бъдещи решения за куба. Ако резултатът не е наличен, equity без куба е очакваният брой точки при куб 1. Наблюденията описват позицията, а не вътрешните разсъждения на невронната мрежа. Близките оценки не означават сигурност; няма калибриран интервал на увереност.';

  @override
  String get tutorPointNumberNote =>
      'Точките в учебните бележки се броят от домашното поле на играча, който е на ход.';

  @override
  String get tutorHittingRollNote =>
      'Броят на възможностите за удар включва всичките 36 подредени резултата от заровете и законните преки или непреки удари; това са възможности, а не прогноза за избора на противника.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Няма оценени алтернативи за този ход.';

  @override
  String get tutorForcedPassNoDecision =>
      'Принудителното подаване не включва избор на ход с пуловете.';
}
