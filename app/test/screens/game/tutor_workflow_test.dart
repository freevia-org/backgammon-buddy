import 'package:aigammon_app/board/board_view.dart';
import 'package:aigammon_app/game/game_controller.dart';
import 'package:aigammon_app/game/game_record.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/screens/game/score_sheet_panel.dart';
import 'package:aigammon_app/screens/game/tutor_panel.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/board_driving.dart';
import '../game_screen_test.dart'
    show FakeAgent, RealRankEngine, ScriptedDiceRoller;

String _heading(WidgetTester t) =>
    t.widget<Text>(find.byKey(const ValueKey('tutorSummaryHeading'))).data!;

Future<void> _hop(WidgetTester t) async {
  await tapBoardPoint(t, boardPainterOf(t).highlightedSources.first);
  await tapBoardPoint(t, boardPainterOf(t).highlightedDestinations.first);
}

void main() {
  testWidgets(
    'tutor follows stage, undo, computer reply, log review and new roll',
    (t) async {
      t.view.physicalSize = const Size(390, 844);
      t.view.devicePixelRatio = 1;
      addTearDown(t.view.resetPhysicalSize);
      addTearDown(t.view.resetDevicePixelRatio);
      final human = LocalHumanAgent();
      final controller = GameController(
        white: human,
        black: FakeAgent(),
        matchLength: 5,
        diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 2), Dice(4, 2)]),
      );
      await t.pumpWidget(
        MaterialApp(
          home: GameScreen(
            controller: controller,
            tutor: TutorService(RealRankEngine()),
          ),
        ),
      );
      await pumpUntil(t, () => human.pendingMoveRequest.value != null);
      await t.pumpAndSettle();
      final current = _heading(t);
      expect(find.byTooltip('Tutor coaching and options'), findsNothing);
      await _hop(t);
      expect(_heading(t), isNot(current));
      expect(_heading(t), contains('taking shape'));
      await t.tap(find.text('Undo'));
      await t.pumpAndSettle();
      expect(
        _heading(t),
        current,
        reason: 'Undo must restore the current decision',
      );

      await commitFirstMove(t);
      await pumpUntil(t, () => controller.awaitingHumanTurn);
      await t.pumpAndSettle();
      expect(_heading(t), contains('Computer'));
      expect(_heading(t), contains('Roll next'));
      expect(
        find.widgetWithText(FilledButton, 'Roll').hitTestable(),
        findsOneWidget,
      );
      final sheet = t.widget<ScoreSheetPanel>(find.byType(ScoreSheetPanel));
      final turn = sheet.rows.whereType<ScoreSheetTurn>().first;
      await t.tap(find.text(turn.white!.text));
      await t.pumpAndSettle();
      expect(_heading(t), startsWith('Review: Your'));
      expect(t.widget<TutorPanel>(find.byType(TutorPanel)).expanded, isFalse);
      expect(find.text('Live').hitTestable(), findsOneWidget);
      await t.tap(find.text(turn.black!.text));
      await t.pumpAndSettle();
      expect(_heading(t), startsWith('Review: Computer'));
      await t.tap(find.text('Live'));
      await t.pumpAndSettle();
      expect(_heading(t), contains('Roll next'));
      await t.tap(find.widgetWithText(FilledButton, 'Roll'));
      await pumpUntil(t, () => human.pendingMoveRequest.value != null);
      await t.pumpAndSettle();
      expect(_heading(t), isNot(contains('Roll next')));
      expect(_heading(t), isNot(startsWith('Review:')));
      expect(
        t
            .widget<ScoreSheetPanel>(find.byType(ScoreSheetPanel))
            .selectedEventIndex,
        isNull,
      );
      expect(t.takeException(), isNull);
      await t.pumpWidget(const SizedBox());
    },
  );

  testWidgets(
    'each partial double hop notifies entry even when affordances stay equal',
    (t) async {
      final state = GameState.testState(
        board: BoardState.initial(),
        turn: Player.white,
        phase: GamePhase.moving,
        dice: Dice(3, 3),
      );
      final entry = BoardEntryController();
      var changes = 0;
      entry.addListener(() => changes++);
      await t.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: BoardView(
              state: state,
              interactive: true,
              onMoveCommitted: (_) {},
              entryControl: entry,
            ),
          ),
        ),
      );
      await t.pumpAndSettle();
      await _hop(t);
      expect(entry.canUndo, isTrue);
      expect(entry.canConfirm, isFalse);
      expect(entry.stagedMove!.checkerMoves, hasLength(1));
      final afterFirst = changes;
      await _hop(t);
      expect(entry.canUndo, isTrue);
      expect(entry.canConfirm, isFalse);
      expect(entry.stagedMove!.checkerMoves, hasLength(2));
      expect(changes, greaterThan(afterFirst));
      entry.undo();
      await t.pump();
      expect(entry.stagedMove!.checkerMoves, hasLength(1));
      entry.undo();
      await t.pump();
      expect(entry.stagedMove, isNull);
      await t.pumpWidget(const SizedBox());
      entry.dispose();
    },
  );
}
