import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../diagnostics/crash_log.dart';
import 'app_analytics.dart';
import 'firebase_observability.dart';

/// Stable sinks held by screens/controllers across a preference change. The
/// forwarding gate closes synchronously on opt-out; a late initialization can
/// never reopen it. Native SDK collection changes run in the same ordered queue.
class TelemetryController
    implements AppAnalytics, AppPerformance, AppCrashReporter {
  TelemetryController({
    this._initialize,
    Future<void> Function()? disable,
  }) : _disable = disable ?? (() => setFirebaseCollectionEnabled(false));

  final Future<Observability> Function()? _initialize;
  final Future<void> Function() _disable;
  Observability _current = Observability.disabled;
  Future<void> _updates = Future.value();
  bool? _requested;
  int _generation = 0;

  bool get isEnabled => _current.isEnabled;

  Future<void> setEnabled(bool enabled) {
    if (_requested == enabled) return _updates;
    _requested = enabled;
    final generation = ++_generation;
    if (!enabled) _current = Observability.disabled;
    _updates = _updates.then((_) async {
      if (generation != _generation) return;
      try {
        if (!enabled) {
          await _disable();
          return;
        }
        final next =
            await (_initialize?.call() ??
                initializeObservability(
                  consentGranted: true,
                  isConsentCurrent: () =>
                      generation == _generation && _requested == true,
                ));
        if (generation != _generation) {
          await _disable();
          return;
        }
        _current = next;
      } catch (error, stack) {
        _current = Observability.disabled;
        // A partial native enable must fail closed as far as the SDK allows.
        try {
          await _disable();
        } catch (_) {}
        CrashLog.instance.record(
          error,
          stack: stack,
          source: 'telemetry-choice',
        );
      }
    });
    return _updates;
  }

  @override
  void logEvent(String name, {Map<String, Object?> parameters = const {}}) =>
      _current.analytics.logEvent(name, parameters: parameters);

  @override
  void logScreenView(String screenName) =>
      _current.analytics.logScreenView(screenName);

  @override
  void recordError(Object error, StackTrace? stack, {String? reason}) =>
      _current.crashReporter.recordError(error, stack, reason: reason);

  @override
  Future<AppTrace> startTrace(String name) async {
    final generation = _generation;
    final trace = await _current.performance.startTrace(name);
    return _ConsentTrace(trace, () => generation == _generation && isEnabled);
  }

  @override
  Future<T> trace<T>(String name, Future<T> Function() body) async {
    final trace = await startTrace(name);
    try {
      return await body();
    } finally {
      await trace.stop();
    }
  }

  @override
  void recordDuration(String name, Duration duration) =>
      _current.performance.recordDuration(name, duration);
}

class _ConsentTrace implements AppTrace {
  _ConsentTrace(this._trace, this._allowed);
  final AppTrace _trace;
  final bool Function() _allowed;

  @override
  void setMetric(String name, int value) {
    if (_allowed()) _trace.setMetric(name, value);
  }

  @override
  void putAttribute(String name, String value) {
    if (_allowed()) _trace.putAttribute(name, value);
  }

  @override
  Future<void> stop() async {
    // Native collection is disabled separately; always release the live trace.
    await _trace.stop();
  }
}

final telemetryControllerProvider = Provider<TelemetryController>(
  (ref) => TelemetryController(),
);
