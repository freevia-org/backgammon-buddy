import 'dart:math';

import 'package:aigammon_app/board/board_view.dart';
import 'package:aigammon_app/game/dice_roller.dart';
import 'package:aigammon_app/game/game_controller.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/screens/game/tutor_panel.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/board_driving.dart';
import '../game_screen_test.dart'
    show FakeAgent, HangingMoveAgent, RealRankEngine, ScriptedDiceRoller;

const _homeKey = ValueKey('backTestHome');

/// Push the game over another route: mounting it as MaterialApp.home would
/// conceal the regression, because a root route cannot be popped in any case.
Future<void> _openGame(
  WidgetTester t,
  GameController controller, {
  TutorService? tutor,
  bool showPassDevice = false,
  bool tabletop = false,
}) async {
  await t.binding.setSurfaceSize(const Size(900, 1300));
  addTearDown(() => t.binding.setSurfaceSize(null));
  addTearDown(controller.disposeController);
  await t.pumpWidget(
    MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        key: _homeKey,
        body: Builder(
          builder: (context) => TextButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => GameScreen(
                  controller: controller,
                  tutor: tutor,
                  showPassDevice: showPassDevice,
                  tabletop: tabletop,
                ),
              ),
            ),
            child: const Text('Start game'),
          ),
        ),
      ),
    ),
  );
  await t.tap(find.text('Start game'));
  await t.pumpAndSettle();
}

Future<void> _systemBack(WidgetTester t) async {
  await t.binding.handlePopRoute();
  await t.pumpAndSettle();
}

void _expectGameStillOpen(WidgetTester t, GameController controller) {
  expect(find.byType(GameScreen), findsOneWidget);
  expect(find.byKey(_homeKey), findsNothing);
  expect(controller.error, isNull);
  expect(t.takeException(), isNull);
}

BoardEntryController _entryOf(WidgetTester t) =>
    t.widget<BoardView>(find.byType(BoardView)).entryControl!;

Future<void> _stageHop(WidgetTester t) async {
  await tapBoardPoint(t, boardPainterOf(t).highlightedSources.first);
  await tapBoardPoint(t, boardPainterOf(t).highlightedDestinations.first);
}

GameController _atHumanGate(LocalHumanAgent human) => GameController(
  white: human,
  black: FakeAgent(),
  matchLength: 5,
  diceRoller: ScriptedDiceRoller(Dice(1, 6), [Dice(3, 1), Dice(6, 5)]),
);

GameController _atOpeningMove(LocalHumanAgent human) => GameController(
  white: human,
  black: HangingMoveAgent(),
  matchLength: 5,
  diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 1)]),
);

