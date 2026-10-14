import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/engine/engine_provider.dart';
import 'package:aigammon_app/engine/engine_comparison_panel.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/screens/settings_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets(
    'both real native engines run concurrently on a 16 KB Android device',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(body: Text('Native engine integration test')),
        ),
      );
      await tester.pumpAndSettle();
      final wildbg = EngineManager(), gnu = EngineManager(spawner: spawnGnuBg);
      final position = GameState.opening(
        firstPlayer: Player.white,
        openingDice: Dice(3, 1),
      );
      const context = MatchContext(
        moverAway: 5,
        opponentAway: 3,
        crawfordPlayed: false,
      );
      try {
        debugPrint('Starting both native workers');
        final results = await tester.runAsync(
          () => Future.wait([
            wildbg.withEngine(
              (e) => e.rankMoves(position.board, position.turn, position.dice!),
            ),
            gnu.withEngine(
              (e) => (e as ContextualEngineApi).rankWithContext(
                position.board,
                position.turn,
                position.dice!,
                analysisContextFor(position, position.turn, context),
              ),
            ),
          ]),
        );
        debugPrint('Both native rankings completed');
        expect(results, hasLength(2));
        for (final ranked in results!) {
          expect(ranked, isNotEmpty);
          expect(
            position.legalMoves.any(
              (m) =>
                  position.board.applyMove(position.turn, m) ==
                  position.board.applyMove(position.turn, ranked.first.move),
            ),
            isTrue,
          );
        }
        expect(results[1].first.matchWinningChance, inInclusiveRange(0.0, 1.0));
        expect(results[1].first.searchPlies, isNotNull);
        final played = position.legalMoves.last;
        final assessed = await tester.runAsync(
          () => gnu.withEngine(
            (e) => (e as AssessmentEngineApi).rankPlayed(
              position.board,
              position.turn,
              position.dice!,
              analysisContextFor(position, position.turn, context),
              played,
            ),
          ),
        );
        final graded = assessed!.firstWhere(
          (m) =>
              position.board.applyMove(position.turn, m.move) ==
              position.board.applyMove(position.turn, played),
        );
        expect(graded.searchPlies, assessed.first.searchPlies);
        final cube = await tester.runAsync(
          () => gnu.withEngine(
            (e) => (e as ContextualEngineApi).cubeWithContext(
              position.board,
              position.turn,
              analysisContextFor(position, position.turn, context),
            ),
          ),
        );
        expect(cube!.matchAware, isTrue);
        expect(cube.equityNoDouble, inInclusiveRange(0.0, 1.0));
      } finally {
        await wildbg.disposeManager();
        await gnu.disposeManager();
      }
    },
  );
  testWidgets('engine settings persist and the tutor shows both native results', (
    tester,
  ) async {
    final db = AppDatabase(NativeDatabase.memory());
    final repo = SettingsRepository(db);
    final wildbg = EngineManager(), gnu = EngineManager(spawner: spawnGnuBg);
    Widget shell(Widget child) => ProviderScope(
      overrides: [
        databaseProvider.overrideWithValue(db),
        engineManagerProvider.overrideWithValue(wildbg),
        gnuBgManagerProvider.overrideWithValue(gnu),
      ],
      child: MaterialApp(
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: Scaffold(body: child),
      ),
    );
    try {
      await tester.pumpWidget(shell(const SettingsScreen()));
      await tester.pumpAndSettle();
      await tester.tap(find.byType(DropdownButtonFormField<EvaluationEngine>));
      await tester.pumpAndSettle();
      await tester.tap(find.text('GNUbg').last);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Analyse with both engines'));
      await tester.pumpAndSettle();
      final settings = await tester.runAsync(repo.load);
      expect(settings!.evaluationEngine, EvaluationEngine.gnubg);
      expect(settings.parallelEngineAnalysis, isTrue);
      final position = GameState.opening(
        firstPlayer: Player.white,
        openingDice: Dice(3, 1),
      );
      await tester.pumpWidget(
        shell(
          EngineComparisonPanel(
            position: position,
            context: const MatchContext(
              moverAway: 5,
              opponentAway: 5,
              crawfordPlayed: false,
            ),
          ),
        ),
      );
      await tester.pumpAndSettle(const Duration(milliseconds: 100));
      // Native startup/evaluation is asynchronous to the UI. Give it real time.
      for (
        var i = 0;
        i < 200 && find.byType(LinearProgressIndicator).evaluate().isNotEmpty;
        i++
      ) {
        await tester.runAsync(
          () => Future<void>.delayed(const Duration(milliseconds: 100)),
        );
        await tester.pump();
      }
      expect(find.text('wildbg'), findsOneWidget);
      expect(find.text('GNUbg'), findsOneWidget);
      expect(find.textContaining('Win chance:'), findsNWidgets(2));
      expect(tester.takeException(), isNull);
    } finally {
      await tester.pumpWidget(const SizedBox.shrink());
      await wildbg.disposeManager();
      await gnu.disposeManager();
      await db.close();
    }
  });
}
