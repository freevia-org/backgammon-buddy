import 'package:drift/drift.dart';
import 'package:online_client/online_client.dart';

import '../data/database.dart';

/// The app's implementation of [TokenStore], over the single-row
/// `online_session` table.
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
/// Every method swallows storage faults into a null/no-op: a broken database
/// should cost a fresh anonymous user, never a launch that cannot sign in.
class OnlineSessionStore implements TokenStore {
  const OnlineSessionStore(this.db, {this.strict = false});

  final AppDatabase db;

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

  Future<void> _write(OnlineSessionCompanion companion) async {
    try {
      await db.into(db.onlineSession).insertOnConflictUpdate(companion);
    } catch (_) {
      if (strict) rethrow;
      // Best effort: this launch still works, only the next one loses the uid.
    }
  }

  @override
  Future<StoredSession?> read() async {
    final row = await _row();
    final uid = row?.uid;
    final refreshToken = row?.refreshToken;
    if (uid == null || refreshToken == null) return null;
    return StoredSession(uid: uid, refreshToken: refreshToken);
  }

  @override
  Future<void> write(StoredSession session) => _write(
    OnlineSessionCompanion(
      id: const Value(1),
      uid: Value(session.uid),
      refreshToken: Value(session.refreshToken),
    ),
  );

  /// Forget the credentials — but NOT [lastMatchCode], which is only a pointer
  /// and is cleared on its own terms (see [forgetMatch]).
  @override
  Future<void> clear() => _write(
    const OnlineSessionCompanion(
      id: Value(1),
      uid: Value(null),
      refreshToken: Value(null),
    ),
  );

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
