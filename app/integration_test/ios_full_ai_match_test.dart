// Completes a real AI game by bearing off, using board taps for human plays.
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/match_repository.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/main.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/helpers/board_driving.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets(
    'real AI match finishes naturally and persists its result',
    (t) async {
      final scope = ProviderContainer();
      try {
        await t.runAsync(
          () => scope
              .read(settingsRepositoryProvider)
              .save(
                AppSettings.defaults.copyWith(
                  localeCode: 'en',
                  animationSpeed: AnimationSpeed.off,
                  defaultMatchLength: 1,
                  defaultDifficulty: Difficulty.easy,
                  tutorOverride: false,
                  dragHintShown: true,
                ),
              ),
        );
        await t.runAsync(() => scope.read(settingsProvider.future));
        await t.pumpWidget(
          UncontrolledProviderScope(
            container: scope,
            child: const AiGammonApp(),
          ),
        );
        await t.pumpAndSettle();
        await t.tap(find.text('Play vs Computer'));
        await t.pumpAndSettle();
        await t.ensureVisible(find.text('Start match'));
        await t.tap(find.text('Start match'));
        await t.pumpAndSettle();
        final c = t.widget<GameScreen>(find.byType(GameScreen)).controller;
        final deadline = DateTime.now().add(const Duration(minutes: 8));
        while (!c.matchOver) {
          if (DateTime.now().isAfter(deadline)) {
            fail('Natural game did not finish');
          }
          await t.pump(const Duration(milliseconds: 25));
          await Future<void>.delayed(const Duration(milliseconds: 10));
          expect(c.error, isNull);
          expect(c.state.board.checkerCount(Player.white), 15);
          expect(c.state.board.checkerCount(Player.black), 15);
          if (c.pendingMoveOf(Player.white).value != null) {
            await commitFirstMove(t);
          } else if (c.awaitingHumanTurn) {
            final roll = find.widgetWithText(FilledButton, 'Roll');
            if (roll.evaluate().isNotEmpty && isButtonEnabled(t, roll)) {
              await t.tap(roll);
              await t.pump();
            }
          }
        }
        expect(
          c.state.result!.outcome,
          isIn([
            GameOutcome.single,
            GameOutcome.gammon,
            GameOutcome.backgammon,
          ]),
        );
        expect(c.game.events.whereType<MoveEvent>().length, greaterThan(10));
        await t.pumpAndSettle();
        final rows = await t.runAsync(
          () => scope.read(matchRepositoryProvider).watchMatches().first,
        );
        expect(rows!.first.completed, isTrue);
        final games = await t.runAsync(
          () => scope.read(matchRepositoryProvider).gamesFor(rows.first.id),
        );
        expect(games, hasLength(1));
        expect(games!.single.resultWinner, c.state.result!.winner.name);
        expect(t.takeException(), isNull);
      } finally {
        await t.pumpWidget(const SizedBox.shrink());
        scope.dispose();
      }
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
