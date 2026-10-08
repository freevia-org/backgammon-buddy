import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:online_client/online_client.dart';

import '../online/online_providers.dart';
import '../online/online_session_store.dart';

enum OnlineDeletionResult { requested, requestedLocalSignOutFailed, noIdentity }

/// Exposed separately so the privacy UI can be tested without network/auth.
final requestOnlineDeletionProvider =
    Provider<Future<OnlineDeletionResult> Function()>((ref) {
      return () async {
        final store = OnlineSessionStore(
          ref.read(onlineSessionStoreProvider).db,
          strict: true,
        );
        if (await store.read() == null) return OnlineDeletionResult.noIdentity;
        final config = ref.read(onlineConfigProvider);
        if (config == null) {
          throw const OnlineException(
            'not-configured',
            'Online play is not configured.',
          );
        }
        final auth = AuthClient(config, store: store);
        final api = MatchApi(
          auth: auth,
          docs: FirestoreDocs(config, token: auth.validToken),
        );
        try {
          if (await auth.restoreExistingSession() == null) {
            return OnlineDeletionResult.noIdentity;
          }
          await api.requestDataDeletion();
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
