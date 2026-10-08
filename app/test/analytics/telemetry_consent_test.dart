import 'dart:async';
import 'dart:io';

import 'package:aigammon_app/analytics/app_analytics.dart';
import 'package:aigammon_app/analytics/firebase_config.dart';
import 'package:aigammon_app/analytics/firebase_observability.dart';
import 'package:aigammon_app/analytics/telemetry_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers/fake_observability.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  tearDown(() => debugDefaultTargetPlatformOverride = null);

  test('a configured mobile build cannot initialize without opt-in', () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    var initialized = false;
    final result = await initializeObservability(
      configOverride: const FirebaseAppConfig(
        projectId: 'test',
        apiKey: 'test',
        appId: 'test',
        messagingSenderId: '1',
      ),
      initializer: (_) async => initialized = true,
    );
    expect(initialized, isFalse);
    expect(result.isEnabled, isFalse);
  });

  test('stable sinks stop forwarding synchronously on withdrawal', () async {
    final analytics = RecordingAnalytics();
    final performance = RecordingPerformance();
    final crashes = RecordingCrashReporter();
    final disableGate = Completer<void>();
    final controller = TelemetryController(
      initialize: () async => Observability(
        analytics: analytics,
        performance: performance,
        crashReporter: crashes,
        isEnabled: true,
      ),
      disable: () => disableGate.future,
    );
    controller.logEvent('before');
    expect(analytics.names, isEmpty);
    await controller.setEnabled(true);
    controller.logEvent('accepted');
    final withdrawal = controller.setEnabled(false);
    controller.logEvent('after');
    controller.recordDuration('after', Duration.zero);
    controller.recordError(StateError('after'), null);
    expect(controller.isEnabled, isFalse);
    expect(analytics.names, ['accepted']);
    expect(performance.durations, isEmpty);
    expect(crashes.errors, isEmpty);
    disableGate.complete();
    await withdrawal;
  });

  test(
    'withdrawal during Firebase init never enables native collection',
    () async {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      final initialized = Completer<void>();
      var allowed = true;
      final changes = <bool>[];
      final pending = initializeObservability(
        consentGranted: true,
        isConsentCurrent: () => allowed,
        configOverride: const FirebaseAppConfig(
          projectId: 'test',
          apiKey: 'test',
          appId: 'test',
          messagingSenderId: '1',
        ),
        initializer: (_) => initialized.future,
        collectionSetter: (enabled) async => changes.add(enabled),
      );
      allowed = false;
      initialized.complete();
      expect((await pending).isEnabled, isFalse);
      expect(changes, isEmpty);
    },
  );

  test('late initialization cannot reopen withdrawn consent', () async {
    final initializeGate = Completer<Observability>();
    final analytics = RecordingAnalytics();
    var disables = 0;
    final controller = TelemetryController(
      initialize: () => initializeGate.future,
      disable: () async => disables++,
    );
    final enabling = controller.setEnabled(true);
    await Future<void>.delayed(Duration.zero);
    final withdrawal = controller.setEnabled(false);
    initializeGate.complete(
      Observability(
        analytics: analytics,
        performance: const NoopPerformance(),
        crashReporter: const NoopCrashReporter(),
        isEnabled: true,
      ),
    );
    await enabling;
    await withdrawal;
    controller.logEvent('after');
    expect(controller.isEnabled, isFalse);
    expect(analytics.names, isEmpty);
    expect(disables, greaterThanOrEqualTo(1));
  });

  test(
    'initialization failure fails closed and disables native collection',
    () async {
      var disables = 0;
      final controller = TelemetryController(
        initialize: () async => throw StateError('partial native enable'),
        disable: () async => disables++,
      );
      await controller.setEnabled(true);
      expect(controller.isEnabled, isFalse);
      expect(disables, 1);
      expect(await controller.trace('still-works', () async => 42), 42);
    },
  );

  test('repeated preference notifications do not initialize twice', () async {
    var starts = 0;
    final controller = TelemetryController(
      initialize: () async {
        starts++;
        return Observability.disabled;
      },
      disable: () async {},
    );
    await Future.wait([
      controller.setEnabled(true),
      controller.setEnabled(true),
    ]);
    expect(starts, 1);
  });

  test('native SDK collection defaults are off before Dart starts', () {
    final android = File(
      'android/app/src/main/AndroidManifest.xml',
    ).readAsStringSync();
    final ios = File('ios/Runner/Info.plist').readAsStringSync();
    for (final name in [
      'firebase_analytics_collection_enabled',
      'firebase_crashlytics_collection_enabled',
      'firebase_performance_collection_enabled',
    ]) {
      expect(android, contains('android:name="$name" android:value="false"'));
    }
    for (final name in [
      'FIREBASE_ANALYTICS_COLLECTION_ENABLED',
      'FirebaseCrashlyticsCollectionEnabled',
      'firebase_performance_collection_enabled',
    ]) {
      expect(ios, matches('<key>$name</key>\\s*<false/>'));
    }
  });
}
