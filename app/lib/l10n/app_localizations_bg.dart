// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bulgarian (`bg`).
class AppLocalizationsBg extends AppLocalizations {
  AppLocalizationsBg([String locale = 'bg']) : super(locale);

  @override
  String get appTitle => 'Backgammon Buddy';

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

  @override
  String get settingsReset => 'Нулиране';

  @override
  String get settingsAppLanguage => 'Език на приложението';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeSystem => 'Системна';

  @override
  String get settingsThemeLight => 'Светла';

  @override
  String get settingsThemeDark => 'Тъмна';

  @override
  String get settingsAnimationSpeed => 'Скорост на анимацията';

  @override
  String get settingsAnimationNone => 'Без анимация';

  @override
  String get settingsAnimationNormal => 'Нормална';

  @override
  String get settingsAnimationFast => 'Бърза';

  @override
  String get settingsDiceRollAnimation => 'Анимация при хвърляне на заровете';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Заровете се завъртат преди всяко хвърляне';

  @override
  String get settingsDefaultMatchLength => 'Дължина на мача по подразбиране';

  @override
  String get settingsDefaultDifficulty => 'Трудност по подразбиране';

  @override
  String get settingsDifficultyEasy => 'Лесна';

  @override
  String get settingsDifficultyMedium => 'Средна';

  @override
  String get settingsDifficultyHard => 'Трудна';

  @override
  String get settingsDifficultyExpert => 'Експертна';

  @override
  String get settingsTutorModeDefault => 'Режим на наставника по подразбиране';

  @override
  String get settingsTutorAuto => 'Автоматично';

  @override
  String get settingsTutorOn => 'Вкл.';

  @override
  String get settingsTutorOff => 'Изкл.';

  @override
  String get settingsTutorModeHelp =>
      'В режим „Автоматично“ наставникът е включен при всяка трудност на компютъра. „Вкл.“ и „Изкл.“ задават началния избор за локални мачове. Игрите наблизо и онлайн са без помощ; запазените партии могат да бъдат прегледани след това. Предпочитанията за обучение по-долу се запазват на това устройство.';

  @override
  String get settingsTutorPreferences => 'Предпочитания за наставника';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Запазени настройки по подразбиране за бъдещи мачове';

  @override
  String get settingsTutorSaveError =>
      'Предпочитанията за наставника не бяха запазени.';

  @override
  String get settingsGameplay => 'Игра';

  @override
  String get settingsMoveHighlights => 'Осветяване на ходовете';

  @override
  String get settingsMoveHighlightsHelp =>
      'Очертава пуловете, които могат да се местят, и осветява целевите полета';

  @override
  String get settingsDragToMove => 'Плъзгане за местене';

  @override
  String get settingsDragToMoveHelp =>
      'Плъзнете пул до целевото поле (докосването също работи)';

  @override
  String get settingsCombinedMoves => 'Комбинирани ходове';

  @override
  String get settingsCombinedMovesHelp =>
      'С едно докосване местите пул с двата зара';

  @override
  String get settingsRotateBoard => 'Завъртане на дъската между ходовете';

  @override
  String get settingsRotateBoardHelp =>
      'При игра на едно устройство: обръща изгледа към играча на ход';

  @override
  String get settingsPassDevice => 'Екран при предаване на устройството';

  @override
  String get settingsPassDeviceHelp =>
      'Скрива дъската, докато устройството се предава между играчите';

  @override
  String get settingsShowScore => 'Показване на резултата';

  @override
  String get settingsShowScoreHelp =>
      'Показва текущия резултат от мача в заглавната лента';

  @override
  String get settingsBuddyMode => 'Режим Buddy';

  @override
  String get settingsBuddyTerse => 'Кратък';

  @override
  String get settingsBuddyFriendly => 'Разговорен';

  @override
  String get settingsBuddyTerseHelp =>
      'Как Buddy произнася хода: „13/8, 24/22“ — краткият запис, който играчите използват пред дъската.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Как Buddy произнася хода: „Премести един пул от 13 на 8 и един от 24 на 22.“';

  @override
  String get settingsListenForDice => 'Слушане за заровете';

  @override
  String get settingsListenForDiceHelp =>
      'Когато чуе хвърляне, Buddy проверява дъската по-рано. Изключването не променя нищо друго.';

  @override
  String get settingsDiagnostics => 'Диагностика';

  @override
  String get settingsErrorLog => 'Дневник на грешките';

  @override
  String get settingsErrorLogHelp =>
      'Последните грешки, готови за копиране в сигнал за проблем';

  @override
  String get settingsReportBug => 'Съобщаване за проблем';

  @override
  String get settingsReportBugHelp => 'Отваря форма за сигнал в GitHub';

  @override
  String get settingsSuggestIdea => 'Предложение за идея';

  @override
  String get settingsSuggestIdeaHelp =>
      'Помогнете ни да подобрим наставника и играта';

  @override
  String get settingsAbout => 'За приложението';

  @override
  String get settingsOpenSourceLicenses => 'Лицензи за софтуер с отворен код';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Партията приключи.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Прегледайте ходовете, за да откриете решение, което да упражните.';

  @override
  String get tutorPhraseCubeOffered => 'Предложено е удвояване на залога.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Решете дали да приемете удвояването или да се откажете, преди да планирате ход с пуловете.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Резултатът от мача променя стойността на допълнителния залог.';

  @override
  String get tutorPhraseResignationOffered =>
      'Предложено е предаване на партията.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Сравнете предложените точки с позицията, преди да приемете или да продължите.';

  @override
  String get tutorPhraseNoLegalPlay => 'При това хвърляне няма разрешен ход.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Принудителното подаване не е грешка; изчакайте следващото хвърляне.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Има само един разрешен краен вариант на позицията.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Направете принудителния ход. При това хвърляне няма избор, който да бъде оценен.';

  @override
  String get tutorPhrasePipCountsLevel => 'Броят пипсове е равен.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Преднина по пипсове: $count.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Изоставане по пипсове: $count.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Първо трябва да вкарате пуловете от бара. Там са: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Първо вкарайте пул от бара, после потърсете безопасно поле за него.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'Противникът има затворени полета в своя дом: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Надпревара за извеждане на пуловете.';

  @override
  String get tutorPhrasePureRace => 'Чиста надпревара.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Извеждайте пулове, като оставяте удобно разпределение за следващото хвърляне.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Приберете задните пулове към дома, без да струпвате твърде много на едно поле.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Играчите се разминаха; повече не могат да се удрят пулове.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Контактът все още има значение.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'На бара на противника има пулове: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Запазете затворените полета, докато прибирате останалите пулове към дома.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Изградете или запазете своя дом, докато противникът се опитва да влезе от бара.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'Във вашия дом са затворени полета: $count; всяко блокира едно число за влизане.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Контакт с поредица от $count затворени полета.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Сравнете удължаването на поредицата със запазването на резервни пулове, които да я поддържат.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Резервни пулове: $count. Можете да ги местите, без веднага да отваряте полето.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Контакт с опорна позиция на полета $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Сравнете прибирането на задните пулове към дома със сигурността на запазената опора.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Имайте предвид безопасната опора, докато търсите удар или подобрявате позицията си.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Опорната позиция не може да бъде ударена, но тези пулове още имат дълъг път до дома.';

  @override
  String get tutorPhraseContactThreats =>
      'Контактът остава: и двамата играчи могат да заплашват с удар.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Търсете полезни затворени полета и преценявайте риска да оставите единични пулове открити.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Затворени полета във вашия дом: $count. Оставени открити пулове: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Изберете пул, за да започнете хода си.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Направете разрешен ход, за да видите коментар.';

