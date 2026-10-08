import 'package:aigammon_app/game/game_controller.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/board_driving.dart';
import 'game_screen_test.dart'
    show ScriptedDiceRoller, FakeAgent, RecordingRankEngine;

void main() {
  testWidgets('try first makes no hint query until a full play is staged', (
    t,
  ) async {
    await t.binding.setSurfaceSize(const Size(900, 1300));
    addTearDown(() => t.binding.setSurfaceSize(null));
    final human = LocalHumanAgent();
    final controller = GameController(
      white: human,
      black: FakeAgent(),
      matchLength: 5,
      diceRoller: ScriptedDiceRoller(Dice(6, 1), [Dice(3, 2)]),
    );
    final engine = RecordingRankEngine();
    await t.pumpWidget(
      MaterialApp(
        home: GameScreen(
          controller: controller,
          tutor: TutorService(engine),
          tutorOptions: const TutorOptions(tryFirst: true),
        ),
      ),
    );
    await pumpUntil(t, () => human.pendingMoveRequest.value != null);
    final hint = find.widgetWithText(OutlinedButton, 'Hint');
    await t.tap(hint);
    await t.pump();
    expect(engine.asked, isEmpty);
    expect(find.text('Top plays'), findsNothing);
    expect(
      find.textContaining('Stage a complete legal play first'),
      findsOneWidget,
    );
    final confirm = find.widgetWithText(FilledButton, 'Confirm');
    for (var i = 0; i < 6 && !isButtonEnabled(t, confirm); i++) {
      await tapBoardPoint(t, boardPainterOf(t).highlightedSources.first);
      await tapBoardPoint(t, boardPainterOf(t).highlightedDestinations.first);
    }
    expect(isButtonEnabled(t, confirm), isTrue);
    await t.tap(hint);
    await t.pumpAndSettle();
    expect(engine.asked, hasLength(1));
    expect(find.text('MWC %'), findsOneWidget);
    expect(find.textContaining('0-ply estimate'), findsOneWidget);
    await t.pumpWidget(const SizedBox());
    controller.disposeController();
  });
}
