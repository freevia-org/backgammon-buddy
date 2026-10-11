// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get homeTagline => 'Улучшайте игру с тренером';

  @override
  String get settings => 'Настройки';

  @override
  String get playVsComputer => 'Играть против компьютера';

  @override
  String get twoPlayers => 'Два игрока';

  @override
  String get playNearby => 'Играть рядом';

  @override
  String get playOnline => 'Играть онлайн';

  @override
  String get learningPractice => 'Обучение и практика';

  @override
  String get gamesArchive => 'Архив партий';

  @override
  String get followSystem => 'Язык устройства';

  @override
  String get white => 'Белые';

  @override
  String get black => 'Чёрные';

  @override
  String get random => 'Случайно';

  @override
  String get startMatch => 'Начать игру';

  @override
  String get tutor => 'Тренер';

  @override
  String get noMovesPass => 'Нет ходов — пас';

  @override
  String get undo => 'Отменить';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get roll => 'Бросить';

  @override
  String get hint => 'Подсказка';

  @override
  String get tutoringStyle => 'Стиль обучения';

  @override
  String get tutorStyleCoach => 'Тренер';

  @override
  String get tutorStyleHintsOnly => 'Только подсказки';

  @override
  String get tutorStyleTryFirst => 'Сначала попробуй';

  @override
  String get tutorCoachDescription =>
      'Подсказки по позиции, разбор ходов, советы и рекомендации по кубу.';

  @override
  String get tutorHintsDescription =>
      'Рейтинг ходов по запросу. Подсказки по позиции и автоматический разбор после каждого хода отключены.';

  @override
  String get tutorTryFirstDescription =>
      'Сначала подготовь свой ход, затем смотри рейтинг вариантов или оценку; подсказки на доске остаются включёнными.';

  @override
  String get tutorCustomDescription =>
      'Свой набор. Измените любые параметры ниже.';

  @override
  String get tutorBestMoveHints => 'Подсказки о лучшем ходе';

  @override
  String get tutorRevealRankedPlays =>
      'Показывать рейтинг ходов во время выбора';

  @override
  String get tutorMoveExplanations => 'Объяснения ходов';

  @override
  String get tutorCompareEstimates => 'Сравнить оценки и изменения на доске';

  @override
  String get tutorGameCommentary => 'Комментарии к игре';

  @override
  String get tutorPositionPrompts =>
      'Подсказки по позиции и разбор после каждого хода';

  @override
  String get tutorCubeAdvice => 'Советы по кубу';

  @override
  String get tutorMatchAwareCubeAdvice =>
      'Советы удвоить, принять или сбросить с учётом счёта матча';

  @override
  String get tutorTryMoveFirst => 'Сначала попробуй сделать ход';

  @override
  String get tutorStageBeforeHints =>
      'Подготовь свой ход, прежде чем открыть подсказки или оценку';

  @override
  String get tutorStaticEstimateNote =>
      'Быстрая статическая оценка (0-ply, без симуляций); заметки описывают изменения на доске и возможные ответы, а не гарантируют дальнейший ход игры.';

  @override
  String get tutorWhatToWatchNext => 'На что обратить внимание дальше';

  @override
  String get tutorMoreBoardDetails => 'Подробнее о позиции';

  @override
  String get tutorEstimatesAndHowTheyWork => 'Оценки и принцип их работы';

  @override
  String get tutorEstimateLimitations =>
      'Глубина: статическая оценка нейросетью после каждого допустимого хода (0-ply), без симуляций и поиска будущих ответов. MWC с учётом счёта взвешивает оценки результатов по счёту матча и текущему значению куба; будущие решения с кубом не моделируются. Equity без куба — ожидаемые очки при кубе со значением 1, если счёт недоступен. Наблюдения описывают изменения на доске, а не внутреннюю логику нейросетевого движка. Близкие оценки не означают уверенности; калиброванный доверительный интервал не рассчитывается.';

  @override
  String get tutorPointNumberNote =>
      'Номера пунктов в обучающих заметках отсчитываются от домашней доски игрока, который ходит.';

  @override
  String get tutorHittingRollNote =>
      'Подсчёт бросков, позволяющих побить шашку, включает все 36 упорядоченных комбинаций кубиков и допустимые прямые и непрямые удары; это возможности, а не прогноз выбора соперника.';

  @override
  String get tutorNoEvaluatedAlternatives =>
      'Для этого хода нет оценённых альтернатив.';

  @override
  String get tutorForcedPassNoDecision =>
      'При вынужденном пропуске выбирать ход шашками не нужно.';
}
