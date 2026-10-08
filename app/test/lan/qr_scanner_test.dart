import 'package:aigammon_app/lan/qr_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'dart:async';
import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:aigammon_app/lan/qr_decoder.dart';

/// The camera itself cannot be tested here — there is none, and pointing it at
/// something is not a thing a test can do. What CAN be tested is everything
/// around it: which platforms are even asked, and the shape of the three
/// answers the join tab has to handle.
void main() {
  group('platform support', () {
    test('the mobile platforms with a camera implementation are supported', () {
      expect(qrScanSupportedOn(TargetPlatform.android), isTrue);
      expect(qrScanSupportedOn(TargetPlatform.iOS), isTrue);
      expect(qrScanSupportedOn(TargetPlatform.macOS), isFalse);
    });

    test('the desktop targets this app also ships are NOT', () {
      // Windows is a real target here (see windows/), and Play Nearby works
      // there through discovery and typed addresses. Asking the plugin for a
      // camera on it throws, so it is refused before the route is pushed.
      expect(qrScanSupportedOn(TargetPlatform.windows), isFalse);
      expect(qrScanSupportedOn(TargetPlatform.linux), isFalse);
      expect(qrScanSupportedOn(TargetPlatform.fuchsia), isFalse);
    });
  });

  group('outcomes', () {
    test('every outcome is one of the three the join tab switches on', () {
      const outcomes = <QrScanOutcome>[
        QrScanCode('aigammon://join?v=1&h=1.2.3.4&p=47780&c=1234'),
        QrScanCancelled(),
        QrScanUnavailable('no camera'),
      ];
      for (final outcome in outcomes) {
        // A `switch` over a sealed type is exhaustive at COMPILE time; this
        // asserts the runtime side, that nothing else can turn up.
        final label = switch (outcome) {
          QrScanCode() => 'code',
          QrScanCancelled() => 'cancelled',
          QrScanUnavailable() => 'unavailable',
        };
        expect(label, isNotEmpty);
      }
    });

    test('an unavailable outcome always carries something to show the user',
        () {
      const outcome = QrScanUnavailable('Enter the address by hand.');
      expect(outcome.message, isNotEmpty);
    });
  });

  group('backing out', () {
    /// The message the "Enter the address instead" button on the camera-error
    /// screen shows — and, per [backOutcomeFor], the one a back gesture out of
    /// the same screen must report.
    final denied = CameraException('CameraAccessDenied', '');

    test('backing out of a WORKING camera is a plain cancellation', () {
      expect(backOutcomeFor(null), isA<QrScanCancelled>());
    });

    test('backing out of a refused camera says the same thing the button does',
        () {
      // The bug this pins: a system back from the permission-denied screen used
      // to report a cancellation, so the join tab showed nothing at all and the
      // scan button looked simply broken.
      final outcome = backOutcomeFor(denied);
      expect(outcome, isA<QrScanUnavailable>());
      expect((outcome as QrScanUnavailable).message, cameraErrorText(denied));
      expect(outcome.message, contains('permission'));
      expect(outcome.message, contains('by hand'),
          reason: 'every camera failure ends by pointing at manual entry');
    });

    test('every camera failure has a message, not just the ones we listed', () {
      for (final code in [
        'CameraAccessDenied',
        'CameraAccessDeniedWithoutPrompt',
        'CameraAccessRestricted',
        'unsupported',
        'noCamera',
        'unexpected'
      ]) {
        final text = cameraErrorText(CameraException(code, ''));
        expect(text, isNotEmpty, reason: code);
        expect(text, contains('by hand'), reason: code);
      }
    });
  });

  group('the scanner route', () {
    // There is no camera here, so the preview sits in its placeholder state —
    // which is exactly the state both bugs below lived in.

    testWidgets('the torch survives a tap before the camera is up', (t) async {
      await t.pumpWidget(MaterialApp(home: QrScanPage(camera: FakeQrCamera())));
      await t.pump();

      // Immediately: `toggleTorch` throws `controllerUninitialized` until
      // `start()` has come back, and the button is tappable for that whole
      // window.
      await t.tap(find.byIcon(Icons.flashlight_on));
      await t.pump();
      await t.pump(const Duration(milliseconds: 200));

      expect(t.takeException(), isNull,
          reason: 'an early torch tap is a no-op, not a crash');
      expect(find.byIcon(Icons.flashlight_on), findsOneWidget);
    });

    testWidgets('backing out always pops WITH an outcome, never null',
        (t) async {
      QrScanOutcome? outcome;
      var popped = false;
      await t.pumpWidget(MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () async {
              outcome = await Navigator.of(context).push<QrScanOutcome>(
                MaterialPageRoute(
                    builder: (_) => QrScanPage(camera: FakeQrCamera())),
              );
              popped = true;
            },
            child: const Text('scan'),
          ),
        ),
      ));
      await t.tap(find.text('scan'));
      await t.pumpAndSettle();
      expect(find.byType(QrScanPage), findsOneWidget);

      await t.pageBack();
      await t.pumpAndSettle();

      expect(popped, isTrue);
      // Null would read as "cancelled" by luck rather than by decision — and on
      // the camera-error screen it would swallow the reason entirely.
      expect(outcome, isNotNull);
      expect(outcome, isA<QrScanCancelled>());
    });
  });
  testWidgets('permission denial preserves manual fallback and back outcome',
      (t) async {
    final camera = FakeQrCamera()
      ..failure = CameraException('CameraAccessDenied', '');
    await t.pumpWidget(MaterialApp(home: QrScanPage(camera: camera)));
    await t.pumpAndSettle();
    expect(find.textContaining('permission'), findsOneWidget);
    expect(find.text('Enter the address instead'), findsOneWidget);
    expect(camera.closes, 1);
  });

  testWidgets(
      'background releases camera, resume restarts and ignores stale frames',
      (t) async {
    final camera = FakeQrCamera();
    addTearDown(() =>
        t.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed));
    var decodes = 0;
    await t.pumpWidget(MaterialApp(
        home: QrScanPage(
            camera: camera,
            decoder: (_) async {
              decodes++;
              return null;
            })));
    await t.pumpAndSettle();
    final stale = camera.onFrame!;
    camera.emit();
    await t.pump();
    expect(decodes, 1);
    t.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    await t.pump();
    expect(camera.closes, 1);
    stale(testFrame);
    await t.pump();
    expect(decodes, 1);
    t.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await t.pumpAndSettle();
    expect(camera.starts, 2);
    stale(testFrame);
    camera.emit();
    await t.pump();
    expect(decodes, 2);
    await t.pumpWidget(const SizedBox());
    await t.pump();
    expect(camera.closes, 2);
    camera.emit();
    await t.pump();
    expect(decodes, 2);
    expect(t.takeException(), isNull);
  });

  testWidgets('permission-sheet inactivity does not reopen after a refusal',
      (t) async {
    final camera = FakeQrCamera()
      ..opening = Completer<void>()
      ..failure = CameraException('CameraAccessDenied', '');
    await t.pumpWidget(MaterialApp(home: QrScanPage(camera: camera)));
    await t.pump();
    t.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    camera.opening!.complete();
    t.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await t.pumpAndSettle();
    expect(camera.starts, 1);
    expect(camera.closes, 1);
    expect(find.text('Enter the address instead'), findsOneWidget);
  });

  testWidgets('manual fallback fits a small screen with enlarged text',
      (t) async {
    t.view.physicalSize = const Size(320, 568);
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
    final camera = FakeQrCamera()
      ..failure = CameraException('CameraAccessDenied', '');
    await t.pumpWidget(MaterialApp(
        builder: (context, child) => MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: const TextScaler.linear(2)),
            child: child!),
        home: QrScanPage(camera: camera)));
    await t.pumpAndSettle();
    await t.ensureVisible(find.text('Enter the address instead'));
    expect(t.takeException(), isNull);
  });

  testWidgets('a late camera start is closed after route disposal', (t) async {
    final camera = FakeQrCamera()..opening = Completer<void>();
    await t.pumpWidget(MaterialApp(home: QrScanPage(camera: camera)));
    await t.pump();
    await t.pumpWidget(const SizedBox());
    camera.opening!.complete();
    await t.pump();
    expect(camera.closes, 1);
    expect(t.takeException(), isNull);
  });

  testWidgets('foreign QR keeps scanning; valid QR pops exactly once',
      (t) async {
    final camera = FakeQrCamera();
    var decoded = 'https://example.org/foreign';
    var results = 0;
    QrScanOutcome? outcome;
    await t.pumpWidget(MaterialApp(
        home: Builder(
            builder: (context) => TextButton(
                onPressed: () async {
                  outcome = await Navigator.of(context).push<QrScanOutcome>(
                      MaterialPageRoute(
                          builder: (_) => QrScanPage(
                              camera: camera, decoder: (_) async => decoded)));
                  results++;
                },
                child: const Text('scan')))));
    await t.tap(find.text('scan'));
    await t.pumpAndSettle();
    camera.emit();
    await t.pumpAndSettle();
    expect(find.textContaining('not a Backgammon Buddy'), findsOneWidget);
    decoded = 'aigammon://join?v=1&h=192.168.1.2&p=47780&c=1234';
    camera.emit();
    camera.emit();
    await t.pumpAndSettle();
    expect(results, 1);
    expect((outcome as QrScanCode).raw, decoded);
    expect(camera.closes, 1);
  });

  testWidgets('pending decode never pops another route after disposal',
      (t) async {
    final camera = FakeQrCamera();
    final decoded = Completer<String?>();
    await t.pumpWidget(MaterialApp(
        home: QrScanPage(camera: camera, decoder: (_) => decoded.future)));
    await t.pumpAndSettle();
    camera.emit();
    await t.pump();
    await t.pumpWidget(const MaterialApp(home: Text('other route')));
    decoded.complete('aigammon://join?v=1&h=192.168.1.2&p=47780&c=1234');
    await t.pumpAndSettle();
    expect(find.text('other route'), findsOneWidget);
    expect(t.takeException(), isNull);
  });
}

final testFrame = QrLuminanceFrame(1, 1, Int8List(1));

class FakeQrCamera implements QrScanCamera {
  int starts = 0;
  int closes = 0;
  CameraException? failure;
  Completer<void>? opening;
  void Function(QrLuminanceFrame)? onFrame;

  @override
  Future<void> start(void Function(QrLuminanceFrame) frame,
      void Function(CameraException) error) async {
    starts++;
    onFrame = frame;
    if (opening != null) await opening!.future;
    if (failure != null) throw failure!;
  }

  void emit() => onFrame?.call(testFrame);
  @override
  Widget preview() => const SizedBox();
  @override
  Future<void> toggleTorch() async {}
  @override
  Future<void> close() async {
    closes++;
  }
}
