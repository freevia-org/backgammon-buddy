import 'dart:async';

import 'package:aigammon_app/screens/game/hint_panel.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('a thrown hint request clears loading and does not escape', () async {
    final controller = HintController();
    controller.open(() => throw StateError('unavailable'));
    await Future<void>.delayed(Duration.zero);
    expect(controller.isLoading, isFalse);
    expect(controller.moves, isEmpty);
    controller.dispose();
  });

  test('late ranking cannot overwrite a newer hint request', () async {
    final controller = HintController();
    final old = Completer<List<ScoredMove>>();
    controller.open(() => old.future);
    controller.close();
    controller.open(() async => []);
    await Future<void>.delayed(Duration.zero);
    old.complete([
      ScoredMove(
        move: Move.none,
        probabilities: const Probabilities(
          win: .5,
          winGammon: 0,
          winBackgammon: 0,
          loseGammon: 0,
          loseBackgammon: 0,
        ),
      ),
    ]);
    await Future<void>.delayed(Duration.zero);
    expect(controller.moves, isEmpty);
    controller.dispose();
  });

  for (final scale in [1.0, 2.0]) {
    testWidgets('expanded explanations fit a narrow phone at scale $scale', (
      tester,
    ) async {
      await tester.binding.setSurfaceSize(const Size(320, 568));
      addTearDown(() => tester.binding.setSurfaceSize(null));
      final state = GameState.testState(
        board: BoardState.initial(),
        turn: Player.white,
        phase: GamePhase.moving,
        dice: Dice(3, 1),
      );
      final moves = [
        for (final move in state.legalMoves.take(5))
          ScoredMove(
            move: move,
            probabilities: const Probabilities(
              win: .6,
              winGammon: .1,
              winBackgammon: 0,
              loseGammon: .1,
              loseBackgammon: 0,
            ),
          ),
      ];
      await tester.pumpWidget(
        MaterialApp(
          home: MediaQuery(
            data: MediaQueryData(
              size: const Size(320, 568),
              textScaler: TextScaler.linear(scale),
            ),
            child: Scaffold(
              body: HintPanel(
                loading: false,
                moves: moves,
                position: state,
                onClose: () {},
                onApply: (_) {},
              ),
            ),
          ),
        ),
      );
      await tester.ensureVisible(find.text('Why this play?'));
      await tester.tap(find.text('Why this play?'));
      await tester.pumpAndSettle();
      expect(find.textContaining('highest estimated equity'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
