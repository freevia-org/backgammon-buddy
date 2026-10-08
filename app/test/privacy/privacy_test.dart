import 'package:aigammon_app/analytics/firebase_observability.dart';
import 'package:aigammon_app/analytics/telemetry_controller.dart';
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/privacy/privacy_screen.dart';
import 'package:aigammon_app/privacy/privacy_settings_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/test_database.dart';

void main() {
  test('only public HTTPS policy URLs are exposed', () {
    expect(publicPrivacyPolicyUri(''), isNull);
    expect(publicPrivacyPolicyUri('file:///private'), isNull);
    expect(publicPrivacyPolicyUri('javascript:alert(1)'), isNull);
    expect(
      publicPrivacyPolicyUri('https://example.com/privacy')?.host,
      'example.com',
    );
  });

  testWidgets('privacy screen is readable at 320px and enlarged text', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    await tester.pumpWidget(
      ProviderScope(
        child: MaterialApp(
          builder: (_, child) => MediaQuery(
            data: const MediaQueryData(textScaler: TextScaler.linear(2)),
            child: child!,
          ),
          home: const PrivacyScreen(),
        ),
      ),
    );
    expect(find.text('Privacy and data'), findsOneWidget);
    await tester.drag(find.byType(ListView), const Offset(0, -1600));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('sharing requires confirmation and then persists the choice', (
    tester,
  ) async {
    final db = newTestDatabase();
    addTearDown(db.close);
    var starts = 0;
    final controller = TelemetryController(
      initialize: () async {
        starts++;
        return Observability.disabled;
      },
      disable: () async {},
    );
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          databaseProvider.overrideWithValue(db),
          settingsProvider.overrideWith(
            (_) => Stream.value(AppSettings.defaults),
          ),
          telemetryControllerProvider.overrideWithValue(controller),
        ],
        child: const MaterialApp(
          home: Scaffold(body: PrivacySettingsSection()),
        ),
      ),
    );
    await tester.pumpAndSettle();
    await tester.tap(find.byType(SwitchListTile));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Keep off'));
    await tester.pumpAndSettle();
    expect(starts, 0);
    await tester.tap(find.byType(SwitchListTile));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Share diagnostics'));
    await tester.pumpAndSettle();
    await tester.runAsync(() async {
      // Complete SQLite's background work before probing the persisted choice.
      await Future<void>.delayed(const Duration(milliseconds: 100));
      expect((await SettingsRepository(db).load()).telemetryEnabled, isTrue);
    });
    await tester.pumpAndSettle();
    expect(starts, 1);
  });
}
