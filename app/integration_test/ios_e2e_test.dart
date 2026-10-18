// Run on an isolated iOS Simulator with both simulator engine archives staged:
// flutter test integration_test/ios_e2e_test.dart -d <simulator-id>
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/match_repository.dart';
import 'package:aigammon_app/data/practice_repository.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/main.dart';
import 'package:aigammon_app/online/online_providers.dart';
import 'package:aigammon_app/screens/analysis_screen.dart';
import 'package:aigammon_app/screens/diagnostics_screen.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:aigammon_app/screens/history_screen.dart';
import 'package:aigammon_app/screens/home_screen.dart';
import 'package:aigammon_app/screens/learning_screen.dart';
import 'package:aigammon_app/screens/lan_screen.dart';
import 'package:aigammon_app/screens/online_screen.dart';
import 'package:aigammon_app/screens/practice_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/helpers/board_driving.dart';
import '../test/lan/lan_full_match_test.dart' as lan;
import 'dual_engine_test.dart' as engines;
import 'game_back_navigation_test.dart' as back;

Future<void> _until(
  WidgetTester t,
  bool Function() condition, {
  Duration timeout = const Duration(seconds: 60),
}) async {
  final deadline = DateTime.now().add(timeout);
  while (!condition()) {
    if (DateTime.now().isAfter(deadline)) {
      fail('Timed out waiting for UI state');
    }
    await t.pump(const Duration(milliseconds: 50));
    await Future<void>.delayed(const Duration(milliseconds: 25));
  }
  await t.pump();
}

Future<void> _tap(WidgetTester t, Finder finder) async {
  await t.ensureVisible(finder);
  await t.pumpAndSettle();
  await t.tap(finder);
  await t.pump();
  await t.pump(const Duration(milliseconds: 400));
}

