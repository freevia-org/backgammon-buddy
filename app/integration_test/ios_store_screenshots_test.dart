// Authentic simulator captures of shipping widgets, no painted marketing mockups.
// Run on a dedicated disposable simulator; settings are changed for stable English captures.
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/main.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets(
    'capture authentic store screens on this simulator',
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
                  tutorOverride: true,
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
        expect(t.takeException(), isNull);
        await binding.takeScreenshot('01-home');
        await t.tap(find.text('Play vs Computer'));
        await t.pumpAndSettle();
        expect(t.takeException(), isNull);
        await binding.takeScreenshot('02-match-setup');
        await t.ensureVisible(find.text('Start match'));
        await t.tap(find.text('Start match'));
        await t.pumpAndSettle();
        expect(find.byType(GameScreen), findsOneWidget);
        expect(t.takeException(), isNull);
        await binding.takeScreenshot('03-solo-game');
      } finally {
        await t.pumpWidget(const SizedBox.shrink());
        scope.dispose();
      }
    },
    timeout: const Timeout(Duration(minutes: 5)),
  );
}
