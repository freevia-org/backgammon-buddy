import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:camera/camera.dart';

import 'qr_payload.dart';
import 'qr_decoder.dart';

/// The camera, behind one method.
///
/// [LanScreen] never owns a camera directly; it asks a [QrScanner]
/// for a string and deals with the three answers below. That is what makes the
/// join flow testable on a machine with no camera — a widget test overrides
/// [qrScannerProvider] with a scripted scanner and drives the whole path from
/// "user tapped Scan" to "the guest session was opened".
///
/// The seam is deliberately COARSE (one call, one outcome) rather than a stream
/// of frames: everything about running a camera — permissions, lifecycle,
/// torch, ignoring the poster on the wall behind the other player — belongs on
/// the far side of it.
abstract interface class QrScanner {
  /// Open a scanner over [context] and wait for it to finish.
  ///
  /// Never throws: a camera that cannot be opened comes back as
  /// [QrScanUnavailable], not as an exception.
  Future<QrScanOutcome> scan(BuildContext context);
}

/// How a scan ended.
sealed class QrScanOutcome {
  const QrScanOutcome();
}

/// A code was read. [raw] is UNVALIDATED text — the caller decodes it with
/// [tryDecodeQrJoin] and must be ready for null.
final class QrScanCode extends QrScanOutcome {
  const QrScanCode(this.raw);

  final String raw;
}

/// The user backed out. Nothing to say; the join tab simply stays where it was.
final class QrScanCancelled extends QrScanOutcome {
  const QrScanCancelled();
}

/// No camera to scan with — permission refused, no camera on the device, or the
/// platform refused to start one. [message] is user-facing and always points at
/// the manual-entry fallback, because a scan that cannot happen must never be a
/// dead end.
final class QrScanUnavailable extends QrScanOutcome {
  const QrScanUnavailable(this.message);

  final String message;
}

/// The existing camera plugin supports the app's Android/iOS shipping targets.
/// Desktop nearby play retains discovery and manual address entry.
bool qrScanSupportedOn(TargetPlatform platform) =>
    platform == TargetPlatform.android || platform == TargetPlatform.iOS;

class CameraQrScanner implements QrScanner {
  const CameraQrScanner();

  @override
  Future<QrScanOutcome> scan(BuildContext context) async {
    if (kIsWeb || !qrScanSupportedOn(defaultTargetPlatform)) {
      return QrScanUnavailable(
          cameraErrorText(CameraException('unsupported', '')));
    }
    final outcome = await Navigator.of(context).push<QrScanOutcome>(
      MaterialPageRoute(builder: (_) => const QrScanPage()),
    );
    return outcome ?? const QrScanCancelled();
  }
}

/// Injectable camera boundary keeps lifecycle and late-frame handling testable.
abstract interface class QrScanCamera {
  Future<void> start(void Function(QrLuminanceFrame) onFrame,
      void Function(CameraException) onError);
  Widget preview();
  Future<void> toggleTorch();
  Future<void> close();
}

class PhoneQrScanCamera implements QrScanCamera {
  CameraController? _controller;
  bool _torch = false;

  @override
  Future<void> start(void Function(QrLuminanceFrame) onFrame,
      void Function(CameraException) onError) async {
    final cameras = await availableCameras();
    if (cameras.isEmpty) throw CameraException('noCamera', '');
    final back = cameras.firstWhere(
      (c) => c.lensDirection == CameraLensDirection.back,
      orElse: () => cameras.first,
    );
    final controller = CameraController(back, ResolutionPreset.medium,
        enableAudio: false,
        imageFormatGroup: defaultTargetPlatform == TargetPlatform.iOS
            ? ImageFormatGroup.bgra8888
            : ImageFormatGroup.yuv420);
    _controller = controller;
    _torch = false;
    await controller.initialize();
    final clock = Stopwatch()..start();
    var lastFrame = -250;
    await controller.startImageStream((image) {
      if (_controller != controller ||
          clock.elapsedMilliseconds - lastFrame < 250) {
        return;
      }
      lastFrame = clock.elapsedMilliseconds;
      final format = image.format.group;
      if (image.planes.isEmpty ||
          !(format == ImageFormatGroup.yuv420 ||
              format == ImageFormatGroup.nv21 ||
              format == ImageFormatGroup.bgra8888)) {
        onError(CameraException('unsupportedFormat', ''));
        return;
      }
      final plane = image.planes.first;
      final bgra = format == ImageFormatGroup.bgra8888;
      final frame = QrLuminanceFrame.fromPlane(
          width: image.width,
          height: image.height,
          bytes: plane.bytes,
          rowStride: plane.bytesPerRow,
          pixelStride: bgra ? 4 : (plane.bytesPerPixel ?? 1),
          bgra: bgra);
      if (frame != null) onFrame(frame);
    });
  }

  @override
  Widget preview() => _controller?.value.isInitialized == true
      ? CameraPreview(_controller!)
      : const SizedBox.shrink();

  @override
  Future<void> toggleTorch() async {
    final controller = _controller;
    if (controller == null || !controller.value.isInitialized) return;
    await controller.setFlashMode(_torch ? FlashMode.off : FlashMode.torch);
    _torch = !_torch;
  }

  @override
  Future<void> close() async {
    final controller = _controller;
    _controller = null;
    // CameraController.dispose also stops its image stream and releases the lamp.
    await controller?.dispose();
  }
}

class QrScanPage extends StatefulWidget {
  const QrScanPage({super.key, this.camera, this.decoder});
  final QrScanCamera? camera;
  final Future<String?> Function(QrLuminanceFrame)? decoder;

  @override
  State<QrScanPage> createState() => _QrScanPageState();
}