Future<ProviderContainer> _start(WidgetTester t) async {
  // Exercise the release build's unconfigured-online state. Debug builds
  // otherwise default to a Firebase emulator, which is not part of this suite.
  final container = ProviderContainer(
    overrides: [onlineConfigProvider.overrideWithValue(null)],
  );
  await t.runAsync(
    () => container
        .read(settingsRepositoryProvider)
        .save(
          AppSettings.defaults.copyWith(
            localeCode: 'en',
            animationSpeed: AnimationSpeed.off,
            defaultMatchLength: 1,
            defaultDifficulty: Difficulty.easy,
            tutorOverride: true,
            dragHintShown: true,
          ),
        ),
  );
  await t.runAsync(() => container.read(settingsProvider.future));
  await t.pumpWidget(
    UncontrolledProviderScope(container: container, child: const AiGammonApp()),
  );
  await t.pumpAndSettle();
  return container;
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  engines.main();
  back.main();
  lan.main();

  testWidgets('iOS phone navigation, settings and SQLite persistence', (
    t,
  ) async {
    final container = await _start(t);
    try {
      expect(find.byType(HomeScreen), findsOneWidget);
      expect(find.text('Play with Buddy'), findsNothing);
      for (final entry in <String, Type>{
        'Learning & practice': LearningScreen,
        'Games Archive': HistoryScreen,
        'Play Online': OnlineScreen,
        'Play Nearby': LanScreen,
      }.entries) {
        await _tap(t, find.text(entry.key));
        await _until(t, () => find.byType(entry.value).evaluate().isNotEmpty);
        if (entry.value == OnlineScreen) {
          expect(
            find.text('Online play isn’t configured in this build'),
            findsOneWidget,
          );
        }
        await t.pageBack();
        await t.pumpAndSettle();
        expect(find.byType(HomeScreen), findsOneWidget);
      }
      await _tap(t, find.byTooltip('Settings'));
      await _until(t, () => find.text('Dark').evaluate().isNotEmpty);
      await _tap(t, find.text('Dark'));
      await _until(
        t,
        () => t
            .widget<SegmentedButton<ThemeMode>>(
              find.byType(SegmentedButton<ThemeMode>),
            )
            .selected
            .contains(ThemeMode.dark),
      );
      final saved = await t.runAsync(
        () => container.read(settingsRepositoryProvider).load(),
      );
      expect(saved!.themeMode, ThemeMode.dark);
      await t.pageBack();
      await t.pumpAndSettle();
      await _tap(t, find.byTooltip('Settings'));
      await _until(
        t,
        () => find.byType(SegmentedButton<ThemeMode>).evaluate().isNotEmpty,
      );
      expect(
        t
            .widget<SegmentedButton<ThemeMode>>(
              find.byType(SegmentedButton<ThemeMode>),
            )
            .selected,
        {ThemeMode.dark},
      );
      await _tap(t, find.text('Light'));
      await _tap(t, find.text('Error log'));
      expect(find.byType(DiagnosticsScreen), findsOneWidget);
      await _tap(t, find.byTooltip('Report an issue on GitHub'));
      expect(find.text('Review diagnostic report'), findsOneWidget);
      await _tap(t, find.text('Cancel'));
      expect(find.byType(DiagnosticsScreen), findsOneWidget);
      expect(t.takeException(), isNull);
    } finally {
      await t.pumpWidget(const SizedBox.shrink());
      container.dispose();
    }
  });

  testWidgets(
    'iOS real AI game, hint, surrender, saved history and analysis',
    (t) async {
      final container = await _start(t);
      try {
        await _tap(t, find.text('Play vs Computer'));
        await _tap(t, find.text('Start match'));
        await _until(t, () => find.byType(GameScreen).evaluate().isNotEmpty);
        final c = t.widget<GameScreen>(find.byType(GameScreen)).controller;
        var hinted = false;
        final deadline = DateTime.now().add(const Duration(minutes: 3));
        while (c.game.events.whereType<MoveEvent>().length < 4 ||
            !c.awaitingHumanTurn) {
          if (DateTime.now().isAfter(deadline)) {
            fail('AI gameplay did not advance');
          }
          await t.pump(const Duration(milliseconds: 50));
          await Future<void>.delayed(const Duration(milliseconds: 25));
          expect(c.error, isNull);
          if (c.pendingMoveOf(Player.white).value != null) {
            if (!hinted) {
              final hint = find.text('Hint');
              if (hint.evaluate().isNotEmpty) {
                await _tap(t, hint.first);
                await _until(
                  t,
                  () => find.text('Top plays').evaluate().isNotEmpty,
                );
                expect(find.text('Top plays'), findsOneWidget);
                await _tap(t, find.byKey(const ValueKey('tutorPanelToggle')));
                hinted = true;
              }
            }
            await commitFirstMove(t);
          } else if (c.awaitingHumanTurn) {
            final roll = find.widgetWithText(FilledButton, 'Roll');
            if (roll.evaluate().isNotEmpty && isButtonEnabled(t, roll)) {
              await _tap(t, roll);
            }
          }
        }
        expect(hinted, isTrue);
        expect(c.state.board.checkerCount(Player.white), 15);
        expect(c.state.board.checkerCount(Player.black), 15);
        await _tap(t, find.byTooltip('More actions'));
        await _tap(t, find.text('Surrender…'));
        await _tap(t, find.text('Single (1)'));
        await _until(t, () => c.matchOver);
        await _until(t, () => find.text('Done').evaluate().isNotEmpty);
        await _tap(t, find.text('Done'));
        // Match completion returns to setup; its back button returns Home.
        await _until(t, () => find.byType(GameScreen).evaluate().isEmpty);
        if (find.byType(HomeScreen).evaluate().isEmpty) {
          await t.pageBack();
          await t.pumpAndSettle();
        }
        await _tap(t, find.text('Games Archive'));
        await _until(t, () => find.byType(ListTile).evaluate().isNotEmpty);
        await _tap(t, find.byType(ListTile).first);
        await _until(t, () => find.text('Game 1').evaluate().isNotEmpty);
        expect(find.byType(MatchDetailScreen), findsOneWidget);
        await _tap(t, find.text('Game 1'));
        await _until(
          t,
          () => find.byType(AnalysisScreen).evaluate().isNotEmpty,
        );
        await _until(
          t,
          () => find.text('Moves').evaluate().isNotEmpty,
          timeout: const Duration(minutes: 3),
        );
        final matches = await t.runAsync(
          () => container.read(matchRepositoryProvider).watchMatches().first,
        );
        expect(matches!.first.completed, isTrue);
        final games = await t.runAsync(
          () => container
              .read(matchRepositoryProvider)
              .gamesFor(matches.first.id),
        );
        expect(games, hasLength(1));
        expect(games!.single.analysisJson, isNotNull);
        for (
          var i = 0;
          i < 20 && find.byKey(const ValueKey('reviewSave')).evaluate().isEmpty;
          i++
        ) {
          await _tap(t, find.byTooltip('Next'));
        }
        await _tap(t, find.byKey(const ValueKey('reviewSave')));
        await _until(
          t,
          () => find.byType(PracticeScreen).evaluate().isNotEmpty,
        );
        await _until(
          t,
          () => find.text('Reveal answer (no credit)').evaluate().isNotEmpty,
        );
        await _tap(t, find.text('Reveal answer (no credit)'));
        await _until(
          t,
          () => find
              .text('Answer revealed — no recall credit.')
              .evaluate()
              .isNotEmpty,
        );
        final learning = await t.runAsync(
          () => container.read(practiceRepositoryProvider).loadLearning(),
        );
        expect(learning!.attempts, isNotEmpty);
        expect(learning.attempts.last.revealed, isTrue);
        expect(learning.attempts.last.passed, isFalse);
        expect(t.takeException(), isNull);
      } finally {
        await t.pumpWidget(const SizedBox.shrink());
        container.dispose();
      }
    },
    timeout: const Timeout(Duration(minutes: 8)),
  );
}
