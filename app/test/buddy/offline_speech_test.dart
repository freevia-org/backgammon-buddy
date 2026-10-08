import 'dart:async';

import 'package:aigammon_app/buddy/speaker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  const android = MethodChannel('org.freevia.backgammonbuddy/offline_speech');
  const plugin = MethodChannel('flutter_tts');
  final messenger =
      TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
  late List<MethodCall> nativeCalls;
  late List<MethodCall> pluginCalls;
  late int configureResult;
  late Completer<int>? configuration;
  late Completer<int>? utterance;

  setUp(() {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    nativeCalls = [];
    pluginCalls = [];
    configureResult = 1;
    configuration = null;
    utterance = null;
    messenger.setMockMethodCallHandler(android, (call) async {
      nativeCalls.add(call);
      if (call.method == 'configure') {
        return configuration == null ? configureResult : configuration!.future;
      }
      if (call.method == 'speak') return utterance?.future ?? 0;
      if (call.method == 'stop' || call.method == 'dispose') {
        if (utterance != null && !utterance!.isCompleted) utterance!.complete(0);
      }
      return 1;
    });
    messenger.setMockMethodCallHandler(plugin, (call) async {
      pluginCalls.add(call);
      return 1;
    });
  });

  tearDown(() {
    messenger.setMockMethodCallHandler(android, null);
    messenger.setMockMethodCallHandler(plugin, null);
    debugDefaultTargetPlatformOverride = null;
  });

  test('Android speech uses only the native verified-offline bridge', () async {
    final speaker = BuddySpeaker.forPlatform();
    await speaker.speak('Your roll.');
    await speaker.speak('Try the other play.');
    expect(nativeCalls.map((call) => call.method), ['configure', 'speak', 'speak']);
    final session = (nativeCalls.first.arguments as Map)['session'];
    expect(nativeCalls[1].arguments, {'session': session, 'text': 'Your roll.'});
    // No flutter_tts setLanguage/setVoice fallback or engine-changing call.
    expect(pluginCalls, isEmpty);
    expect(speaker.lines.length, 2);
    await speaker.dispose();
  });

  test('unavailable native engine keeps coaching as text', () async {
    configureResult = 0;
    final speaker = BuddySpeaker.forPlatform();
    await speaker.speak('Your roll.');
    expect(nativeCalls.map((call) => call.method), ['configure']);
    expect(speaker.lines.single.text, 'Your roll.');
    expect(pluginCalls, isEmpty);
    await speaker.dispose();
  });

  test('native no-safe-voice result never falls back to the plugin', () async {
    final speaker = BuddySpeaker.forPlatform();
    await speaker.speak('Text remains available.'); // Native speak returns 0.
    expect(speaker.lines.single.text, 'Text remains available.');
    expect(pluginCalls, isEmpty);
    await speaker.dispose();
  });

  test('native completion serializes speech and stop abandons queued lines',
      () async {
    utterance = Completer<int>();
    final speaker = BuddySpeaker.forPlatform();
    final first = speaker.speak('First.');
    final second = speaker.speak('Queued.');
    await pumpEventQueue();
    expect(nativeCalls.where((call) => call.method == 'speak').length, 1);
    await speaker.stop();
    await Future.wait([first, second]);
    expect(nativeCalls.where((call) => call.method == 'speak').length, 1);
    expect(speaker.lines.length, 2);
    await speaker.dispose();
  });

  for (final dispose in [false, true]) {
    test('${dispose ? 'dispose' : 'stop'} cancels a pending configuration line',
        () async {
      configuration = Completer<int>();
      final speaker = BuddySpeaker.forPlatform();
      final pending = speaker.speak('Must not start later.');
      await pumpEventQueue();
      if (dispose) {
        await speaker.dispose();
      } else {
        await speaker.stop();
      }
      configuration!.complete(1);
      await pending;
      expect(nativeCalls.any((call) => call.method == 'speak'), isFalse);
      expect(pluginCalls, isEmpty);
      expect(speaker.lines.single.text, 'Must not start later.');
      if (!dispose) await speaker.dispose();
    });
  }

  test('iOS retains its local AVSpeechSynthesizer plugin path', () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    final engine = FlutterTtsBuddyTts();
    await engine.configure();
    await engine.speak('Your roll.');
    expect(pluginCalls.map((call) => call.method), [
      'setLanguage', 'awaitSpeakCompletion', 'setSpeechRate', 'speak',
    ]);
    expect(nativeCalls, isEmpty);
    await engine.dispose();
  });

  test('late old stop/dispose carries its owner and cannot target a new session',
      () async {
    String? owner;
    final oldStop = Completer<void>();
    var shutdowns = 0;
    final spokenBy = <String>[];
    messenger.setMockMethodCallHandler(android, (call) async {
      final args = call.arguments as Map;
      final session = args['session'] as String;
      nativeCalls.add(call);
      if (call.method == 'configure') {
        owner = session;
        return 1;
      }
      if (call.method == 'stop' && session == owner) {
        await oldStop.future;
      }
      if (session != owner) return 0;
      if (call.method == 'dispose') {
        owner = null;
        shutdowns++;
      }
      if (call.method == 'speak') spokenBy.add(session);
      return 1;
    });
    final old = FlutterTtsBuddyTts();
    await old.configure();
    final oldOwner = owner;
    final stopping = old.stop();
    await pumpEventQueue();
    final current = FlutterTtsBuddyTts();
    await current.configure();
    final currentOwner = owner;
    expect(currentOwner, isNot(oldOwner));
    oldStop.complete();
    await stopping;
    await old.dispose();
    await FlutterTtsBuddyTts().dispose(); // Never configured: not an owner.
    await current.speak('New session.');
    expect(owner, currentOwner);
    expect(shutdowns, 0);
    expect(spokenBy, [currentOwner]);
    expect(pluginCalls, isEmpty);
    await current.dispose();
    expect(shutdowns, 1);
  });

  test('stale iOS session cannot stop or dispose the new native owner', () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    final old = FlutterTtsBuddyTts();
    final current = FlutterTtsBuddyTts();
    await old.configure();
    await current.configure();
    pluginCalls.clear();
    await old.stop();
    await old.dispose();
    await current.speak('Current session.');
    expect(pluginCalls.map((call) => call.method), ['speak']);
    await current.dispose();
  });

  test('late iOS configuration cannot mutate or speak in a newer session',
      () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    final delayedLanguage = Completer<int>();
    var languageCalls = 0;
    messenger.setMockMethodCallHandler(plugin, (call) async {
      pluginCalls.add(call);
      if (call.method == 'setLanguage' && languageCalls++ == 0) {
        return delayedLanguage.future;
      }
      return 1;
    });
    final old = FlutterTtsBuddyTts();
    final configuring = old.configure();
    await pumpEventQueue();
    final current = FlutterTtsBuddyTts();
    await current.configure();
    delayedLanguage.complete(1);
    await configuring;
    await old.speak('Stale.');
    expect(pluginCalls.where((call) => call.method == 'setSpeechRate').length, 1);
    expect(pluginCalls.where((call) => call.method == 'speak'), isEmpty);
    await old.dispose();
    await current.dispose();
  });

  test('iOS stop settles a never-completed plugin utterance and queue resumes',
      () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    final pluginSpeech = Completer<int>();
    var speakCount = 0;
    messenger.setMockMethodCallHandler(plugin, (call) async {
      pluginCalls.add(call);
      if (call.method == 'speak' && speakCount++ == 0) return pluginSpeech.future;
      return 1;
    });
    final speaker = BuddySpeaker.forPlatform();
    final first = speaker.speak('Long line.');
    await pumpEventQueue();
    await speaker.stop();
    await first.timeout(const Duration(seconds: 1));
    await speaker.speak('New line.').timeout(const Duration(seconds: 1));
    expect(speakCount, 2);
    expect(pluginSpeech.isCompleted, isFalse);
    await speaker.dispose();
    pluginSpeech.complete(0);
  });

  test('iOS ownership handoff stops the old native utterance once', () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
    final oldNativeSpeech = Completer<int>();
    messenger.setMockMethodCallHandler(plugin, (call) async {
      pluginCalls.add(call);
      if (call.method == 'speak') return oldNativeSpeech.future;
      return 1;
    });
    final old = FlutterTtsBuddyTts();
    await old.configure();
    final speaking = old.speak('Old session.');
    await pumpEventQueue();
    pluginCalls.clear();
    final current = FlutterTtsBuddyTts();
    await current.configure();
    await speaking.timeout(const Duration(seconds: 1));
    await old.stop();
    await old.dispose();
    expect(pluginCalls.map((call) => call.method), [
      'stop', 'setLanguage', 'awaitSpeakCompletion', 'setSpeechRate',
    ]);
    expect(oldNativeSpeech.isCompleted, isFalse);
    await current.dispose();
    oldNativeSpeech.complete(0);
  });
}