class _QrScanPageState extends State<QrScanPage> with WidgetsBindingObserver {
  late final QrScanCamera _camera = widget.camera ?? PhoneQrScanCamera();
  Future<void> _cameraWork = Future.value();
  bool _active = true;
  bool _ready = false;
  bool _handled = false;
  bool _decoding = false;
  int _generation = 0;
  CameraException? _error;
  String? _hint;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _open();
  }

  void _open() {
    final generation = ++_generation;
    _cameraWork = _cameraWork.then((_) async {
      if (!mounted || !_active || generation != _generation) return;
      try {
        await _camera.start((frame) => _onFrame(frame, generation),
            (error) => _fail(error, generation));
        if (!mounted || !_active || generation != _generation) return;
        setState(() {
          _ready = true;
          _error = null;
        });
      } catch (error) {
        _fail(
            error is CameraException
                ? error
                : CameraException('unavailable', ''),
            generation);
      }
    });
  }

  void _close() {
    ++_generation;
    // Serialize shutdown after an in-flight permission/start request. A resumed
    // route cannot open another controller before the previous one is released.
    _cameraWork =
        _cameraWork.then((_) => _camera.close()).catchError((Object _) {});
  }

  void _fail(CameraException error, int generation) {
    if (!mounted || generation != _generation) return;
    setState(() {
      _error = error;
      _ready = false;
    });
    _close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // The native permission sheet temporarily makes the app inactive. Let its
    // first result finish, rather than reopening and asking again after denial.
    // A full background transition (paused/hidden) still closes a pending start.
    if (state == AppLifecycleState.inactive && !_ready) return;
    final active = state == AppLifecycleState.resumed;
    if (active == _active) return;
    _active = active;
    if (active) {
      setState(() {
        _ready = false;
        _error = null;
      });
      _open();
    } else {
      setState(() => _ready = false);
      _close();
    }
  }

  Future<void> _onFrame(QrLuminanceFrame frame, int generation) async {
    if (!mounted ||
        !_active ||
        !_ready ||
        _handled ||
        _decoding ||
        generation != _generation) {
      return;
    }
    _decoding = true;
    try {
      final raw =
          await (widget.decoder?.call(frame) ?? compute(decodeQrFrame, frame));
      if (!mounted ||
          !_active ||
          _handled ||
          generation != _generation ||
          raw == null) {
        return;
      }
      if (tryDecodeQrJoin(raw) != null) {
        _handled = true;
        Navigator.of(context).pop(QrScanCode(raw));
      } else if (_hint == null) {
        setState(
            () => _hint = 'That is not a Backgammon Buddy game code. Point the '
                'camera at the QR code on the other device\'s Host screen.');
      }
    } catch (_) {
      // A malformed camera frame or unrecognized QR is not a camera failure.
    } finally {
      _decoding = false;
    }
  }

  Future<void> _toggleTorch() async {
    if (!_ready) return;
    try {
      await _camera.toggleTorch();
    } catch (_) {}
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _active = false;
    _close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) {
          if (!didPop) Navigator.of(context).pop(backOutcomeFor(_error));
        },
        child: Scaffold(
          appBar: AppBar(title: const Text('Scan the host\'s code'), actions: [
            IconButton(
                tooltip: 'Torch',
                icon: const Icon(Icons.flashlight_on),
                onPressed: () => unawaited(_toggleTorch())),
          ]),
          body: _error != null
              ? _CameraProblem(
                  message: cameraErrorText(_error!),
                  onDismiss: () =>
                      Navigator.of(context).pop(backOutcomeFor(_error)))
              : Stack(fit: StackFit.expand, children: [
                  const ColoredBox(color: Colors.black),
                  if (_ready) Center(child: _camera.preview()),
                  if (!_ready) const Center(child: CircularProgressIndicator()),
                  Positioned(
                      left: 16,
                      right: 16,
                      bottom: 32,
                      child: SafeArea(child: _ScanCaption(hint: _hint))),
                ]),
        ),
      );
}

QrScanOutcome backOutcomeFor(CameraException? error) => error == null
    ? const QrScanCancelled()
    : QrScanUnavailable(cameraErrorText(error));

String cameraErrorText(CameraException error) => switch (error.code) {
      'CameraAccessDenied' ||
      'CameraAccessDeniedWithoutPrompt' ||
      'CameraAccessRestricted' =>
        'Backgammon Buddy does not have permission to use the camera. Allow camera '
            'access in your device settings, or enter the address shown on the other device by hand.',
      'unsupported' =>
        'This device cannot scan QR codes. Enter the address shown on the other device by hand.',
      _ =>
        'The camera could not be started. Enter the address shown on the other device by hand.',
    };

class _CameraProblem extends StatelessWidget {
  const _CameraProblem({required this.message, required this.onDismiss});

  final String message;
  final VoidCallback onDismiss;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Theme.of(context).colorScheme.surface,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SingleChildScrollView(
              child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.no_photography_outlined, size: 40),
              const SizedBox(height: 16),
              Text(message, textAlign: TextAlign.center),
              const SizedBox(height: 24),
              FilledButton(
                onPressed: onDismiss,
                child: const Text('Enter the address instead'),
              ),
            ],
          )),
        ),
      ),
    );
  }
}

/// The line under the viewfinder: what to point at, or why the last thing did
/// not count.
class _ScanCaption extends StatelessWidget {
  const _ScanCaption({required this.hint});

  final String? hint;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(
          hint ?? 'Point the camera at the QR code on the other device.',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

/// The scanner [LanScreen] uses. Overridden in widget tests with a scripted one.
final qrScannerProvider = Provider<QrScanner>(
  (ref) => const CameraQrScanner(),
);
