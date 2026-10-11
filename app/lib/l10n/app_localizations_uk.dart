// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get homeTagline => 'Покращуйте гру з тренером';

  @override
  String get settings => 'Налаштування';

  @override
  String get playVsComputer => 'Грати проти комп’ютера';

  @override
  String get twoPlayers => 'Двоє гравців';

  @override
  String get playNearby => 'Грати поруч';

  @override
  String get playOnline => 'Грати онлайн';

  @override
  String get learningPractice => 'Навчання й практика';

  @override
  String get gamesArchive => 'Архів партій';

  @override
  String get followSystem => 'Мова пристрою';

  @override
  String get white => 'Білі';

  @override
  String get black => 'Чорні';

  @override
  String get random => 'Випадково';

  @override
  String get startMatch => 'Почати гру';

  @override
  String get tutor => 'Тьютор';

  @override
  String get noMovesPass => 'Немає ходів — пас';

  @override
  String get undo => 'Скасувати';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get roll => 'Кинути';

  @override
  String get hint => 'Підказка';

  @override
  String get tutoringStyle => 'Стиль навчання';

  @override
  String get tutorStyleCoach => 'Тренер';

  @override
  String get tutorStyleHintsOnly => 'Лише підказки';

  @override
  String get tutorStyleTryFirst => 'Спочатку спробуй';

  @override
  String get tutorCoachDescription =>
      'Підказки щодо позиції, оцінка ходів, поради та рекомендації щодо куба.';

  @override
  String get tutorHintsDescription =>
      'Рейтинг ходів на запит. Підказки щодо позиції та автоматичні коментарі після кожного ходу вимкнено.';

  @override
  String get tutorTryFirstDescription =>
      'Спочатку підготуй свій хід, а потім переглянь рейтинг або оцінку; підказки на дошці залишаються ввімкненими.';

  @override
  String get tutorCustomDescription =>
      'Власне поєднання. Налаштуй будь-які параметри нижче.';

  @override
  String get tutorBestMoveHints => 'Підказки щодо найкращого ходу';

  @override
  String get tutorRevealRankedPlays =>
      'Показувати рейтинг ходів під час вибору';

  @override
  String get tutorMoveExplanations => 'Пояснення ходів';

  @override
  String get tutorCompareEstimates => 'Порівняти оцінки та зміни на дошці';

  @override
  String get tutorGameCommentary => 'Коментарі до гри';

  @override
  String get tutorPositionPrompts =>
      'Підказки щодо позиції та відгук після кожного ходу';

  @override
  String get tutorCubeAdvice => 'Поради щодо куба';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Поради щодо подвоєння, прийняття або відмови з урахуванням рахунку матчу';

  @override
  String get tutorTryMoveFirst => 'Спочатку спробуй зробити хід';

  @override
  String get tutorStageBeforeHints =>
      'Підготуй свій хід, перш ніж показувати підказки чи оцінку';

  @override
  String get tutorStaticEstimateNote =>
      'Швидка статична оцінка (0-ply, без симуляцій); нотатки описують зміни на дошці та можливі відповіді, а не гарантують подальший розвиток подій.';

  @override
  String get tutorWhatToWatchNext => 'На що звернути увагу далі';

  @override
  String get tutorMoreBoardDetails => 'Докладніше про дошку';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Оцінки та принцип їхньої роботи';

  @override
  String get tutorEstimateLimitations =>
      'Глибина: статична нейромережева оцінка після кожного дозволеного ходу (0-ply), без симуляцій і пошуку майбутніх відповідей. MWC з урахуванням рахунку зважує оцінки результатів за рахунком матчу та поточним значенням куба; майбутні дії з кубом не моделюються. Еквіті без куба — це очікувані очки за куба зі значенням 1, коли рахунок недоступний. Спостереження описують зміни на дошці, а не внутрішню логіку нейромережевого рушія. Близькі оцінки не означають певності; калібрований довірчий інтервал не розраховується.';

  @override
  String get tutorPointNumberNote =>
      'Номери пунктів у навчальних нотатках рахуються від домашньої дошки гравця, чия черга ходити.';

  @override
  String get tutorHittingRollNote =>
      'Кількість кидків, що дають змогу побити шашку, охоплює всі 36 упорядкованих результатів кубиків і дозволені прямі та непрямі удари; це можливості, а не прогноз вибору суперника.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Для цього ходу немає оцінених альтернатив.';

  @override
  String get tutorForcedPassNoDecision =>
      'Вимушений пропуск не передбачає вибору ходу шашками.';
}