  @override
  String tutorPhraseStagedHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пула на противника',
      one: 'един пул на противника',
    );
    return 'Ударихте $_temp0.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Вкарани от бара пулове: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пула',
      one: 'един пул',
    );
    return 'Изведохте от дъската $_temp0.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Затворихте полета $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Пулът на поле $point засега остава открит за удар.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Резервният пул на поле $point може да се премести по-късно, без да се отваря полето.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Използвайте останалите достъпни зарове, преди да оцените целия ход.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'И 15-те пула са изведени: партията е спечелена.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Ударът печели време, докато противникът се връща от бара.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Ефективното извеждане премахва пулове и оставя удобни числа за следващото хвърляне.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'В надпреварата приберете задните пулове към дома и оставете удобни полета за извеждане.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Извеждането ви приближава до победата, но докато има контакт, открит пул може да бъде ударен.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Влизането връща пула в играта; сега потърсете безопасно поле за него.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Новото затворено поле във вашия дом ще премахне една възможност за влизане след бъдещ удар.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'По-дългата поредица затваря повече полета, на които противникът може да стъпи; резервните пулове помагат да я запазите.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Отказът от опорната позиция придвижва пуловете напред, но отнема безопасната им опора.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Новата опорна позиция дава безопасна опора на задните пулове.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Прикриването на открит пул премахва цел за противника.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Тук има компромис между развитие и сигурност: пуловете, които помагат да изградите позицията, също могат да станат цели.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Целият ход е подготвен. Натиснете „Потвърди“, за да го изпълните.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'При това хвърляне няма избор на ход с пуловете; не се оценява като решение.';

  @override
  String get tutorMoveTopVerdict =>
      'Един от най-добрите ходове в тази позиция.';

  @override
  String get tutorMoveAlternativeVerdict => 'Енджинът предпочита друг ход тук.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Разлика спрямо най-добрия ход: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'След този ход: $winPercent% вероятност за победа, $winGammonPercent% победи с марс или бекгемън, $loseGammonPercent% загуби с марс или бекгемън. Това са оценки от гледната точка на играча на ход.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Изчислен шанс за спечелване на мача: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'И 15-те пула са изведени: партията е спечелена.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Използвайте удара, за да спечелите време, докато противникът влиза от бара. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Запазете затворените полета в своя дом, за да затрудните влизането.';

  @override
  String get tutorMovePlanHitBuild =>
      'Затворете още полета в своя дом, за да направите бъдещото влизане след удар по-трудно.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Стремете се към ефективно извеждане: сваляйте пулове, като оставяте удобни числа за следващото хвърляне.';

  @override
  String get tutorMovePlanRaceHome =>
      'Приберете задните пулове към дома и ги разпределете по удобни полета за извеждане.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Изведете пулове от играта, но следете задните пулове на противника: при запазен контакт незащитен пул за извеждане може да стане цел.';

  @override
  String get tutorMovePlanReentry =>
      'Върнете се в играта, после потърсете безопасно поле за влезлия пул.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Укрепете своя дом. Новото затворено поле прави бъдещия удар по-силен, защото премахва една възможност за влизане.';

  @override
  String get tutorMovePlanPrime =>
      'Поддържайте поредицата от затворени полета. Запазете резервни пулове, за да не се налага да я отваряте при следващи хвърляния.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Напускането на опорната позиция придвижва задните ви пулове, но отнема безопасното им място. Внимавайте да не останат открити по пътя към дома.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Използвайте новата опорна позиция като безопасно място, докато подобрявате останалата част от позицията си.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Съберете пуловете си. Прикриването на открит пул премахва тази цел и запазва възможностите за следващи ходове.';

  @override
  String get tutorMovePlanSafety =>
      'Съчетавайте развитието със сигурността: придвижвайте строителните пулове към полезни полета и проверявайте кои единични пулове могат да бъдат ударени.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Няма разрешен ход с пуловете: ред е на противника.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пула на противника',
      one: '$count пул на противника',
    );
    return 'Ударихте $_temp0; противникът трябва първо да влезе от бара, преди да мести другите пулове.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Вкарани от бара пулове: $count.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пула',
      one: '$count пул',
    );
    return 'Изведени от дъската: $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Затворени полета: $points. Два или повече пула пазят сигурно поле и не позволяват на противника да стъпи на него.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Отворени отново затворени $pointLabel: $points. Тези полета вече не спират противника да стъпи там.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Не остават открити единични пулове (преди: $previousCount). Няма пулове, които противникът да удари сега.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пула',
      one: '$count пул',
    );
    return 'Остават открити единични пулове: $_temp0 (преди: $previousCount). Проверете дали противникът може да ги достигне, преди да изберете сигурността пред друга придобивка.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Най-дългата поредица от затворени полета: $count (преди: $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Поредица от шест затворени полета не може да бъде премината, докато остава затворена.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Дръжте строителните пулове наблизо, ако искате да удължите или запазите тази поредица.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'Пулове в запас над нужните два за затваряне на полетата: $count. Преместването на резервен пул може да запази полето; преместването на един от последните два го отваря.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Опорни позиции в дома на противника: $points (преди: $previousPoints). Запазената опора предпазва тези пулове от удар; напускането ѝ заменя тази сигурност с напредък в надпреварата.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Чиста надпревара: играчите се разминаха и никой няма пул на бара. Вече не може да има удари; важно е пуловете да се извеждат ефективно.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Няма разрешено следващо хвърляне, с което противникът да удари пул в тази позиция. Контактът обаче остава и по-късни ходове могат да открият нови възможности за удар.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Противникът може да удари при $count от общо $total хвърляния. Например $dieOne–$dieTwo позволява разрешен удар по вашия пул на поле $point. Възможността за удар не означава, че противникът непременно ще я избере.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'Затворени полета във вашия дом: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Противникът не може да влезе, докато някое поле не се отвори.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Хвърляне, което използва отворено поле за влизане, може да върне пул от бара.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Оцененият шанс за победа при най-добрия ход е с $delta процентни пункта $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'по-висок';

  @override
  String get tutorMoveComparisonLower => 'по-нисък';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Той пак може да е класиран по-високо, защото марсът и бекгемънът имат различна стойност при текущия $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'залог';

  @override
  String get tutorMoveComparisonMatchScore => 'резултат от мача';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Пулове на противника на бара при най-добрия ход: $bestCount; при избрания ход: $playedCount. Пулът на бара трябва първо да влезе, преди противникът да мести останалите.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Затворени полета във вашия дом при най-добрия ход: $bestCount; при избрания ход: $playedCount. Това са $entryDifference входни полета разлика след удар.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'затваря повече';

  @override
  String get tutorMoveComparisonLeavingMore => 'оставя повече отворени';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'При най-добрия ход противникът може да удари при $bestCount от 36 хвърляния вместо при $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Така непосредственият риск да бъдете върнати назад намалява.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Сравнете допълнителния риск с ползата, която ходът носи другаде.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Най-дългата поредица от затворени полета при най-добрия ход е $bestCount, а не $playedCount; сравнете блокадата с броя пулове, с които можете да я поддържате.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'При най-добрия ход опорните ви позиции са $bestPoints, а не $playedPoints. Запазеният пункт е безопасно място за стъпване; напускането му приближава пуловете към дома.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Изведени пулове при най-добрия ход: $bestCount; при избрания ход: $playedCount. Всеки изведен пул е един по-малко за сваляне по-късно.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'И двата хода оставят еднакъв непосредствен риск от удар, брой затворени полета в дома, опорни позиции и изведени пулове. Сравнете полетата, на които остават пуловете: следващото хвърляне може да позволи различни ходове.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'При най-добрия ход повече пулове на противника остават на бара и забавят другите му ходове.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'При най-добрия ход са затворени повече полета в дома, което затруднява влизането след удар.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'При най-добрия ход има по-малко възможности за незабавен удар, което намалява риска да бъдете върнати назад.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'При най-добрия ход се запазва по-дълга поредица от затворени полета.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'При най-добрия ход се запазват повече безопасни опорни позиции в дома на противника.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'При най-добрия ход се извеждат повече пулове и остават по-малко за сваляне.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Открити единични пулове след този ход: $playedCount; след най-добрия ход: $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'При най-добрия ход се запазва безопасна опорна позиция на поле $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'При най-добрия ход се затварят повече полета за влизане, в случай че ваш пул бъде ударен.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Ходовете оставят сходен непосредствен риск; сравнете кои полета ще са полезни при следващото хвърляне.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value очаквана стойност';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value пр.п. шанс за победа в мача';
  }

  @override
  String get tutorMovePointSingular => 'поле';

  @override
  String get tutorMovePointPlural => 'полета';

  @override
  String get tutorMoveNoPoints => 'няма';

  @override
  String get gameTutorCommentaryOff => 'Коментарите за играта са изключени.';

  @override
  String get gameTutorToolsAvailable =>
      'Отворете наставника, за да използвате включените инструменти.';

  @override
  String get gameTutorNextRoll => 'Хвърлете заровете.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Няма оценено обяснение за този записан ход.';

  @override
  String get gameTutorAnalysisUnavailable => 'анализът не е наличен';

  @override
  String get gameTutorReviewing => 'преглед…';

  @override
  String get gameTutorTryYourPlayFirst => 'Първо опитайте свой ход.';

  @override
  String get gameTutorKeepBuilding => 'Продължете да съставяте хода си.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Съставете пълен разрешен ход, преди да видите съвети или подсказки.';

  @override
  String get gameTutorReadyToConfirm => 'Готов за потвърждение';

  @override
  String get gameTutorPlayTakingShape => 'Ходът ви се оформя.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Потвърдете, за да изиграете хода, или го отменете и обмислете отново.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Използвайте оставащите зарове или отменете хода.';

  @override
  String get gameTutorComputerConsidering => 'Компютърът обмисля своя ход.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Завършеният му ход ще бъде прегледан тук.';

  @override
  String get gameTutorYourPlay => 'Вашият ход';

  @override
  String get gameTutorComputer => 'Компютър';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Вашият ход: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'принудителен ход';

  @override
  String get gameTutorTopChoice => 'най-добър избор';

  @override
  String get gameTutorSoundPlay => 'добър ход';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'възможно е друг ход да е по-подходящ';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'друг ход пасва по-добре на тази позиция';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'имало е значително по-силен ход';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'Според оценката $side има предимство.';
  }

  @override
  String get gameTutorPositionEven => 'Позицията е приблизително равна.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Изиграно: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Най-добър ход: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Покажи подредените ходове';

  @override
  String get tutorReviewRecordedMove =>
      'Докоснете завършен ход в дневника, за да прегледате решението си тук.';

  @override
  String get tutorTopPlays => 'Най-добри ходове';

  @override
  String get tutorNoHintsAvailable => 'Няма налични подсказки.';

  @override
  String get tutorPreviewThenConfirm =>
      'Докоснете ход, за да го пробвате на дъската, после го потвърдете.';

  @override
  String get tutorTopChoiceForPosition => 'Най-добър избор за тази позиция';

  @override
  String get tutorAlternativePlay => 'Алтернативен ход';

  @override
  String get tutorEngineEstimates => 'Оценки на енджина';

  @override
  String get tutorEstimateScope =>
      'Оценка на 0 полухода · текущ резултат и залог · без бъдещи удвоявания';

  @override
  String get tutorEquity => 'Еквити';

  @override
  String get tutorMwcPercent => 'Шанс за победа в мача %';

  @override
  String get tutorNearTiesNote =>
      'Близките оценки може да се променят при по-задълбочен анализ.';

  @override
  String get tutorWhyThisPlay => 'Защо този ход?';

  @override
  String get tutorCompareAlternative => 'Сравни този вариант';

  @override
  String get gameTutorCubeTake => 'Тутор: приемете';

  @override
  String get gameTutorCubePass => 'Тутор: откажете';

  @override
  String get practiceScreenTitle => 'Упражни решение';

  @override
  String get practiceUnavailable =>
      'Тази тренировъчна позиция вече не е налична.';

  @override
  String get practiceSubmitError =>
      'Опитът не можа да бъде оценен или запазен. Напредъкът ви не е променен. Опитайте отново.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'На ход е $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Историческият резултат не е наличен; оценяването използва equity без куб.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Резултат: $whiteLabel $whiteScore – $blackLabel $blackScore, до $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · партия на Крофорд';

  @override
  String get practiceNoDoublingCube => 'Без удвояващ куб.';

  @override
  String practiceCubeValue(int value) {
    return 'Куб $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Неизвестни исторически правила за куба.';

  @override
  String get practiceAfterBestPosition => 'Позиция след най-добрия ход';

  @override
  String get practiceAfterYourAnswerPosition => 'Позиция след вашия отговор';

  @override
  String get practiceFindYourPlayPrompt =>
      'Направете хода си на дъската, после проверете отговора. Не се показват подсказки.';

  @override
  String get practiceUndo => 'Отмяна';

  @override
  String get practiceCheckAnswer => 'Проверка на отговора';

  @override
  String get practiceRevealNoCredit => 'Покажи отговора (без кредит)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Отговорът е показан — няма кредит за припомняне.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Най-добър: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Оригинална партия: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Вашият отговор: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Вашият отговор';

  @override
  String get practiceBestPlayChip => 'Най-добър ход';

  @override
  String practiceNextReview(Object date) {
    return 'Следващ преглед: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Най-добрите и добрите отговори се броят за успешно припомняне. Ранните повторения не променят графика.';

  @override
  String get practiceBackToLearning => 'Назад към обучението';

  @override
  String get practiceMarkBest => 'Най-добър';

  @override
  String get practiceMarkGood => 'Добър';

  @override
  String get practiceMarkDubious => 'Съмнителен';

  @override
  String get practiceMarkError => 'Грешка';

  @override
  String get practiceMarkBlunder => 'Голяма грешка';

  @override
  String get practiceMarkForced => 'Принудителен';

  @override
  String get newMatchYourSide => 'Вашата страна';

  @override
  String get newMatchTutorMode => 'Режим на тутора';

  @override
  String get newMatchTutorDescription =>
      'Учете с подсказки, обяснения и коментари за играта';

  @override
  String get newMatchTutoringOptions => 'Настройки за обучение';

  @override
  String get newMatchTutoringOptionsDescription =>
      'За този мач; променят се и по време на игра';

  @override
  String get setupMatchLength => 'Дължина на мача';

  @override
  String get setupDifficulty => 'Трудност';

  @override
  String get setupDifficultyEasy => 'Лесно';

  @override
  String get setupDifficultyMedium => 'Средно';

  @override
  String get setupDifficultyHard => 'Трудно';

  @override
  String get setupDifficultyExpert => 'Експерт';

  @override
  String get setupPlayWithoutCube => 'Игра без куб';

  @override
  String get setupNoCubeThisMatch => 'Без удвояващ куб в този мач';

  @override
  String get analysisTitle => 'Анализ';

  @override
  String get gameMatchSummary => 'Обобщение на мача';

  @override
  String get gameAnalyzeGame => 'Анализ на партията';

  @override
  String get analysisMetricsTooltip => 'Какво означават тези числа?';

  @override
  String analysisError(Object error) {
    return 'Неуспешен анализ на партията: $error';
  }

  @override
  String get analysisNoPositions => 'Няма позиции за показване в тази партия.';

  @override
  String get analysisInProgress => 'Анализ на партията…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Изигран';

  @override
  String get analysisBest => 'Най-добър';

  @override
  String get analysisPrevious => 'Предишен';

  @override
  String get analysisNext => 'Следващ';

  @override
  String get analysisPositionBeforeCube => 'Позиция преди решението за куба';

  @override
  String get analysisPositionAtPoint => 'Позиция в този момент от партията';

  @override
  String get analysisShowingBestBefore =>
      'Показва се най-добрият ход в позицията преди хода';

  @override
  String get analysisShowingBefore => 'Показва се позицията преди хода';

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
      ' · изключено от средните стойности';

  @override
  String get analysisNoPlay => '(няма ход)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Най-добър ход: $move';
  }

  @override
  String get analysisExplain => 'Обясни';

  @override
  String get analysisSaveForPractice => 'Запази за упражнение';

  @override
  String get analysisSaveError =>
      'Не можа да се запази това решение. Опитай отново.';

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · загуба $loss';
  }

  @override
  String get analysisCubeDecision => 'Решение за куба';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Изиграно: $action ($percent% шанс за победа в мача).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Най-добро: $action ($percent% шанс за победа в мача).';
  }

  @override
  String get analysisCubeEstimate =>
      'Оценка 0-ply от гледната точка на играча на ход. Приема оптимален отговор вземи/пас. Използва приближение 0,7 за живота на куба при приет дубъл, а не пълно търсене на бъдещи повторни удвоявания. По-задълбочен анализ може да промени отговора.';

  @override
  String get analysisClose => 'Затвори';

  @override
  String get analysisMoves => 'Ходове';

  @override
  String get analysisForced => 'Принудителен';

  @override
  String get analysisMarkBest => 'Най-добър';

  @override
  String get analysisMarkGood => 'Добър';

  @override
  String get analysisMarkDubious => 'Съмнителен';

  @override
  String get analysisMarkError => 'Грешка';

  @override
  String get analysisMarkBlunder => 'Голяма грешка';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Средна загуба $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count решения с пуловете';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Големи грешки $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Загуба от куба $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side хвърля без удвояване';
  }

  @override
  String get metricExplainerTitle => 'Разбиране на показателите';

  @override
  String get metricExplainerTooltip => 'Какво означават тези числа?';

  @override
  String get metricExplainerMwcTitle => 'Шанс за победа в мача (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Когато резултатът е известен, ходовете с пуловете се подреждат по оценения шанс за победа в мача. Загубата е в процентни пунктове (pp): 1 pp е спад от 51% на 50%. Включени са текущият залог на куба и резултатите гамон/бекгамон. Принудителните пасове и хвърлянията с една законна позиция не влизат в средните стойности.';

  @override
  String get metricExplainerSearchTitle => 'Търсене и несигурност';

  @override
  String get metricExplainerSearchBody =>
      'Оценките на ходовете са статични 0-ply оценки след хода, а не симулации. Стойностите за мача използват таблица за equity на мача без бъдещи ходове с куба. Анализът на куба използва частично приближение 0,7 за живота на куба при приет дубъл. Това не е пълно търсене с куба. За изоставане над 25 се използва границата 25 от таблицата. Близки резултати може да се променят при по-дълбок анализ; няма калибриран интервал на доверие.';

  @override
  String get metricExplainerEquityTitle => 'Equity';

  @override
  String get metricExplainerEquityBody =>
      'Ако резултатът липсва, equity без куб показва средната точкова стойност на позицията при куб на 1. +1,0 означава очаквана печалба от точка; −0,5 означава очаквана загуба от половин точка.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Загуба на equity (напр. −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Сравняваме всеки ход с най-добрия ход на двигателя. Загубата на equity е очакваната стойност, от която ходът се отказва. −0,016 означава, че ходът е само с 0,016 точки по-лош — малка грешка. 0,000 означава, че сте намерили най-добрия ход.';

  @override
  String get metricExplainerErrorRateTitle => 'Честота на грешките';

  @override
  String get metricExplainerErrorRateBody =>
      'Средната загуба усреднява оценените решения за пуловете в показаната единица. Решенията за куба имат отделна средна стойност. По-ниска стойност означава по-близо до най-добрите оценки на двигателя; това не е калибриран рейтинг на играча.';

  @override
  String get metricExplainerMoveMarksTitle => 'Оценки на ходовете';

  @override
  String get metricExplainerMoveMarksBody =>
      'Обучителни диапазони MWC: Най-добър < 0,05 pp, Добър < 0,5 pp, Съмнителен < 1,5 pp, Грешка < 3 pp, Голям пропуск ≥ 3 pp. Това са продуктови учебни граници, не калибрирана увереност или турнирна оценка.\n\nУчебни граници за equity без куб:';

  @override
  String get metricExplainerThresholdBest => 'загуба < 0,001';

  @override
  String get metricExplainerThresholdGood => 'загуба < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'загуба < 0,050';

  @override
  String get metricExplainerThresholdError => 'загуба < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'загуба ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Разбрах';

  @override
  String get historyTitle => 'История на мачовете';

  @override
  String historyLoadFailed(Object error) {
    return 'Историята не може да се зареди:\n$error';
  }

  @override
  String get historyEmpty => 'Все още няма изиграни мачове.';

  @override
  String get historyDeleteConfirmTitle => 'Да изтрия ли този мач?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nМачът и всички записани в него партии ще бъдат изтрити завинаги. Това не може да се отмени.';
  }

  @override
  String get actionCancel => 'Отказ';

  @override
  String get actionDelete => 'Изтриване';

  @override
  String get historyDeleteFailed => 'Мачът не можа да бъде изтрит.';

  @override
  String get historyComplete => 'Завършен';

  @override
  String historyWinner(Object side) {
    return '$side спечели';
  }

  @override
  String get historyUnfinished => 'Незавършен';

  @override
  String get historyMatchTitle => 'Мач';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Мачът не може да се зареди:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Партиите не могат да се заредят:\n$error';
  }

  @override
  String get historyNoGames => 'Все още няма записани партии.';

  @override
  String historyGameTitle(int number) {
    return 'Партия $number';
  }

  @override
  String get historyCrawford => 'Крофорд';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Бели $whiteScore — $blackScore Черни (до $matchLength)';
  }

  @override
  String get historyModeComputer => 'срещу компютър';

  @override
  String get historyModeTwoPlayers => 'Двама играчи';

  @override
  String get historyModeOnline => 'Онлайн';

  @override
  String get historyModeNearby => 'Игра наблизо';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'В ход';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side печели с $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'единична';

  @override
  String get historyOutcomeGammon => 'гамон';

  @override
  String get historyOutcomeBackgammon => 'бекгемон';

  @override
  String get learningRefreshTooltip => 'Опресни напредъка в обучението';

  @override
  String get learningOptions => 'Опции за обучение';

  @override
  String get learningResetMenu => 'Нулирай напредъка от упражненията';

  @override
  String get learningLoadFailed => 'Неуспешно зареждане на обучението.';

  @override
  String get actionRetry => 'Опитай пак';

  @override
  String get learningHeading => 'Учи от решенията си';

  @override
  String get learningIntro =>
      'Напредъкът се пази на това устройство. Преглеждай повтарящите се теми и опитвай отново запазени позиции, без да виждаш отговора. Белите и черните могат да се преглеждат поотделно.';

  @override
  String get learningBothSides => 'И двете страни';

  @override
  String get learningHumansOnly => 'Само решения на хора';

  @override
  String get learningHumanOnlyHelp =>
      'Изключи, за да включиш решенията на компютъра и отдалечените играчи';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions решения · $mistakes за подобрение · $blunders големи грешки';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Средна загуба ($decisions решения): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Принудителните ходове са изключени. Това са оценки на двигателя, не турнирна оценка.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count запазени партии се нуждаят от анализ или повторен анализ.',
      one: '$count запазена партия се нуждае от анализ или повторен анализ.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Анализирай запазените партии';

  @override
  String get learningEmptyProfile =>
      'Изиграй и завърши партия, за да изградиш профила си за обучение. Можеш да запазваш и отделни решения от прегледа на партия.';

  @override
  String get learningOpenHistory => 'Отвори историята на мачовете';

  @override
  String get learningRecurringThemes => 'Повтарящи се теми';

  @override
  String get learningNoThemes =>
      'Все още няма повтарящи се теми с грешки в този избор.';

  @override
  String learningThemeDecisions(int count) {
    return '$count решения за преглед. Една позиция може да има повече от една тема.';
  }

  @override
  String get learningSaveMistakes => 'Запази тези грешки за упражнения';

  @override
  String learningSavedMistakes(int count) {
    return '$count решения са в списъка ти за упражнения. Вече запазените остават.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Някои решения не можаха да бъдат запазени. Успешно запазените остават; опитай отново.';

  @override
  String get learningSpacedPractice => 'Разпределено във времето упражняване';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return '$due сега · $saved запазени · $attempts опита · $successes успешни припомняния';
  }

  @override
  String get learningIntervalsHelp =>
      'Успешните навременни прегледи се повтарят след 1, 3, 7, 14 и 30 дни. Грешките или показаните отговори се връщат след 10 минути. Ранните повторения не променят интервала.';

  @override
  String get learningAnswerContext =>
      'Резултатите от упражненията отразяват твоите отговори тук, дори ако първоначалната позиция е била на противник.';

  @override
  String get learningNoSavedPositions =>
      'Запази решение от прегледа на партията или използвай бутона за грешки по-горе.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Решение на $side · партия $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Преглед на $date';
  }

  @override
  String get learningReadyToReview => 'Готово за преглед';

  @override
  String learningSuccessStreak(int count) {
    return '$count успешни навременни прегледа';
  }

  @override
  String get learningRemoveTooltip => 'Премахни запазеното решение';

  @override
  String get learningRecentPractice => 'Последни упражнения';

  @override
  String get learningAnswerRevealed => 'Отговорът е показан';

  @override
  String get learningSuccessfulRecall => 'Успешно припомняне';

  @override
  String get learningTryAgain => 'Опитай това решение отново';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · запазена позиция $positionId';
  }

  @override
  String get learningRemoveTitle => 'Премахване на това упражнение?';

  @override
  String get learningRemoveBody =>
      'Това премахва опитите за упражнение. Оригиналната партия остава в историята.';

  @override
  String get actionRemove => 'Премахване';

  @override
  String get learningRemoveFailed => 'Неуспешно премахване на упражнението.';

  @override
  String get learningResetTitle => 'Нулиране на напредъка от упражненията?';

  @override
  String get learningResetBody =>
      'Всички опити и интервали за преглед ще бъдат премахнати. Запазените упражнения и историята остават; всички упражнения ще станат дължими сега.';

  @override
  String get learningResetAction => 'Нулирай напредъка';

  @override
  String get learningResetFailed => 'Неуспешно нулиране на напредъка.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Анализирани партии: $completed · недостъпни: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Анализирани са $completed партии.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Анализирани са $completed партии; $failed не можаха да бъдат анализирани. Опитай отново, когато двигателят е готов.';
  }

  @override
  String get learningThemeHitting => 'Удар и темпо';

  @override
  String get learningThemeSafety => 'Открити пулове и сигурност';

  @override
  String get learningThemePointMaking => 'Изграждане на пунктове';

  @override
  String get learningThemePrime => 'Праймове и блокади';

  @override
  String get learningThemeAnchor => 'Котви и бягство';

  @override
  String get learningThemeRace => 'Ефективност в надпреварата';

  @override
  String get learningThemeBearOff => 'Извеждане на пуловете';

  @override
  String get learningThemeBarEntry => 'Влизане от бара';

  @override
  String get learningThemeCube => 'Решения за куба';

  @override
  String get analysisCubeNoDouble => 'Без дубъл';

  @override
  String get analysisCubeDouble => 'Дубъл';

  @override
  String get analysisCubeTake => 'Вземи';

  @override
  String get analysisCubePass => 'Пас';

  @override
  String get learningAnalysisStarting => 'Анализ на запазените партии…';

  @override
  String get tutorCubelessEstimateScope =>
      'Оценка без куба, 0 полухода · резултатът не е наличен';

  @override
  String get tutorLossPp => 'Загуба в процентни пункта';

  @override
  String get tutorLoss => 'Загуба';

  @override
  String get scoreSheetNoMoves => 'Все още няма ходове';

  @override
  String get tutorOptions => 'Настройки на тутора';

  @override
  String get tutorCollapseTooltip => 'Свий тутора';

  @override
  String get tutorExpandTooltip => 'Разгъни тутора';

  @override
  String get onlineTitle => 'Игра онлайн';

  @override
  String get onlineUnassistedNote =>
      'Онлайн игрите на живо са без помощ от тутора. Прегледайте ходовете си и упражнете грешките след мача.';

  @override
  String get onlineNotConfiguredTitle =>
      'Онлайн играта не е настроена в тази версия';

  @override
  String get onlineNotConfiguredBody =>
      'Тази версия не е свързана с Firebase, затова не можете да създавате или да се присъединявате към мачове.';

  @override
  String get onlineErrorNoMatch =>
      'Няма мач с този код. Проверете го и опитайте пак.';

  @override
  String get onlineErrorSeatTaken =>
      'Този мач вече не е отворен — мястото е заето.';

  @override
  String get onlineErrorPermission => 'Нямате достъп до този мач.';

  @override
  String get onlineErrorGeneric => 'Възникна проблем. Опитайте отново.';

  @override
  String get onlineMatchFinished =>
      'Този мач приключи — няма към какво да се присъедините отново.';

  @override
  String get onlineEnterCodeError => 'Въведете код на мача.';

  @override
  String get onlineOpponentShort => 'Прот.';

  @override
  String get onlineMatchInProgress => 'Мачът продължава';

  @override
  String onlineResumePrompt(Object code) {
    return 'Играехте в мач $code.';
  }

  @override
  String get onlineRejoin => 'Присъедини се отново';

  @override
  String get onlineForgetMatch => 'Забрави този мач';

  @override
  String get onlineCreateTitle => 'Създай мач';

  @override
  String get onlineMatchLength => 'Дължина на мача';

  @override
  String get onlineNoCubeTitle => 'Игра без куб';

  @override
  String get onlineNoCubeSubtitle => 'Без удвояващ куб в този мач';

  @override
  String get onlineCreate => 'Създай';

  @override
  String get onlineWaitingOpponent => 'Изчакване на противник…';

  @override
  String get onlineShareCode => 'Сподели този код';

  @override
  String get onlineCopyCode => 'Копирай кода';

  @override
  String get onlineCodeCopied => 'Кодът е копиран';

  @override
  String get onlineJoinTitle => 'Присъедини се към мач';

  @override
  String get onlineRoomCode => 'Код на мача';

  @override
  String get onlineJoin => 'Присъедини се';

  @override
  String get lanTitle => 'Игра наблизо';

  @override
  String get lanTabHost => 'Домакин';

  @override
  String get lanTabJoin => 'Присъединяване';

  @override
  String get lanUnassistedNote =>
      'Игрите наблизо не са с помощ от тутора. След мача прегледайте ходовете и упражнете грешките.';

  @override
  String get lanGameStartFailed =>
      'Играта не можа да започне. Другото устройство може да опита да се присъедини отново.';

  @override
  String get lanHostPortInUse =>
      'Не може да се стартира хостването — портът вече се използва. Затворете другото копие на Backgammon Buddy.';

  @override
  String get lanHostStartFailed =>
      'Хостването не може да започне. Проверете Wi-Fi връзката.';

  @override
  String get lanHostTitle => 'Хостване на игра';

  @override
  String get lanStartHosting => 'Започни хостване';

  @override
  String get lanHostHelp =>
      'Двете устройства трябва да са в една Wi-Fi мрежа. Това устройство хвърля заровете и пази резултата.';

  @override
  String get lanWaitingPlayerTitle => 'Изчакване на играч';

  @override
  String get lanRoomCodeInfo =>
      'Кажете този код на другия играч. С него той влиза — приложението не го изпраща по мрежата.';

  @override
  String get lanWaitingPlayer => 'Изчакване на играч…';

  @override
  String get lanStopHosting => 'Спри хостването';

  @override
  String lanFindNearbyPort(int port) {
    return 'Помолете другото устройство да потърси игри наблизо. Слушане на порт $port.';
  }

  @override
  String get lanOnNetwork => 'В тази мрежа';

  @override
  String get lanCopyAddress => 'Копирай адреса';

  @override
  String get lanAddressCopied => 'Адресът е копиран';

  @override
  String get lanScanHostTitle => 'Сканирай домакина';

  @override
  String get lanScanHostHelp =>
      'Другото устройство показва QR код на екрана за хостване. Сканирането попълва адреса и кода на стаята.';

  @override
  String get lanScanQr => 'Сканирай QR код';

  @override
  String get lanScannerUnavailable =>
      'Камерата или разрешението ѝ не е налично. Вместо това въведете адреса и кода на стаята по-долу.';

  @override
  String get lanInvalidQr =>
      'Този QR код не е за игра на Backgammon Buddy. Сканирайте кода от екрана за хостване на другото устройство.';

  @override
  String get lanScannerFailed =>
      'Скенерът не можа да се отвори. Вместо това въведете адреса и кода.';

  @override
  String get lanNearbyGames => 'Игри наблизо';

  @override
  String get lanSearching => 'Търсене на игри наблизо…';

  @override
  String get lanNoGamesFound =>
      'Все още няма намерени игри. Уверете се, че другото устройство хоства и двете са в една Wi-Fi мрежа — или въведете адреса му.';

  @override
  String get lanStillSearching => 'Търсенето продължава…';

  @override
  String get lanEnterAddress => 'Въведи адрес';

  @override
  String get lanEnterAddressHelp =>
      'Автоматичното откриване не работи във всяка мрежа (а в iOS може да е блокирано). Екранът на домакина показва какъв адрес да въведете.';

  @override
  String get lanIpAddress => 'IP адрес';

  @override
  String get lanPort => 'Порт';

  @override
  String get lanInvalidPort => 'Въведете порт от 1 до 65535.';

  @override
  String get lanEnterAddressError =>
      'Въведете адреса, показан на другото устройство.';

  @override
  String get lanEnterRoomCodeError =>
      'Въведете 4-цифрения код от другото устройство.';

  @override
  String get lanJoinWrongCode =>
      'Грешен код на стаята. Проверете четирите цифри на другото устройство.';

  @override
  String get lanJoinVersionMismatch =>
      'Другото устройство използва друга версия на Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Другото устройство не отговори като Backgammon Buddy. Проверете адреса и порта.';

  @override
  String get lanJoinFailed =>
      'Неуспешно присъединяване. Проверете адреса и кода на стаята и опитайте отново.';

  @override
  String lanJoinTarget(Object name) {
    return 'Присъединяване към $name';
  }

  @override
  String get lanJoinTargetHelp =>
      'Въведете 4-цифрения код от другото устройство.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Присъединяване към $name';
  }

  @override
  String get lanConnect => 'Свържи се';

  @override
  String get lanBack => 'Назад';

  @override
  String get lanTryAgain => 'Опитай отново';

  @override
  String get lanStatusBusy => 'Стаята се използва — изчакване…';

  @override
  String get lanStatusReconnecting =>
      'Връзката е изгубена — повторно свързване…';

  @override
  String get lanStatusConnected => 'Свързано — играта започва…';

  @override
  String get lanStatusFailed => 'Присъединяването не бе успешно.';

  @override
  String get lanStatusConnecting => 'Свързване…';

  @override
  String get diagnosticsCopySuccess => 'Диагностиката е копирана в клипборда';

  @override
  String get diagnosticsReviewTitle => 'Преглед на диагностичния доклад';

  @override
  String get diagnosticsPrivacyNotice =>
      'Отварянето на черновата изпраща показаните подробности до GitHub, включително версията на приложението, платформата и данните за грешки. Публичен проблем не се публикува, докато не го изпратите там. Ако данните съдържат лична информация, отменете и използвайте „Копирай“, за да подготвите доклада сами.';

  @override
  String get diagnosticsCancel => 'Отказ';

  @override
  String get diagnosticsOpenGitHub => 'Отвори GitHub';

  @override
  String get diagnosticsTitle => 'Диагностика';

  @override
  String get diagnosticsReportTooltip => 'Съобщи за проблем в GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Копирай в клипборда';

  @override
  String get diagnosticsClearTooltip => 'Изчисти дневника';

  @override
  String get diagnosticsEmpty =>
      'Няма записани грешки.\n\nАко възникне проблем, той ще се запише тук. Върнете се и копирайте подробностите в доклад за грешка.';

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
  String get gameHudYou => 'Вие';

  @override
  String get gameHudAi => 'Компютър';

  @override
  String gameHudGameNumber(int number) {
    return 'Партия $number';
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
    return '$whiteLabel срещу $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'срещу $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'срещу $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Пипсове';

  @override
  String get gameHudCrawford => 'Крофорд';

  @override
  String get gameHudDouble => 'Удвояване';

  @override
  String get gameHudMoreActions => 'Още действия';

  @override
  String get gameHudSurrender => 'Отказване…';

  @override
  String get gameHudThinking => 'Обмисля';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Можете да удвоите само преди хвърлянето и когато сте на ход.';

  @override
  String get gameHudNoDoubleCrawford =>
      'В партията на Крофорд няма удвояване — тя решава мача.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Само притежателят на куба може да удвои, а сега това е другият играч.';

  @override
  String get gameHudDoubleUnavailable => 'Удвояването не е налично в момента.';

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
    return '$winner печели тази партия ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner печели тази партия ($points, гамон).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner печели тази партия ($points, бекгемон).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner печели тази партия ($points) — $loser отказа удвояването.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner печели тази партия ($points) — $loser се отказа.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Предайте устройството';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Ред е на $name';
  }

  @override
  String get gameDialogTapToContinue => 'Докоснете, за да продължите';

  @override
  String get gameDialogCubeOfferedTitle => 'Предложено удвояване';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler предлага удвояване до $value. Приемате ли?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Отказ';

  @override
  String get gameDialogTake => 'Приемане';

  @override
  String get gameDialogResignationTitle => 'Предложен отказ';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner предлага да се откаже при $value. Приемате ли?';
  }

  @override
  String get gameDialogResignSingle => 'единична партия';

  @override
  String get gameDialogResignGammon => 'гамон';

  @override
  String get gameDialogResignBackgammon => 'бекгемон';

  @override
  String get gameDialogDecline => 'Откажи';

  @override
  String get gameDialogAccept => 'Приеми';

  @override
  String gameResultGameNumber(int number) {
    return 'Игра $number';
  }

  @override
  String gameResultMatchScore(Object score) {
    return 'Резултат в мача: $score';
  }

  @override
  String get gameResultRolls => 'Хвърляния';

  @override
  String get gameResultDiceNote =>
      'Средните стойности на заровете често се отклоняват от 7. Тази малка извадка не може да установи пристрастие.';

  @override
  String get gameResultRatingNotAvailable =>
      'Няма оценка на ходовете. Прегледайте играта за пълен анализ.';

  @override
  String get gameResultRematch => 'Реванш';

  @override
  String get gameDialogGameOverTitle => 'Край на партията';

  @override
  String get gameDialogNextGame => 'Следваща партия';

  @override
  String get gameDialogMatchOverTitle => 'Край на мача';

  @override
  String get gameDialogNobody => 'Никой';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner печели мача.';
  }

  @override
  String get gameDialogSavedToHistory => 'Запазено в историята';

  @override
  String get gameDialogDone => 'Готово';

  @override
  String get gameTapNoLegalMove =>
      'Няма законен ход за тази пулка с оставащите зарове';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Няма законен ход за тази пулка с оставащите зарове — опитайте „Отмяна“';

  @override
  String get gameDragHint =>
      'Съвет: плъзнете пуловете или ги докоснете — променете това в „Настройки“';

  @override
  String get commonGotIt => 'Разбрах';

  @override
  String get gameHintStageBeforeHint =>
      'Първо изпълнете напълно законен ход, после поискайте подсказка.';

  @override
  String get surrenderTitle => 'Отказване';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player отстъпва текущата партия.';
  }

  @override
  String get surrenderConcedes => 'Отстъпвате текущата партия.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Достъпно в началото на хода на $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Достъпно в началото на вашия ход';

  @override
  String get commonCancel => 'Отказ';

  @override
  String get surrenderSingle => 'Единична (1)';

  @override
  String get surrenderGammon => 'Гамон (2)';

  @override
  String get surrenderBackgammon => 'Бекгемон (3)';

  @override
  String get surrenderChoosePlayer => 'Кой отстъпва тази партия?';

  @override
  String get commonDone => 'Готово';

  @override
  String get cubeDouble => 'Удвояване';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Сега е ред на другия играч.';

  @override
  String get cubeBlockedCrawford =>
      'Удвояващият куб не е наличен в партията на Крофорд.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Само притежателят на куба може да удвои, а той е другият играч.';

  @override
  String get cubeBlockedUnavailable => 'Удвояването не е възможно в момента.';

  @override
  String get gameStatusRolling => 'Хвърляне…';

  @override
  String get gameStatusThinking => 'Обмисля…';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Ред е на $player';
  }

  @override
  String get cubeAdviceOpponentTake =>
      'Удвояване — противникът трябва да приеме';

  @override
  String get cubeAdviceOpponentPass =>
      'Удвояване — противникът трябва да откаже';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Грешка: $error';
  }

  @override
  String get privacyTitle => 'Поверителност и данни';

  @override
  String get privacyAppTitle => 'Backgammon Buddy от Freevia';

  @override
  String get privacyIntro =>
      'Тази страница описва как текущото приложение обработва вашите данни.';

  @override
  String get privacyLocalTitle => 'Игри и уроци на вашето устройство';

  @override
  String get privacyLocalBody =>
      'На това устройство се съхраняват местни съвпадения, настройки, анализи и практически напредък. Обясненията за таблата и преподавателя се намират тук. Изтрийте запазено съвпадение от хронологията, за да премахнете и запазените упражнения и опити. Изтриване на отделни упражнения или нулиране на напредъка на практиката в обучението; изчистване на локалните доклади за грешки в → Диагностика на настройките. Настройките за архивиране на устройството ви може да се прилагат и за историята на игрите. Онлайн данните за вход се съхраняват в защитената памет на устройството.';

  @override
  String get privacyOnlineTitle => 'Онлайн игра и игра наблизо';

  @override
  String get privacyOnlineBody =>
      'Онлайн играта изпраща анонимен идентификатор на играч, настройки за съвпадение, ходове и записи за ръкостискане на зарове до Google Firebase, така че и двамата играчи да могат да играят един и същ мач. Изтриването на хронологията на това устройство не изтрива онлайн записи. Хостваните мачове изтичат 30 дни след създаването им. Планираното изчистване премахва регистрите им в облака. Записите за съвпадения се съхраняват в ЕС; Firebase Authentication обработва данни за влизане в САЩ. Онлайн връзките с Google използват криптиране по време на транспортиране. Обменът на възпроизвеждане наблизо съвпада с информацията от другото устройство чрез некриптирана локална връзка. Използвайте надежден Wi-Fi.';

  @override
  String get privacyDiagnosticsTitle =>
      'Незадължително използване и диагностика на сривове';

  @override
  String get privacyDiagnosticsBody =>
      'Споделянето е изключено, докато не го изберете в „Настройки “. Ако е активирано, Google Firebase получава събития за използване, информация за приложение/устройство, измервания на ефективността и доклади за сривове, за да помогне за подобряване на приложението. Изключете споделянето по всяко време, за да спрете новата незадължителна колекция. Това не изтрива вече изпратени данни. Локалната диагностика и онлайн съвпаденията работят отделно от този избор.';

  @override
  String get privacyCameraTitle => 'Камера за QR кодове наблизо';

  @override
  String get privacyCameraBody =>
      'Допълнителната камера сканира QR кодовете на близките игри. Изображенията се обработват на устройството ви и не се запазват или качват. Можете да откажете достъпа до камерата и да въведете адреса на домакина ръчно. Тази версия не използва микрофона и не предоставя възпроизвеждане на физическа дъска.';

  @override
  String get privacyFeedbackTitle => 'Отзиви, които сте избрали да изпратите';

  @override
  String get privacyFeedbackBody =>
      'Отзивите отварят чернова на проблем GitHub, която да прегледате. Отварянето на черновата изпраща версията и платформата на приложението до GitHub; обратната връзка от Diagnostics също може да изпрати подробности за грешката. Няма публикуван проблем, докато не го изпратите. Проблемите може да са публични, така че премахнете личната информация, преди да я изпратите.';

  @override
  String get privacyContactTitle => 'Лични данни за контакт';

  @override
  String get privacyReadPolicy => 'Прочети декларацията за поверителност';

  @override
  String get privacyPolicyOpenFailed =>
      'Политиката за поверителност не може да бъде отворена.';

  @override
  String get privacySupportTitle => 'Помощ и поддръжка';

  @override
  String get privacySupportOpenFailed =>
      'Неуспешно отваряне на поддръжката. Свържете се със support@freevia.org.';

  @override
  String get privacyDeleteConfirmTitle =>
      'Изтриване на онлайн самоличност и данни?';

  @override
  String get privacyDeleteConfirmBody =>
      'Това незабавно прекратява достъпа до облачните съвпадения на тази самоличност за играчите и изисква изтриване на самоличността и споделените онлайн дневници за съвпадения в рамките на 30 дни. Google може да отнеме до 180 дни след изтриването на профила, за да премахне данните за удостоверяване от своите активни и резервни системи. Местната история и практика остават на това устройство. По - рано изпратената незадължителна диагностика е отделна; свържете се със privacy@freevia.org за тях. Това не може да бъде отменено.';

  @override
  String get privacyRequestDeletion => 'Заявка за изтриване';

  @override
  String get privacyDeleteSectionTitle => 'Изтриване на онлайн данни';

  @override
  String get privacyDeleteInstructions =>
      'Използвайте запазената регистрация на това устройство, за да потвърдите собствеността. Само идентификатор на играч или код за покана не доказва собственост. Играчите само на местно ниво не се нуждаят от онлайн акаунт.';

  @override
  String get privacySendingRequest => 'Изпращане на заявка...';

  @override
  String get privacyDeleteAction => 'Изтриване на онлайн самоличност и данни';

  @override
  String get privacyDeleteRequested =>
      'Заявено е изтриване. Тази онлайн самоличност е отписана. Данните му в облака ще бъдат изтрити в рамките на 30 дни. Започването на онлайн игра отново създава нова идентичност. Премахването на данни за удостоверяване от Google може да отнеме до 180 дни. Свържете се със privacy@freevia.org за помощ.';

  @override
  String get privacyDeleteRequestedSignOutFailed =>
      'Заявено е изтриване. Данните му в облака ще бъдат изтрити в рамките на 30 дни. Устройството не можа да изчисти запазеното влизане, но онлайн самоличността е блокирана за по - нататъшен достъп до съвпадение. Премахването на данни за удостоверяване от Google може да отнеме до 180 дни. Свържете се със privacy@freevia.org за помощ.';

  @override
  String get privacyDeleteNoIdentity =>
      'На това устройство не се запазва използваема онлайн идентичност. Не е създаден нов акаунт. Ако преди това сте използвали онлайн игра, свържете се със privacy@freevia.org за помощ; хостваните мачове изтичат след 30 дни.';

  @override
  String get privacyDeleteRequestFailed =>
      'Заявката за изтриване не може да бъде потвърдена. Проверете връзката си и опитайте отново или се свържете със privacy@freevia.org.';

  @override
  String get privacyConsentTitle =>
      'Споделяне на използването и диагностика на сривове?';

  @override
  String get privacyConsentBody =>
      'Това изпраща събития за използване, информация за приложение/устройство, доклади за сривове и измервания на ефективността до Google Firebase. Споделянето не е задължително. Игрите и уроците работят без него и можете да го изключите отново в Настройки.';

  @override
  String get privacyKeepOff => 'Стойте на разстояние';

  @override
  String get privacyShareDiagnostics => 'Споделяне на диагностика';

  @override
  String get privacySaveFailed =>
      'Изборът за поверителност не може да бъде запазен. Моля, опитайте отново.';

  @override
  String get privacySettingsSubtitle =>
      'Какво остава на устройството ви и какво се споделя';

  @override
  String get privacyDiagnosticsSettingTitle =>
      'Споделяне на използването и диагностика на сривове';

  @override
  String get privacyDiagnosticsSettingSubtitle =>
      'Незадължително · изключено по подразбиране';

  @override
  String get lanScanToJoin => 'Сканирайте, за да се присъедините';

  @override
  String get lanScanHostCode => 'Сканирайте кода на домакина';

  @override
  String get lanEnterAddressInstead => 'Вместо това въведете адреса';

  @override
  String get lanQrAccessibilityLabel =>
      'QR код за присъединяване към тази игра';

  @override
  String get lanJoinInstruction =>
      'На другото устройство отвори „Играй наблизо“, избери „Присъедини се“, след което сканирай този QR код.';

  @override
  String get lanTorch => 'Факла';

  @override
  String get lanCameraPermissionDenied =>
      'Backgammon Buddy не може да използва камерата. Разрешаване на достъп до камерата в настройките на устройството или ръчно въвеждане на адреса, показан на другото устройство.';

  @override
  String get lanCameraUnsupported =>
      'Това устройство не може да сканира QR кодове. Въведете ръчно адреса, показан на другото устройство.';

  @override
  String get lanCameraStartFailed =>
      'Камерата не може да бъде стартирана. Въведете ръчно адреса, показан на другото устройство.';

  @override
  String get lanPointCameraAtQr =>
      'Насочете камерата към QR кода на другото устройство.';

  @override
  String get physicalBuddyUnavailableTitle => 'Backgammon Buddy';

  @override
  String get physicalBuddyUnavailableBody =>
      'В тази версия не се предлага възпроизвеждане на физическа дъска. Игрите на екрана, уроците и практиката са достъпни от Home.';

  @override
  String get homePlayWithBuddy => 'Играй с Buddy';

  @override
  String get homeBuddyShort => 'Buddy';

  @override
  String boardSemanticsLabel(Object status) {
    return 'Табло за табла. $status';
  }

  @override
  String get boardWhiteToRoll => 'Бяла на руло.';

  @override
  String get boardBlackToRoll => 'Черно за търкаляне.';

  @override
  String boardWhiteToMove(Object die1, Object die2) {
    return 'Бяло за преместване, завъртете $die1 и $die2.';
  }

  @override
  String boardBlackToMove(Object die1, Object die2) {
    return 'Черно за преместване, завъртете $die1 и $die2.';
  }

  @override
  String get boardDoubleOffered => 'Предложено е удвояване.';

  @override
  String get boardResignationOffered => 'Предложено е предаване.';

  @override
  String get boardGameOver => 'Играта приключи.';

  @override
  String feedbackBugTitle(Object version, Object platform) {
    return '[Грешка]: Backgammon Buddy $version ($platform)';
  }

  @override
  String get feedbackIdeaTitle => '[Идея]: Backgammon Buddy';

  @override
  String get feedbackBugSummary =>
      'Заменете това с кратко описание на случилото се.';

  @override
  String get feedbackBugReproduction =>
      'Заменете това със стъпките, които са довели до проблема.';

  @override
  String get feedbackBugExpected =>
      'Заменете това с това, което очаквате да се случи.';

  @override
  String get feedbackIdeaNeed =>
      'Заменете това с това, което искате да направите или научите.';

  @override
  String get feedbackIdeaSuggestion =>
      'Заменете това с промяната, която ще намерите за полезна.';

  @override
  String get feedbackExcerptTruncated =>
      '(съкратено — за пълния журнал използвайте „Копирай в клипборда“ на екрана Диагностика)';

  @override
  String get boardWhiteToMoveNoRoll => 'Бяло за движение.';

  @override
  String get boardBlackToMoveNoRoll => 'Черно за движение.';

  @override
  String get feedbackFieldVersion => 'Версия на приложението';

  @override
  String get feedbackFieldPlatform => 'Платформа';

  @override
  String get feedbackFieldSummary => 'Какво се случи';

  @override
  String get feedbackFieldReproduction => 'Стъпки за възпроизвеждане';

  @override
  String get feedbackFieldExpected => 'Очакван резултат';

  @override
  String get feedbackFieldNeed => 'Какво искахте да направите';

  @override
  String get feedbackFieldIdea => 'Предложена промяна';

  @override
  String get buddySetupTitle => 'Играй с Buddy';

  @override
  String get buddySetupSideLabel => 'Играе Buddy';

  @override
  String get buddySetupSeatLabel => 'Твоята страна';

  @override
  String get buddySetupSeatNear => 'До телефона';

  @override
  String get buddySetupSeatFar => 'Отсреща';

  @override
  String get buddySetupSeatHelp =>
      'От коя страна на дъската седиш. Това определя как Buddy номерира полетата и различава твоя начален зар от своя.';

  @override
  String get buddySetupVoiceLabel => 'Как говори Buddy';

  @override
  String get buddySetupVoiceTerse => 'Кратко';

  @override
  String get buddySetupVoiceFriendly => 'Приветливо';

  @override
  String get buddySetupVoiceTerseHelp =>
      '„13/8, 24/22“ — нотацията, с която говорят двама играчи пред дъската.';

  @override
  String get buddySetupVoiceFriendlyHelp =>
      '„Премести един пул от 13 на 8 и още един от 24 на 22.“';

  @override
  String get buddySetupTutorHelp =>
      'Коментарите на наставника и обясненията на ходовете следват запазените ти настройки за наставник. Buddy от време на време ще коментира ходовете ти; въвеждането на зарове и ръчните ходове работят по същия начин.';

  @override
  String get buddySetupCalibrate => 'Калибрирай дъската';

  @override
  String get buddyFixAim => 'Настрой камерата';

  @override
  String get buddyWaitingForOpening =>
      'Buddy чака хвърлянето, което започва мача.';

  @override
  String get buddyPromptLostBoard =>
      'Buddy загуби дъската от поглед. Настрой камерата и мачът ще продължи от мястото, на което спря.';

  @override
  String get buddyPromptWaitingPicture =>
      'Изчакване на изображение, което Buddy може да разчете. Нищо не е загубено.';

  @override
  String get buddyPromptTypeDice =>
      'Buddy не вижда заровете. Въведи хвърлянето ръчно.';

  @override
  String get buddyPromptPlay =>
      'Направи хода си на дъската. Ако Buddy не го вижда, въведи го тук.';

  @override
  String get buddyPromptWhichPlay => 'Кой ход направи?';

  @override
  String get buddyPromptCube => 'Buddy удвоява. Приемаш или отказваш?';

  @override
  String get buddyPromptMakeMove =>
      'Изпълни хода на Buddy на дъската и той ще продължи.';

  @override
  String get buddyPromptThinking => 'Buddy мисли.';

  @override
  String get buddyPromptWaitingCalibration => 'Изчакване на калибриране.';

  @override
  String get buddyPromptMirrorNoDetail =>
      'Buddy още не вижда хода си. Дъската отдолу показва позицията, която е запазил.';

  @override
  String get buddyPromptNotLegal => 'Това не е позволен ход.';

  @override
  String buddyPromptNotLegalReason(String reason) {
    return 'Това не е позволен ход. $reason';
  }

  @override
  String get buddyThrowOpening => 'Хвърли началните зарове — по един за всеки.';

  @override
  String get buddyThrowUser => 'Хвърли своите зарове.';

  @override
  String get buddyThrowBuddy => 'Хвърли заровете на Buddy.';

  @override
  String get buddyMatchOver => 'Мачът приключи.';

  @override
  String get buddyYouWin => 'Ти спечели мача.';

  @override
  String get buddyBuddyWins => 'Buddy спечели мача.';

  @override
  String get buddyDoubleNoGame =>
      'Все още няма игра, която да се удвои — първо е началното хвърляне.';

  @override
  String get buddyDoubleBeforeRoll =>
      'Можеш да удвоиш само преди хвърляне, когато си на ход.';

  @override
  String get buddyDoubleCrawford =>
      'В играта на Крофорд няма удвояване — този единствен гейм решава мача.';

  @override
  String get buddyDoubleNotOwner =>
      'Само притежателят на куба за удвояване може да удвои, а в момента той е у противника.';

  @override
  String get buddyDoubleUnavailable => 'В момента удвояването не е достъпно.';

  @override
  String get buddyLookingAtBoard => 'Buddy оглежда дъската.';

  @override
  String get buddyCameraPlayFallback =>
      'Можеш да продължиш да играеш: въвеждай всяко хвърляне в панела със заровете и отбелязвай ходовете си на дъската отдолу.';

  @override
  String get buddySkipCheck => 'Пропусни проверката';

  @override
  String get buddyFixedIt => 'Поправих го';

  @override
  String get buddyDrop => 'Откажи';

  @override
  String get buddyTake => 'Приеми';

  @override
  String get buddyDone => 'Готово';

  @override
  String get buddyTranscriptLabel => 'Какво каза Buddy';

  @override
  String get buddyUndo => 'Отмени';

  @override
  String get buddyConfirm => 'Потвърди';

  @override
  String get buddyDice => 'Зарове';

  @override
  String get buddyDouble => 'Удвои';

  @override
  String get buddyDicePadTitle => 'Какво хвърли?';

  @override
  String get buddyEnterRoll => 'Въведи хвърлянето';

  @override
  String get buddyContextBeforeGame => 'Играй с Buddy';

  @override
  String buddyContextMatchScore(
    String you,
    String buddy,
    String length,
    String number,
  ) {
    return 'Ти $you–$buddy Buddy · до $length · Игра $number';
  }

  @override
  String get buddyCameraUnavailable =>
      'Камерата не можа да се стартира. Провери разрешенията и опитай отново.';

  @override
  String get buddyCameraPermission =>
      'Backgammon Buddy няма разрешение да използва камерата. Разреши достъп до камерата в настройките на устройството и опитай отново.';

  @override
  String get buddyCalibrationTitle => 'Покажи дъската на Buddy';

  @override
  String get buddyCalibrationCornersFold =>
      'Плъзни четирите външни маркера до ъглите на плата — не до дървения ръб — а четирите малки маркера до шевовете, където пантата се среща с далечния и близкия ръб.';

  @override
  String get buddyCalibrationCornersFlat =>
      'Плъзни всеки маркер до ъгъл на плата — игралната повърхност, а не дървения ръб около нея.';

  @override
  String get buddyCalibrationCheckLines =>
      'След това провери дванайсетте линии във всяка половина: всяка трябва да минава по едно поле на дъската. Ако някоя линия пропуска полето си, премести съответния маркер.';

  @override
  String get buddyCalibrationSeatQuestion =>
      'Коя половина е твоето домашно поле?';

  @override
  String get buddyCalibrationSeatHelp =>
      'Половината, която е най-близо до долния край на изображението. Това определя номерата на полетата, а линиите отгоре ще се нагодят към тях.';

  @override
  String get buddyCalibrationCaptureWait =>
      'Дръж телефона неподвижно. Buddy изчаква изображението да се стабилизира, преди да научи дъската.';

  @override
  String get buddyCalibrationConfirmQuestion => 'Това твоята дъска ли е?';

  @override
  String get buddyCalibrationConfirmFallback =>
      'Buddy разглежда дъската, която току-що научи.';

  @override
  String get buddyCalibrationConfirmHelp =>
      'Нарисуваните върху изображението пулове показват къде Buddy смята, че се намират. Ако някой е на грешно място, започни отначало — сега това ще ти отнеме секунди, а по-късно може да ти струва цяла игра.';

  @override
  String get buddyCalibrationNext => 'Напред';

  @override
  String get buddyCalibrationBack => 'Назад';

  @override
  String get buddyCalibrationCapture => 'Заснеми';

  @override
  String get buddyCalibrationStartOver => 'Започни отначало';

  @override
  String get buddyCalibrationLooksRight => 'Изглежда правилно';

  @override
  String get buddyCalibrationCornersInvalid =>
      'Тези четири маркера не очертават дъска — единият е пресекъл друг. Премести ги обратно в ъглите на плата.';

  @override
  String get buddyCalibrationPrepTitle => 'Първо три неща';

  @override
  String get buddyCalibrationRemoveDiceTitle => 'Махни заровете от дъската.';

  @override
  String get buddyCalibrationRemoveDiceBody =>
      'Сега Buddy научава празната дъска. Ако зар остане върху плата, Buddy ще го научи като част от дъската и няма да може да вижда заровете до края на тази сесия.';

  @override
  String get buddyCalibrationSetupCheckersTitle =>
      'Подреди пуловете за началото на играта.';

  @override
  String get buddyCalibrationSetupCheckersBody =>
      'Тридесет пула на познати места помагат на Buddy да научи двата цвята на дъската, без да му казваш кои са те.';

  @override
  String get buddyCalibrationFitBoardTitle =>
      'Побери цялата игрална повърхност в кадъра.';

  @override
  String get buddyCalibrationFitBoardBody =>
      'След това остави телефона на място. Ако се премести, Buddy ще ти каже и ще можеш да нагласиш ъглите отново.';

  @override
  String get buddyCalibrationBoardKind => 'Какъв вид е дъската?';

  @override
  String get buddyCalibrationFlatBoard => 'Плоска дъска';

  @override
  String get buddyCalibrationFoldingBoard => 'Сгъваема дъска';

  @override
  String get buddyCalibrationBoardKindHelp =>
      'При сгъваема дъска са нужни още четири маркера по шевовете на пантата.';

  @override
  String get buddyCalibrationNoCameraBody =>
      'Режимът Buddy следи истинска дъска, затова не може да стартира без камера. Всичко останало в приложението ще работи както обикновено.';

  @override
  String buddyHandleHingeSeam(int number) {
    return 'Шев на панта $number от 4';
  }

  @override
  String buddyHandleCorner(int number) {
    return 'Ъгъл на дъската $number от 4';
  }

  @override
  String get buddyNudgeLeft => 'Премести леко наляво';

  @override
  String get buddyNudgeRight => 'Премести леко надясно';

  @override
  String get buddyNudgeUp => 'Премести леко нагоре';

  @override
  String get buddyNudgeDown => 'Премести леко надолу';

  @override
  String get buddyCalibrationProblemCorners =>
      'Тези четири ъгъла не очертават дъска. Премести всеки маркер до ъгъл на игралната повърхност и опитай отново.';

  @override
  String get buddyCalibrationProblemFoldCorners =>
      'Тези осем точки не очертават сгъваема дъска. Постави четири в ъглите на игралната повърхност и четири по шевовете на пантата, после опитай отново.';

  @override
  String get buddyCalibrationProblemUnreadable =>
      'Не мога да различа самата дъска — изцяло е покрита или е в сянка/отблясък. Освободи дъската, добави светлина и опитай отново.';

  @override
  String buddyCalibrationProblemRegionUnreadable(String region) {
    return 'Не мога да различа $region — може да има нещо там или този ъгъл на дъската да е твърде тъмен. Освободи го или добави светлина и опитай отново.';
  }

  @override
  String get buddyCalibrationProblemColours =>
      'Оттук двата цвята пулове изглеждат твърде сходни. Обикновено помага повече светлина или ъгъл с по-малко отблясъци.';

  @override
  String buddyCalibrationProblemWrongChecker(int number) {
    return 'Пуловете не са в начална позиция — на поле $number има пул с грешен цвят. Подреди дъската за начало на играта и калибрирай отново.';
  }

  @override
  String get buddyCalibrationProblemOverexposed =>
      'Светлината върху дъската е толкова силна, че цветовете се сливат. Намали осветлението или премести телефона, така че лампата да не свети право към камерата.';

  @override
  String get buddyCalibrationProblemReadBack =>
      'Виждам дъската, но тя не е подредена като за започваща игра. Подреди пуловете за начало на играта и калибрирай отново.';

  @override
  String get buddyCalibrationProblemStacks =>
      'Виждам дъската, но не мога да определя колко пулове има един зад друг — така ще ги преброя неправилно. Обикновено помага малко повече светлина върху близките полета или малко по-висок ъгъл на камерата.';

  @override
  String get buddyCalibrationProblemNotVisible =>
      'Не виждам цялата дъска. Отдалечи телефона или премести ъглите върху игралната повърхност.';

  @override
  String buddyConfirmBoardOutOfFrame(String region) {
    return 'Вече не виждам цялата дъска — $region е извън кадъра. Насочи камерата отново или провери ъглите.';
  }

  @override
  String get buddyConfirmStartingPosition =>
      'Това прилича на началната позиция.';

  @override
  String get buddyConfirmNoCheckers =>
      'Не виждам пул на нито едно място от началната позиция. Подреди пуловете за начало на играта и опитай отново.';

  @override
  String buddyConfirmWrongPosition(String details, String more) {
    return 'Дъската не е подредена в начална позиция: $details$more.';
  }

  @override
  String buddyConfirmRegionEmpty(String region, String side) {
    return 'На $region няма нищо, но в началото на играта там трябва да има $side';
  }

  @override
  String buddyConfirmRegionUnexpected(String region, String side) {
    return 'На $region има $side, но в началото на играта мястото трябва да е празно';
  }

  @override
  String buddyConfirmRegionWrongSide(
    String region,
    String observed,
    String expected,
  ) {
    return 'На $region има $observed, а в началото на играта там трябва да има $expected';
  }

  @override
  String get buddyReadabilityMotion =>
      'Постой неподвижно за миг — губя дъската от поглед, докато телефонът се движи.';

  @override
  String get buddyReadabilityWrongFrame =>
      'Полученото изображение не е от дъската, за която бях настроен, затова не мога да съпоставя нищо. Настрой дъската отново оттук.';

  @override
  String get buddyReadabilityBlur =>
      'Изображението е твърде размазано, за да разчета дъската. Изчакай камерата да фокусира.';

  @override
  String get buddyReadabilityCalibrationStale =>
      'Дъската вече не е там, където беше, когато я научих. Нагласи ъглите отново и веднага ще продължа играта.';

  @override
  String get buddyReadabilityOccluded =>
      'Нещо закрива част от дъската. Ще продължа веднага щом я освободиш.';

  @override
  String get buddyReadabilityClear => 'Виждам дъската.';

  @override
  String get buddyReadabilityColorChanged =>
      'Осветлението е променило цвета си и дъската вече не изглежда като тази, която научих. Нагласи ъглите отново при тази светлина и веднага ще продължа играта.';

  @override
  String get buddyReadabilityTooDark =>
      'Твърде тъмно е, за да разчета дъската. Добави малко светлина и ще продължа оттам, докъдето стигнахме.';

  @override
  String get buddyReadabilityTooBright =>
      'Светлината върху дъската е толкова силна, че цветовете се сливат. Намали я или премести телефона, така че лампата да не свети право към камерата.';

  @override
  String buddyPromptBeliefMirror(String reason) {
    return 'Buddy още не вижда хода си — $reason.';
  }

  @override
  String buddyCameraUnavailablePlay(String cameraMessage) {
    return '$cameraMessage\n\nМожеш да продължиш да играеш: въвеждай всяко хвърляне в панела със заровете и отбелязвай ходовете си на дъската отдолу.';
  }

  @override
  String get buddyCameraGenericError =>
      'Камерата не можа да се стартира. Провери разрешенията и опитай отново.';

  @override
  String buddyRegionPoint(int number) {
    return 'поле $number';
  }

  @override
  String get buddyRegionBar => 'бара';

  @override
  String get buddyRegionWhiteTray => 'таблата за изваждане на белите пулове';

  @override
  String get buddyRegionBlackTray => 'таблата за изваждане на черните пулове';

  @override
  String get buddyRegionDiceZone => 'средата на дъската';

  @override
  String get buddyCalibrationProblemVisible =>
      'Не виждам цялата дъска. Отдалечи телефона или премести ъглите върху игралната повърхност.';

  @override
  String buddyConfirmMore(int number) {
    return ' (и още $number)';
  }

  @override
  String get buddyDiceOpeningCaption =>
      'Всеки хвърля по един зар. Показаното число определя кой започва.';

  @override
  String get buddyDiceOpeningFirst => 'Зарът на белите';

  @override
  String get buddyDiceOpeningSecond => 'Зарът на черните';

  @override
  String get buddyDiceRegularCaption =>
      'Двете числа от заровете на масата, в произволен ред.';

  @override
  String get buddyDiceRegularFirst => 'Единият зар';

  @override
  String get buddyDiceRegularSecond => 'Другият';

  @override
  String get evaluationEngine => 'Двигател за оценяване';

  @override
  String get parallelEngineAnalysis => 'Анализ с двата двигателя';

  @override
  String get parallelEngineExplanation =>
      'Сравнявайте отделните съвети на wildbg и GNUbg в наставника.';

  @override
  String get engineComparison => 'Сравнение на двигатели';

  @override
  String get engineWinChance => 'Шанс за победа';

  @override
  String get buddyBar => 'барът';

  @override
  String get buddyOff => 'изключено';

  @override
  String get buddyHitSuffix => ', удряне';

  @override
  String buddyFriendlyMoveOne(String from, String to, String hit) {
    return 'Преместете един пул от $from на $to $hit';
  }

  @override
  String buddyFriendlyMoveMany(
    String count,
    String from,
    String to,
    String hit,
  ) {
    return 'Преместете $count пула от $from на $to $hit';
  }

  @override
  String buddyFriendlyBearOffOne(String from, String hit) {
    return 'Извадете един пул от $from $hit';
  }

  @override
  String buddyFriendlyBearOffMany(String count, String from, String hit) {
    return 'Извадете $count пулове от $from $hit';
  }

  @override
  String buddySpeechIRolled(String dice) {
    return 'Хвърлих $dice.';
  }

  @override
  String buddySpeechYouRolled(String dice) {
    return 'Хвърлихте $dice.';
  }

  @override
  String buddySpeechOpeningTie(String die) {
    return 'И двамата хвърлиха $die. Разточете отново.';
  }

  @override
  String get buddySpeechNoPlayYouTurn => 'Няма игра, твой ред е.';

  @override
  String get buddySpeechNoPlayBuddyTurn => 'Няма игра, значи е ред на Бъди.';

  @override
  String get buddySpeechNoPlayPass => 'Няма игра — вашият ред минава.';

  @override
  String get buddySpeechNoPlayBack => 'Няма игра, така че се връща към вас.';

  @override
  String get buddySpeechIllegalPlay => 'Това не е законна игра.';

  @override
  String buddySpeechPlacementMismatch(String reason) {
    return 'Това не е съвсем правилно. $reason';
  }

  @override
  String buddyBoardMismatch(String details, String more) {
    return 'Таблото се различава от играта: $details$more.';
  }

  @override
  String buddyConfirmRegionWrongCount(
    String region,
    String expected,
    String side,
    String observed,
  ) {
    return '$region: играта очаква $expected $side пула; камерата вижда $observed.';
  }

  @override
  String get buddySpeechSkippedCheck =>
      'Вярвам на думата ви. Не можах да видя тази единствена земя, така че ако сме се разделили, ще се покаже като пиеса, която не мога да прочета.';

  @override
  String get buddySpeechBuddyDouble => 'Аз удвоявам — вземам или пускам?';

  @override
  String get buddySpeechYouDouble => 'Удвояваш се.';

  @override
  String get buddySpeechBuddyTakes => 'вземам.';

  @override
  String get buddySpeechYouTake => 'Вие вземете.';

  @override
  String get buddySpeechBuddyDrops => 'изпускам.';

  @override
  String get buddySpeechYouDrop => 'Изпускаш.';

  @override
  String buddySpeechGameWinnerBuddy(String points) {
    return 'Печеля тази игра: $points.';
  }

  @override
  String buddySpeechGameWinnerYou(String points) {
    return 'Вие печелите тази игра: $points.';
  }

  @override
  String get buddySpeechMatchWinnerBuddy => 'Това е съвпадението за мен.';

  @override
  String get buddySpeechMatchWinnerYou => 'Вие печелите мача.';

  @override
  String get buddyTutorLastPlayBest =>
      'Последната ви игра съответства на най-доброто от двигателя.';

  @override
  String get buddyTutorLastPlayClose =>
      'Последната ви игра беше близо до най-доброто от двигателя.';

  @override
  String buddyTutorPreferredMove(String move, String reason) {
    return 'За последното ви пускане двигателят предпочете $move. $reason';
  }

  @override
  String buddyTutorBarDifference(String best, String played) {
    return 'Оставя $best противникови пулове на лентата вместо $played.';
  }

  @override
  String buddyTutorBlotDifference(String best, String played) {
    return 'Оставя $best петна вместо $played.';
  }

  @override
  String buddyTutorHomeDifference(String best, String played) {
    return 'Той съдържа $best точки за домашна дъска вместо $played.';
  }

  @override
  String buddyTutorOffDifference(String best, String played) {
    return 'Има $best свалени пула вместо $played.';
  }

  @override
  String get buddyTutorGeneralDifference =>
      'Класирането претегля очакваните печалби и награди; нито една функция на платката не го обяснява.';

  @override
  String buddySpeechPlay(String move) {
    return 'Игра на $move';
  }

  @override
  String buddySpeechBuddyRolledMove(String dice, String move) {
    return 'Хвърлих $dice — $move';
  }

  @override
  String get privacyDeletionReceiptCheck =>
      'Проверка на потвърждението за изтриване';

  @override
  String get privacyDeletionReceiptHelp =>
      'След заявката за изтриване се върнете тук, за да проверите дали е завършило. Личният ви код за проверка остава на това устройство и работи след излизане от профила. Проверките не създават профил. Потвържденията за завършено изтриване са достъпни онлайн 90 дни; запазете тази инсталация до потвърждението.';

  @override
  String get privacyDeletionReceiptNone =>
      'На това устройство няма запазен код за проверка на изтриването. За по-стари заявки или изгубено устройство се свържете с поддръжката.';

  @override
  String get privacyDeletionReceiptPending =>
      'Изтриването все още не е потвърдено. Обработката може да отнеме до 30 дни. Проверете отново по-късно. Ако са минали повече от 30 дни, се свържете с поддръжката. Недостъпен или изтекъл код не е доказателство за изтриване.';

  @override
  String get privacyDeletionReceiptComplete =>
      'Изтриването е завършено: всички заявки, запазени на това устройство, са потвърдени като изпълнени. Това не изтрива онлайн идентичност, създадена впоследствие. Локалната история и данните за обучение остават. Google може да пази резервни копия и записи за сигурност, както е описано в политиката за поверителност.';

  @override
  String get privacyDeletionReceiptFailed =>
      'Потвърждението за изтриване не можа да бъде проверено. Опитайте отново, когато имате връзка, или се свържете с поддръжката. Това не означава, че изтриването е завършило.';
}
