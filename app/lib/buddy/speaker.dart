import 'dart:async';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tts/flutter_tts.dart';

import 'phrasing.dart';

/// Re-exported so every caller that already had a speaker in scope keeps
/// working — the two value types moved out of this file to keep `flutter_tts`
/// off the settings layer's import graph, which is a fact about packaging
/// rather than about anything a caller does. See `phrasing.dart`.
export 'phrasing.dart';

/// Whether this platform has a TTS engine worth talking to.
///
/// The same shape, and the same reason, as `isFirebaseSupportedPlatform` in
/// `lib/analytics/firebase_config.dart`: `defaultTargetPlatform` rather than
/// `dart:io`, so it is available everywhere and overridable in tests via
/// `debugDefaultTargetPlatformOverride` — which is what lets
/// `test/buddy/speaker_test.dart` prove Windows never reaches the plugin.
///
/// Buddy Mode as a whole is mobile-only (camera, microphone, a phone propped
/// over a board), so this is not a degradation of a desktop feature; it is the
/// guard that keeps a desktop `flutter run` and the whole widget-test suite
/// away from a plugin whose Windows implementation does not exist.
bool get isBuddySpeechSupportedPlatform =>
    !kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS);

/// The plugin-facing edge of [BuddySpeaker], and the only thing in this file a
/// test cannot run: one method per platform call, so the speaker above it is
/// pure Dart and the fake below it is four lines.
abstract class BuddyTts {
  /// Language, rate and completion semantics. Called once, lazily, before the
  /// first utterance — never from a constructor, so building a speaker on a
  /// platform that then turns out not to need one costs nothing.
  Future<void> configure();

  /// Speaks [text], completing when the utterance has finished.
  Future<void> speak(String text);

  /// Cuts off whatever is being said now.
  Future<void> stop();

  Future<void> dispose();
}

/// The engine on a platform that has none. Mirrors `NoopAnalytics` and friends:
/// every call succeeds, nothing happens, no channel is touched.
class SilentBuddyTts implements BuddyTts {
  const SilentBuddyTts();

  @override
  Future<void> configure() async {}

  @override
  Future<void> speak(String text) async {}

  @override
  Future<void> stop() async {}

  @override
  Future<void> dispose() async {}
}

/// Native offline Android speech, with `flutter_tts` for iOS synthesis.
///
/// Android requires a native acknowledgment and active-voice check: the locked
/// flutter_tts plugin discards TextToSpeech.setVoice's actual result.
class FlutterTtsBuddyTts implements BuddyTts {
  FlutterTtsBuddyTts([FlutterTts? tts]) : _tts = tts;

  FlutterTts? _tts;
  FlutterTts get _iosTts => _tts ??= FlutterTts();
  static const _android =
      MethodChannel('org.freevia.backgammonbuddy/offline_speech');
  static int _nextSession = 0;
  final String _session =
      '${DateTime.now().microsecondsSinceEpoch}-${_nextSession++}';
  static FlutterTtsBuddyTts? _iosOwner;
  Completer<void>? _iosCancellation;
  bool _canSpeak = false;
  bool _disposed = false;

  bool get _isAndroid => defaultTargetPlatform == TargetPlatform.android;

  @override
  Future<void> configure() async {
    if (_disposed) return;
    _canSpeak = false;
    if (_isAndroid) {
      // The bridge selects and verifies a safe installed voice immediately
      // before each utterance, without changing the system engine or language.
      final configured = await _android.invokeMethod<int>(
        'configure', {'session': _session},
      );
      _canSpeak = !_disposed && configured == 1;
      return;
    }
    // On iOS flutter_tts uses AVSpeechSynthesizer, whose speech generation
    // runs on device. Its voice metadata has no Android network flag.
    final previous = _iosOwner;
    previous?._cancelIosSpeech();
    _iosOwner = this;
    if (previous != null && !identical(previous, this)) {
      // Settle the old native utterance too: releasing only its Dart waiter
      // would leave it queued ahead of the new session in AVSpeechSynthesizer.
      await _iosTts.stop();
      if (!_ownsIos) return;
    }
    if (await _iosTts.setLanguage(kBuddySpeechLanguage) != 1 || !_ownsIos) return;
    await _iosTts.awaitSpeakCompletion(true);
    if (!_ownsIos) return;
    await _iosTts.setSpeechRate(kBuddySpeechRate);
    _canSpeak = _ownsIos;
  }

