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

  @override
  String get settingsReset => 'Сбросить';

  @override
  String get settingsAppLanguage => 'Язык приложения';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsAnimationSpeed => 'Скорость анимации';

  @override
  String get settingsAnimationNone => 'Нет';

  @override
  String get settingsAnimationNormal => 'Обычная';

  @override
  String get settingsAnimationFast => 'Быстрая';

  @override
  String get settingsDiceRollAnimation => 'Анимация броска костей';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Кости перекатываются перед каждым броском';

  @override
  String get settingsDefaultMatchLength => 'Длина матча по умолчанию';

  @override
  String get settingsDefaultDifficulty => 'Сложность по умолчанию';

  @override
  String get settingsDifficultyEasy => 'Лёгкая';

  @override
  String get settingsDifficultyMedium => 'Средняя';

  @override
  String get settingsDifficultyHard => 'Сложная';

  @override
  String get settingsDifficultyExpert => 'Экспертная';

  @override
  String get settingsTutorModeDefault => 'Режим наставника по умолчанию';

  @override
  String get settingsTutorAuto => 'Авто';

  @override
  String get settingsTutorOn => 'Вкл.';

  @override
  String get settingsTutorOff => 'Выкл.';

  @override
  String get settingsTutorModeHelp =>
      'В режиме «Авто» наставник включён при любой сложности компьютера. «Вкл.» и «Выкл.» задают начальный выбор для локальных матчей. В игре рядом и онлайн-партиях подсказок нет; сохранённые партии можно разобрать позже. Настройки обучения ниже сохраняются на этом устройстве.';

  @override
  String get settingsTutorPreferences => 'Настройки наставника';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Значения по умолчанию для новых матчей';

  @override
  String get settingsTutorSaveError =>
      'Не удалось сохранить настройки наставника.';

  @override
  String get settingsGameplay => 'Игра';

  @override
  String get settingsMoveHighlights => 'Подсветка ходов';

  @override
  String get settingsMoveHighlightsHelp =>
      'Обводить доступные шашки и подсвечивать пункты назначения';

  @override
  String get settingsDragToMove => 'Перетаскивание шашек';

  @override
  String get settingsDragToMoveHelp =>
      'Перетащите шашку в пункт назначения (нажатия тоже работают)';

  @override
  String get settingsCombinedMoves => 'Ход обеими костями';

  @override
  String get settingsCombinedMovesHelp =>
      'Одно нажатие перемещает шашку с учётом обеих костей';

  @override
  String get settingsRotateBoard => 'Поворачивать доску между ходами';

  @override
  String get settingsRotateBoardHelp =>
      'Для игры за одним устройством: разворачивать доску к игроку, чей ход';

  @override
  String get settingsPassDevice => 'Экран передачи устройства';

  @override
  String get settingsPassDeviceHelp =>
      'Скрывать доску при передаче устройства другому игроку';

  @override
  String get settingsShowScore => 'Показывать счёт';

  @override
  String get settingsShowScoreHelp =>
      'Показывать текущий счёт матча в заголовке';

  @override
  String get settingsBuddyMode => 'Режим Buddy';

  @override
  String get settingsBuddyTerse => 'Кратко';

  @override
  String get settingsBuddyFriendly => 'Подробно';

  @override
  String get settingsBuddyTerseHelp =>
      'Как Buddy озвучивает ход: «13/8, 24/22» — краткая запись, которой пользуются игроки за доской.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Как Buddy озвучивает ход: «Переместить одну шашку с 13 на 8, а другую — с 24 на 22».';

  @override
  String get settingsListenForDice => 'Распознавать бросок костей';

  @override
  String get settingsListenForDiceHelp =>
      'Услышав бросок, Buddy раньше проверяет положение на доске. Отключение не влияет на другие функции.';

  @override
  String get settingsDiagnostics => 'Диагностика';

  @override
  String get settingsErrorLog => 'Журнал ошибок';

  @override
  String get settingsErrorLogHelp =>
      'Последние ошибки — их можно скопировать в сообщение об ошибке';

  @override
  String get settingsReportBug => 'Сообщить об ошибке';

  @override
  String get settingsReportBugHelp =>
      'Открыть форму сообщения об ошибке на GitHub';

  @override
  String get settingsSuggestIdea => 'Предложить идею';

  @override
  String get settingsSuggestIdeaHelp => 'Помогите улучшить наставника и игру';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String get settingsOpenSourceLicenses => 'Лицензии открытого ПО';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Партия завершена.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Просмотрите ходы и найдите решение, которое стоит потренировать.';

  @override
  String get tutorPhraseCubeOffered => 'Предложено удвоение ставки.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Решите, принять удвоение или отказаться, прежде чем планировать ход шашками.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Счёт матча влияет на ценность дополнительной ставки.';

  @override
  String get tutorPhraseResignationOffered => 'Предложена сдача партии.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Сравните предложенные очки с положением на доске, прежде чем принять сдачу или продолжить.';

  @override
  String get tutorPhraseNoLegalPlay => 'При этом броске нет допустимого хода.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Вынужденный пропуск — не ошибка; дождись следующего броска.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Есть только один допустимый вариант позиции.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Сделайте вынужденный ход. При этом броске нет выбора, который можно оценить.';

  @override
  String get tutorPhrasePipCountsLevel =>
      'Количество пипсов у игроков одинаковое.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Преимущество по пипсам: $count.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Отставание по пипсам: $count.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Сначала введите шашки с бара. Сейчас там: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Сначала введите шашку с бара, затем найдите для неё безопасный пункт.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'В доме соперника закрыто пунктов: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Гонка на вывод шашек.';

  @override
  String get tutorPhrasePureRace => 'Чистая гонка.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Выводите шашки, сохраняя удобное распределение для следующего броска.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Переведите дальние шашки домой и не собирайте слишком много на одном пункте.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Игроки прошли друг друга; побить шашки больше нельзя.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Контакт всё ещё важен.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'На баре у соперника шашек: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Сохраняйте закрытые пункты, пока переводите оставшиеся шашки домой.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Создавайте или сохраняйте свой дом, пока соперник пытается войти с бара.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'В вашем доме закрыто пунктов: $count; каждый такой пункт убирает один номер для входа.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Контакт с цепочкой закрытых пунктов длиной $count.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Сравните, что лучше: удлинить цепочку или оставить запасные шашки, чтобы поддержать её.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Запасные шашки: $count. Их можно передвинуть, не открывая пункт.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Контакт с якорем на пунктах $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Сравните продвижение дальних шашек домой с безопасностью сохранённого якоря.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Помните о безопасной опоре, пока ищете возможность побить шашку или укрепить позицию.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Якорь нельзя побить, но этим шашкам ещё далеко до дома.';

  @override
  String get tutorPhraseContactThreats =>
      'Контакт сохраняется: обе стороны могут угрожать побитием.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Ищите полезные закрытые пункты и оценивайте риск оставить одиночные шашки под ударом.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Закрыто пунктов в вашем доме: $count. Открытых шашек оставлено: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Выберите шашку, чтобы начать ход.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Сделайте допустимый ход, чтобы увидеть комментарий.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Вы побили шашек соперника: $count.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Ввод с бара: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return 'Сняли с доски шашек: $count.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Вы закрыли пункты $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Шашка на пункте $point пока остаётся открытой для удара.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Запасную шашку на пункте $point можно передвинуть позже, не открывая пункт.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Используйте остальные доступные кости, прежде чем оценивать ход целиком.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Все 15 шашек выведены: партия выиграна.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Побитие выигрывает время, пока соперник возвращается с бара.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Эффективный вывод убирает шашки и оставляет удобные числа для следующего броска.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'В гонке важно перевести дальние шашки домой и оставить удобные пункты для вывода.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Вывод шашек продвигает вас к победе, но пока сохраняется контакт, открытые шашки могут побить.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Ввод возвращает шашку в игру; теперь найдите для неё безопасный пункт.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Новый закрытый пункт в вашем доме уберёт один из номеров входа после будущего побития.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Длинная цепочка закрывает больше пунктов для посадки; запасные шашки помогут её сохранить.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Отказ от якоря продвигает шашки вперёд, но лишает их безопасной опоры.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Новый якорь даёт дальним шашкам безопасную опору.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Прикрытие открытой шашки лишает соперника удобной цели.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Здесь приходится выбирать между развитием и безопасностью: шашки, строящие позицию, сами могут стать целью.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Ход полностью подготовлен. Нажмите «Подтвердить», чтобы выполнить его.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'При этом броске нет выбора хода шашками; такое решение не оценивается.';

  @override
  String get tutorMoveTopVerdict => 'Лучший выбор для этой позиции.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'В этой позиции движок предпочитает другой ход.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Отставание от лучшего хода: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'После этого хода: вероятность победы $winPercent%, победы с гаммоном или лучше $winGammonPercent%, поражения с гаммоном или хуже $loseGammonPercent%. Оценка дана с точки зрения игрока, который ходит.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Оценочная вероятность победы в матче: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Все 15 шашек сняты с доски — партия выиграна.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Используй удар, чтобы выиграть время, пока соперник возвращается с бара. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Сохраняй закрытые пункты в своём доме, чтобы затруднить вход соперника.';

  @override
  String get tutorMovePlanHitBuild =>
      'Закрой больше пунктов в своём доме, чтобы сопернику было сложнее восстановиться после будущих ударов.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Снимай шашки эффективно: убирай их с доски, сохраняя удобные числа для следующего броска.';

  @override
  String get tutorMovePlanRaceHome =>
      'Приведи отставшие шашки домой и расставь их по удобным пунктам для снятия.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Снимай шашки, но следи за отставшими шашками соперника: пока есть контакт, незащищённая шашка при снятии может стать целью.';

  @override
  String get tutorMovePlanReentry =>
      'Вернись в игру, затем найди безопасный пункт для вошедшей шашки.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Укрепи свой дом. Новый закрытый пункт усилит будущий удар, убрав одно из чисел входа.';

  @override
  String get tutorMovePlanPrime =>
      'Сохраняй непрерывную линию закрытых пунктов. Оставляй запасные шашки, чтобы будущий бросок не вынудил открыть её.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Уход с якоря продвинет отставшие шашки, но лишит их безопасной опоры. Следи, насколько они уязвимы по пути домой.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Используй новый якорь как безопасную опору, улучшая остальную позицию.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Собери шашки в безопасные группы. Закрывая одиночную шашку, ты убираешь цель и сохраняешь варианты будущих пунктов.';

  @override
  String get tutorMovePlanSafety =>
      'Сочетай развитие с безопасностью: подводи строителей к полезным пунктам и проверяй, какие одиночные шашки можно побить.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Нет допустимого хода шашкой — нужно пропустить ход.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки соперника',
      many: 'шашек соперника',
      few: 'шашки соперника',
      one: 'шашку соперника',
    );
    return 'Бьёт $count $_temp0; соперник должен войти с бара, прежде чем сможет двигать остальные шашки.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Вводит $count шашек с бара.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки',
      many: 'шашек',
      few: 'шашки',
      one: 'шашку',
    );
    return 'Снимает с доски $count $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Создаёт пункты $points. Две или более шашки закрепляют пункт и блокируют посадку соперника.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Открывает закрытые $pointLabel $points. Теперь эти пункты не блокируют соперника.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Не оставляет одиночных уязвимых шашек (до хода было $previousCount). Бить нечего.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки',
      many: 'шашек',
      few: 'шашки',
      one: 'шашку',
    );
    return 'Оставляет $count одиночных уязвимых $_temp0 (до хода было $previousCount). Проверь, сможет ли соперник до них добраться, прежде чем предпочесть безопасность другой выгоде.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Самая длинная линия закрытых пунктов: $count (до хода было $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Шестипунктовый прайм нельзя пересечь, пока он остаётся закрытым.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Оставляй строителей поблизости, чтобы продлить или сохранить эту линию.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'На закрытых пунктах сверх двух удерживающих их шашек есть $count запасных. Перемещение запасной шашки может сохранить пункт; ход одной из последних двух откроет его.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Якоря в доме соперника: $points (до хода было $previousPoints). Якорь защищает эти шашки от ударов; отказ от него меняет безопасную опору на продвижение в гонке.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Чистая гонка: стороны прошли друг мимо друга, и ни у кого нет шашек на баре. Бить уже нельзя — важна эффективность снятия шашек.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Ни один допустимый следующий бросок не позволяет сопернику побить шашку в этой позиции. Контакт сохраняется, поэтому позже могут появиться новые возможности для удара.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Соперник может побить при $count из $total бросков. Например, $dieOne–$dieTwo позволяет законно побить твою шашку на $point-м пункте. Возможность удара не означает, что соперник обязательно ей воспользуется.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'В твоём доме закрыто пунктов: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Соперник не сможет войти, пока не откроется пункт.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Бросок с подходящим открытым пунктом входа может вернуть шашку с бара.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Оценочная вероятность победы для лучшего хода на $delta процентных пунктов $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'выше';

  @override
  String get tutorMoveComparisonLower => 'ниже';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Он всё же может быть лучше, поскольку ценность гаммона и бэкгаммона зависит от текущего $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'счёте';

  @override
  String get tutorMoveComparisonMatchScore => 'счёте матча';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Лучший ход оставляет на баре $bestCount шашек соперника вместо $playedCount. Шашка на баре должна войти, прежде чем соперник сможет двигать остальные.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Лучший ход закрывает $bestCount пунктов дома вместо $playedCount, на $entryDifference пунктов входа после удара.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'закрывая больше пунктов';

  @override
  String get tutorMoveComparisonLeavingMore => 'оставляя больше открытых';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'После лучшего хода соперник может побить при $bestCount из 36 бросков вместо $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Это снижает непосредственный риск удара по твоей шашке.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Сопоставь дополнительную уязвимость с другой выгодой этого хода.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Самая длинная линия закрытых пунктов в лучшем ходе — $bestCount вместо $playedCount; сравни силу блокады с шашками, которыми её можно поддерживать.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'В лучшем ходе остаётся $bestPoints якорей вместо $playedPoints. Якорь сохраняет безопасный пункт; отказ от него приближает шашки к дому.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'В лучшем ходе снято $bestCount шашек вместо $playedCount. Каждую снятую шашку больше не нужно убирать с доски.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Оба хода оставляют одинаковый немедленный риск удара, пункты дома, якоря и число снятых шашек. Сравни точки приземления: на следующем броске эти шашки можно будет использовать по-разному.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Лучший ход отправляет на бар больше шашек соперника и задерживает его остальные ходы.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Лучший ход закрывает больше пунктов дома и затрудняет вход после удара.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Лучший ход оставляет меньше немедленных возможностей для удара и снижает риск ответного удара.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Лучший ход сохраняет более длинную линию закрытых пунктов.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Лучший ход сохраняет больше безопасных якорей в доме соперника.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Лучший ход снимает больше шашек — позднее останется снять меньше.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Этот ход оставляет $playedCount одиночных шашек; лучший ход оставляет $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Лучший ход сохраняет безопасный якорь на пункте $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Лучший ход закрывает больше пунктов входа на случай, если твою шашку побьют.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Непосредственные риски у ходов похожи; сравни, какие пункты приземления останутся полезными при следующем броске.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value эквити';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value п. п. вероятности победы в матче';
  }

  @override
  String get tutorMovePointSingular => 'пункт';

  @override
  String get tutorMovePointPlural => 'пункты';

  @override
  String get tutorMoveNoPoints => 'нет';

  @override
  String get gameTutorCommentaryOff => 'Комментарии к партии выключены.';

  @override
  String get gameTutorToolsAvailable =>
      'Открой тренера, чтобы воспользоваться включёнными инструментами.';

  @override
  String get gameTutorNextRoll => 'Теперь бросай кости.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Для этой записи хода нет оценённого объяснения.';

  @override
  String get gameTutorAnalysisUnavailable => 'анализ недоступен';

  @override
  String get gameTutorReviewing => 'идёт анализ…';

  @override
  String get gameTutorTryYourPlayFirst => 'Сначала попробуй сделать ход сам.';

  @override
  String get gameTutorKeepBuilding => 'Продолжай составлять свой ход.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Заверши полный допустимый ход, прежде чем открывать подсказки и советы.';

  @override
  String get gameTutorReadyToConfirm => 'Можно подтвердить';

  @override
  String get gameTutorPlayTakingShape => 'Твой ход складывается.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Подтверди ход или отмени его, чтобы подумать ещё.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Используй оставшиеся кости или отмени ход.';

  @override
  String get gameTutorComputerConsidering => 'Компьютер обдумывает свой ход.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Завершённый ход компьютера будет разобран здесь.';

  @override
  String get gameTutorYourPlay => 'Твой ход';

  @override
  String get gameTutorComputer => 'Компьютер';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Твой ход: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'вынужденный ход';

  @override
  String get gameTutorTopChoice => 'лучший выбор';

  @override
  String get gameTutorSoundPlay => 'хороший ход';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Возможно, другой ход подойдёт лучше.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Другой ход лучше подходит к этой позиции.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Был доступен заметно более сильный ход.';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'По оценке преимущество у стороны $side.';
  }

  @override
  String get gameTutorPositionEven => 'Позиция примерно равная.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Сыграно: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Лучший ход: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Показать ходы по рейтингу';

  @override
  String get tutorReviewRecordedMove =>
      'Нажми на завершённый ход в журнале, чтобы разобрать его решение здесь.';

  @override
  String get tutorTopPlays => 'Лучшие ходы';

  @override
  String get tutorNoHintsAvailable => 'Подсказок нет.';

  @override
  String get tutorPreviewThenConfirm =>
      'Нажми на ход, чтобы увидеть его на доске, затем подтверди.';

  @override
  String get tutorTopChoiceForPosition => 'Лучший выбор для этой позиции';

  @override
  String get tutorAlternativePlay => 'Альтернативный ход';

  @override
  String get tutorEngineEstimates => 'Оценки движка';

  @override
  String get tutorEstimateScope =>
      'Оценка на 0 полуходов — текущий счёт и ставка — без будущих удвоений';

  @override
  String get tutorEquity => 'Эквити';

  @override
  String get tutorMwcPercent => 'Вероятность победы в матче, %';

  @override
  String get tutorNearTiesNote =>
      'При более глубоком анализе близкие варианты могут поменяться местами.';

  @override
  String get tutorWhyThisPlay => 'Почему этот ход?';

  @override
  String get tutorCompareAlternative => 'Сравнить этот альтернативный ход';

  @override
  String get gameTutorCubeTake => 'Совет тренера: принять';

  @override
  String get gameTutorCubePass => 'Совет тренера: пас';

  @override
  String get practiceScreenTitle => 'Практика хода';

  @override
  String get practiceUnavailable => 'Эта учебная позиция больше недоступна.';

  @override
  String get practiceSubmitError =>
      'Не удалось оценить или сохранить попытку. Ваш прогресс не изменился. Попробуйте ещё раз.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Ход $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Исторический счёт недоступен; оценка выполняется по equity без куба удвоения.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Счёт: $whiteLabel $whiteScore – $blackLabel $blackScore, до $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · партия Кроуфорда';

  @override
  String get practiceNoDoublingCube => 'Без куба удвоения.';

  @override
  String practiceCubeValue(int value) {
    return 'Значение куба: $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Исторические правила куба неизвестны.';

  @override
  String get practiceAfterBestPosition => 'Позиция после лучшего хода';

  @override
  String get practiceAfterYourAnswerPosition => 'Позиция после вашего ответа';

  @override
  String get practiceFindYourPlayPrompt =>
      'Сделайте ход на доске, затем проверьте ответ. Подсказок не будет.';

  @override
  String get practiceUndo => 'Отменить';

  @override
  String get practiceCheckAnswer => 'Проверить ответ';

  @override
  String get practiceRevealNoCredit => 'Показать ответ (без зачёта)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Ответ показан — повторение не засчитывается.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Лучший ход: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Ход в исходной партии: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Ваш ответ: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Ваш ответ';

  @override
  String get practiceBestPlayChip => 'Лучший ход';

  @override
  String practiceNextReview(Object date) {
    return 'Следующий повтор: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Лучшие и хорошие ответы засчитываются как успешное повторение. Ранние повторы не увеличивают интервал.';

  @override
  String get practiceBackToLearning => 'К обучению';

  @override
  String get practiceMarkBest => 'Лучший';

  @override
  String get practiceMarkGood => 'Хорошо';

  @override
  String get practiceMarkDubious => 'Сомнительно';

  @override
  String get practiceMarkError => 'Ошибка';

  @override
  String get practiceMarkBlunder => 'Грубая ошибка';

  @override
  String get practiceMarkForced => 'Вынужденный ход';

  @override
  String get newMatchYourSide => 'Ваша сторона';

  @override
  String get newMatchTutorMode => 'Режим наставника';

  @override
  String get newMatchTutorDescription =>
      'Учитесь с подсказками, объяснениями и комментариями к игре';

  @override
  String get newMatchTutoringOptions => 'Настройки обучения';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Для этой партии; можно менять во время игры';

  @override
  String get setupMatchLength => 'Длина матча';

  @override
  String get setupDifficulty => 'Сложность';

  @override
  String get setupDifficultyEasy => 'Лёгкая';

  @override
  String get setupDifficultyMedium => 'Средняя';

  @override
  String get setupDifficultyHard => 'Сложная';

  @override
  String get setupDifficultyExpert => 'Эксперт';

  @override
  String get setupPlayWithoutCube => 'Играть без куба';

  @override
  String get setupNoCubeThisMatch => 'В этой партии нет куба удвоения';

  @override
  String get analysisTitle => 'Анализ';

  @override
  String get gameMatchSummary => 'Итоги матча';

  @override
  String get gameAnalyzeGame => 'Анализ партии';

  @override
  String get analysisMetricsTooltip => 'Что означают эти числа?';

  @override
  String analysisError(Object error) {
    return 'Не удалось проанализировать партию: $error';
  }

  @override
  String get analysisNoPositions => 'В этой партии нет позиций для показа.';

  @override
  String get analysisInProgress => 'Идёт анализ…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Сыграно';

  @override
  String get analysisBest => 'Лучший';

  @override
  String get analysisPrevious => 'Предыдущий';

  @override
  String get analysisNext => 'Следующий';

  @override
  String get analysisPositionBeforeCube => 'Позиция до решения о кубе';

  @override
  String get analysisPositionAtPoint => 'Позиция в этот момент партии';

  @override
  String get analysisShowingBestBefore =>
      'Показан лучший ход в позиции до хода';

  @override
  String get analysisShowingBefore => 'Показана позиция до хода';

  @override
  String analysisVerdictLine(Object side, Object verdict, Object loss) {
    return '$side: $verdict$loss';
  }

  @override
  String analysisMoveLoss(Object loss) {
    return ' −$loss';
  }

  @override
  String get analysisExcludedFromAverages =>
      ' · не учитывается в средних значениях';

  @override
  String get analysisNoPlay => '(нет хода)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Лучший: $move';
  }

  @override
  String get analysisExplain => 'Объяснить';

  @override
  String get analysisSaveForPractice => 'Сохранить для тренировки';

  @override
  String get analysisSaveError =>
      'Не удалось сохранить это решение. Попробуйте ещё раз.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · потеря $loss';
  }

  @override
  String get analysisCubeDecision => 'Решение по кубу';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Сыграно: $action (шанс выиграть матч — $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Лучшее: $action (шанс выиграть матч — $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Оценка 0-ply с точки зрения игрока, который ходит. Предполагается оптимальный ответ — принять или пасовать. Для ветки с принятым удвоением используется приближение 0,7 срока жизни куба, а не полный поиск будущих повторных удвоений. Более глубокий анализ может изменить ответ.';

  @override
  String get analysisClose => 'Закрыть';

  @override
  String get analysisMoves => 'Ходы';

  @override
  String get analysisForced => 'Вынужденный';

  @override
  String get analysisMarkBest => 'Лучший';

  @override
  String get analysisMarkGood => 'Хороший';

  @override
  String get analysisMarkDubious => 'Сомнительный';

  @override
  String get analysisMarkError => 'Ошибка';

  @override
  String get analysisMarkBlunder => 'Грубая ошибка';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Средняя потеря $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count решений по шашкам';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Грубые ошибки $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Потеря из-за куба $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side бросает без удвоения';
  }

  @override
  String get metricExplainerTitle => 'Пояснение показателей';

  @override
  String get metricExplainerTooltip => 'Что означают эти числа?';

  @override
  String get metricExplainerMwcTitle => 'Шанс выиграть матч (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Если счёт известен, ходы шашками оцениваются по примерному шансу выиграть матч. Потеря указывается в процентных пунктах (п.п.): 1 п.п. — это снижение с 51% до 50%. Учитываются ставка куба и результаты с гаммоном/бэкгэммоном. Вынужденные пассы и броски с одной допустимой позицией не входят в среднее.';

  @override
  String get metricExplainerSearchTitle => 'Поиск и неопределённость';

  @override
  String get metricExplainerSearchBody =>
      'Рейтинг ходов шашками — статические оценки 0-ply после хода, а не симуляции. Для матчевых значений используется таблица эквити матча без будущих ходов куба. Анализ куба применяет частичное приближение 0,7 срока жизни куба при принятых удвоениях; это не полный поиск с кубом. Для остатка более 25 используется граница таблицы 25-away. Углублённый анализ может изменить близкие результаты; калиброванный доверительный интервал не рассчитывается.';

  @override
  String get metricExplainerEquityTitle => 'Эквити';

  @override
  String get metricExplainerEquityBody =>
      'Если счёт неизвестен, эквити без куба показывает среднюю ценность позиции в очках при кубе 1. +1,0 означает ожидаемый выигрыш одного очка, −0,5 — проигрыш половины очка.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Потеря эквити (например, −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Мы сравниваем ваш ход с лучшим ходом движка. Потеря эквити показывает, сколько ожидаемой ценности было упущено. −0,016 означает, что ход хуже лучшего всего на 0,016 очка — небольшая неточность. 0,000 означает, что выбран лучший ход.';

  @override
  String get metricExplainerErrorRateTitle => 'Частота ошибок';

  @override
  String get metricExplainerErrorRateBody =>
      'Средняя потеря — это среднее по оценённым решениям шашками в отображаемых единицах. Для решений с кубом считается отдельное среднее. Чем меньше значение, тем ближе ходы к лучшим оценкам движка; это не калиброванный рейтинг игрока.';

  @override
  String get metricExplainerMoveMarksTitle => 'Оценки ходов';

  @override
  String get metricExplainerMoveMarksBody =>
      'Учебные границы MWC: Лучший < 0,05 п.п., Хороший < 0,5 п.п., Сомнительный < 1,5 п.п., Ошибка < 3 п.п., Грубая ошибка ≥ 3 п.п. Это учебные границы, а не калиброванная уверенность или турнирный рейтинг.\n\nУчебные границы эквити без куба:';

  @override
  String get metricExplainerThresholdBest => 'потеря < 0,001';

  @override
  String get metricExplainerThresholdGood => 'потеря < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'потеря < 0,050';

  @override
  String get metricExplainerThresholdError => 'потеря < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'потеря ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Понятно';

  @override
  String get historyTitle => 'История матчей';

  @override
  String historyLoadFailed(Object error) {
    return 'Не удалось загрузить историю:\n$error';
  }

  @override
  String get historyEmpty => 'Вы ещё не сыграли ни одного матча.';

  @override
  String get historyDeleteConfirmTitle => 'Удалить этот матч?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nМатч и все записанные в нём партии будут удалены навсегда. Это действие нельзя отменить.';
  }

  @override
  String get actionCancel => 'Отмена';

  @override
  String get actionDelete => 'Удалить';

  @override
  String get historyDeleteFailed => 'Не удалось удалить матч.';

  @override
  String get historyComplete => 'Завершён';

  @override
  String historyWinner(Object side) {
    return 'Победил $side';
  }

  @override
  String get historyUnfinished => 'Не завершён';

  @override
  String get historyMatchTitle => 'Матч';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Не удалось загрузить матч:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Не удалось загрузить партии:\n$error';
  }

  @override
  String get historyNoGames => 'Записанных партий пока нет.';

  @override
  String historyGameTitle(int number) {
    return 'Партия $number';
  }

  @override
  String get historyCrawford => 'Правило Кроуфорда';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Белые $whiteScore — $blackScore Чёрные  (до $matchLength)';
  }

  @override
  String get historyModeComputer => 'против компьютера';

  @override
  String get historyModeTwoPlayers => 'Два игрока';

  @override
  String get historyModeOnline => 'Онлайн';

  @override
  String get historyModeNearby => 'Игра рядом';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'В процессе';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side выигрывает $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'одиночная';

  @override
  String get historyOutcomeGammon => 'гаммон';

  @override
  String get historyOutcomeBackgammon => 'бэкгэммон';

  @override
  String get learningRefreshTooltip => 'Обновить прогресс обучения';

  @override
  String get learningOptions => 'Параметры обучения';

  @override
  String get learningResetMenu => 'Сбросить прогресс тренировок';

  @override
  String get learningLoadFailed => 'Не удалось загрузить прогресс обучения.';

  @override
  String get actionRetry => 'Повторить';

  @override
  String get learningHeading => 'Учитесь на своих решениях';

  @override
  String get learningIntro =>
      'Прогресс хранится на этом устройстве. Изучайте повторяющиеся темы, а затем повторяйте сохранённые позиции, не видя ответа. Белые и чёрные решения можно просматривать отдельно.';

  @override
  String get learningBothSides => 'Обе стороны';

  @override
  String get learningHumansOnly => 'Только решения людей';

  @override
  String get learningHumanOnlyHelp =>
      'Отключите, чтобы включить решения компьютера и удалённых игроков';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions решений · улучшить: $mistakes · грубых ошибок: $blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Средняя потеря ($decisions решений): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Вынужденные ходы исключены. Это оценки движка, а не турнирный рейтинг.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Сохранённым партиям (#) нужен анализ или обновлённый анализ.',
      one: 'Сохранённой партии нужен анализ или обновлённый анализ.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Анализировать сохранённые партии';

  @override
  String get learningEmptyProfile =>
      'Сыграйте и завершите матч, чтобы создать профиль обучения. Вы также можете сохранять отдельные решения из повтора партии.';

  @override
  String get learningOpenHistory => 'Открыть историю матчей';

  @override
  String get learningRecurringThemes => 'Повторяющиеся темы';

  @override
  String get learningNoThemes => 'В этом наборе пока нет повторяющихся ошибок.';

  @override
  String learningThemeDecisions(int count) {
    return 'Решений для повторения: $count. У одной позиции может быть несколько тем.';
  }

  @override
  String get learningSaveMistakes => 'Сохранить эти ошибки для тренировки';

  @override
  String learningSavedMistakes(int count) {
    return 'В списке тренировки решений: $count. Существующие сохранения не дублируются.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Некоторые решения не удалось сохранить. Готовые сохранения оставлены; попробуйте ещё раз.';

  @override
  String get learningSpacedPractice => 'Интервальная практика';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'К повторению: $due · сохранено: $saved · попыток: $attempts · успешных воспоминаний: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Успешные повторения возвращаются через 1, 3, 7, 14 и 30 дней. Ошибки и показанные ответы повторяются через 10 минут. Ранние повторы не увеличивают интервал.';

  @override
  String get learningAnswerContext =>
      'Результаты тренировки учитывают ваши ответы здесь, даже если исходная позиция принадлежала сопернику.';

  @override
  String get learningNoSavedPositions =>
      'Сохраните решение из повтора или нажмите кнопку ошибок выше.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Решение $side · партия $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Повторить $date';
  }

  @override
  String get learningReadyToReview => 'Готово к повторению';

  @override
  String learningSuccessStreak(int count) {
    return 'Успешных повторений подряд: $count';
  }

  @override
  String get learningRemoveTooltip => 'Удалить сохранённое решение';

  @override
  String get learningRecentPractice => 'Недавняя тренировка';

  @override
  String get learningAnswerRevealed => 'Ответ показан';

  @override
  String get learningSuccessfulRecall => 'Успешное воспоминание';

  @override
  String get learningTryAgain => 'Попробовать ещё раз';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · сохранённая позиция $positionId';
  }

  @override
  String get learningRemoveTitle => 'Удалить это упражнение?';

  @override
  String get learningRemoveBody =>
      'Будут удалены его попытки тренировки. Исходная партия останется в истории.';

  @override
  String get actionRemove => 'Убрать';

  @override
  String get learningRemoveFailed => 'Не удалось удалить упражнение.';

  @override
  String get learningResetTitle => 'Сбросить прогресс тренировок?';

  @override
  String get learningResetBody =>
      'Все попытки и интервалы повторения будут удалены. Сохранённые упражнения и история матчей останутся; все упражнения станут доступны для повторения сейчас.';

  @override
  String get learningResetAction => 'Сбросить прогресс';

  @override
  String get learningResetFailed => 'Не удалось сбросить прогресс тренировок.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Проанализировано партий: $completed · недоступно: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Проанализировано партий: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Проанализировано $completed партий; не удалось: $failed. Повторите, когда движок будет готов.';
  }

  @override
  String get learningThemeHitting => 'Удары и темп';

  @override
  String get learningThemeSafety => 'Открытые шашки и безопасность';

  @override
  String get learningThemePointMaking => 'Создание пунктов';

  @override
  String get learningThemePrime => 'Блоки и заслоны';

  @override
  String get learningThemeAnchor => 'Якоря и выход';

  @override
  String get learningThemeRace => 'Эффективность гонки';

  @override
  String get learningThemeBearOff => 'Снятие шашек';

  @override
  String get learningThemeBarEntry => 'Вход с бара';

  @override
  String get learningThemeCube => 'Решения по кубу';

  @override
  String get analysisCubeNoDouble => 'Не удваивать';

  @override
  String get analysisCubeDouble => 'Удвоить';

  @override
  String get analysisCubeTake => 'Принять';

  @override
  String get analysisCubePass => 'Сдаться';

  @override
  String get learningAnalysisStarting => 'Анализ сохранённых партий…';

  @override
  String get tutorCubelessEstimateScope =>
      'Оценка 0-ply без куба · счёт неизвестен';

  @override
  String get tutorLossPp => 'Потеря п.п.';

  @override
  String get tutorLoss => 'Потеря';

  @override
  String get scoreSheetNoMoves => 'Нет ходов';

  @override
  String get tutorOptions => 'Настройки тренера';

  @override
  String get tutorCollapseTooltip => 'Свернуть тренера';

  @override
  String get tutorExpandTooltip => 'Развернуть тренера';

  @override
  String get onlineTitle => 'Игра онлайн';

  @override
  String get onlineUnassistedNote => 'Тренер недоступен в онлайн-игре.';

  @override
  String get onlineNotConfiguredTitle => 'Онлайн-игра не настроена';

  @override
  String get onlineNotConfiguredBody => 'Онлайн-игра недоступна в этой версии.';

  @override
  String get onlineErrorNoMatch => 'Матч не найден.';

  @override
  String get onlineErrorSeatTaken => 'Место уже занято.';

  @override
  String get onlineErrorPermission => 'У вас нет разрешения на это действие.';

  @override
  String get onlineErrorGeneric => 'Не удалось подключиться к онлайн-игре.';

  @override
  String get onlineMatchFinished => 'Матч завершён.';

  @override
  String get onlineEnterCodeError => 'Введите действительный код.';

  @override
  String get onlineOpponentShort => 'Соперник';

  @override
  String get onlineMatchInProgress => 'Матч продолжается';

  @override
  String onlineResumePrompt(Object code) {
    return 'Вы играли матч $code. Продолжить?';
  }

  @override
  String get onlineRejoin => 'Подключиться снова';

  @override
  String get onlineForgetMatch => 'Забыть матч';

  @override
  String get onlineCreateTitle => 'Создать онлайн-матч';

  @override
  String get onlineMatchLength => 'Длина матча';

  @override
  String get onlineNoCubeTitle => 'Игра без куба';

  @override
  String get onlineNoCubeSubtitle => 'Играйте без удваивающего куба.';

  @override
  String get onlineCreate => 'Создать';

  @override
  String get onlineWaitingOpponent => 'Ожидание соперника';

  @override
  String get onlineShareCode => 'Поделиться кодом';

  @override
  String get onlineCopyCode => 'Скопировать код';

  @override
  String get onlineCodeCopied => 'Код скопирован';

  @override
  String get onlineJoinTitle => 'Присоединиться к матчу';

  @override
  String get onlineRoomCode => 'Код комнаты';

  @override
  String get onlineJoin => 'Присоединиться';

  @override
  String get lanTitle => 'Игра рядом';

  @override
  String get lanTabHost => 'Создать комнату';

  @override
  String get lanTabJoin => 'Присоединиться';

  @override
  String get lanUnassistedNote =>
      'В локальной игре тренер не помогает. После матча просмотрите ходы и потренируйте ошибки.';

  @override
  String get lanGameStartFailed =>
      'Не удалось начать игру. Второе устройство может попробовать подключиться ещё раз.';

  @override
  String get lanHostPortInUse =>
      'Не удалось запустить хостинг — порт уже используется. Закройте другие копии Backgammon Buddy и повторите попытку.';

  @override
  String get lanHostStartFailed =>
      'Не удалось запустить хостинг. Проверьте Wi-Fi и повторите попытку.';

  @override
  String get lanHostTitle => 'Создать игру';

  @override
  String get lanStartHosting => 'Начать хостинг';

  @override
  String get lanHostHelp =>
      'Оба устройства должны быть в одной сети Wi-Fi. Это устройство бросает кубики и ведёт счёт.';

  @override
  String get lanWaitingPlayerTitle => 'Ожидание игрока';

  @override
  String get lanRoomCodeInfo =>
      'Сообщите этот код сопернику. Он даёт доступ — приложение не передаёт его по сети.';

  @override
  String get lanWaitingPlayer => 'Ожидание игрока…';

  @override
  String get lanStopHosting => 'Остановить хостинг';

  @override
  String lanFindNearbyPort(int port) {
    return 'Попросите второе устройство найти игры поблизости. Прослушивается порт $port.';
  }

  @override
  String get lanOnNetwork => 'В этой сети';

  @override
  String get lanCopyAddress => 'Скопировать адрес';

  @override
  String get lanAddressCopied => 'Адрес скопирован';

  @override
  String get lanScanHostTitle => 'Сканировать хост';

  @override
  String get lanScanHostHelp =>
      'На экране хоста второго устройства отображается QR-код. После сканирования адрес и код комнаты заполнятся автоматически.';

  @override
  String get lanScanQr => 'Сканировать QR-код';

  @override
  String get lanScannerUnavailable =>
      'Камера или разрешение на её использование недоступны. Введите адрес и код комнаты ниже.';

  @override
  String get lanInvalidQr =>
      'Это не QR-код игры Backgammon Buddy. Отсканируйте код с экрана хоста второго устройства.';

  @override
  String get lanScannerFailed =>
      'Не удалось открыть сканер. Введите адрес и код ниже.';

  @override
  String get lanNearbyGames => 'Игры поблизости';

  @override
  String get lanSearching => 'Поиск игр поблизости…';

  @override
  String get lanNoGamesFound =>
      'Игр пока нет. Убедитесь, что второе устройство запустило хостинг, оба устройства в одной сети Wi-Fi, или введите адрес вручную.';

  @override
  String get lanStillSearching => 'Всё ещё идёт поиск…';

  @override
  String get lanEnterAddress => 'Ввести адрес';

  @override
  String get lanEnterAddressHelp =>
      'Автоматический поиск работает не во всех сетях (на iOS он может быть полностью заблокирован). Экран хоста показывает, что нужно ввести.';

  @override
  String get lanIpAddress => 'IP-адрес';

  @override
  String get lanPort => 'Порт';

  @override
  String get lanInvalidPort => 'Введите порт от 1 до 65535.';

  @override
  String get lanEnterAddressError =>
      'Введите адрес, показанный на втором устройстве.';

  @override
  String get lanEnterRoomCodeError =>
      'Введите 4-значный код со второго устройства.';

  @override
  String get lanJoinWrongCode =>
      'Неверный код комнаты. Проверьте четыре цифры на другом устройстве.';

  @override
  String get lanJoinVersionMismatch =>
      'На втором устройстве установлена другая версия Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Устройство ответило не так, как Backgammon Buddy. Проверьте адрес и порт.';

  @override
  String get lanJoinFailed =>
      'Не удалось подключиться. Проверьте адрес и код комнаты и повторите попытку.';

  @override
  String lanJoinTarget(Object name) {
    return 'Присоединиться: $name';
  }

  @override
  String get lanJoinTargetHelp => 'Введите 4-значный код с другого устройства.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Подключение к $name';
  }

  @override
  String get lanConnect => 'Подключиться';

  @override
  String get lanBack => 'Назад';

  @override
  String get lanTryAgain => 'Повторить';

  @override
  String get lanStatusBusy => 'Комната занята — ожидание…';

  @override
  String get lanStatusReconnecting =>
      'Соединение потеряно — повторное подключение…';

  @override
  String get lanStatusConnected => 'Подключено — запуск матча…';

  @override
  String get lanStatusFailed => 'Не удалось присоединиться.';

  @override
  String get lanStatusConnecting => 'Подключение…';

  @override
  String get diagnosticsCopySuccess => 'Диагностика скопирована в буфер обмена';

  @override
  String get diagnosticsReviewTitle => 'Проверьте диагностический отчёт';

  @override
  String get diagnosticsPrivacyNotice =>
      'При открытии черновика на GitHub будут отправлены указанные ниже сведения: версия приложения, платформа и данные об ошибках. Публичная проблема не будет создана, пока вы не отправите её там. Если в этих данных есть личная информация, отмените действие и подготовьте отчёт самостоятельно через копирование.';

  @override
  String get diagnosticsCancel => 'Отмена';

  @override
  String get diagnosticsOpenGitHub => 'Открыть GitHub';

  @override
  String get diagnosticsTitle => 'Диагностика';

  @override
  String get diagnosticsReportTooltip => 'Сообщить о проблеме на GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Копировать в буфер обмена';

  @override
  String get diagnosticsClearTooltip => 'Очистить журнал';

  @override
  String get diagnosticsEmpty =>
      'Ошибок пока нет.\n\nЕсли что-то пойдёт не так, сведения появятся здесь — вернитесь и скопируйте их в сообщение об ошибке.';

  @override
  String gameHudNeutralScore(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore–$blackScore $blackLabel · до $matchLength';
  }

  @override
  String gameHudPlayerScore(
    Object you,
    int mine,
    int theirs,
    Object opponent,
    int matchLength,
  ) {
    return '$you $mine–$theirs $opponent · до $matchLength';
  }

  @override
  String get gameHudYou => 'Вы';

  @override
  String get gameHudAi => 'Компьютер';

  @override
  String gameHudGameNumber(int number) {
    return 'Игра $number';
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
    return '$whiteLabel против $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'против $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'против $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Пипсы';

  @override
  String get gameHudCrawford => 'Кроуфорд';

  @override
  String get gameHudDouble => 'Удвоить';

  @override
  String get gameHudMoreActions => 'Другие действия';

  @override
  String get gameHudSurrender => 'Сдаться…';

  @override
  String get gameHudThinking => 'Думает';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Удваивать можно только перед броском в свой ход.';

  @override
  String get gameHudNoDoubleCrawford =>
      'В партии Кроуфорда удвоение запрещено — эта единственная партия решает исход матча.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Удваивать может только владелец куба, но сейчас он у другой стороны.';

  @override
  String get gameHudDoubleUnavailable => 'Сейчас удвоение недоступно.';

  @override
  String gameDialogScoreLine(
    Object whiteLabel,
    int whiteScore,
    int blackScore,
    Object blackLabel,
    int matchLength,
  ) {
    return '$whiteLabel $whiteScore — $blackScore $blackLabel (до $matchLength)';
  }

  @override
  String gameDialogPlayerWon(Object winner, Object points) {
    return '$winner выиграл эту партию ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner выиграл эту партию ($points, гаммон).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner выиграл эту партию ($points, бэкгэммон).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner выиграл эту партию ($points) — $loser отказался от удвоения.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner выиграл эту партию ($points) — $loser сдался.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Передайте устройство';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Ход $name';
  }

  @override
  String get gameDialogTapToContinue => 'Нажмите, чтобы продолжить';

  @override
  String get gameDialogCubeOfferedTitle => 'Предложено удвоение';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler предлагает удвоить до $value. Принять или сбросить?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Сбросить';

  @override
  String get gameDialogTake => 'Принять';

  @override
  String get gameDialogResignationTitle => 'Предложена сдача';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner предлагает сдаться с результатом $value. Принять или отклонить?';
  }

  @override
  String get gameDialogResignSingle => 'обычная партия';

  @override
  String get gameDialogResignGammon => 'гаммон';

  @override
  String get gameDialogResignBackgammon => 'бэкгэммон';

  @override
  String get gameDialogDecline => 'Отклонить';

  @override
  String get gameDialogAccept => 'Принять';

  @override
  String get gameDialogGameOverTitle => 'Партия окончена';

  @override
  String get gameDialogNextGame => 'Следующая партия';

  @override
  String get gameDialogMatchOverTitle => 'Матч завершён';

  @override
  String get gameDialogNobody => 'Никто';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner выиграл матч.';
  }

  @override
  String get gameDialogSavedToHistory => 'Сохранено в истории';

  @override
  String get gameDialogDone => 'Готово';

  @override
  String get gameTapNoLegalMove =>
      'Коснитесь своей шашки, чтобы увидеть допустимые ходы.';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Коснитесь шашки, затем пункта назначения.';

  @override
  String get gameDragHint => 'Перетащите шашку в пункт назначения.';

  @override
  String get commonGotIt => 'Понятно';

  @override
  String get gameHintStageBeforeHint => 'До подсказки';

  @override
  String get surrenderTitle => 'Сдаться в партии?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player сдаётся в текущей партии.';
  }

  @override
  String get surrenderConcedes => 'Сдаться в текущей партии.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Доступно в начале хода игрока $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Доступно в начале вашего хода';

  @override
  String get commonCancel => 'Отмена';

  @override
  String get surrenderSingle => 'Обычное поражение';

  @override
  String get surrenderGammon => 'Гаммонное поражение';

  @override
  String get surrenderBackgammon => 'Бэкгэммонное поражение';

  @override
  String get surrenderChoosePlayer => 'Выберите игрока';

  @override
  String get commonDone => 'Готово';

  @override
  String get cubeDouble => 'Удвоить';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Сейчас ход другого игрока.';

  @override
  String get cubeBlockedCrawford => 'В партии Кроуфорда куб недоступен.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Удваивать может только владелец куба; сейчас он у другой стороны.';

  @override
  String get cubeBlockedUnavailable => 'Сейчас удвоение недоступно.';

  @override
  String get gameStatusRolling => 'Бросок кубиков';

  @override
  String get gameStatusThinking => 'Компьютер думает';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Ход игрока $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Удвоить — сопернику следует принять';

  @override
  String get cubeAdviceOpponentPass => 'Удвоить — сопернику следует пасовать';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Ошибка: $error';
  }

  @override
  String get privacyTitle => 'Конфиденциальность и данные';

  @override
  String get privacyAppTitle => 'Backgammon Buddy от Freevia';

  @override
  String get privacyIntro =>
      'На этой странице описывается, как текущее приложение обрабатывает ваши данные.';

  @override
  String get privacyLocalTitle => 'Игры и обучение на вашем устройстве';

  @override
  String get privacyLocalBody =>
      'Локальные матчи, настройки, анализ и прогресс тренировок хранятся на этом устройстве. Здесь работают игровой движок и объяснения тренера. Удаление сохранённого матча из «Архива игр» также удаляет сохранённые упражнения и попытки для этого матча. Удаляйте отдельные упражнения или сбрасывайте прогресс в разделе «Обучение и практика»; очищайте локальные отчёты об ошибках в «Настройки» → «Диагностика». Резервное копирование устройства также может включать историю матчей. Данные для онлайн-входа хранятся в защищённом хранилище устройства.';

  @override
  String get privacyOnlineTitle => 'Игра онлайн и поблизости';

  @override
  String get privacyOnlineBody =>
      'Для совместной онлайн-игры в Google Firebase отправляются анонимный идентификатор игрока, настройки матча, ходы и записи протокола согласования бросков кубиков. Удаление истории на этом устройстве не удаляет онлайн-записи. Срок хранения размещённых матчей истекает через 30 дней после создания; запланированная очистка удаляет их журналы из облака. Записи матчей хранятся в ЕС; Firebase Authentication обрабатывает данные для входа в США. Соединения с Google шифруются при передаче данных. Во время игры по локальной сети данные матча передаются на другое устройство по незашифрованному соединению; используйте доверенную сеть Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle =>
      'Необязательная диагностика использования и сбоев';

  @override
  String get privacyDiagnosticsBody =>
      'Передача данных отключена, пока вы не включите её в настройках. Если передача включена, Google Firebase получает события использования, сведения о приложении и устройстве, показатели производительности и отчёты о сбоях, чтобы помочь улучшить приложение. Вы можете в любой момент отключить передачу, чтобы прекратить сбор новых необязательных данных. Уже отправленные данные при этом не удаляются. Локальная диагностика и онлайн-матчи не зависят от этой настройки.';

  @override
  String get privacyCameraTitle => 'Камера для близлежащих QR-кодов';

  @override
  String get privacyCameraBody =>
      'Дополнительная камера сканирует QR-коды для игры поблизости. Изображения обрабатываются на устройстве, не сохраняются и не загружаются. Вы можете запретить доступ к камере и вручную ввести адрес устройства-хоста. Эта версия не использует микрофон и не поддерживает игру на физической доске.';

  @override
  String get privacyFeedbackTitle => 'Отзыв, который вы решили отправить';

  @override
  String get privacyFeedbackBody =>
      'Отправка отзыва открывает черновик обращения на GitHub для проверки. При открытии черновика на GitHub передаются версия приложения и платформа; отзыв с экрана «Диагностика» может также содержать сведения об ошибке. Обращение не публикуется, пока вы его не отправите. Обращения могут быть общедоступными, поэтому удалите личную информацию перед отправкой.';

  @override
  String get privacyContactTitle => 'Контакты по вопросам конфиденциальности';

  @override
  String get privacyReadPolicy => 'Прочтите политику конфиденциальности';

  @override
  String get privacyPolicyOpenFailed =>
      'Не удалось открыть политику конфиденциальности.';

  @override
  String get privacySupportTitle => 'Помощь и поддержка';

  @override
  String get privacySupportOpenFailed =>
      'Не удалось открыть поддержку. Свяжитесь с support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Удалить онлайн-идентификатор и данные?';

  @override
  String get privacyDeleteConfirmBody =>
      'Доступ обоих игроков к облачным матчам, связанным с этим онлайн-идентификатором, прекращается немедленно. Запрашивается удаление идентификатора и общих журналов онлайн-матчей в течение 30 дней. Google может потребоваться до 180 дней после удаления учётной записи, чтобы удалить данные аутентификации из действующих и резервных систем. Локальная история партий и упражнения для тренировки останутся на этом устройстве. Ранее отправленные необязательные диагностические данные не входят в этот запрос; по вопросам о них обращайтесь на privacy@freevia.org. Запрос нельзя отменить.';

  @override
  String get privacyRequestDeletion => 'Запросить удаление';

  @override
  String get privacyDeleteSectionTitle => 'Удаление данных онлайн';

  @override
  String get privacyDeleteInstructions =>
      'Используйте сохранённые на этом устройстве данные для входа, чтобы подтвердить, что онлайн-идентификатор принадлежит вам. Одного идентификатора игрока или кода приглашения для подтверждения права владения недостаточно. Для игры только на этом устройстве онлайн-аккаунт не нужен.';

  @override
  String get privacySendingRequest => 'Отправка запроса…';

  @override
  String get privacyDeleteAction => 'Удалить онлайн-личность и данные';

  @override
  String get privacyDeleteRequested =>
      'Запрос на удаление отправлен. Выполнен выход из этой онлайн-учётной записи. Её данные в облаке будут удалены в течение 30 дней. При следующем запуске онлайн-игры будет создан новый идентификатор. Google может удалить данные аутентификации в течение 180 дней. За помощью обращайтесь на privacy@freevia.org.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Запрос на удаление отправлен. Данные в облаке будут удалены в течение 30 дней. Устройству не удалось удалить сохранённые данные для входа, но онлайн-идентификатор заблокирован и больше не может получать доступ к матчам. Google может удалить данные аутентификации в течение 180 дней. За помощью обращайтесь на privacy@freevia.org.';

  @override
  String get privacyDeleteNoIdentity =>
      'На этом устройстве не сохранён действующий онлайн-идентификатор. Новый аккаунт не создавался. Если вы раньше играли онлайн, обратитесь за помощью на privacy@freevia.org; размещённые матчи удаляются через 30 дней после создания.';

  @override
  String get privacyDeleteRequestFailed =>
      'Не удалось подтвердить запрос на удаление. Проверьте подключение и повторите попытку или обратитесь на privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Поделиться данными об использовании и диагностикой сбоев?';

  @override
  String get privacyConsentBody =>
      'При включении этой настройки в Google Firebase отправляются события использования, сведения о приложении и устройстве, отчёты о сбоях и показатели производительности. Передача данных необязательна. Игры и обучение работают и при выключенной передаче данных; вы можете отключить её в настройках.';

  @override
  String get privacyKeepOff => 'Оставить выключенным';

  @override
  String get privacyShareDiagnostics => 'Поделиться диагностикой';

  @override
  String get privacySaveFailed =>
      'Не удалось сохранить выбор конфиденциальности. Пожалуйста, попробуйте еще раз.';

  @override
  String get privacySettingsSubtitle =>
      'Что остается на вашем устройстве и что передается в общий доступ';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Совместное использование и диагностика сбоев';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Необязательно · выключено по умолчанию';

  @override
  String get lanScanToJoin => 'Отсканируйте, чтобы присоединиться';

  @override
  String get lanScanHostCode => 'Сканировать код хоста';

  @override
  String get lanEnterAddressInstead => 'Вместо этого введите адрес';

  @override
  String get lanQrAccessibilityLabel => 'QR-код для подключения к этой игре';

  @override
  String get lanJoinInstruction =>
      'На другом устройстве открой «Играть рядом», выбери «Присоединиться» и отсканируй этот QR-код.';

  @override
  String get lanTorch => 'Вспышка';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy не может использовать камеру. Разрешите доступ к камере в настройках устройства или введите адрес, отображаемый на другом устройстве, вручную.';

  @override
  String get lanCameraUnsupported =>
      'Это устройство не может сканировать QR-коды. Введите адрес, показанный на другом устройстве, вручную.';

  @override
  String get lanCameraStartFailed =>
      'Не удалось запустить камеру. Введите адрес, показанный на другом устройстве, вручную.';

  @override
  String get lanPointCameraAtQr =>
      'Наведите камеру на QR-код на другом устройстве.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'Игра на физической доске в этой версии недоступна. Игры на экране, обучение и тренировки доступны на главном экране.';

  @override
  String get homePlayWithBuddy => 'Играть с Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Доска для игры в нарды. $status';
  }

  @override
  String get boardWhiteToRoll => 'Ход белых бросать кубики.';

  @override
  String get boardBlackToRoll => 'Ход чёрных бросать кубики.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Ход белых: кубики $die1 и $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Ход чёрных: кубики $die1 и $die2.';
  }

  @override
  String get boardDoubleOffered => 'Предложено удвоение куба.';

  @override
  String get boardResignationOffered => 'Предложена сдача партии.';

  @override
  String get boardGameOver => 'Игра окончена.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Ошибка]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Идея]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Замените это кратким описанием того, что произошло.';

  @override
  String get feedbackBugReproduction =>
      'Замените это действиями, которые привели к проблеме.';

  @override
  String get feedbackBugExpected => 'Замените это тем, что вы ожидали.';

  @override
  String get feedbackIdeaNeed =>
      'Замените это тем, что вы хотели сделать или чему научиться.';

  @override
  String get feedbackIdeaSuggestion =>
      'Замените это изменением, которое вы найдете полезным.';

  @override
  String get feedbackExcerptTruncated =>
      '(усечено — используйте «Копировать в буфер обмена» на экране «Диагностика», чтобы просмотреть полный журнал)';

  @override
  String get boardWhiteToMoveNoRoll => 'Ход белых.';

  @override
  String get boardBlackToMoveNoRoll => 'Ход чёрных.';

  @override
  String get feedbackFieldVersion => 'Версия приложения';

  @override
  String get feedbackFieldPlatform => 'Платформа';

  @override
  String get feedbackFieldSummary => 'Что случилось';

  @override
  String get feedbackFieldReproduction => 'Шаги по воспроизведению';

  @override
  String get feedbackFieldExpected => 'Ожидаемый результат';

  @override
  String get feedbackFieldNeed => 'Что вы хотели сделать?';

  @override
  String get feedbackFieldIdea => 'Предлагаемое изменение';

  @override
  String get buddySetupTitle => 'Играть с Buddy';

  @override
  String get buddySetupSideLabel => 'Buddy играет';

  @override
  String get buddySetupSeatLabel => 'Ваша сторона';

  @override
  String get buddySetupSeatNear => 'Ближе к телефону';

  @override
  String get buddySetupSeatFar => 'Напротив';

  @override
  String get buddySetupSeatHelp =>
      'С какой стороны доски вы сидите? Так Buddy нумерует пункты и отличает ваш стартовый бросок от своего.';

  @override
  String get buddySetupVoiceLabel => 'Как говорит Buddy';

  @override
  String get buddySetupVoiceTerse => 'Кратко';

  @override
  String get buddySetupVoiceFriendly => 'Дружелюбно';

  @override
  String get buddySetupVoiceTerseHelp =>
      '«13/8, 24/22» — запись, которой пользуются игроки за доской.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '«Передвиньте шашку с 13 на 8 и шашку с 24 на 22».';

  @override
  String get buddySetupTutorHelp =>
      'Комментарии и объяснения ходов соответствуют настройкам тренера, сохранённым в разделе «Настройки». Buddy иногда комментирует ваши ходы; ввод броска и ручной ввод ходов работают так же.';

  @override
  String get buddySetupCalibrate => 'Калибровка доски';

  @override
  String get buddyFixAim => 'Настроить кадр';

  @override
  String get buddyWaitingForOpening =>
      'Buddy ждёт броска, который начнёт матч.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy потерял доску. Настройте кадр, и матч продолжится с того места, где остановился.';

  @override
  String get buddyPromptWaitingPicture =>
      'Жду изображение, которое Buddy сможет распознать. Ничего не потеряно.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy не видит кости. Введите результат броска вручную.';

  @override
  String get buddyPromptPlay =>
      'Сделайте ход на доске. Если Buddy его не распознает, укажите ход здесь.';

  @override
  String get buddyPromptWhichPlay => 'Какой ход вы сделали?';

  @override
  String get buddyPromptCube => 'Buddy удваивает. Принять или сбросить куб?';

  @override
  String get buddyPromptMakeMove =>
      'Сделайте ход Buddy на доске, и он продолжит игру.';

  @override
  String get buddyPromptThinking => 'Buddy думает.';

  @override
  String get buddyPromptWaitingCalibration => 'Ожидаю калибровку.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy пока не видит свой ход. На доске ниже показана позиция, которую он отслеживает.';

  @override
  String get buddyPromptNotLegal => 'Такой ход запрещён правилами.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Такой ход запрещён правилами. $reason';
  }

  @override
  String get buddyThrowOpening =>
      'Бросьте стартовые кости — по одной на игрока.';

  @override
  String get buddyThrowUser => 'Бросьте кости.';

  @override
  String get buddyThrowBuddy => 'Бросьте кости за Buddy.';

  @override
  String get buddyMatchOver => 'Матч завершён.';

  @override
  String get buddyYouWin => 'Вы выиграли матч.';

  @override
  String get buddyBuddyWins => 'Buddy выиграл матч.';

  @override
  String get buddyDoubleNoGame =>
      'Пока нечего удваивать — сначала нужно сделать стартовый бросок.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Удваивать можно только в свой ход и до броска.';

  @override
  String get buddyDoubleCrawford =>
      'В игре Кроуфорда удвоение запрещено — этот единственный гейм решит исход матча.';

  @override
  String get buddyDoubleNotOwner =>
      'Удваивать может только владелец куба, а сейчас куб у другой стороны.';

  @override
  String get buddyDoubleUnavailable => 'Сейчас удвоение недоступно.';

  @override
  String get buddyLookingAtBoard => 'Buddy смотрит на доску.';

  @override
  String get buddyCameraPlayFallback =>
      'Матч можно продолжить: вводите каждый бросок на панели костей, а ходы выполняйте на доске ниже.';

  @override
  String get buddySkipCheck => 'Пропустить проверку';

  @override
  String get buddyFixedIt => 'Исправлено';

  @override
  String get buddyDrop => 'Сбросить';

  @override
  String get buddyTake => 'Принять';

  @override
  String get buddyDone => 'Готово';

  @override
  String get buddyTranscriptLabel => 'Что сказал Buddy';

  @override
  String get buddyUndo => 'Отменить';

  @override
  String get buddyConfirm => 'Подтвердить';

  @override
  String get buddyDice => 'Кости';

  @override
  String get buddyDouble => 'Удвоить';

  @override
  String get buddyDicePadTitle => 'Что выпало?';

  @override
  String get buddyEnterRoll => 'Ввести бросок';

  @override
  String get buddyContextBeforeGame => 'Играть с Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Вы $you–$buddy Buddy · до $length · Гейм $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Не удалось запустить камеру. Проверьте разрешения и попробуйте ещё раз.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy не разрешён доступ к камере. Разрешите доступ в настройках устройства и попробуйте ещё раз.';

  @override
  String get buddyCalibrationTitle => 'Покажите доску Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Перетащите четыре внешние метки на углы игрового поля, а не деревянной рамки, и четыре маленькие — на стыки шарнира у дальнего и ближнего краёв.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Перетащите каждую метку на угол игрового поля, а не деревянной рамки.';

  @override
  String get buddyCalibrationCheckLines =>
      'Затем проверьте двенадцать линий на каждой половине: каждая должна проходить вдоль пункта доски. Если линия проходит мимо, немного сдвиньте соответствующую метку.';

  @override
  String get buddyCalibrationSeatQuestion => 'Какая половина — ваш дом?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Половина ближе к нижнему краю изображения. Она задаёт нумерацию пунктов, и линии выше ориентируются по ней.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Не двигайте телефон. Buddy ждёт, пока изображение стабилизируется, чтобы изучить доску.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Это ваша доска?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy смотрит на доску, которую только что изучил.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Нарисованные поверх изображения шашки показывают, где, по мнению Buddy, они находятся. Если какая-то стоит не там, начните заново: сейчас это займёт секунды, а позже может испортить партию.';

  @override
  String get buddyCalibrationNext => 'Далее';

  @override
  String get buddyCalibrationBack => 'Назад';

  @override
  String get buddyCalibrationCapture => 'Снять';

  @override
  String get buddyCalibrationStartOver => 'Начать заново';

  @override
  String get buddyCalibrationLooksRight => 'Выглядит верно';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Эти четыре метки не очерчивают доску — одна пересекла другую. Верните их к углам игрового поля.';

  @override
  String get buddyCalibrationPrepTitle => 'Сначала подготовьте три вещи';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Уберите кости с доски.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Сейчас Buddy изучает пустую доску. Если оставить кость на поле, Buddy примет её за часть доски и до конца этой сессии не сможет распознавать кости.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Расставьте шашки как для начала партии.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'По тридцати шашкам в известных позициях Buddy определит оба цвета, не спрашивая вас.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Поместите всё игровое поле в кадр.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'Затем не перемещайте телефон. Если он сдвинется, Buddy сообщит об этом, и вы сможете поправить углы.';

  @override
  String get buddyCalibrationBoardKind => 'Какой у вас тип доски?';

  @override
  String get buddyCalibrationFlatBoard => 'Плоская доска';

  @override
  String get buddyCalibrationFoldingBoard => 'Складная доска';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'Для складной доски нужны ещё четыре метки на стыках шарнира.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Режим Buddy наблюдает за реальной доской, поэтому без камеры он не запустится. Остальные функции приложения продолжат работать.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Стык шарнира $number из 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Угол доски $number из 4';
  }

  @override
  String get buddyNudgeLeft => 'Сдвинуть влево';

  @override
  String get buddyNudgeRight => 'Сдвинуть вправо';

  @override
  String get buddyNudgeUp => 'Сдвинуть вверх';

  @override
  String get buddyNudgeDown => 'Сдвинуть вниз';

  @override
  String get buddyCalibrationProblemCorners =>
      'Эти четыре угла не очерчивают доску. Перетащите каждую метку на угол игрового поля и попробуйте снова.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Эти восемь точек не очерчивают складную доску. Поставьте четыре на углы игрового поля, а четыре — на стыки шарнира, затем попробуйте снова.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Не удаётся различить саму доску: она полностью закрыта, в тени или бликует. Освободите её, добавьте света и попробуйте снова.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Не удаётся различить $region: возможно, на этом участке что-то лежит или угол слишком тёмный. Уберите предмет или добавьте света и попробуйте снова.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Из этого положения два цвета шашек слишком похожи. Обычно помогает больше света или угол без бликов.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Шашки стоят не в начальной позиции: на пункте $number шашка неправильного цвета. Расставьте шашки для начала партии и откалибруйте доску снова.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'На доску падает слишком много света, и цвета сливаются. Уменьшите освещение или измените положение телефона, чтобы лампа не отражалась прямо в камеру.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Я распознаю доску, но она не готова к началу партии. Расставьте шашки в начальную позицию и откалибруйте доску снова.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Я распознаю доску, но не могу определить, насколько одна шашка закрыта другой, и ошибусь при подсчёте. Обычно помогает больше света на ближних пунктах или чуть более высокий угол камеры.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Не видно всю доску. Отодвиньте телефон или переместите угловые метки на игровое поле.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Вся доска больше не помещается в кадр — $region за его пределами. Наведите камеру заново или проверьте углы.';
  }

  @override
  String get buddyConfirmStartingPosition => 'Похоже на начальную позицию.';

  @override
  String get buddyConfirmNoCheckers =>
      'Не видно ни одной шашки в начальных позициях. Расставьте шашки для начала партии и попробуйте снова.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Доска не расставлена для начала партии: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return '$region пуст, но в начале партии там должны быть шашки $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'На участке $region стоят шашки $side, хотя в начале партии он должен быть пустым';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'На участке $region стоят шашки $observed, а в начале партии там должны быть $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Замрите на секунду — когда телефон движется, я теряю доску.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Мне передали не то изображение, по которому настраивали эту доску, поэтому я не могу её выровнять. Настройте доску заново отсюда.';

  @override
  String get buddyReadabilityBlur =>
      'Изображение слишком размыто, чтобы распознать доску. Подождите, пока камера сфокусируется.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Доска уже не там, где я её изучил. Выровняйте углы, и я сразу продолжу партию.';

  @override
  String get buddyReadabilityOccluded =>
      'Часть доски закрыта. Продолжу, как только её освободят.';

  @override
  String get buddyReadabilityClear => 'Доска видна.';

  @override
  String get buddyReadabilityColorChanged =>
      'Цвет освещения изменился, и доска больше не похожа на ту, что я изучил. Выровняйте углы при этом освещении, и я продолжу партию.';

  @override
  String get buddyReadabilityTooDark =>
      'Слишком темно, чтобы распознать доску. Добавьте немного света, и я продолжу с того места, где мы остановились.';

  @override
  String get buddyReadabilityTooBright =>
      'На доску падает слишком много света, и цвета сливаются. Уменьшите освещение или переместите телефон, чтобы лампа не отражалась в камеру.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy всё ещё не видит свой ход — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nМатч можно продолжить: вводите каждый бросок на панели костей, а ходы выполняйте на доске ниже.';
  }

  @override
  String get buddyCameraGenericError =>
      'Не удалось запустить камеру. Проверьте разрешения и попробуйте ещё раз.';

  @override
  String buddyRegionPoint(int number) {
    return 'пункт $number';
  }

  @override
  String get buddyRegionBar => 'бар';

  @override
  String get buddyRegionWhiteTray => 'лоток для снятых шашек белых';

  @override
  String get buddyRegionBlackTray => 'лоток для снятых шашек чёрных';

  @override
  String get buddyRegionDiceZone => 'центр доски';

  @override
  String get buddyCalibrationProblemVisible =>
      'Не видно всю доску. Отодвиньте телефон или переместите угловые метки на игровое поле.';

  @override
  String buddyConfirmMore(int number) {
    return ' (и ещё $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Каждый бросает по одной кости. По выпавшим значениям определяется, кто ходит первым.';

  @override
  String get buddyDiceOpeningFirst => 'Кость белых';

  @override
  String get buddyDiceOpeningSecond => 'Кость чёрных';

  @override
  String get buddyDiceRegularCaption =>
      'Два выпавших значения в любом порядке.';

  @override
  String get buddyDiceRegularFirst => 'Одна кость';

  @override
  String get buddyDiceRegularSecond => 'Другая кость';

  @override
  String get evaluationEngine => 'Движок оценки';

  @override
  String get parallelEngineAnalysis => 'Анализировать обоими движками';

  @override
  String get parallelEngineExplanation =>
      'Сравнивайте отдельные советы wildbg и GNUbg в наставнике.';

  @override
  String get engineComparison => 'Сравнение движков';

  @override
  String get engineWinChance => 'Вероятность победы';
}
