import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_client/online_client.dart';

import '../online/online_providers.dart';
import '../online/online_session_store.dart';

enum OnlineDeletionResult { requested, requestedLocalSignOutFailed, noIdentity }

/// Separate from the Firebase refresh token: deletion checks cannot sign in.
abstract interface class DeletionReceiptStorage {
  Future<String?> read();
  Future<void> write(String value);
}

class SecureDeletionReceiptStorage implements DeletionReceiptStorage {
  static const _storage = FlutterSecureStorage();
  static const _key = 'freevia.privacy.deletion_receipt';
  const SecureDeletionReceiptStorage();
  @override
  Future<String?> read() => _storage.read(key: _key);
  @override
  Future<void> write(String value) => _storage.write(key: _key, value: value);
}

final deletionReceiptStorageProvider = Provider<DeletionReceiptStorage>(
  (_) => const SecureDeletionReceiptStorage(),
);

enum DeletionConfirmation { none, pending, complete }

final deletionReceiptReaderProvider =
    Provider<Future<DeletionReceiptStatus> Function(OnlineConfig, String)>(
      (ref) => (config, receipt) async {
        final client = ref.read(onlineHttpClientFactoryProvider)();
        try {
          return await readDeletionReceipt(
            config,
            receipt,
            inner: client,
          );
        } finally {
          client.close();
        }
      },
    );

final checkOnlineDeletionProvider =
    Provider<Future<DeletionConfirmation> Function()>(
      (ref) => () async {
        final storage = ref.read(deletionReceiptStorageProvider);
        final raw = await storage.read();
        if (raw == null) return DeletionConfirmation.none;
        final saved = (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
        if (saved.isEmpty) return DeletionConfirmation.none;
        final config = ref.read(onlineConfigProvider);
        var pending = false;
        for (final record in saved) {
          if (record['complete'] == true) continue;
          if (config == null ||
              config.projectId != record['project'] ||
              config.firestoreDocumentsBase != record['backend']) {
            throw StateError('Confirmation backend unavailable');
          }
          final status = await ref.read(deletionReceiptReaderProvider)(
            config,
            record['receipt'] as String,
          );
          if (status == DeletionReceiptStatus.pending) {
            pending = true;
          } else {
            record.remove('uid');
            record['complete'] = true;
            await storage.write(jsonEncode(saved));
          }
        }
        return pending
            ? DeletionConfirmation.pending
            : DeletionConfirmation.complete;
      },
    );

/// Exposed separately so the privacy UI can be tested without network/auth.
final requestOnlineDeletionProvider =
    Provider<Future<OnlineDeletionResult> Function()>((ref) {
      return () async {
        final sessionStore = ref.read(onlineSessionStoreProvider);
        final store = OnlineSessionStore(
          sessionStore.db,
          strict: true,
          secrets: sessionStore.secrets,
        );
        final session = await store.read();
        if (session == null) return OnlineDeletionResult.noIdentity;
        final config = ref.read(onlineConfigProvider);
        if (config == null) {
          throw const OnlineException(
            'not-configured',
            'Online play is not configured.',
          );
        }
        final makeClient = ref.read(onlineHttpClientFactoryProvider);
        final auth = AuthClient(
          config,
          store: store,
          inner: makeClient(),
        );
        final api = MatchApi(
          auth: auth,
          docs: FirestoreDocs(
            config,
            token: auth.validToken,
            inner: makeClient(),
          ),
        );
        try {
          if (await auth.restoreExistingSession() == null) {
            return OnlineDeletionResult.noIdentity;
          }
          final receipts = ref.read(deletionReceiptStorageProvider);
          final raw = await receipts.read();
          final saved = raw == null
              ? <Map<String, dynamic>>[]
              : (jsonDecode(raw) as List).cast<Map<String, dynamic>>();
          final existing = saved
              .where(
                (r) =>
                    r['uid'] == session.uid &&
                    r['backend'] == config.firestoreDocumentsBase,
              )
              .firstOrNull;
          final receipt =
              existing?['receipt'] as String? ?? newDeletionReceipt();
          if (existing == null) {
            saved.add({
              'receipt': receipt,
              'uid': session.uid,
              'project': config.projectId,
              'backend': config.firestoreDocumentsBase,
            });
          }
          final record = jsonEncode(saved);
          // Save and read back BEFORE sending: even a lost success response
          // must leave a durable capability for retries and later confirmation.
          await receipts.write(record);
          if (await receipts.read() != record) {
            throw StateError('Could not retain deletion confirmation receipt');
          }
          await api.requestDataDeletion(receipt: receipt);
          // The old identity is now frozen server-side. End the local session only
          // after an acknowledged request; a failed send keeps the retry credential.
          var signedOut = true;
          try {
            await store.clearIdentityForPrivacy();
          } catch (_) {
            signedOut = false;
          }
          ref.invalidate(matchApiProvider);
          return signedOut
              ? OnlineDeletionResult.requested
              : OnlineDeletionResult.requestedLocalSignOutFailed;
        } finally {
          api.close();
        }
      };
    });
