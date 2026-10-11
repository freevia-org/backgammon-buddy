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

  @override
  String get settingsReset => 'Скинути';

  @override
  String get settingsAppLanguage => 'Мова застосунку';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeSystem => 'Системна';

  @override
  String get settingsThemeLight => 'Світла';

  @override
  String get settingsThemeDark => 'Темна';

  @override
  String get settingsAnimationSpeed => 'Швидкість анімації';

  @override
  String get settingsAnimationNone => 'Без анімації';

  @override
  String get settingsAnimationNormal => 'Звичайна';

  @override
  String get settingsAnimationFast => 'Швидка';

  @override
  String get settingsDiceRollAnimation => 'Анімація кидка кубиків';

  @override
  String get settingsDiceRollAnimationHelp =>
      'Кубики перекочуються перед кожним кидком';

  @override
  String get settingsDefaultMatchLength => 'Довжина матчу за замовчуванням';

  @override
  String get settingsDefaultDifficulty => 'Складність за замовчуванням';

  @override
  String get settingsDifficultyEasy => 'Легка';

  @override
  String get settingsDifficultyMedium => 'Середня';

  @override
  String get settingsDifficultyHard => 'Важка';

  @override
  String get settingsDifficultyExpert => 'Експертна';

  @override
  String get settingsTutorModeDefault => 'Режим наставника за замовчуванням';

  @override
  String get settingsTutorAuto => 'Авто';

  @override
  String get settingsTutorOn => 'Увімкнено';

  @override
  String get settingsTutorOff => 'Вимкнено';

  @override
  String get settingsTutorModeHelp =>
      'Режим «Авто» вмикає наставника за будь-якої складності комп’ютера. «Увімкнено» та «Вимкнено» задають початковий вибір для локальних матчів. У грі поруч та онлайн-партіях підказок немає; збережені партії можна переглянути пізніше. Наведені нижче навчальні налаштування зберігаються на цьому пристрої.';

  @override
  String get settingsTutorPreferences => 'Налаштування наставника';

  @override
  String get settingsTutorPreferencesSubtitle =>
      'Збережені параметри для майбутніх матчів';

  @override
  String get settingsTutorSaveError =>
      'Не вдалося зберегти налаштування наставника.';

  @override
  String get settingsGameplay => 'Гра';

  @override
  String get settingsMoveHighlights => 'Підсвічування ходів';

  @override
  String get settingsMoveHighlightsHelp =>
      'Обводити доступні шашки та підсвічувати пункти призначення';

  @override
  String get settingsDragToMove => 'Перетягування шашок';

  @override
  String get settingsDragToMoveHelp =>
      'Перетягніть шашку до пункту призначення (дотики також працюють)';

  @override
  String get settingsCombinedMoves => 'Ходи обома кубиками';

  @override
  String get settingsCombinedMovesHelp =>
      'Один дотик переміщує шашку з урахуванням обох кубиків';

  @override
  String get settingsRotateBoard => 'Обертати дошку між ходами';

  @override
  String get settingsRotateBoardHelp =>
      'Для гри за одним пристроєм: розвертати дошку до гравця, чия черга ходити';

  @override
  String get settingsPassDevice => 'Екран передавання пристрою';

  @override
  String get settingsPassDeviceHelp =>
      'Приховувати дошку, коли передаєте пристрій іншому гравцеві';

  @override
  String get settingsShowScore => 'Показувати рахунок';

  @override
  String get settingsShowScoreHelp =>
      'Показувати поточний рахунок матчу в заголовку';

  @override
  String get settingsBuddyMode => 'Режим Buddy';

  @override
  String get settingsBuddyTerse => 'Коротко';

  @override
  String get settingsBuddyFriendly => 'Докладно';

  @override
  String get settingsBuddyTerseHelp =>
      'Як Buddy промовляє хід уголос: «13/8, 24/22» — короткий запис, яким користуються гравці за дошкою.';

  @override
  String get settingsBuddyFriendlyHelp =>
      'Як Buddy промовляє хід уголос: «Перемістити одну шашку з 13 на 8, а іншу — з 24 на 22».';

  @override
  String get settingsListenForDice => 'Розпізнавати кидок кубиків';

  @override
  String get settingsListenForDiceHelp =>
      'Почувши кидок, Buddy швидше перевіряє положення на дошці. Вимкнення не змінює інші функції.';

  @override
  String get settingsDiagnostics => 'Діагностика';

  @override
  String get settingsErrorLog => 'Журнал помилок';

  @override
  String get settingsErrorLogHelp =>
      'Останні помилки, які можна скопіювати у звіт про помилку';

  @override
  String get settingsReportBug => 'Повідомити про помилку';

  @override
  String get settingsReportBugHelp =>
      'Відкрити форму звіту про помилку на GitHub';

  @override
  String get settingsSuggestIdea => 'Запропонувати ідею';

  @override
  String get settingsSuggestIdeaHelp =>
      'Допоможіть нам покращити наставника та гру';

  @override
  String get settingsAbout => 'Про застосунок';

  @override
  String get settingsOpenSourceLicenses =>
      'Ліцензії відкритого програмного забезпечення';

  @override
  String settingsAppVersion(Object version) {
    return 'Backgammon Buddy $version';
  }

  @override
  String get tutorPhraseGameFinished => 'Партію завершено.';

  @override
  String get tutorPhraseReviewFinishedGame =>
      'Перегляньте ходи, щоб знайти рішення, яке варто потренувати.';

  @override
  String get tutorPhraseCubeOffered => 'Запропоновано подвоїти ставку.';

  @override
  String get tutorPhraseCubeDecisionPrompt =>
      'Вирішіть, прийняти подвоєння чи відмовитися, перш ніж планувати хід шашками.';

  @override
  String get tutorPhraseCubeScoreContext =>
      'Рахунок матчу впливає на цінність додаткової ставки.';

  @override
  String get tutorPhraseResignationOffered => 'Запропоновано здатися.';

  @override
  String get tutorPhraseResignationDecisionPrompt =>
      'Порівняйте запропоновані очки з позицією, перш ніж прийняти здачу чи продовжити.';

  @override
  String get tutorPhraseNoLegalPlay => 'За цього кидка немає дозволеного ходу.';

  @override
  String get tutorPhraseForcedPassPrompt =>
      'Вимушений пропуск — це не помилка. Дочекайтеся наступного кидка.';

  @override
  String get tutorPhraseOnlyOneResult =>
      'Є лише один дозволений варіант позиції.';

  @override
  String get tutorPhraseForcedTurnPrompt =>
      'Зробіть вимушений хід. За цього кидка немає вибору, який можна оцінити.';

  @override
  String get tutorPhrasePipCountsLevel =>
      'Кількість піпсів у гравців однакова.';

  @override
  String tutorPhrasePipCountsAhead(int count) {
    return 'Перевага за піпсами: $count.';
  }

  @override
  String tutorPhrasePipCountsBehind(int count) {
    return 'Відставання за піпсами: $count.';
  }

  @override
  String tutorPhrasePlayerHasCheckersOnBar(int count) {
    return 'Спершу введіть шашки з бара. Зараз там: $count.';
  }

  @override
  String get tutorPhraseEnterBeforeMoving =>
      'Спершу введіть шашку з бара, а потім знайдіть для неї безпечний пункт.';

  @override
  String tutorPhraseOpponentHomePoints(int count) {
    return 'У домі суперника закрито пунктів: $count.';
  }

  @override
  String get tutorPhraseBearOffRace => 'Перегони зі зняття шашок.';

  @override
  String get tutorPhrasePureRace => 'Чисті перегони.';

  @override
  String get tutorPhraseBearOffSpread =>
      'Знімайте шашки, зберігаючи зручний розподіл для наступного кидка.';

  @override
  String get tutorPhraseBringRearCheckersHome =>
      'Переведіть дальні шашки додому й не скупчуйте надто багато на одному пункті.';

  @override
  String get tutorPhraseArmiesHavePassed =>
      'Гравці розминулися; бити шашки більше неможливо.';

  @override
  String tutorPhraseContactStillMatters(Object part) {
    return '$part Контакт усе ще має значення.';
  }

  @override
  String tutorPhraseOpponentHasCheckersOnBar(int count) {
    return 'На барі в суперника шашок: $count.';
  }

  @override
  String get tutorPhraseKeepBoardClosed =>
      'Зберігайте закриті пункти, переводячи решту шашок додому.';

  @override
  String get tutorPhraseBuildOrPreserveHomeBoard =>
      'Будуйте або зберігайте свій дім, поки суперник намагається увійти з бара.';

  @override
  String tutorPhraseHomePointsCloseEntries(int count) {
    return 'У вашому домі закрито пунктів: $count; кожен такий пункт закриває один номер для входу.';
  }

  @override
  String tutorPhrasePrimeContact(int count) {
    return 'Контакт із ланцюжком закритих пунктів завдовжки $count.';
  }

  @override
  String get tutorPhraseExtendPrimeOrKeepSpares =>
      'Порівняйте, що краще: подовжити ланцюжок чи залишити запасні шашки, щоб його підтримувати.';

  @override
  String tutorPhraseSpareCheckersCanMove(int count) {
    return 'Запасні шашки: $count. Їх можна пересунути, не відкриваючи пункт.';
  }

  @override
  String tutorPhraseAnchorContact(Object points) {
    return 'Контакт із якорем на пунктах $points.';
  }

  @override
  String get tutorPhraseCompareAnchorProgressAhead =>
      'Порівняйте просування дальніх шашок додому з безпекою збереженого якоря.';

  @override
  String get tutorPhraseCompareAnchorProgressBehind =>
      'Пам’ятайте про безпечну опору, шукаючи нагоду побити шашку або поліпшити позицію.';

  @override
  String get tutorPhrasePreserveAnchorFoothold =>
      'Якір не можна побити, але цим шашкам ще далеко до дому.';

  @override
  String get tutorPhraseContactThreats =>
      'Контакт зберігається: обидві сторони можуть загрожувати побиттям.';

  @override
  String get tutorPhraseLookForPointsAndSafety =>
      'Шукайте корисні закриті пункти й оцінюйте ризик залишити поодинокі шашки під ударом.';

  @override
  String tutorPhraseHomePointsAndBlots(int count, int otherCount) {
    return 'Закрито пунктів у вашому домі: $count. Залишено відкритих шашок: $otherCount.';
  }

  @override
  String get tutorPhraseChooseCheckerPrompt =>
      'Виберіть шашку, щоб почати хід.';

  @override
  String get tutorPhraseLegalPlayPrompt =>
      'Зробіть дозволений хід, щоб побачити коментар.';

  @override
  String tutorPhraseStagedHit(int count) {
    return 'Ви побили шашок суперника: $count.';
  }

  @override
  String tutorPhraseStagedEnter(int count) {
    return 'Введення з бара: $count.';
  }

  @override
  String tutorPhraseStagedBearOff(int count) {
    return 'Знято з дошки шашок: $count.';
  }

  @override
  String tutorPhraseStagedMakePoints(Object points) {
    return 'Ви закрили пункти $points.';
  }

  @override
  String tutorPhraseStagedBlot(int point) {
    return 'Шашка на пункті $point поки залишається відкритою для побиття.';
  }

  @override
  String tutorPhraseStagedSpare(int point) {
    return 'Запасну шашку на пункті $point можна пересунути пізніше, не відкриваючи пункт.';
  }

  @override
  String tutorPhraseStagedPartialPrompt(Object part) {
    return '$part Використайте решту доступних кубиків, перш ніж оцінювати весь хід.';
  }

  @override
  String get tutorPhraseStagedAllCheckersOff =>
      'Усі 15 шашок знято: партію виграно.';

  @override
  String get tutorPhraseStagedHitShortPlan =>
      'Побиття виграє час, поки суперник повертається з бара.';

  @override
  String get tutorPhraseStagedEfficientBearOffPlan =>
      'Ефективне зняття прибирає шашки й залишає зручні числа для наступного кидка.';

  @override
  String get tutorPhraseStagedRaceHomePlan =>
      'У перегонах важливо перевести дальні шашки додому й залишити зручні пункти для зняття.';

  @override
  String get tutorPhraseStagedBearOffContactPlan =>
      'Зняття шашок наближає перемогу, але за збереження контакту відкриті шашки можуть побити.';

  @override
  String get tutorPhraseStagedReentryPlan =>
      'Вхід повертає шашку в гру; тепер знайдіть для неї безпечний пункт.';

  @override
  String get tutorPhraseStagedHomeBoardPlan =>
      'Новий закритий пункт у вашому домі прибере один номер для входу після майбутнього побиття.';

  @override
  String get tutorPhraseStagedPrimePlan =>
      'Довший ланцюжок закритих пунктів перекриває більше місць для ходів; запасні шашки допоможуть його зберегти.';

  @override
  String get tutorPhraseStagedLeaveAnchorPlan =>
      'Відмова від якоря просуває шашки вперед, але позбавляє їх безпечної опори.';

  @override
  String get tutorPhraseStagedNewAnchorPlan =>
      'Новий якір дає дальнім шашкам безпечну опору.';

  @override
  String get tutorPhraseStagedCoverBlotPlan =>
      'Прикриття відкритої шашки забирає в суперника зручну ціль.';

  @override
  String get tutorPhraseStagedSafetyTradeoffPlan =>
      'Тут доводиться обирати між розвитком і безпекою: шашки, що будують позицію, самі можуть стати ціллю.';

  @override
  String tutorPhraseStagedCompletePrompt(Object part) {
    return '$part Хід повністю підготовлено. Натисніть «Підтвердити», щоб виконати його.';
  }

  @override
  String get tutorMoveForcedVerdict =>
      'За цього кидка немає вибору переміщення шашок; такий хід не оцінюється як рішення.';

  @override
  String get tutorMoveTopVerdict => 'Найкращий вибір у цій позиції.';

  @override
  String get tutorMoveAlternativeVerdict =>
      'У цій позиції рушій віддає перевагу іншому ходу.';

  @override
  String tutorMoveEstimateDifference(Object loss) {
    return 'Відставання від найкращого ходу: $loss.';
  }

  @override
  String tutorMoveEstimateOutcomes(
    Object winPercent,
    Object winGammonPercent,
    Object loseGammonPercent,
  ) {
    return 'Після цього ходу: імовірність перемоги $winPercent%, перемоги з марсом або краще $winGammonPercent%, поразки з марсом або гірше $loseGammonPercent%. Оцінка з погляду гравця, який ходить.';
  }

  @override
  String tutorMoveEstimateMatchChance(Object percent) {
    return 'Оціночна ймовірність перемоги в матчі: $percent%.';
  }

  @override
  String get tutorMovePlanAllCheckersOff =>
      'Усі 15 шашок знято з дошки — партію виграно.';

  @override
  String tutorMovePlanHit(Object homeBoardAdvice) {
    return 'Використай удар, щоб виграти час, поки суперник повертається з бара. $homeBoardAdvice';
  }

  @override
  String get tutorMovePlanHitClosed =>
      'Зберігай закриті пункти у своєму домі, щоб ускладнити вхід суперника.';

  @override
  String get tutorMovePlanHitBuild =>
      'Закрий більше пунктів у своєму домі, щоб супернику було важче оговтатися від майбутніх ударів.';

  @override
  String get tutorMovePlanRaceBearOff =>
      'Знімай шашки ефективно: прибирай їх із дошки, зберігаючи зручні числа для наступного кидка.';

  @override
  String get tutorMovePlanRaceHome =>
      'Поверни відсталі шашки додому та розмісти їх на зручних пунктах для зняття.';

  @override
  String get tutorMovePlanContactBearOff =>
      'Знімай шашки, але стеж за відсталими шашками суперника: доки є контакт, незахищена шашка під час зняття може стати ціллю.';

  @override
  String get tutorMovePlanReentry =>
      'Повернися у гру, а потім знайди безпечний пункт для шашки, що увійшла.';

  @override
  String get tutorMovePlanHomeBoard =>
      'Зміцни свій дім. Новий закритий пункт посилить майбутній удар, забравши одне з чисел входу.';

  @override
  String get tutorMovePlanPrime =>
      'Зберігай суцільний ряд закритих пунктів. Залишай запасні шашки, щоб наступний кидок не змусив тебе його відкрити.';

  @override
  String get tutorMovePlanLeaveAnchor =>
      'Відхід з якоря просуне відсталі шашки, але забере в них безпечну опору. Стеж за їхньою вразливістю дорогою додому.';

  @override
  String get tutorMovePlanNewAnchor =>
      'Використай новий якір як безпечну опору, поки покращуєш решту позиції.';

  @override
  String get tutorMovePlanCoverBlot =>
      'Згрупуй і захисти шашки. Закриття одиночної шашки прибирає ціль і зберігає можливі пункти для наступних ходів.';

  @override
  String get tutorMovePlanSafety =>
      'Поєднуй розвиток із безпекою: підводь шашки-заготовки до корисних пунктів і перевіряй, які одиночні шашки можна побити.';

  @override
  String get tutorMoveObservationNoLegalPlay =>
      'Немає дозволеного ходу шашкою — треба пропустити хід.';

  @override
  String tutorMoveObservationHit(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки суперника',
      many: 'шашок суперника',
      few: 'шашки суперника',
      one: 'шашку суперника',
    );
    return 'Б’є $count $_temp0; суперник мусить увійти з бара, перш ніж зможе рухати інші шашки.';
  }

  @override
  String tutorMoveObservationEntry(int count) {
    return 'Вводить $count шашок із бара.';
  }

  @override
  String tutorMoveObservationBearOff(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки',
      many: 'шашок',
      few: 'шашки',
      one: 'шашку',
    );
    return 'Знімає з дошки $count $_temp0.';
  }

  @override
  String tutorMoveObservationMadePoints(Object points) {
    return 'Створює пункти $points. Дві або більше шашок закріплюють пункт і блокують там приземлення суперника.';
  }

  @override
  String tutorMoveObservationBrokenPoints(Object pointLabel, Object points) {
    return 'Відкриває закриті $pointLabel $points. Тепер ці пункти вже не блокують суперника.';
  }

  @override
  String tutorMoveObservationNoBlots(int previousCount) {
    return 'Не залишає одиночних вразливих шашок (до ходу було $previousCount). Немає одиночних шашок, які можна побити.';
  }

  @override
  String tutorMoveObservationBlots(int count, int previousCount) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'шашки',
      many: 'шашок',
      few: 'шашки',
      one: 'шашку',
    );
    return 'Залишає $count одиночних вразливих $_temp0 (до ходу було $previousCount). Перевір, чи зможе суперник дістатися до них, перш ніж віддати перевагу безпеці над іншою вигодою.';
  }

  @override
  String tutorMoveObservationPrimeRun(
    int count,
    int previousCount,
    Object primeAdvice,
  ) {
    return 'Найдовший ряд закритих пунктів: $count (до ходу було $previousCount). $primeAdvice';
  }

  @override
  String get tutorMoveObservationPrimeSix =>
      'Шестипунктовий прайм неможливо перетнути, поки він залишається закритим.';

  @override
  String get tutorMoveObservationPrimeBuild =>
      'Тримай шашки-заготовки поруч, щоб подовжити або зберегти цей ряд.';

  @override
  String tutorMoveObservationPrimeSpares(int count) {
    return 'На закритих пунктах понад дві шашки, що їх утримують, є запасні: $count. Переміщення запасної може зберегти пункт; хід однієї з двох останніх його відкриє.';
  }

  @override
  String tutorMoveObservationAnchors(Object points, Object previousPoints) {
    return 'Якорі в домі суперника: $points (до ходу було $previousPoints). Якір захищає ці шашки від ударів; відмова від нього міняє безпечну опору на просування в перегонах.';
  }

  @override
  String get tutorMoveObservationPureRace =>
      'Чисті перегони: сторони вже розминулися, і ні в кого немає шашок на барі. Бити вже не можна — важлива ефективність зняття шашок.';

  @override
  String get tutorMoveObservationNoReplyHit =>
      'Жоден дозволений наступний кидок не дає супернику змоги побити шашку в цій позиції. Контакт ще є, тож пізніше можуть з’явитися нові нагоди для удару.';

  @override
  String tutorMoveObservationReplyHit(
    int count,
    int total,
    int dieOne,
    int dieTwo,
    int point,
  ) {
    return 'Суперник може побити за $count із $total кидків. Наприклад, $dieOne–$dieTwo дає змогу законно побити твою шашку на $point-му пункті. Можливість удару не означає, що суперник обов’язково нею скористається.';
  }

  @override
  String tutorMoveObservationOpponentBarHome(
    int closedPoints,
    Object entryAdvice,
  ) {
    return 'У твоєму домі закрито пунктів: $closedPoints. $entryAdvice';
  }

  @override
  String get tutorMoveObservationAllEntriesClosed =>
      'Суперник не зможе увійти, доки не відкриється пункт.';

  @override
  String get tutorMoveObservationOpenEntry =>
      'Кидок із відповідним відкритим пунктом входу може повернути шашку з бара.';

  @override
  String tutorMoveComparisonDetail(
    Object factors,
    Object delta,
    Object direction,
    Object scoreContext,
  ) {
    return '$factors Оціночна ймовірність перемоги для найкращого ходу на $delta відсоткових пункта $direction.$scoreContext';
  }

  @override
  String get tutorMoveComparisonHigher => 'вища';

  @override
  String get tutorMoveComparisonLower => 'нижча';

  @override
  String tutorMoveComparisonScoreContext(Object scoreContext) {
    return ' Він усе одно може бути кращим, адже цінність марсу й бекгеммону залежить від поточного $scoreContext.';
  }

  @override
  String get tutorMoveComparisonStake => 'рахунку';

  @override
  String get tutorMoveComparisonMatchScore => 'рахунку матчу';

  @override
  String tutorMoveComparisonFactorBar(int bestCount, int playedCount) {
    return 'Найкращий хід залишає на барі $bestCount шашок суперника замість $playedCount. Шашка на барі має увійти, перш ніж суперник зможе рухати інші.';
  }

  @override
  String tutorMoveComparisonFactorHomeBoard(
    int bestCount,
    int playedCount,
    Object entryDifference,
  ) {
    return 'Найкращий хід закриває $bestCount пунктів дому замість $playedCount, тобто $entryDifference пунктів входу після удару.';
  }

  @override
  String get tutorMoveComparisonClosingMore => 'закриваючи більше пунктів';

  @override
  String get tutorMoveComparisonLeavingMore =>
      'залишаючи більше відкритих пунктів';

  @override
  String tutorMoveComparisonFactorShots(
    int bestCount,
    int playedCount,
    Object riskDifference,
  ) {
    return 'Після найкращого ходу суперник може побити за $bestCount із 36 кидків замість $playedCount. $riskDifference';
  }

  @override
  String get tutorMoveComparisonReducesRisk =>
      'Це зменшує безпосередній ризик, що твою шашку поб’ють.';

  @override
  String get tutorMoveComparisonExtraExposure =>
      'Зістав цю додаткову вразливість з іншою вигодою ходу.';

  @override
  String tutorMoveComparisonFactorPrime(int bestCount, int playedCount) {
    return 'Найдовший ряд закритих пунктів у найкращому ході має довжину $bestCount замість $playedCount; порівняй блокаду з шашками, якими її можна підтримати.';
  }

  @override
  String tutorMoveComparisonFactorAnchors(
    Object bestPoints,
    Object playedPoints,
  ) {
    return 'Найкращий хід зберігає $bestPoints якорів замість $playedPoints. Якір лишає безпечний пункт; відмова від нього наближає шашки до дому.';
  }

  @override
  String tutorMoveComparisonFactorBearOff(int bestCount, int playedCount) {
    return 'Найкращий хід знімає $bestCount шашок замість $playedCount. Кожну зняту шашку вже не потрібно прибирати пізніше.';
  }

  @override
  String get tutorMoveComparisonFactorSimilarRisks =>
      'Обидва ходи залишають однаковий безпосередній ризик удару, пункти дому, якорі та кількість знятих шашок. Порівняй пункти приземлення: наступного кидка ці шашки можна буде використати інакше.';

  @override
  String get tutorMoveComparisonSummaryBar =>
      'Найкращий хід відправляє на бар більше шашок суперника й затримує його інші ходи.';

  @override
  String get tutorMoveComparisonSummaryHomeBoard =>
      'Найкращий хід закриває більше пунктів дому й ускладнює вхід після удару.';

  @override
  String get tutorMoveComparisonSummaryShots =>
      'Найкращий хід залишає менше негайних можливостей для удару та знижує ризик відповіді.';

  @override
  String get tutorMoveComparisonSummaryPrime =>
      'Найкращий хід зберігає довший ряд закритих пунктів.';

  @override
  String get tutorMoveComparisonSummaryAnchors =>
      'Найкращий хід зберігає більше безпечних якорів у домі суперника.';

  @override
  String get tutorMoveComparisonSummaryBearOff =>
      'Найкращий хід знімає більше шашок — потім залишиться зняти менше.';

  @override
  String tutorMoveComparisonSummaryBlots(int playedCount, int bestCount) {
    return 'Цей хід залишає $playedCount одиночних шашок; найкращий хід залишає $bestCount.';
  }

  @override
  String tutorMoveComparisonSummarySafeAnchor(int point) {
    return 'Найкращий хід зберігає безпечний якір на пункті $point.';
  }

  @override
  String get tutorMoveComparisonSummaryEntry =>
      'Найкращий хід закриває більше пунктів входу на випадок, якщо твою шашку поб’ють.';

  @override
  String get tutorMoveComparisonSummarySimilarRisks =>
      'Безпосередні ризики ходів схожі; порівняй, які пункти приземлення будуть корисні на наступному кидку.';

  @override
  String tutorMoveAssessmentEquityLoss(Object value) {
    return '$value еквіті';
  }

  @override
  String tutorMoveAssessmentMwcLoss(Object value) {
    return '$value відсоткових пункта ймовірності перемоги в матчі';
  }

  @override
  String get tutorMovePointSingular => 'пункт';

  @override
  String get tutorMovePointPlural => 'пункти';

  @override
  String get tutorMoveNoPoints => 'немає';

  @override
  String get gameTutorCommentaryOff => 'Коментарі до партії вимкнено.';

  @override
  String get gameTutorToolsAvailable =>
      'Відкрий тренера, щоб скористатися ввімкненими інструментами.';

  @override
  String get gameTutorNextRoll => 'Тепер кидай кості.';

  @override
  String get gameTutorNoEvaluatedReview =>
      'Для цього записаного ходу немає оціненого пояснення.';

  @override
  String get gameTutorAnalysisUnavailable => 'аналіз недоступний';

  @override
  String get gameTutorReviewing => 'аналізуємо…';

  @override
  String get gameTutorTryYourPlayFirst =>
      'Спочатку спробуй зробити хід самостійно.';

  @override
  String get gameTutorKeepBuilding => 'Продовжуй складати свій хід.';

  @override
  String get gameTutorStageCompleteBeforeCoaching =>
      'Заверши повний дозволений хід, перш ніж відкривати підказки чи поради.';

  @override
  String get gameTutorReadyToConfirm => 'Можна підтвердити';

  @override
  String get gameTutorPlayTakingShape => 'Твій хід набуває форми.';

  @override
  String get gameTutorConfirmOrUndo =>
      'Підтвердь хід або скасуй його, щоб обміркувати ще раз.';

  @override
  String get gameTutorFinishDiceOrUndo =>
      'Використай решту костей або скасуй хід.';

  @override
  String get gameTutorComputerConsidering => 'Комп’ютер обмірковує свій хід.';

  @override
  String get gameTutorComputerPlayReviewed =>
      'Завершений хід комп’ютера буде розібрано тут.';

  @override
  String get gameTutorYourPlay => 'Твій хід';

  @override
  String get gameTutorComputer => 'Комп’ютер';

  @override
  String gameTutorPlayQuality(Object quality) {
    return 'Твій хід: $quality';
  }

  @override
  String get gameTutorForcedPlay => 'вимушений хід';

  @override
  String get gameTutorTopChoice => 'найкращий вибір';

  @override
  String get gameTutorSoundPlay => 'добрий хід';

  @override
  String get gameTutorAnotherPlayMayFitBetter =>
      'Можливо, інший хід підійде краще.';

  @override
  String get gameTutorAnotherPlayFitsBetter =>
      'Інший хід краще пасує до цієї позиції.';

  @override
  String get gameTutorStrongerPlayAvailable =>
      'Був доступний значно сильніший хід.';

  @override
  String gameTutorPositionEdge(Object side) {
    return 'За оцінкою, перевага на боці $side.';
  }

  @override
  String get gameTutorPositionEven => 'Позиція приблизно рівна.';

  @override
  String tutorPlayedMove(Object move) {
    return 'Зіграно: $move';
  }

  @override
  String tutorBestMove(Object move) {
    return 'Найкращий хід: $move';
  }

  @override
  String get tutorShowRankedPlays => 'Показати ходи за рейтингом';

  @override
  String get tutorReviewRecordedMove =>
      'Торкнися завершеного ходу в журналі, щоб розібрати його рішення тут.';

  @override
  String get tutorTopPlays => 'Найкращі ходи';

  @override
  String get tutorNoHintsAvailable => 'Підказок немає.';

  @override
  String get tutorPreviewThenConfirm =>
      'Торкнися ходу, щоб переглянути його на дошці, а потім підтвердь.';

  @override
  String get tutorTopChoiceForPosition => 'Найкращий вибір у цій позиції';

  @override
  String get tutorAlternativePlay => 'Альтернативний хід';

  @override
  String get tutorEngineEstimates => 'Оцінки рушія';

  @override
  String get tutorEstimateScope =>
      'Оцінка на 0 півходів — поточний рахунок і ставка — без майбутніх подвоєнь';

  @override
  String get tutorEquity => 'Еквіті';

  @override
  String get tutorMwcPercent => 'Імовірність перемоги в матчі, %';

  @override
  String get tutorNearTiesNote =>
      'За глибшого аналізу близькі варіанти можуть помінятися місцями.';

  @override
  String get tutorWhyThisPlay => 'Чому цей хід?';

  @override
  String get tutorCompareAlternative => 'Порівняти цей альтернативний хід';

  @override
  String get gameTutorCubeTake => 'Порада тренера: прийняти';

  @override
  String get gameTutorCubePass => 'Порада тренера: скинути';

  @override
  String get practiceScreenTitle => 'Практикуйте рішення';

  @override
  String get practiceUnavailable => 'Ця навчальна позиція більше недоступна.';

  @override
  String get practiceSubmitError =>
      'Не вдалося оцінити або зберегти спробу. Ваш прогрес не змінився. Спробуйте ще раз.';

  @override
  String practiceTurnLabel(Object side, Object dice) {
    return 'Хід $side · $dice';
  }

  @override
  String get practiceHistoricalScoreUnavailable =>
      'Історичний рахунок недоступний; хід оцінюється за equity без куба подвоєння.';

  @override
  String practiceScoreLine(
    Object whiteLabel,
    int whiteScore,
    Object blackLabel,
    int blackScore,
    int matchLength,
  ) {
    return 'Рахунок: $whiteLabel $whiteScore – $blackLabel $blackScore, до $matchLength';
  }

  @override
  String get practiceCrawfordGame => ' · партія Кроуфорда';

  @override
  String get practiceNoDoublingCube => 'Без куба подвоєння.';

  @override
  String practiceCubeValue(int value) {
    return 'Значення куба $value.';
  }

  @override
  String get practiceHistoricalCubeUnknown =>
      'Історичні правила куба невідомі.';

  @override
  String get practiceAfterBestPosition => 'Позиція після найкращого ходу';

  @override
  String get practiceAfterYourAnswerPosition => 'Позиція після вашої відповіді';

  @override
  String get practiceFindYourPlayPrompt =>
      'Зробіть хід на дошці, а потім перевірте відповідь. Підказок не буде.';

  @override
  String get practiceUndo => 'Скасувати';

  @override
  String get practiceCheckAnswer => 'Перевірити відповідь';

  @override
  String get practiceRevealNoCredit => 'Показати відповідь (без балів)';

  @override
  String get practiceAnswerRevealedNoCredit =>
      'Відповідь показано — без зарахування пригадування.';

  @override
  String practiceGradeLine(Object verdict, Object loss) {
    return '$verdict · $loss';
  }

  @override
  String practiceBestMoveLine(Object move) {
    return 'Найкращий хід: $move';
  }

  @override
  String practiceOriginalGameLine(Object move, Object loss) {
    return 'Хід в оригінальній партії: $move · $loss';
  }

  @override
  String practiceYourAnswerLine(Object move) {
    return 'Ваша відповідь: $move';
  }

  @override
  String get practiceYourAnswerChip => 'Ваша відповідь';

  @override
  String get practiceBestPlayChip => 'Найкращий хід';

  @override
  String practiceNextReview(Object date) {
    return 'Наступне повторення: $date.';
  }

  @override
  String get practiceRecallCredit =>
      'Найкращі й хороші відповіді зараховуються як успішне пригадування. Ранні повтори не подовжують інтервал.';

  @override
  String get practiceBackToLearning => 'До навчання';

  @override
  String get practiceMarkBest => 'Найкращий';

  @override
  String get practiceMarkGood => 'Хороший';

  @override
  String get practiceMarkDubious => 'Сумнівний';

  @override
  String get practiceMarkError => 'Помилка';

  @override
  String get practiceMarkBlunder => 'Груба помилка';

  @override
  String get practiceMarkForced => 'Вимушений';

  @override
  String get newMatchYourSide => 'Ваша сторона';

  @override
  String get newMatchTutorMode => 'Режим наставника';

  @override
  String get newMatchTutorDescription =>
      'Навчайтеся з підказками, поясненнями та коментарями до гри';

  @override
  String get newMatchTutoringOptions => 'Параметри навчання';

  @override
  String get newMatchTutoringOptionsDescription =>
      'Для цієї партії; можна змінювати під час гри';

  @override
  String get setupMatchLength => 'Довжина матчу';

  @override
  String get setupDifficulty => 'Складність';

  @override
  String get setupDifficultyEasy => 'Легка';

  @override
  String get setupDifficultyMedium => 'Середня';

  @override
  String get setupDifficultyHard => 'Складна';

  @override
  String get setupDifficultyExpert => 'Експерт';

  @override
  String get setupPlayWithoutCube => 'Грати без куба';

  @override
  String get setupNoCubeThisMatch => 'У цій партії немає куба подвоєння';

  @override
  String get analysisTitle => 'Аналіз';

  @override
  String get gameMatchSummary => 'Підсумок матчу';

  @override
  String get gameAnalyzeGame => 'Проаналізувати партію';

  @override
  String get analysisMetricsTooltip => 'Що означають ці числа?';

  @override
  String analysisError(Object error) {
    return 'Не вдалося проаналізувати партію: $error';
  }

  @override
  String get analysisNoPositions => 'У цій партії немає позицій для показу.';

  @override
  String get analysisInProgress => 'Триває аналіз…';

  @override
  String analysisPercent(int percent) {
    return '$percent%';
  }

  @override
  String get analysisPlayed => 'Зіграно';

  @override
  String get analysisBest => 'Найкращий';

  @override
  String get analysisPrevious => 'Попередній';

  @override
  String get analysisNext => 'Наступний';

  @override
  String get analysisPositionBeforeCube => 'Позиція до рішення щодо куба';

  @override
  String get analysisPositionAtPoint => 'Позиція на цьому етапі гри';

  @override
  String get analysisShowingBestBefore =>
      'Показано найкращий хід у позиції до ходу';

  @override
  String get analysisShowingBefore => 'Показано позицію до ходу';

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
      ' · не враховано в середніх значеннях';

  @override
  String get analysisNoPlay => '(немає ходу)';

  @override
  String analysisBestMoveLine(Object move) {
    return 'Найкращий: $move';
  }

  @override
  String get analysisExplain => 'Пояснити';

  @override
  String get analysisSaveForPractice => 'Зберегти для тренування';

  @override
  String analysisSaveError(Object error) {
    return 'Не вдалося зберегти це рішення: $error';
  }

  @override
  String analysisCubeInfo(
    Object side,
    Object action,
    Object mark,
    Object loss,
  ) {
    return '$side: $action · $mark · втрата $loss';
  }

  @override
  String get analysisCubeDecision => 'Рішення щодо куба';

  @override
  String analysisCubePlayed(Object action, Object percent) {
    return 'Зіграно: $action (шанси виграти матч — $percent%).';
  }

  @override
  String analysisCubeBest(Object action, Object percent) {
    return 'Найкраще: $action (шанси виграти матч — $percent%).';
  }

  @override
  String get analysisCubeEstimate =>
      'Оцінка 0-ply з погляду гравця, який ходить. Передбачається оптимальна відповідь — прийняти або пасувати. Для гілки прийнятого подвоєння використовується наближення 0,7 життєвого циклу куба, а не повний пошук майбутніх повторних подвоєнь. Глибший аналіз може змінити відповідь.';

  @override
  String get analysisClose => 'Закрити';

  @override
  String get analysisMoves => 'Ходи';

  @override
  String get analysisForced => 'Вимушений';

  @override
  String get analysisMarkBest => 'Найкращий';

  @override
  String get analysisMarkGood => 'Добрий';

  @override
  String get analysisMarkDubious => 'Сумнівний';

  @override
  String get analysisMarkError => 'Помилка';

  @override
  String get analysisMarkBlunder => 'Груба помилка';

  @override
  String analysisSummaryMeanLoss(Object loss) {
    return 'Середня втрата $loss';
  }

  @override
  String analysisSummaryCheckerDecisions(int count) {
    return '$count рішень щодо шашок';
  }

  @override
  String analysisSummaryBlunders(int count) {
    return 'Грубі помилки $count';
  }

  @override
  String analysisSummaryCubeLoss(Object loss) {
    return 'Втрата через куб $loss';
  }

  @override
  String analysisRollWithoutDoubling(Object side) {
    return '$side кидає без подвоєння';
  }

  @override
  String get metricExplainerTitle => 'Пояснення показників';

  @override
  String get metricExplainerTooltip => 'Що означають ці числа?';

  @override
  String get metricExplainerMwcTitle => 'Шанс виграти матч (MWC)';

  @override
  String get metricExplainerMwcBody =>
      'Якщо рахунок відомий, ходи шашками оцінюються за приблизним шансом виграти матч. Втрата вимірюється у відсоткових пунктах (в.п.): 1 в.п. — падіння з 51% до 50%. Враховуються ставка куба й результати з геймом/бекгеймом. Вимушені паси та кидки з однією легальною позицією не входять до середнього.';

  @override
  String get metricExplainerSearchTitle => 'Пошук і невизначеність';

  @override
  String get metricExplainerSearchBody =>
      'Оцінки ходів шашками — статичні оцінки 0-ply після ходу, а не симуляції. Для матчевих значень використовується таблиця еквіті матчу без майбутніх ходів куба. Аналіз куба частково враховує 0,7 його життєвого циклу для прийнятих подвоєнь; це не повний пошук із кубом. Для залишку понад 25 використовується межа таблиці 25-away. Глибший аналіз може змінити близькі результати; калібрований довірчий інтервал не розраховується.';

  @override
  String get metricExplainerEquityTitle => 'Еквіті';

  @override
  String get metricExplainerEquityBody =>
      'Якщо рахунок невідомий, еквіті без куба показує середню цінність позиції в очках за куба зі значенням 1. +1,0 означає очікувану перемогу в одне очко, −0,5 — програш у пів очка.';

  @override
  String get metricExplainerEquityLossTitle =>
      'Втрата еквіті (наприклад, −0,016)';

  @override
  String get metricExplainerEquityLossBody =>
      'Ми порівнюємо зіграний хід із найкращим ходом рушія. Втрата еквіті показує, скільки очікуваної цінності було втрачено. −0,016 означає, що хід був лише на 0,016 очка гірший — незначна неточність. 0,000 означає, що ви знайшли найкращий хід.';

  @override
  String get metricExplainerErrorRateTitle => 'Частота помилок';

  @override
  String get metricExplainerErrorRateBody =>
      'Середня втрата — це середнє оцінених рішень щодо шашок у показаних одиницях. Для рішень із кубом є окреме середнє. Менше значення означає ходи, ближчі до найкращих оцінок рушія; це не калібрований рейтинг гравця.';

  @override
  String get metricExplainerMoveMarksTitle => 'Позначки ходів';

  @override
  String get metricExplainerMoveMarksBody =>
      'Навчальні межі MWC: найкращий < 0,05 в.п., добрий < 0,5 в.п., сумнівний < 1,5 в.п., помилка < 3 в.п., груба помилка ≥ 3 в.п. Це навчальні межі, а не калібрована впевненість чи турнірний рейтинг.\n\nНавчальні межі еквіті без куба:';

  @override
  String get metricExplainerThresholdBest => 'втрата < 0,001';

  @override
  String get metricExplainerThresholdGood => 'втрата < 0,020';

  @override
  String get metricExplainerThresholdDubious => 'втрата < 0,050';

  @override
  String get metricExplainerThresholdError => 'втрата < 0,110';

  @override
  String get metricExplainerThresholdBlunder => 'втрата ≥ 0,110';

  @override
  String get metricExplainerGotIt => 'Зрозуміло';

  @override
  String get historyTitle => 'Історія матчів';

  @override
  String historyLoadFailed(Object error) {
    return 'Не вдалося завантажити історію:\n$error';
  }

  @override
  String get historyEmpty => 'Ви ще не зіграли жодного матчу.';

  @override
  String get historyDeleteConfirmTitle => 'Видалити цей матч?';

  @override
  String historyDeleteConfirmBody(Object scoreLine) {
    return '$scoreLine\n\nМатч і всі записані в ньому партії буде видалено назавжди. Цю дію не можна скасувати.';
  }

  @override
  String get actionCancel => 'Скасувати';

  @override
  String get actionDelete => 'Видалити';

  @override
  String get historyDeleteFailed => 'Не вдалося видалити матч.';

  @override
  String get historyComplete => 'Завершено';

  @override
  String historyWinner(Object side) {
    return 'Переміг $side';
  }

  @override
  String get historyUnfinished => 'Не завершено';

  @override
  String get historyMatchTitle => 'Матч';

  @override
  String historyMatchLoadFailed(Object error) {
    return 'Не вдалося завантажити матч:\n$error';
  }

  @override
  String historyGamesLoadFailed(Object error) {
    return 'Не вдалося завантажити партії:\n$error';
  }

  @override
  String get historyNoGames => 'Записаних партій ще немає.';

  @override
  String historyGameTitle(int number) {
    return 'Партія $number';
  }

  @override
  String get historyCrawford => 'Правило Кроуфорда';

  @override
  String historyScoreLine(int whiteScore, int blackScore, int matchLength) {
    return 'Білі $whiteScore — $blackScore Чорні  (до $matchLength)';
  }

  @override
  String get historyModeComputer => 'проти комп’ютера';

  @override
  String get historyModeTwoPlayers => 'Двоє гравців';

  @override
  String get historyModeOnline => 'Онлайн';

  @override
  String get historyModeNearby => 'Грати поруч';

  @override
  String get historyModeBuddy => 'Buddy';

  @override
  String get historyGameInProgress => 'Триває';

  @override
  String historyGameResult(Object side, int points, Object outcome) {
    return '$side перемагає $points ($outcome)';
  }

  @override
  String get historyOutcomeSingle => 'одиночний';

  @override
  String get historyOutcomeGammon => 'геммон';

  @override
  String get historyOutcomeBackgammon => 'бекгеммон';

  @override
  String get learningRefreshTooltip => 'Оновити прогрес навчання';

  @override
  String get learningOptions => 'Налаштування навчання';

  @override
  String get learningResetMenu => 'Скинути прогрес тренувань';

  @override
  String get learningLoadFailed => 'Не вдалося завантажити прогрес навчання.';

  @override
  String get actionRetry => 'Повторити';

  @override
  String get learningHeading => 'Навчайтеся на своїх рішеннях';

  @override
  String get learningIntro =>
      'Прогрес зберігається на цьому пристрої. Переглядайте повторювані теми, а потім повторюйте збережені позиції, не бачачи відповіді. Білі та чорні рішення можна переглядати окремо.';

  @override
  String get learningBothSides => 'Обидві сторони';

  @override
  String get learningHumansOnly => 'Лише рішення людей';

  @override
  String get learningHumanOnlyHelp =>
      'Вимкніть, щоб включити ходи комп’ютера та віддалених гравців';

  @override
  String learningDecisionSummary(int decisions, int mistakes, int blunders) {
    return '$decisions рішень · покращити: $mistakes · грубих помилок: $blunders';
  }

  @override
  String learningAverageLoss(int decisions, Object loss) {
    return 'Середня втрата ($decisions рішень): $loss';
  }

  @override
  String get learningForcedDisclaimer =>
      'Вимушені ходи не враховуються. Це оцінки рушія, а не турнірний рейтинг.';

  @override
  String learningGamesNeedingAnalysis(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Збережені партії (#) потребують аналізу або його оновлення.',
      one: 'Збережена партія потребує аналізу або його оновлення.',
    );
    return '$_temp0';
  }

  @override
  String get learningAnalyseSavedGames => 'Аналізувати збережені партії';

  @override
  String get learningEmptyProfile =>
      'Зіграйте й завершіть матч, щоб сформувати профіль навчання. Окремі рішення також можна зберегти з повтору партії.';

  @override
  String get learningOpenHistory => 'Відкрити історію матчів';

  @override
  String get learningRecurringThemes => 'Повторювані теми';

  @override
  String get learningNoThemes =>
      'У цьому виборі ще немає повторюваних тем помилок.';

  @override
  String learningThemeDecisions(int count) {
    return 'Рішень для повторення: $count. Одна позиція може мати кілька тем.';
  }

  @override
  String get learningSaveMistakes => 'Зберегти ці помилки для тренування';

  @override
  String learningSavedMistakes(int count) {
    return 'У списку тренування $count рішень. Наявні збереження не дублюються.';
  }

  @override
  String get learningSaveMistakesFailed =>
      'Не всі рішення вдалося зберегти. Завершені збереження залишилися; спробуйте ще раз.';

  @override
  String get learningSpacedPractice => 'Інтервальне тренування';

  @override
  String learningPracticeCounts(
    int due,
    int saved,
    int attempts,
    int successes,
  ) {
    return 'До повторення: $due · збережено: $saved · спроб: $attempts · успішних пригадувань: $successes';
  }

  @override
  String get learningIntervalsHelp =>
      'Успішні повторення повертаються через 1, 3, 7, 14 і 30 днів. Помилки та показані відповіді повертаються через 10 хвилин. Ранні повтори не подовжують інтервал.';

  @override
  String get learningAnswerContext =>
      'Результати тренування враховують ваші відповіді тут, навіть якщо початкова позиція належала супернику.';

  @override
  String get learningNoSavedPositions =>
      'Збережіть рішення з повтору або скористайтеся кнопкою помилок вище.';

  @override
  String learningPositionTitle(Object side, int gameId) {
    return 'Рішення $side · партія $gameId';
  }

  @override
  String learningReviewDue(Object date) {
    return 'Повторити $date';
  }

  @override
  String get learningReadyToReview => 'Готово до повторення';

  @override
  String learningSuccessStreak(int count) {
    return 'Успішних повторень поспіль: $count';
  }

  @override
  String get learningRemoveTooltip => 'Прибрати збережене рішення';

  @override
  String get learningRecentPractice => 'Нещодавнє тренування';

  @override
  String get learningAnswerRevealed => 'Відповідь показано';

  @override
  String get learningSuccessfulRecall => 'Успішне пригадування';

  @override
  String get learningTryAgain => 'Спробувати ще раз';

  @override
  String learningAttemptSubtitle(Object date, int positionId) {
    return '$date · збережена позиція $positionId';
  }

  @override
  String get learningRemoveTitle => 'Прибрати цю вправу?';

  @override
  String get learningRemoveBody =>
      'Буде видалено спроби тренування для неї. Початкова партія залишиться в історії.';

  @override
  String get actionRemove => 'Прибрати';

  @override
  String get learningRemoveFailed => 'Не вдалося прибрати цю вправу.';

  @override
  String get learningResetTitle => 'Скинути прогрес тренування?';

  @override
  String get learningResetBody =>
      'Усі спроби та інтервали повторення буде видалено. Збережені вправи й історія матчів залишаться; усі вправи стануть доступними зараз.';

  @override
  String get learningResetAction => 'Скинути прогрес';

  @override
  String get learningResetFailed => 'Не вдалося скинути прогрес тренування.';

  @override
  String learningAnalysisProgress(int completed, int failed) {
    return 'Проаналізовано партій: $completed · недоступні: $failed.';
  }

  @override
  String learningAnalysisComplete(int completed) {
    return 'Проаналізовано партій: $completed.';
  }

  @override
  String learningAnalysisCompleteWithErrors(int completed, int failed) {
    return 'Проаналізовано $completed партій; не вдалося: $failed. Спробуйте знову, коли рушій буде готовий.';
  }

  @override
  String get learningThemeHitting => 'Удари й темп';

  @override
  String get learningThemeSafety => 'Відкриті шашки та безпека';

  @override
  String get learningThemePointMaking => 'Створення пунктів';

  @override
  String get learningThemePrime => 'Блоки й бар’єри';

  @override
  String get learningThemeAnchor => 'Якорі та втеча';

  @override
  String get learningThemeRace => 'Ефективність перегонів';

  @override
  String get learningThemeBearOff => 'Зняття шашок';

  @override
  String get learningThemeBarEntry => 'Вхід із бару';

  @override
  String get learningThemeCube => 'Рішення щодо куба';

  @override
  String get analysisCubeNoDouble => 'Не подвоювати';

  @override
  String get analysisCubeDouble => 'Подвоїти';

  @override
  String get analysisCubeTake => 'Прийняти';

  @override
  String get analysisCubePass => 'Здатися';

  @override
  String get learningAnalysisStarting => 'Аналіз збережених партій…';

  @override
  String get tutorCubelessEstimateScope =>
      'Оцінка 0-ply без куба · рахунок невідомий';

  @override
  String get tutorLossPp => 'Втрата в.п.';

  @override
  String get tutorLoss => 'Втрата';

  @override
  String get scoreSheetNoMoves => 'Немає ходів';

  @override
  String get tutorOptions => 'Налаштування тренера';

  @override
  String get tutorCollapseTooltip => 'Згорнути тренера';

  @override
  String get tutorExpandTooltip => 'Розгорнути тренера';

  @override
  String get onlineTitle => 'Гра онлайн';

  @override
  String get onlineUnassistedNote => 'Тренер недоступний в онлайн-грі.';

  @override
  String get onlineNotConfiguredTitle => 'Онлайн-гру не налаштовано';

  @override
  String get onlineNotConfiguredBody => 'Онлайн-гра недоступна в цій версії.';

  @override
  String get onlineErrorNoMatch => 'Матч не знайдено.';

  @override
  String get onlineErrorSeatTaken => 'Місце вже зайняте.';

  @override
  String get onlineErrorPermission => 'У вас немає дозволу на цю дію.';

  @override
  String get onlineErrorGeneric => 'Не вдалося підключитися до онлайн-гри.';

  @override
  String get onlineMatchFinished => 'Матч завершено.';

  @override
  String get onlineEnterCodeError => 'Введіть дійсний код.';

  @override
  String get onlineOpponentShort => 'Суперник';

  @override
  String get onlineMatchInProgress => 'Матч триває';

  @override
  String onlineResumePrompt(Object code) {
    return 'Ви грали матч $code. Продовжити?';
  }

  @override
  String get onlineRejoin => 'Під’єднатися знову';

  @override
  String get onlineForgetMatch => 'Забути матч';

  @override
  String get onlineCreateTitle => 'Створити онлайн-матч';

  @override
  String get onlineMatchLength => 'Тривалість матчу';

  @override
  String get onlineNoCubeTitle => 'Гра без куба';

  @override
  String get onlineNoCubeSubtitle => 'Грайте без куба подвоєння.';

  @override
  String get onlineCreate => 'Створити';

  @override
  String get onlineWaitingOpponent => 'Очікування суперника';

  @override
  String get onlineShareCode => 'Поділитися кодом';

  @override
  String get onlineCopyCode => 'Скопіювати код';

  @override
  String get onlineCodeCopied => 'Код скопійовано';

  @override
  String get onlineJoinTitle => 'Приєднатися до матчу';

  @override
  String get onlineRoomCode => 'Код кімнати';

  @override
  String get onlineJoin => 'Приєднатися';

  @override
  String get lanTitle => 'Грати поруч';

  @override
  String get lanTabHost => 'Створити кімнату';

  @override
  String get lanTabJoin => 'Приєднатися';

  @override
  String get lanUnassistedNote =>
      'У грі поруч тренер недоступний. Після матчу перегляньте ходи й потренуйте помилки.';

  @override
  String get lanGameStartFailed =>
      'Не вдалося почати гру. Інший пристрій може спробувати приєднатися ще раз.';

  @override
  String get lanHostPortInUse =>
      'Не вдалося запустити хостинг — порт уже використовується. Закрийте інші копії Backgammon Buddy й повторіть спробу.';

  @override
  String get lanHostStartFailed =>
      'Не вдалося запустити хостинг. Перевірте Wi-Fi і повторіть спробу.';

  @override
  String get lanHostTitle => 'Створити гру';

  @override
  String get lanStartHosting => 'Почати хостинг';

  @override
  String get lanHostHelp =>
      'Обидва пристрої мають бути в одній мережі Wi-Fi. Цей пристрій кидає кубики й веде рахунок.';

  @override
  String get lanWaitingPlayerTitle => 'Очікування гравця';

  @override
  String get lanRoomCodeInfo =>
      'Повідомте цей код іншому гравцеві. Він надає доступ — застосунок не надсилає його мережею.';

  @override
  String get lanWaitingPlayer => 'Очікування гравця…';

  @override
  String get lanStopHosting => 'Зупинити хостинг';

  @override
  String lanFindNearbyPort(int port) {
    return 'Попросіть інший пристрій шукати ігри поруч. Прослуховується порт $port.';
  }

  @override
  String get lanOnNetwork => 'У цій мережі';

  @override
  String get lanCopyAddress => 'Скопіювати адресу';

  @override
  String get lanAddressCopied => 'Адресу скопійовано';

  @override
  String get lanScanHostTitle => 'Сканувати хост';

  @override
  String get lanScanHostHelp =>
      'Інший пристрій показує QR-код на екрані хоста. Після сканування адреса й код кімнати заповняться автоматично.';

  @override
  String get lanScanQr => 'Сканувати QR-код';

  @override
  String get lanScannerUnavailable =>
      'Камера або дозвіл на її використання недоступні. Введіть адресу та код кімнати нижче.';

  @override
  String get lanInvalidQr =>
      'Цей QR-код не є грою Backgammon Buddy. Скануйте код на екрані хоста іншого пристрою.';

  @override
  String get lanScannerFailed =>
      'Не вдалося відкрити сканер. Введіть адресу й код нижче.';

  @override
  String get lanNearbyGames => 'Ігри поруч';

  @override
  String get lanSearching => 'Пошук ігор поруч…';

  @override
  String get lanNoGamesFound =>
      'Ігор поки не знайдено. Переконайтеся, що інший пристрій створив гру, а обидва в одній мережі Wi-Fi, або введіть адресу.';

  @override
  String get lanStillSearching => 'Пошук триває…';

  @override
  String get lanEnterAddress => 'Ввести адресу';

  @override
  String get lanEnterAddressHelp =>
      'Автоматичний пошук працює не в усіх мережах (на iOS може бути повністю заблокований). Екран хоста показує, що вводити.';

  @override
  String get lanIpAddress => 'IP-адреса';

  @override
  String get lanPort => 'Порт';

  @override
  String get lanInvalidPort => 'Введіть порт від 1 до 65535.';

  @override
  String get lanEnterAddressError =>
      'Введіть адресу, показану на іншому пристрої.';

  @override
  String get lanEnterRoomCodeError =>
      'Введіть 4-значний код з іншого пристрою.';

  @override
  String get lanJoinWrongCode =>
      'Неправильний код кімнати. Перевірте чотири цифри на іншому пристрої.';

  @override
  String get lanJoinVersionMismatch =>
      'На іншому пристрої інша версія Backgammon Buddy.';

  @override
  String get lanJoinHandshakeFailed =>
      'Пристрій відповів не так, як Backgammon Buddy. Перевірте адресу й порт.';

  @override
  String get lanJoinFailed =>
      'Не вдалося приєднатися. Перевірте адресу й код кімнати та спробуйте ще раз.';

  @override
  String lanJoinTarget(Object name) {
    return 'Приєднатися: $name';
  }

  @override
  String get lanJoinTargetHelp => 'Введіть 4-значний код з іншого пристрою.';

  @override
  String lanJoiningTarget(Object name) {
    return 'Приєднання до $name';
  }

  @override
  String get lanConnect => 'Підключитися';

  @override
  String get lanBack => 'Назад';

  @override
  String get lanTryAgain => 'Спробувати ще раз';

  @override
  String get lanStatusBusy => 'Кімната зайнята — очікування…';

  @override
  String get lanStatusReconnecting => 'З’єднання втрачено — повторна спроба…';

  @override
  String get lanStatusConnected => 'Підключено — починається матч…';

  @override
  String get lanStatusFailed => 'Не вдалося приєднатися.';

  @override
  String get lanStatusConnecting => 'Підключення…';

  @override
  String get diagnosticsCopySuccess => 'Діагностику скопійовано в буфер обміну';

  @override
  String get diagnosticsReviewTitle => 'Перегляньте діагностичний звіт';

  @override
  String get diagnosticsPrivacyNotice =>
      'Відкривши чернетку, ви надішлете на GitHub наведені нижче дані: версію застосунку, платформу та відомості про помилки. Публічну проблему не буде створено, доки ви не надішлете її там. Якщо дані містять приватну інформацію, скасуйте дію та підготуйте звіт самостійно через копіювання.';

  @override
  String get diagnosticsCancel => 'Скасувати';

  @override
  String get diagnosticsOpenGitHub => 'Відкрити GitHub';

  @override
  String get diagnosticsTitle => 'Діагностика';

  @override
  String get diagnosticsReportTooltip => 'Повідомити про проблему на GitHub';

  @override
  String get diagnosticsCopyTooltip => 'Копіювати в буфер обміну';

  @override
  String get diagnosticsClearTooltip => 'Очистити журнал';

  @override
  String get diagnosticsEmpty =>
      'Помилок не зареєстровано.\n\nЯкщо щось піде не так, запис з’явиться тут — поверніться та скопіюйте дані до звіту про помилку.';

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
  String get gameHudYou => 'Ви';

  @override
  String get gameHudAi => 'Комп’ютер';

  @override
  String gameHudGameNumber(int number) {
    return 'Гра $number';
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
    return '$whiteLabel проти $blackLabel · $pipsLabel $whitePips–$blackPips';
  }

  @override
  String gameHudOpponentDetail(
    Object opponent,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'проти $opponent · $pipsLabel $mine–$theirs';
  }

  @override
  String gameHudOpponentDetailWithLevel(
    Object opponent,
    Object level,
    Object pipsLabel,
    int mine,
    int theirs,
  ) {
    return 'проти $opponent · $level · $pipsLabel $mine–$theirs';
  }

  @override
  String get gameHudPips => 'Піпси';

  @override
  String get gameHudCrawford => 'Кроуфорд';

  @override
  String get gameHudDouble => 'Подвоїти';

  @override
  String get gameHudMoreActions => 'Інші дії';

  @override
  String get gameHudSurrender => 'Здатися…';

  @override
  String get gameHudThinking => 'Думає';

  @override
  String get gameHudDoubleBeforeRoll =>
      'Подвоїти можна лише перед кидком у свій хід.';

  @override
  String get gameHudNoDoubleCrawford =>
      'У партії Кроуфорда подвоєння немає — ця єдина партія визначає результат матчу.';

  @override
  String get gameHudOnlyCubeOwner =>
      'Подвоїти може лише власник куба, а зараз куб у суперника.';

  @override
  String get gameHudDoubleUnavailable => 'Зараз подвоєння недоступне.';

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
    return '$winner виграв цю партію ($points).';
  }

  @override
  String gameDialogPlayerWonGammon(Object winner, Object points) {
    return '$winner виграв цю партію ($points, гейммон).';
  }

  @override
  String gameDialogPlayerWonBackgammon(Object winner, Object points) {
    return '$winner виграв цю партію ($points, бекгеммон).';
  }

  @override
  String gameDialogPlayerWonDrop(Object winner, Object points, Object loser) {
    return '$winner виграв цю партію ($points) — $loser відмовився від подвоєння.';
  }

  @override
  String gameDialogPlayerWonResignation(
    Object winner,
    Object points,
    Object loser,
  ) {
    return '$winner виграв цю партію ($points) — $loser здався.';
  }

  @override
  String get gameDialogPassDeviceTitle => 'Передайте пристрій';

  @override
  String gameDialogPlayersTurn(Object name) {
    return 'Хід $name';
  }

  @override
  String get gameDialogTapToContinue => 'Торкніться, щоб продовжити';

  @override
  String get gameDialogCubeOfferedTitle => 'Запропоновано подвоєння';

  @override
  String gameDialogCubeOfferMessage(
    Object doubler,
    int value,
    Object tutorLine,
  ) {
    return '$doubler пропонує подвоїти до $value. Прийняти чи відмовитися?$tutorLine';
  }

  @override
  String get gameDialogPass => 'Відмовитися';

  @override
  String get gameDialogTake => 'Прийняти';

  @override
  String get gameDialogResignationTitle => 'Запропоновано здатися';

  @override
  String gameDialogResignationMessage(Object resigner, Object value) {
    return '$resigner пропонує здатися з результатом $value. Прийняти чи відхилити?';
  }

  @override
  String get gameDialogResignSingle => 'звичайна партія';

  @override
  String get gameDialogResignGammon => 'гейммон';

  @override
  String get gameDialogResignBackgammon => 'бекгеммон';

  @override
  String get gameDialogDecline => 'Відхилити';

  @override
  String get gameDialogAccept => 'Прийняти';

  @override
  String get gameDialogGameOverTitle => 'Партію завершено';

  @override
  String get gameDialogNextGame => 'Наступна партія';

  @override
  String get gameDialogMatchOverTitle => 'Матч завершено';

  @override
  String get gameDialogNobody => 'Ніхто';

  @override
  String gameDialogMatchWinner(Object winner) {
    return '$winner виграв матч.';
  }

  @override
  String get gameDialogSavedToHistory => 'Збережено в історії';

  @override
  String get gameDialogDone => 'Готово';

  @override
  String get gameTapNoLegalMove =>
      'Торкніться своєї шашки, щоб побачити дозволені ходи.';

  @override
  String get gameTapNoLegalMoveUndo =>
      'Торкніться шашки, а потім місця призначення.';

  @override
  String get gameDragHint => 'Перетягніть шашку до місця призначення.';

  @override
  String get commonGotIt => 'Зрозуміло';

  @override
  String get gameHintStageBeforeHint => 'Перед підказкою';

  @override
  String get surrenderTitle => 'Здатися в партії?';

  @override
  String surrenderNamedConcedes(String player) {
    return '$player здається в поточній партії.';
  }

  @override
  String get surrenderConcedes => 'Здатися в поточній партії.';

  @override
  String surrenderAvailableAtNamedTurn(String player) {
    return 'Доступно на початку ходу гравця $player';
  }

  @override
  String get surrenderAvailableAtYourTurn => 'Доступно на початку вашого ходу';

  @override
  String get commonCancel => 'Скасувати';

  @override
  String get surrenderSingle => 'Звичайна поразка';

  @override
  String get surrenderGammon => 'Гаммонна поразка';

  @override
  String get surrenderBackgammon => 'Бекгемонна поразка';

  @override
  String get surrenderChoosePlayer => 'Виберіть гравця';

  @override
  String get commonDone => 'Готово';

  @override
  String get cubeDouble => 'Подвоїти';

  @override
  String get cubeBlockedOtherPlayersTurn => 'Зараз хід іншого гравця.';

  @override
  String get cubeBlockedCrawford => 'У партії Кроуфорда куб недоступний.';

  @override
  String get cubeBlockedOwnedByOther =>
      'Подвоювати може лише власник куба; зараз він в іншої сторони.';

  @override
  String get cubeBlockedUnavailable => 'Зараз подвоєння недоступне.';

  @override
  String get gameStatusRolling => 'Кидок кубиків';

  @override
  String get gameStatusThinking => 'Комп’ютер думає';

  @override
  String gameStatusPlayersTurn(String player) {
    return 'Хід гравця $player';
  }

  @override
  String get cubeAdviceOpponentTake => 'Подвоїти — супернику варто прийняти';

  @override
  String get cubeAdviceOpponentPass => 'Подвоїти — супернику варто здатися';

  @override
  String gameErrorBannerLabel(Object error) {
    return 'Помилка: $error';
  }
}
