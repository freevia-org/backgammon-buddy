import 'dart:ui' show Tristate;

import 'package:aigammon_app/board/board_view.dart';
import 'package:aigammon_app/game/game_controller.dart';
import 'package:aigammon_app/game/game_record.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/screens/game/score_sheet_panel.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/board_driving.dart';
import '../game_screen_test.dart'
    show FakeAgent, RealRankEngine, ScriptedDiceRoller;

void main() {
  for (final configuration in [
    (size: const Size(320, 568), scale: 1.0),
    (size: const Size(320, 568), scale: 2.0),
    (size: const Size(640, 360), scale: 1.0),
    (size: const Size(640, 360), scale: 2.0),
  ]) {
    testWidgets(
      'integrated tutor fits ${configuration.size} at ${configuration.scale}x',
      (t) async {
        t.view.physicalSize = configuration.size;
        t.view.devicePixelRatio = 1;
        addTearDown(t.view.resetPhysicalSize);
        addTearDown(t.view.resetDevicePixelRatio);
        final semantics = t.ensureSemantics();
        try {
          final controller = GameController(
            white: LocalHumanAgent(),
            black: FakeAgent(),
            matchLength: 5,
            diceRoller: ScriptedDiceRoller(Dice(1, 6), [Dice(3, 1)]),
          );
          addTearDown(controller.disposeController);
          await t.pumpWidget(
            MaterialApp(
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: TextScaler.linear(configuration.scale)),
                child: child!,
              ),
              home: GameScreen(
                controller: controller,
                tutor: TutorService(RealRankEngine()),
              ),
            ),
          );
          await pumpUntil(t, () => controller.awaitingHumanTurn);
          await t.pumpAndSettle();
          expect(t.takeException(), isNull);

          final panel = find.byKey(const ValueKey('tutorPanel'));
          final toggle = find.byKey(const ValueKey('tutorPanelToggle'));
          final board = t.getRect(find.byType(BoardView));
          final collapsed = t.getRect(panel);
          final roll = t.getRect(find.widgetWithText(FilledButton, 'Roll'));
          expect(board.height, greaterThan(0));
          expect(collapsed.contains(roll.center), isTrue);
          expect(roll.right, collapsed.right - 12);
          expect(roll.bottom, collapsed.bottom - 8);
          expect(find.byIcon(Icons.school_outlined), findsOneWidget);
          final grip = t.getRect(find.byKey(const ValueKey('tutorPanelGrip')));
          expect(grip.center.dx, collapsed.center.dx);
          expect(t.getSize(toggle).height, greaterThanOrEqualTo(48));
          expect(
            t.getSemantics(toggle).flagsCollection.isExpanded,
            Tristate.isFalse,
          );
          expect(find.byTooltip('Tutoring options'), findsNothing);

          final sheet = t.widget<ScoreSheetPanel>(find.byType(ScoreSheetPanel));
          final move = sheet.rows.whereType<ScoreSheetTurn>().first.black!;
          await t.ensureVisible(find.text(move.text));
          await t.pumpAndSettle();
          await t.tap(find.text(move.text));
          await t.pumpAndSettle();
          expect(t.takeException(), isNull);
          expect(
            t
                .widget<ScoreSheetPanel>(find.byType(ScoreSheetPanel))
                .selectedEventIndex,
            move.eventIndex,
          );
          expect(find.text('Live').hitTestable(), findsOneWidget);
          await t.tap(find.text('Live'));
          await t.pumpAndSettle();

          await t.tap(toggle);
          await t.pumpAndSettle();
          expect(t.takeException(), isNull);
          expect(t.getRect(find.byType(BoardView)), board);
          expect(t.getRect(panel).bottom, collapsed.bottom);
          expect(t.getRect(find.widgetWithText(FilledButton, 'Roll')), roll);
          expect(t.getRect(panel).top, greaterThanOrEqualTo(0));
          expect(
            t.getSemantics(toggle).flagsCollection.isExpanded,
            Tristate.isTrue,
          );
          final settings = find.byTooltip('Tutoring options');
          expect(settings.hitTestable(), findsOneWidget);
          expect(
            t.getSize(find.byKey(const ValueKey('tutorPanelSettings'))).height,
            greaterThanOrEqualTo(48),
          );
          await t.tap(settings);
          await t.pumpAndSettle();
          expect(t.takeException(), isNull);
          final tryFirstSwitch = find.descendant(
            of: find.ancestor(
              of: find.text('Try a move first'),
              matching: find.byType(SwitchListTile),
            ),
            matching: find.byType(Switch),
          );
          await t.ensureVisible(tryFirstSwitch);
          await t.pumpAndSettle();
          expect(tryFirstSwitch.hitTestable(), findsOneWidget);
          final previous = t.widget<Switch>(tryFirstSwitch).value;
          await t.tap(tryFirstSwitch);
          await t.pumpAndSettle();
          expect(t.widget<Switch>(tryFirstSwitch).value, !previous);
          await t.tap(find.text('Done'));
          await t.pumpAndSettle();
          expect(t.takeException(), isNull);
        } finally {
          semantics.dispose();
        }
      },
    );
  }
}