void main() {
  testWidgets(
    'Back at pre-roll opens and dismisses surrender without leaving',
    (t) async {
      final human = LocalHumanAgent();
      final controller = _atHumanGate(human);
      await _openGame(t, controller);
      await pumpUntil(t, () => controller.awaitingHumanTurn);
      final events = controller.game.events;

      await _systemBack(t);
      _expectGameStillOpen(t, controller);
      expect(find.text('Surrender'), findsOneWidget);
      expect(
        t
            .widget<TextButton>(find.widgetWithText(TextButton, 'Single (1)'))
            .onPressed,
        isNotNull,
      );

      await _systemBack(t);
      _expectGameStillOpen(t, controller);
      expect(find.text('Surrender'), findsNothing);
      expect(controller.game.events, same(events));

      await _systemBack(t);
      _expectGameStillOpen(t, controller);
      expect(find.text('Surrender'), findsOneWidget);
      expect(controller.game.events, same(events));
    },
  );

  testWidgets('Back after rolling opens surrender with no unconfirmed hops', (
    t,
  ) async {
    final human = LocalHumanAgent();
    final controller = _atHumanGate(human);
    await _openGame(t, controller);
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    await t.tap(find.widgetWithText(FilledButton, 'Roll'));
    await pumpUntil(t, () => human.pendingMoveRequest.value != null);
    final position = controller.state;
    expect(controller.awaitingHumanTurn, isFalse);
    expect(_entryOf(t).canUndo, isFalse);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.text('Surrender'), findsOneWidget);
    expect(
      t
          .widget<TextButton>(find.widgetWithText(TextButton, 'Single (1)'))
          .onPressed,
      isNull,
      reason: 'Back opens the sheet even when resignation is not yet legal',
    );
    expect(controller.state, same(position));
    expect(human.pendingMoveRequest.value, isNotNull);
  });

  testWidgets('Back collapses tutor before undoing one staged hop per press', (
    t,
  ) async {
    final human = LocalHumanAgent();
    final controller = _atOpeningMove(human);
    await _openGame(t, controller, tutor: TutorService(RealRankEngine()));
    await pumpUntil(t, () => human.pendingMoveRequest.value != null);
    final events = controller.game.events;
    final entry = _entryOf(t);
    await _stageHop(t);
    await _stageHop(t);
    expect(entry.stagedMove!.checkerMoves, hasLength(2));
    expect(entry.canConfirm, isTrue);
    final fullMove = entry.stagedMove!;

    await t.tap(find.byKey(const ValueKey('tutorPanelToggle')));
    await t.pumpAndSettle();
    expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isTrue);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isFalse);
    expect(entry.stagedMove!.sameAs(fullMove), isTrue);
    expect(find.text('Surrender'), findsNothing);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(entry.stagedMove!.checkerMoves, hasLength(1));
    expect(entry.canConfirm, isFalse);
    expect(find.text('Surrender'), findsNothing);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(entry.canUndo, isFalse);
    expect(entry.stagedMove?.checkerMoves ?? const [], isEmpty);
    expect(find.text('Surrender'), findsNothing);
    expect(
      controller.game.events,
      same(events),
      reason: 'Back changes only the unconfirmed move',
    );

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.text('Surrender'), findsOneWidget);
  });

  testWidgets('Back dismisses surrender before reverting a move behind it', (
    t,
  ) async {
    final human = LocalHumanAgent();
    final controller = _atOpeningMove(human);
    await _openGame(t, controller);
    await pumpUntil(t, () => human.pendingMoveRequest.value != null);
    await _stageHop(t);
    final staged = _entryOf(t).stagedMove!;
    await t.tap(find.byTooltip('More actions'));
    await t.pumpAndSettle();
    await t.tap(find.text('Surrender…'));
    await t.pumpAndSettle();
    expect(find.text('Surrender'), findsOneWidget);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.text('Surrender'), findsNothing);
    expect(_entryOf(t).stagedMove!.sameAs(staged), isTrue);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(_entryOf(t).canUndo, isFalse);
  });

  testWidgets('Back closes the overflow menu without opening surrender', (
    t,
  ) async {
    final controller = _atHumanGate(LocalHumanAgent());
    await _openGame(t, controller);
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    await t.tap(find.byTooltip('More actions'));
    await t.pumpAndSettle();
    expect(find.text('Surrender…'), findsOneWidget);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.text('Surrender…'), findsNothing);
    expect(find.text('Surrender'), findsNothing);
  });

  testWidgets('Back closes tutor options before collapsing the tutor', (
    t,
  ) async {
    final controller = _atHumanGate(LocalHumanAgent());
    await _openGame(t, controller, tutor: TutorService(RealRankEngine()));
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    await t.tap(find.byKey(const ValueKey('tutorPanelToggle')));
    await t.pumpAndSettle();
    await t.tap(find.byTooltip('Tutoring options'));
    await t.pumpAndSettle();
    expect(find.byType(Dialog), findsOneWidget);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.byType(Dialog), findsNothing);
    expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isTrue);
    expect(find.text('Surrender'), findsNothing);

    await _systemBack(t);
    expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isFalse);
    _expectGameStillOpen(t, controller);
  });

  testWidgets('Back dismisses the hot-seat pass-device overlay', (t) async {
    final controller = GameController(
      white: LocalHumanAgent(),
      black: LocalHumanAgent(),
      matchLength: 5,
      diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 1)]),
    );
    await _openGame(t, controller, showPassDevice: true);
    if (find.text('Pass the device').evaluate().isNotEmpty) {
      await t.tap(find.text('Tap to continue'));
      await t.pumpAndSettle();
    }
    await commitFirstMove(t);
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    expect(find.text('Pass the device'), findsOneWidget);

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(find.text('Pass the device'), findsNothing);
    expect(find.text('Surrender'), findsNothing);
    expect(controller.awaitingHumanTurn, isTrue);
  });

  testWidgets('Back hides an incoming double without answering it', (t) async {
    final human = LocalHumanAgent();
    final controller = GameController(
      white: human,
      black: FakeAgent(doubles: true),
      matchLength: 5,
      diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 1)]),
    );
    await _openGame(t, controller);
    await pumpUntil(t, () => human.pendingMoveRequest.value != null);
    await commitFirstMove(t);
    await pumpUntil(t, () => human.pendingCubeRequest.value != null);
    final pending = human.pendingCubeRequest.value;
    final events = controller.game.events;

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(human.pendingCubeRequest.value, same(pending));
    expect(controller.game.events, same(events));
    expect(find.widgetWithText(FilledButton, 'Take'), findsNothing);
    final reopen = find.byKey(const ValueKey('pendingGameDecision'));
    expect(reopen, findsOneWidget);
    expect(find.text('Surrender'), findsNothing);

    await t.tap(reopen);
    await t.pumpAndSettle();
    expect(find.widgetWithText(FilledButton, 'Take'), findsOneWidget);
    await t.tap(find.widgetWithText(FilledButton, 'Take'));
    await pumpUntil(t, () => controller.state.cube.value == 2);
    _expectGameStillOpen(t, controller);
    expect(human.pendingCubeRequest.value, isNull);
    expect(controller.game.events.whereType<TakeEvent>(), hasLength(1));
  });

  testWidgets('Back hides a resignation offer without accepting or declining', (
    t,
  ) async {
    final white = LocalHumanAgent();
    final black = LocalHumanAgent();
    final controller = GameController(
      white: white,
      black: black,
      matchLength: 5,
      diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 1)]),
    );
    await _openGame(t, controller);
    await pumpUntil(t, () => white.pendingMoveRequest.value != null);
    await commitFirstMove(t);
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    controller.offerResign(ResignValue.single);
    await pumpUntil(t, () => white.pendingResignRequest.value != null);
    final pending = white.pendingResignRequest.value;
    final events = controller.game.events;

    await _systemBack(t);
    _expectGameStillOpen(t, controller);
    expect(white.pendingResignRequest.value, same(pending));
    expect(controller.game.events, same(events));
    expect(find.text('Accept'), findsNothing);
    expect(find.text('Decline'), findsNothing);
    final reopen = find.byKey(const ValueKey('pendingGameDecision'));
    expect(reopen, findsOneWidget);

    await t.tap(reopen);
    await t.pumpAndSettle();
    expect(find.text('Accept'), findsOneWidget);
    await t.tap(find.text('Decline'));
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    _expectGameStillOpen(t, controller);
    expect(white.pendingResignRequest.value, isNull);
    expect(controller.match.whiteScore, 0);
    expect(controller.match.blackScore, 0);
  });

  for (final decider in Player.values) {
    testWidgets(
      'tabletop hidden double reopens only at the ${decider.name} decider edge',
      (t) async {
        final white = LocalHumanAgent();
        final black = LocalHumanAgent();
        final human = decider == Player.white ? white : black;
        final controller = GameController(
          white: white,
          black: black,
          matchLength: 5,
          diceRoller: ScriptedDiceRoller(
            decider == Player.white ? Dice(6, 1) : Dice(1, 6),
            [Dice(3, 1)],
          ),
        );
        await _openGame(t, controller, tabletop: true);
        await pumpUntil(t, () => human.pendingMoveRequest.value != null);
        await _stageHop(t);
        await _stageHop(t);
        expect(_entryOf(t).canConfirm, isTrue);
        final deciderBar = find.byKey(
          ValueKey(decider == Player.white ? 'actionBar' : 'topActionBar'),
        );
        final otherBar = find.byKey(
          ValueKey(decider == Player.white ? 'topActionBar' : 'actionBar'),
        );
        await t.tap(
          find.descendant(
            of: deciderBar,
            matching: find.widgetWithText(FilledButton, 'Confirm'),
          ),
        );
        await pumpUntil(t, () => controller.awaitingHumanTurn);
        controller.offerDouble();
        await pumpUntil(t, () => human.pendingCubeRequest.value != null);
        final events = controller.game.events;

        await _systemBack(t);
        _expectGameStillOpen(t, controller);
        expect(controller.game.events, same(events));
        expect(human.pendingCubeRequest.value, isNotNull);
        final activeReopen = find.descendant(
          of: deciderBar,
          matching: find.byKey(const ValueKey('pendingGameDecision')),
        );
        final inactiveReopen = find.descendant(
          of: otherBar,
          matching: find.byKey(const ValueKey('pendingGameDecision')),
        );
        expect(isButtonEnabled(t, activeReopen), isTrue);
        expect(isButtonEnabled(t, inactiveReopen), isFalse);

        await t.tap(activeReopen);
        await t.pumpAndSettle();
        expect(find.widgetWithText(FilledButton, 'Take'), findsOneWidget);
        expect(human.pendingCubeRequest.value, isNotNull);
        expect(controller.game.events, same(events));
      },
    );
  }

  testWidgets(
    'Back between games hides the result without advancing the match',
    (t) async {
      final controller = _atHumanGate(LocalHumanAgent());
      await _openGame(t, controller);
      await pumpUntil(t, () => controller.awaitingHumanTurn);
      controller.offerResign(ResignValue.single);
      await pumpUntil(t, () => controller.awaitingNextGame);
      final game = controller.game;
      expect(controller.matchOver, isFalse);

      await _systemBack(t);
      _expectGameStillOpen(t, controller);
      expect(find.text('Game over'), findsNothing);
      expect(controller.game, same(game));
      expect(controller.awaitingNextGame, isTrue);
      final nextGame = find.widgetWithText(FilledButton, 'Next game');
      expect(nextGame, findsOneWidget);
      await t.tap(nextGame);
      await pumpUntil(t, () => !identical(controller.game, game));
      _expectGameStillOpen(t, controller);
    },
  );

  testWidgets('two retained Next game callbacks start only one new game', (
    t,
  ) async {
    final controller = _atHumanGate(LocalHumanAgent());
    await _openGame(t, controller);
    await pumpUntil(t, () => controller.awaitingHumanTurn);
    controller.offerResign(ResignValue.single);
    await pumpUntil(t, () => controller.awaitingNextGame);
    final previousNumber = controller.gameNumber;
    await _systemBack(t);
    final nextGame = t
        .widget<FilledButton>(find.widgetWithText(FilledButton, 'Next game'))
        .onPressed!;

    // Both callbacks belong to the visible frame: the controller's completed
    // continue gate has not yet advanced its loop or rebuilt the button.
    nextGame();
    nextGame();
    await t.pump();
    await pumpUntil(t, () => controller.gameNumber > previousNumber);
    _expectGameStillOpen(t, controller);
    expect(controller.gameNumber, previousNumber + 1);
    expect(controller.awaitingNextGame, isFalse);
  });

  testWidgets(
    'Back collapses tutor after dismissing the between-game summary',
    (t) async {
      final controller = _atHumanGate(LocalHumanAgent());
      await _openGame(t, controller, tutor: TutorService(RealRankEngine()));
      await pumpUntil(t, () => controller.awaitingHumanTurn);
      controller.offerResign(ResignValue.single);
      await pumpUntil(t, () => controller.awaitingNextGame);
      final game = controller.game;
      await _systemBack(t);
      expect(find.text('Game over'), findsNothing);
      await t.tap(find.byKey(const ValueKey('tutorPanelToggle')));
      await t.pumpAndSettle();
      expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isTrue);

      await _systemBack(t);
      _expectGameStillOpen(t, controller);
      expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isFalse);
      expect(controller.game, same(game));
      expect(controller.awaitingNextGame, isTrue);
      expect(find.widgetWithText(FilledButton, 'Next game'), findsOneWidget);
      expect(find.text('Surrender'), findsNothing);
    },
  );

  for (final finishWithBack in [true, false]) {
    testWidgets(
      '${finishWithBack ? 'Back' : 'Done'} leaves a completed match',
      (t) async {
        final controller = GameController(
          white: FakeAgent(),
          black: FakeAgent(),
          matchLength: 1,
          diceRoller: DiceRoller(Random(7)),
        );
        await _openGame(t, controller);
        await pumpUntil(t, () => controller.matchOver);
        expect(find.text('Match over'), findsOneWidget);

        if (finishWithBack) {
          await _systemBack(t);
        } else {
          await t.tap(find.widgetWithText(FilledButton, 'Done'));
          await t.pumpAndSettle();
        }
        expect(find.byType(GameScreen), findsNothing);
        expect(find.byKey(_homeKey), findsOneWidget);
        expect(t.takeException(), isNull);
      },
    );
  }
}