  bool get _ownsIos => !_disposed && identical(_iosOwner, this);

  void _cancelIosSpeech() {
    final cancellation = _iosCancellation;
    if (cancellation != null && !cancellation.isCompleted) cancellation.complete();
  }

  @override
  Future<void> speak(String text) async {
    if (!_canSpeak || _disposed) return;
    if (_isAndroid) {
      // Completes on native utterance completion/stop, or immediately when no
      // verified offline voice exists. The transcript already contains text.
      await _android.invokeMethod<int>(
        'speak', {'session': _session, 'text': text},
      );
    } else if (_ownsIos) {
      final cancellation = Completer<void>();
      _iosCancellation = cancellation;
      try {
        // flutter_tts iOS didCancel does not settle its pending speak Future.
        // Stop/dispose/lease loss must still unblock the speaker's own queue.
        await Future.any<void>([
          _iosTts.speak(text).then<void>((_) {}),
          cancellation.future,
        ]);
      } finally {
        if (identical(_iosCancellation, cancellation)) _iosCancellation = null;
      }
    }
  }

  @override
  Future<void> stop() async {
    if (_isAndroid) {
      await _android.invokeMethod<int>('stop', {'session': _session});
    } else if (_ownsIos) {
      _cancelIosSpeech();
      await _iosTts.stop();
    }
  }

  @override
  Future<void> dispose() async {
    _disposed = true;
    _canSpeak = false;
    if (_isAndroid) {
      await _android.invokeMethod<int>('dispose', {'session': _session});
    } else if (identical(_iosOwner, this)) {
      _iosOwner = null;
      _cancelIosSpeech();
      await _iosTts.stop();
    }
  }
}

/// The voice's language tag.
///
/// The app ships English only today (no `flutter_localizations`, no ARB files),
/// and every phrase in [BuddyPhrasing] is an English literal, so asking the
/// engine for the device's locale would mispronounce this file's own output on
/// a non-English phone rather than translate it. Revisit together with app-wide
/// localization, not before.
const String kBuddySpeechLanguage = 'en-US';

/// How fast Buddy talks, on the plugin's 0..1 scale.
///
/// **Provisional.** Platform defaults are 0.5 on Android and 0.5 on iOS, but
/// the two scales are not the same speech: the number that sounds right is a
/// property of the engine, the voice and a room with dice clattering in it, and
/// none of those can be measured from a Windows dev machine with no device
/// attached. Shipped slightly under the default on the reasoning that a line
/// misheard costs a whole turn while a line heard slowly costs a second; the
/// on-device protocol in Task 15 is where it gets a measured value.
const double kBuddySpeechRate = 0.45;

/// Buddy's voice, and the transcript that mirrors it.
///
/// Two guarantees, both of which the spec asks for by name and both of which
/// are tested:
///
///  * **Speak and mirror.** Every line Buddy says lands in [lines] and on
///    [transcript] *immediately* — before the engine has finished saying it,
///    and whether or not there is an engine at all. The mirror is pure Dart, so
///    it works identically on this Windows dev machine, in a widget test, and
///    on a phone whose user has the volume down.
///  * **One line at a time.** Utterances are serialized onto a chain rather
///    than fired at the engine as they arrive. Buddy routinely says two things
///    in a row ("You rolled 6-3." / "13/8, 24/22.") and a platform TTS engine
///    handed both at once speaks the second over the first.
///
/// An engine that throws loses its line and nothing else: a dead voice must
/// still leave a readable transcript, which is the only channel a user in a
/// loud room had anyway.
class BuddySpeaker {
  BuddySpeaker({
    BuddyTts? engine,
    this.phrasing = BuddyPhrasing.terse,
  }) : engine = engine ?? const SilentBuddyTts();

