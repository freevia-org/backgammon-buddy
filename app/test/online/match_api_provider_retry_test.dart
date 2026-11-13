import 'dart:convert';

import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/online/online_providers.dart';
import 'package:aigammon_app/online/online_session_store.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:online_client/online_client.dart';

import '../data/test_database.dart';

class _MemorySecrets implements SessionSecretStorage {
  String? token;

  @override
  Future<String?> readRefreshToken() async => token;

  @override
  Future<void> writeRefreshToken(String value) async => token = value;

  @override
  Future<void> clearRefreshToken() async => token = null;
}

void main() {
  late AppDatabase db;

  setUp(() => db = newTestDatabase());
  tearDown(() => db.close());

  test('a failed sign-in is not cached: the next read signs in again',
      () async {
    // The provider lives for the app lifetime, so a cached failure would break
    // online play until restart after one offline attempt.
    var online = false;
    var signUps = 0;
    final container = ProviderContainer(
      overrides: [
        onlineConfigProvider.overrideWithValue(OnlineConfig.emulator()),
        onlineSessionStoreProvider.overrideWithValue(
          OnlineSessionStore(db, secrets: _MemorySecrets()),
        ),
        onlineHttpClientFactoryProvider.overrideWithValue(
          () => MockClient((request) async {
            if (!online) throw http.ClientException('offline', request.url);
            signUps++;
            return http.Response(
              jsonEncode({
                'localId': 'uid-1',
                'idToken': 'id-token',
                'refreshToken': 'refresh-token',
                'expiresIn': '3600',
              }),
              200,
              headers: {'content-type': 'application/json'},
            );
          }),
        ),
      ],
    );
    addTearDown(container.dispose);

    await expectLater(
      container.read(matchApiProvider.future),
      throwsA(anything),
    );

    // The failure is dropped on the next event-loop turn.
    await Future<void>.delayed(Duration.zero);

    online = true;
    final api = await container.read(matchApiProvider.future);
    expect(api.uid, 'uid-1');
    expect(signUps, 1);
    // A SUCCESSFUL sign-in is still cached for the app lifetime.
    expect(await container.read(matchApiProvider.future), same(api));
    expect(signUps, 1);
  });
}
