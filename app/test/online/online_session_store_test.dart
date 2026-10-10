import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/online/online_session_store.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:online_client/online_client.dart';

import '../data/test_database.dart';

class MemorySessionSecrets implements SessionSecretStorage {
  String? token;
  bool silentlyDropWrites = false;
  bool failWrites = false;

  @override
  Future<String?> readRefreshToken() async => token;

  @override
  Future<void> writeRefreshToken(String value) async {
    if (failWrites) {
      failWrites = false;
      throw StateError('secure write failed');
    }
    if (!silentlyDropWrites) token = value;
  }

  @override
  Future<void> clearRefreshToken() async => token = null;
}

void main() {
  late AppDatabase db;
  late MemorySessionSecrets secrets;

  OnlineSessionStore store({bool strict = false}) =>
      OnlineSessionStore(db, strict: strict, secrets: secrets);

  setUp(() {
    db = newTestDatabase();
    secrets = MemorySessionSecrets();
  });
  tearDown(() => db.close());

  test('an empty store reads as no session', () async {
    final sessionStore = store();
    expect(await sessionStore.read(), isNull);
    expect(await sessionStore.lastMatchCode(), isNull);
  });

  test('the anonymous session survives a "restart" (a new store over the '
      'same database)', () async {
    // This is the whole point: the uid is what firestore.rules gates every
    // match document on, so losing it on relaunch strands both seats.
    await store().write(
      const StoredSession(uid: 'uid-1', refreshToken: 'refresh-1'),
    );

    final afterRestart = await store().read();
    expect(
      afterRestart,
      const StoredSession(uid: 'uid-1', refreshToken: 'refresh-1'),
    );
  });

  test('a rotated refresh token replaces the stored one', () async {
    final sessionStore = store();
    await sessionStore.write(
      const StoredSession(uid: 'uid-1', refreshToken: 'refresh-1'),
    );
    await sessionStore.write(
      const StoredSession(uid: 'uid-1', refreshToken: 'refresh-2'),
    );
    expect((await sessionStore.read())!.refreshToken, 'refresh-2');
    expect(
      (await db.select(db.onlineSession).getSingle()).refreshToken,
      isNull,
    );
  });

  test(
    'migrates a legacy SQLite refresh token and clears the plaintext copy',
    () async {
      await db.customStatement(
        'UPDATE online_session SET uid = ?, refresh_token = ? WHERE id = 1',
        ['legacy-user', 'legacy-refresh'],
      );

      expect(
        await store().read(),
        const StoredSession(uid: 'legacy-user', refreshToken: 'legacy-refresh'),
      );
      expect(secrets.token, 'legacy-refresh');
      expect(
        (await db.select(db.onlineSession).getSingle()).refreshToken,
        isNull,
      );
    },
  );

  test(
    'keeps the legacy token if secure storage silently drops migration',
    () async {
      await db.customStatement(
        'UPDATE online_session SET uid = ?, refresh_token = ? WHERE id = 1',
        ['legacy-user', 'legacy-refresh'],
      );
      secrets.silentlyDropWrites = true;

      expect(await store().read(), isNull);
      expect(secrets.token, isNull);
      expect(
        (await db.select(db.onlineSession).getSingle()).refreshToken,
        'legacy-refresh',
      );
    },
  );

  test(
    'a failed secure write preserves the existing identity and token',
    () async {
      final sessionStore = store();
      await sessionStore.write(
        const StoredSession(uid: 'old-user', refreshToken: 'old-refresh'),
      );
      secrets.failWrites = true;

      await expectLater(
        sessionStore.write(
          const StoredSession(uid: 'new-user', refreshToken: 'new-refresh'),
        ),
        throwsA(anything),
      );
      expect((await db.select(db.onlineSession).getSingle()).uid, 'old-user');
      expect(secrets.token, 'old-refresh');
    },
  );

  test(
    'finishes clearing a legacy token after an interrupted migration',
    () async {
      await db.customStatement(
        'UPDATE online_session SET uid = ?, refresh_token = ? WHERE id = 1',
        ['legacy-user', 'legacy-refresh'],
      );
      // Models a process kill after secure storage succeeds but before the
      // plaintext SQLite copy is cleared.
      secrets.token = 'legacy-refresh';

      expect(
        await store().read(),
        const StoredSession(uid: 'legacy-user', refreshToken: 'legacy-refresh'),
      );
      expect(
        (await db.select(db.onlineSession).getSingle()).refreshToken,
        isNull,
      );
    },
  );

  test('clear drops the credentials but KEEPS the match pointer', () async {
    // They answer different questions and expire on different terms: the token
    // is dead when the server says so, the pointer when the match ends.
    final sessionStore = store();
    await sessionStore.write(
      const StoredSession(uid: 'uid-1', refreshToken: 'refresh-1'),
    );
    await sessionStore.rememberMatch('ABCD2345');

    await sessionStore.clear();

    expect(await sessionStore.read(), isNull);
    expect(secrets.token, isNull);
    expect(await sessionStore.lastMatchCode(), 'ABCD2345');
  });

  test(
    'privacy sign-out atomically clears credentials and resume pointer',
    () async {
      final sessionStore = store(strict: true);
      await sessionStore.write(
        const StoredSession(uid: 'u', refreshToken: 'r'),
      );
      await sessionStore.rememberMatch('ABCDEFGH');
      await sessionStore.clearIdentityForPrivacy();
      expect(await sessionStore.read(), isNull);
      expect(secrets.token, isNull);
      expect(await sessionStore.lastMatchCode(), isNull);
    },
  );

  test('strict privacy storage surfaces a closed database', () async {
    final sessionStore = store(strict: true);
    await sessionStore.write(const StoredSession(uid: 'u', refreshToken: 'r'));
    await db.close();
    await expectLater(sessionStore.read(), throwsA(anything));
    await expectLater(
      sessionStore.clearIdentityForPrivacy(),
      throwsA(anything),
    );
    db = newTestDatabase();
  });

  test('the match pointer round-trips and can be forgotten', () async {
    final sessionStore = store();
    await sessionStore.rememberMatch('ABCD2345');
    expect(await store().lastMatchCode(), 'ABCD2345');

    await sessionStore.forgetMatch();
    expect(await sessionStore.lastMatchCode(), isNull);
  });

  test('a closed database degrades to nulls rather than throwing', () async {
    // A broken store must cost a fresh anonymous user, never a launch that
    // cannot sign in at all.
    final sessionStore = store();
    await db.close();

    expect(await sessionStore.read(), isNull);
    expect(await sessionStore.lastMatchCode(), isNull);
    await expectLater(
      sessionStore.write(const StoredSession(uid: 'u', refreshToken: 'r')),
      completes,
    );
    await expectLater(sessionStore.forgetMatch(), completes);

    // Re-open one for the tearDown to close.
    db = newTestDatabase();
  });
}
