import 'package:aigammon_app/buddy/buddy_session.dart';
import 'package:aigammon_app/buddy/phrasing.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/engine/engine_provider.dart';
import 'package:aigammon_app/screens/buddy/buddy_game_screen.dart';
import 'package:aigammon_app/screens/buddy/buddy_setup_screen.dart';
import 'package:aigammon_app/screens/buddy/calibration_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../buddy/fake_vision.dart';

void main() {
  final setup = BuddySetup(
    matchLength: 5,
    cubeless: false,
    difficulty: Difficulty.medium,
    buddySide: Player.black,
    seat: BuddySeat.near,
    phrasing: BuddyPhrasing.terse,
  );
  final routes = <String, Widget Function()>{
    'setup': () => BuddySetupScreen(
      launch: (_, _, _) => fail('Disabled setup must not launch'),
    ),
    'calibration': () => CalibrationScreen(
      request: const CalibrationRequest(
        userSide: Player.white,
        seat: BuddySeat.near,
      ),
      onCalibrated: (_) => fail('Disabled calibration must not complete'),
    ),
    'game': () => BuddyGameScreen(
      setup: setup,
      outcome: CalibrationOutcome(
        vision: FakeVision(),
        handles: BoardHandles.seed(folding: false),
        seat: BuddySeat.near,
      ),
    ),
  };

  for (final route in routes.entries) {
    testWidgets('v1 blocks direct ${route.key} route before side effects', (
      tester,
    ) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            buddyCameraProvider.overrideWith((_) => throw StateError('Camera')),
            buddyMicProvider.overrideWith(
              (_) => throw StateError('Microphone'),
            ),
            buddyTtsProvider.overrideWith((_) => throw StateError('Speech')),
            engineFacadeProvider.overrideWith(
              (_) => throw StateError('Engine'),
            ),
            databaseProvider.overrideWith(
              (_) => throw StateError('Persistence'),
            ),
            settingsProvider.overrideWith((_) => throw StateError('Settings')),
          ],
          child: MaterialApp(home: route.value()),
        ),
      );
      await tester.pumpAndSettle();
      expect(
        find.textContaining('Physical-board play is not available'),
        findsOneWidget,
      );
      expect(tester.takeException(), isNull);
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pumpAndSettle();
      expect(tester.takeException(), isNull);
    });
  }
}
