import 'dart:async';

import 'package:aigammon_app/screens/buddy/calibration_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../buddy/fake_calibration_seams.dart';

void main() {
  for (final result in [
    const CameraUnavailable('Camera permission refused'),
    const CameraReady(),
  ]) {
    testWidgets('permission sheet keeps one open and its $result result', (
      tester,
    ) async {
      final camera = _PendingCamera();
      addTearDown(camera.shutDown);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pumpWidget(_Probe(camera));
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
      camera.result.complete(result);
      await tester.pump();
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();

      expect(camera.opens, 1, reason: 'Refusal must not trigger another ask');
      expect(camera.closes, 0);
      expect(
        find.text(result is CameraUnavailable ? result.message : 'ready'),
        findsOneWidget,
      );
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump();
      expect(camera.closes, 1);
      expect(camera.users, 0);
    });
  }

  testWidgets('late inactive after refusal does not ask again', (tester) async {
    final camera = _PendingCamera();
    addTearDown(camera.shutDown);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pumpWidget(_Probe(camera));
    camera.result.complete(const CameraUnavailable('Camera permission refused'));
    await tester.pump();
    // Native permission callbacks can settle before their lifecycle event.
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    await tester.pump();
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await tester.pump();
    expect(camera.opens, 1);
    expect(camera.closes, 0);
    expect(find.text('Camera permission refused'), findsOneWidget);
    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    expect(camera.closes, 1);
    expect(camera.users, 0);
  });

  testWidgets('an unexpected open failure is reported and shown as unavailable',
      (tester) async {
    final camera = _ThrowingCamera();
    addTearDown(camera.shutDown);
    final reported = <FlutterErrorDetails>[];
    final previousOnError = FlutterError.onError;
    FlutterError.onError = reported.add;
    addTearDown(() => FlutterError.onError = previousOnError);

    await tester.pumpWidget(_Probe(camera));
    await tester.pump();

    expect(
      find.text('The camera could not be started. Check permissions and try again.'),
      findsOneWidget,
    );
    expect(reported, hasLength(1));
    expect(reported.single.exception, isA<StateError>());
    expect(tester.takeException(), isNull);

    await tester.pumpWidget(const SizedBox.shrink());
    await tester.pump();
    expect(camera.users, 0);
  });

  testWidgets(
    'full background during permission closes then resumes normally',
    (tester) async {
      final camera = _PendingCamera();
      addTearDown(camera.shutDown);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pumpWidget(_Probe(camera));
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
      camera.result.complete(const CameraReady());
      await tester.pump();
      expect(camera.opens, 1);
      expect(camera.closes, 1);
      expect(camera.users, 0);

      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pump();
      expect(camera.opens, 2);
      expect(find.text('ready'), findsOneWidget);
      // Once initialized, inactive still releases the camera promptly.
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
      await tester.pump();
      expect(camera.closes, 2);
      await tester.pumpWidget(const SizedBox.shrink());
      await tester.pump();
      expect(camera.closes, 2, reason: 'Disposal cannot release another hold');
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    },
  );

  testWidgets(
    'disposal while permission is pending releases the eventual hold',
    (tester) async {
      final camera = _PendingCamera();
      addTearDown(camera.shutDown);
      tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
      await tester.pumpWidget(_Probe(camera));
      await tester.pumpWidget(const SizedBox.shrink());
      camera.result.complete(
        const CameraUnavailable('Camera permission refused'),
      );
      await tester.pump();
      expect(camera.opens, 1);
      expect(camera.closes, 1);
      expect(camera.users, 0);
      expect(tester.takeException(), isNull);
    },
  );
}

class _PendingCamera extends FakeBuddyCamera {
  final result = Completer<CameraOpening>();

  @override
  Future<CameraOpening> open() async {
    await super.open();
    return result.future;
  }
}

class _ThrowingCamera extends FakeBuddyCamera {
  @override
  Future<CameraOpening> open() => Future.error(StateError('platform failed'));
}

class _Probe extends StatefulWidget {
  const _Probe(this.camera);
  final BuddyCamera camera;

  @override
  State<_Probe> createState() => _ProbeState();
}

class _ProbeState extends State<_Probe>
    with WidgetsBindingObserver, BuddyCameraLifecycle<_Probe> {
  CameraOpening? opening;

  @override
  BuddyCamera get lifecycleCamera => widget.camera;

  @override
  void initState() {
    super.initState();
    startCamera();
  }

  @override
  void onCameraOpening(CameraOpening? value) => setState(() => opening = value);

  @override
  void dispose() {
    stopCamera();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Text(switch (opening) {
      CameraUnavailable(:final message) => message,
      CameraReady() => 'ready',
      null => 'waiting',
    }),
  );
}
