import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/engine/engine_provider.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:drift/native.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('fresh settings select the real GNUbg engine on Android', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: Text('GNUbg default'))),
    );
    final db = AppDatabase(NativeDatabase.memory());
    final container = ProviderContainer(
      overrides: [databaseProvider.overrideWithValue(db)],
    );
    try {
      await tester.runAsync(() async {
        final repo = SettingsRepository(db);
        final settings = await container.read(settingsProvider.future);
        expect(settings.evaluationEngine, EvaluationEngine.gnubg);
        final facade = container.read(engineFacadeProvider);
        final position = GameState.opening(
          firstPlayer: Player.white,
          openingDice: Dice(3, 1),
        );
        final ranked = await facade.rankMoves(
          position.board,
          position.turn,
          position.dice!,
        );
        expect(ranked, isNotEmpty);
        await repo.save(
          settings.copyWith(evaluationEngine: EvaluationEngine.wildbg),
        );
        expect((await repo.load()).evaluationEngine, EvaluationEngine.wildbg);
      });
    } finally {
      container.dispose();
      await tester.runAsync(db.close);
    }
  });
}
