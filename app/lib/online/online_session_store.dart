import 'package:drift/drift.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:online_client/online_client.dart';

import '../data/database.dart';

/// The app's implementation of [TokenStore], using SQLite for the anonymous uid
/// and resume pointer, and OS secure storage for the refresh credential.
///
/// `online_client` is pure Dart with no storage dependency (the Windows /
/// no-FlutterFire constraint), so the durable half of the anonymous identity
/// lives here. What it buys, concretely: the anonymous uid is the ONLY identity
/// `firebase/firestore.rules` gates match documents on, so a uid that dies with
/// the process locks the returning player out of their own match AND leaves the
/// opponent waiting on a peer that can never act again.
///
/// It also remembers [lastMatchCode] — not a credential, but the same "what was
/// I doing" question, and the thing the online screen's Rejoin affordance needs.
///
/// SQLite storage faults degrade to null/no-op where possible: a broken
/// database should cost a fresh anonymous user, never a launch that cannot sign
/// in. Secure-storage faults propagate so the app never silently falls back to
/// leaving a bearer token in SQLite.
abstract interface class SessionSecretStorage {
  Future<String?> readRefreshToken();
  Future<void> writeRefreshToken(String token);
  Future<void> clearRefreshToken();
}

/// Firebase refresh credentials are bearer tokens and stay in the OS key store.
class PlatformSessionSecretStorage implements SessionSecretStorage {
  const PlatformSessionSecretStorage();

  static const _storage = FlutterSecureStorage(
    aOptions: AndroidOptions(migrateWithBackup: true),
  );
  static const _refreshTokenKey = 'freevia.firebase.refresh_token';

  @override
  Future<String?> readRefreshToken() => _storage.read(key: _refreshTokenKey);

  @override
  Future<void> writeRefreshToken(String token) =>
      _storage.write(key: _refreshTokenKey, value: token);

  @override
  Future<void> clearRefreshToken() => _storage.delete(key: _refreshTokenKey);
}

class OnlineSessionStore implements TokenStore {
  const OnlineSessionStore(
    this.db, {
    this.strict = false,
    this.secrets = const PlatformSessionSecretStorage(),
  });

  final AppDatabase db;
  final SessionSecretStorage secrets;

  /// Privacy operations must distinguish storage failure from no identity.
  final bool strict;

  Future<OnlineSessionRow?> _row() async {
    try {
      return await db.select(db.onlineSession).getSingleOrNull();
    } catch (_) {
      if (strict) rethrow;
      return null;
    }
  }

  Future<bool> _write(OnlineSessionCompanion companion) async {
    try {
      await db.into(db.onlineSession).insertOnConflictUpdate(companion);
      return true;
    } catch (_) {
      if (strict) rethrow;
      // Best effort: this launch still works, only the next one loses the uid.
      return false;
    }
  }

  @override
  Future<StoredSession?> read() async {
    final row = await _row();
    final uid = row?.uid;
    if (uid == null) return null;
    final secureToken = await secrets.readRefreshToken();
    if (secureToken != null) {
      // Also finish a migration interrupted after the secure write but before
      // the SQLite clear. Otherwise the secure value would mask the legacy copy
      // forever, leaving plaintext in future device backups.
      if (row?.refreshToken != null) {
        final plaintextRemoved = await _write(
          const OnlineSessionCompanion(id: Value(1), refreshToken: Value(null)),
        );
        if (!plaintextRemoved) {
          throw StateError(
            'could not clear the legacy refresh token from SQLite',
          );
        }
      }
      return StoredSession(uid: uid, refreshToken: secureToken);
    }
    // Migrate a token created by an older release, then erase its plaintext
    // SQLite copy so later device backups no longer contain the credential.
    final legacyToken = row?.refreshToken;
    if (legacyToken == null) return null;
    await secrets.writeRefreshToken(legacyToken);
    // Some platform key-store configurations can acknowledge a write even
    // though the value is not subsequently readable. Keep the only surviving
    // copy in SQLite unless secure storage proves it retained the token.
    final migratedToken = await secrets.readRefreshToken();
    if (migratedToken != legacyToken) return null;
    final plaintextRemoved = await _write(
      const OnlineSessionCompanion(id: Value(1), refreshToken: Value(null)),
    );
    if (!plaintextRemoved) {
      throw StateError('could not clear the legacy refresh token from SQLite');
    }
    return StoredSession(uid: uid, refreshToken: migratedToken!);
  }

  @override
  Future<void> write(StoredSession session) async {
    // Stage and verify the secret before replacing the UID. Replacing the UID
    // first can pair it with the previous account's token if Keychain/Keystore
    // write fails.
    final previousToken = await secrets.readRefreshToken();
    try {
      await secrets.writeRefreshToken(session.refreshToken);
      if (await secrets.readRefreshToken() != session.refreshToken) {
        throw StateError('secure refresh token did not persist');
      }
    } catch (_) {
      await _restoreSecret(previousToken);
      rethrow;
    }
    final identitySaved = await _write(
      OnlineSessionCompanion(
        id: const Value(1),
        uid: Value(session.uid),
        refreshToken: const Value(null),
      ),
    );
    if (!identitySaved) await _restoreSecret(previousToken);
  }

  Future<void> _restoreSecret(String? previousToken) async {
    try {
      if (previousToken == null) {
        await secrets.clearRefreshToken();
      } else {
        await secrets.writeRefreshToken(previousToken);
        if (await secrets.readRefreshToken() != previousToken) {
          throw StateError('previous secure refresh token did not restore');
        }
      }
    } catch (_) {
      // If key-store rollback itself fails, invalidate the local UID so a
      // mismatched token can never be used as this identity on next launch.
      try {
        await _write(
          const OnlineSessionCompanion(id: Value(1), uid: Value(null)),
        );
      } catch (_) {
        // Best effort only. There is no cross-store transaction available.
      }
      try {
        await secrets.clearRefreshToken();
      } catch (_) {
        // The cleared UID prevents an orphaned secret from being read.
      }
    }
  }

  /// Forget the credentials — but NOT [lastMatchCode], which is only a pointer
  /// and is cleared on its own terms (see [forgetMatch]).
  @override
  Future<void> clear() async {
    await secrets.clearRefreshToken();
    await _write(
      const OnlineSessionCompanion(
        id: Value(1),
        uid: Value(null),
        refreshToken: Value(null),
      ),
    );
  }

  /// The invite code of the match this device last entered, or null.
  Future<String?> lastMatchCode() async => (await _row())?.matchCode;

  /// Remember [code] so a restart can offer to rejoin it.
  Future<void> rememberMatch(String code) => _write(
    OnlineSessionCompanion(id: const Value(1), matchCode: Value(code)),
  );

  /// Drop the resume pointer (the match finished, or it is no longer ours).
  Future<void> forgetMatch() => _write(
    const OnlineSessionCompanion(id: Value(1), matchCode: Value(null)),
  );

  /// Atomic local sign-out for privacy requests; unlike normal best-effort
  /// persistence this reports failures so the UI does not claim data was cleared.
  Future<void> clearIdentityForPrivacy() async {
    await secrets.clearRefreshToken();
    await db
        .into(db.onlineSession)
        .insertOnConflictUpdate(
          const OnlineSessionCompanion(
            id: Value(1),
            uid: Value(null),
            refreshToken: Value(null),
            matchCode: Value(null),
          ),
        );
  }
}