  /// The speaker this platform can actually have.
  ///
  /// **The platform check happens FIRST**, so a desktop build never constructs
  /// `FlutterTts` and never touches its channel — see
  /// [isBuddySpeechSupportedPlatform] and the desktop group in
  /// `test/buddy/speaker_test.dart`.
  factory BuddySpeaker.forPlatform({
    BuddyPhrasing phrasing = BuddyPhrasing.terse,
    @visibleForTesting BuddyTts? engineOverride,
  }) =>
      BuddySpeaker(
        engine: engineOverride ??
            (isBuddySpeechSupportedPlatform
                ? FlutterTtsBuddyTts()
                : const SilentBuddyTts()),
        phrasing: phrasing,
      );

  final BuddyTts engine;
  final _lines = <BuddyLine>[];
  final _transcript = StreamController<BuddyLine>.broadcast();

  /// How Buddy words a play. Mutable because the spec makes it a setting, and a
  /// setting changed mid-match must take effect on the next line.
  BuddyPhrasing phrasing;

  Future<void> _tail = Future.value();
  bool _configured = false;
  bool _disposed = false;

  /// Bumped by [stop]; any utterance queued under an older generation is
  /// abandoned instead of spoken into a silence the user asked for.
  int _generation = 0;

  /// Everything Buddy has said this session, oldest first.
  List<BuddyLine> get lines => List.unmodifiable(_lines);

  /// Lines as they are said. Broadcast, so a screen can attach and detach; a
  /// screen attaching late reads [lines] for the backlog.
  Stream<BuddyLine> get transcript => _transcript.stream;

  /// Says [line]: mirrors it now, speaks it when the queue reaches it.
  ///
  /// The returned future completes when this line has finished being spoken (or
  /// immediately, on a platform with no voice). Callers that simply want the
  /// line out — most of them — need not await it.
  Future<void> say(BuddyLine line) {
    if (_disposed) return Future.value();
    _lines.add(line);
    if (!_transcript.isClosed) _transcript.add(line);

    final generation = _generation;
    final utterance = _tail.then((_) async {
      if (_disposed || generation != _generation) return;
      try {
        if (!_configured) {
          // The flag latches AFTER the await, not before, and that ordering is
          // the whole guarantee. [BuddyTts.configure] is where
          // `awaitSpeakCompletion(true)` is applied — the switch that makes
          // `speak` complete when the utterance ENDS rather than when it
          // starts, which is what serializes this queue into one line at a
          // time. Latch first and a `configure` that throws (into the `catch`
          // below, which swallows) is never retried: every later line goes out
          // through an unconfigured engine that returns immediately, the
          // queue stops being a queue, and Buddy talks over itself for the
          // rest of the session with nothing on fire.
          await engine.configure();
          _configured = true;
        }
        if (_disposed || generation != _generation) return;
        await engine.speak(line.speech);
      } catch (error, stack) {
        // Swallowed on purpose, and for the same reason
        // `FirebaseAppAnalytics.logEvent` swallows: a voice that fails must not
        // take the turn down with it. The line is already on screen, which is
        // the channel that matters.
        //
        // `debugPrint('$stack')` rather than `debugPrintStack`: the latter runs
        // the trace through `FlutterError.defaultStackFilter`, which ASSERTS on
        // the `package:stack_trace` frames a test binary produces — so the
        // prettier call turns a swallowed engine failure into a thrown
        // assertion, in the one environment where the failure is reproduced on
        // purpose. A diagnostic must not be able to fail louder than the thing
        // it is reporting.
        if (kDebugMode) {
          debugPrint('Buddy could not speak "${line.speech}": $error\n$stack');
        }
      }
    });
    // The CHAIN must never carry an error forward, or one failure would poison
    // every later line. `utterance` already swallows; this is belt and braces
    // against a future edit that stops doing so.
    _tail = utterance.catchError((Object _) {});
    return utterance;
  }

  /// Convenience for a line that is already prose.
  Future<void> speak(String text) => say(BuddyLine(text));

  /// Says [move] in the current [phrasing].
  Future<void> announcePlay(Move move) => say(phrasing.describePlay(move));

  /// Cuts off the current line and abandons everything queued behind it.
  ///
  /// The transcript is NOT truncated: those lines were things Buddy said, and
  /// a user who silenced the phone mid-sentence still wants to read them.
  Future<void> stop() async {
    _generation++;
    if (_disposed) return;
    try {
      await engine.stop();
    } catch (_) {}
  }

  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;
    _generation++;
    await _transcript.close();
    try {
      await engine.dispose();
    } catch (_) {}
  }
}
