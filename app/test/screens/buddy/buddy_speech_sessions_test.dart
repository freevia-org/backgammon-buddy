import 'package:aigammon_app/buddy/speaker.dart';
import 'package:aigammon_app/screens/buddy/buddy_game_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test('a later Buddy session speaks after the previous engine was disposed',
      () async {
    debugDefaultTargetPlatformOverride = TargetPlatform.android;
    addTearDown(() => debugDefaultTargetPlatformOverride = null);
    const channel = MethodChannel('org.freevia.backgammonbuddy/offline_speech');
    final messenger =
        TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger;
    final calls = <MethodCall>[];
    messenger.setMockMethodCallHandler(channel, (call) async {
      calls.add(call);
      return 1;
    });
    addTearDown(() => messenger.setMockMethodCallHandler(channel, null));
    // A single app container survives both matches, as it does in production.
    final container = ProviderContainer();
    addTearDown(container.dispose);

    final first = BuddySpeaker(engine: container.read(buddyTtsProvider)());
    await first.speak('First match.');
    await first.dispose();
    final second = BuddySpeaker(engine: container.read(buddyTtsProvider)());
    expect(identical(first.engine, second.engine), isFalse);
    await second.speak('Second match.');
    await second.dispose();

    expect(calls.map((call) => call.method), [
      'configure',
      'speak',
      'dispose',
      'configure',
      'speak',
      'dispose',
    ]);
    expect(
        calls
            .where((call) => call.method == 'speak')
            .map((call) => (call.arguments as Map)['text']),
        [
          'First match.',
          'Second match.',
        ]);
  });
}
