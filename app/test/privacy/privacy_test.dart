import 'package:aigammon_app/analytics/firebase_observability.dart';
import 'package:aigammon_app/analytics/telemetry_controller.dart';
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/privacy/privacy_screen.dart';
import 'package:aigammon_app/privacy/privacy_settings_section.dart';
import 'package:aigammon_app/privacy/online_data_deletion.dart';
import 'package:aigammon_app/online/online_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/test_database.dart';

void main() {
  test(
    'local-only deletion does not require cloud config or create identity',
    () async {
      final db = newTestDatabase();
      final container = ProviderContainer(
        overrides: [
          databaseProvider.overrideWithValue(db),
          onlineConfigProvider.overrideWithValue(null),
        ],
      );
      addTearDown(container.dispose);
      addTearDown(db.close);
      expect(
        await container.read(requestOnlineDeletionProvider)(),
        OnlineDeletionResult.noIdentity,
      );
      expect(await container.read(onlineSessionStoreProvider).read(), isNull);
    },
  );

  testWidgets(
    'acknowledged deletion with failed local clear is still reported as requested',
    (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            requestOnlineDeletionProvider.overrideWithValue(
              () async => OnlineDeletionResult.requestedLocalSignOutFailed,
            ),
          ],
          child: const MaterialApp(home: PrivacyScreen()),
        ),
      );
      final button = find.widgetWithText(
        OutlinedButton,
        'Delete online identity and data',
      );
      await tester.scrollUntilVisible(button, 200);
      await tester.pumpAndSettle();
      await tester.ensureVisible(button);
      await tester.pumpAndSettle();
      await tester.tap(button);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Request deletion'));
      await tester.pumpAndSettle();
      expect(
        find.textContaining(
          'Deletion requested. Its cloud data will be deleted within 30 days.',
        ),
        findsOneWidget,
      );
      expect(
        find.textContaining('The device could not clear the saved sign-in'),
        findsOneWidget,
      );
      expect(find.textContaining('Could not confirm'), findsNothing);
    },
  );

  testWidgets(
    'online deletion requires confirmation and reports only acknowledged request',
    (tester) async {
      var requests = 0;
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            requestOnlineDeletionProvider.overrideWithValue(() async {
              requests++;
              return OnlineDeletionResult.requested;
            }),
          ],
          child: const MaterialApp(home: PrivacyScreen()),
        ),
      );
      final button = find.widgetWithText(
        OutlinedButton,
        'Delete online identity and data',
      );
      await tester.scrollUntilVisible(button, 200);
      await tester.pumpAndSettle();
      await tester.ensureVisible(button);
      await tester.pumpAndSettle();
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(requests, 0);
      await tester.tap(find.text('Cancel'));
      await tester.pumpAndSettle();
      expect(requests, 0);
      await tester.tap(button);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Request deletion'));
      await tester.pumpAndSettle();
      expect(requests, 1);
      expect(
        find.textContaining(
          'Deletion requested. This online identity is signed out.',
        ),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'online deletion failure keeps retry available without claiming success',
    (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            requestOnlineDeletionProvider.overrideWithValue(() async {
              throw StateError('offline');
            }),
          ],
          child: const MaterialApp(home: PrivacyScreen()),
        ),
      );
      final button = find.widgetWithText(
        OutlinedButton,
        'Delete online identity and data',
      );
      await tester.scrollUntilVisible(button, 200);
      await tester.pumpAndSettle();
      await tester.ensureVisible(button);
      await tester.pumpAndSettle();
      await tester.tap(button);
      await tester.pumpAndSettle();
      await tester.tap(find.text('Request deletion'));
      await tester.pumpAndSettle();
      expect(
        find.textContaining('Could not confirm the deletion request.'),
        findsOneWidget,
      );
      expect(tester.widget<OutlinedButton>(button).onPressed, isNotNull);
      expect(find.textContaining('Deletion requested.'), findsNothing);
    },
  );

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
