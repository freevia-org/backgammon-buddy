// Manual opt-in only. Creates two disposable identities and one production match.
// Run with the host coordinator described in docs/ios-submission-validation.md.
import 'dart:convert';
import 'dart:io';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:match_transport/testing.dart';
import 'package:online_client/online_client.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  const enabled = bool.fromEnvironment('AIGAMMON_PRODUCTION_VALIDATION');
  testWidgets(
    'production Auth, match, fair dice, privacy and completion receipt',
    (t) async {
      const key = String.fromEnvironment('AIGAMMON_FIREBASE_API_KEY');
      expect(key, isNotEmpty);
      final config = OnlineConfig.production(
        projectId: 'backgammon-buddy-freevia',
        apiKey: key,
      );
      final store = InMemoryTokenStore();
      final host = MatchApi.forConfig(config, tokenStore: store);
      final guest = MatchApi.forConfig(config);
      final resumed = MatchApi.forConfig(config, tokenStore: store);
      final receipts = [newDeletionReceipt(), newDeletionReceipt()];
      final directory = await getApplicationDocumentsDirectory();
      final fixture = File('${directory.path}/production-validation.json');
      final uids = <String>[];
      String? code;
      Future<void> save() => fixture
          .writeAsString(
            jsonEncode({
              'project': config.projectId,
              'uids': uids,
              'receipts': receipts.take(uids.length).toList(),
              'code': code,
              'createdAt': DateTime.now().toUtc().toIso8601String(),
              'ready': false,
            }),
          )
          .then((_) {});
      try {
        // Record each disposable identity immediately so a failed test is cleanable.
        uids.add(await host.signIn());
        await save();
        uids.add(await guest.signIn());
        await save();
        expect(uids.toSet().length, 2);
        expect(
          await resumed.signIn(),
          uids.first,
        ); // Real secure-token refresh.
        final created = await host.createMatch(length: 1, cubeless: true);
        code = created.code;
        await save();
        final joined = await guest.joinMatch(code);
        expect(joined.sideOf(uids.first), Player.white);
        expect(joined.sideOf(uids.last), Player.black);
        final opening = openingSecretsFor(6, 1);
        await host.createRoll(code: code, n: 1, commit: opening.commit);
        await guest.submitEntropy(code: code, n: 1, entropy: opening.entropy);
        await host.submitReveal(code: code, n: 1, reveal: opening.secret);
        await host.submitEvent(
          code: code,
          seq: 0,
          gameNo: 1,
          event: OpeningRollEvent(whiteDie: 6, blackDie: 1),
        );
        expect((await guest.fetchEventsSince(code, -1)).length, 1);
        final channel = GrpcFirestoreListenChannel(
          config: config,
          token: guest.auth.validToken,
        );
        try {
          final delta = await channel
              .listen([
                ListenTarget(
                  targetId: 1,
                  parentPath: 'matches/$code',
                  collectionId: 'events',
                  field: 'seq',
                  from: 0,
                  inclusive: true,
                ),
              ])
              .firstWhere((delta) => delta is ListenDocument)
              .timeout(const Duration(seconds: 30));
          expect((delta as ListenDocument).fields['seq'], 0);
        } finally {
          await channel.close();
        }
        expect((await guest.fetchRoll(code, 1))!.reveal, opening.secret);
        expect(
          await readDeletionReceipt(config, receipts.first),
          DeletionReceiptStatus.pending,
        );
        await host.requestDataDeletion(receipt: receipts.first);
        await host.requestDataDeletion(
          receipt: receipts.first,
        ); // Idempotent retry.
        await expectLater(
          guest.fetchMatch(code),
          throwsA(isA<PermissionDeniedException>()),
        );
        await guest.requestDataDeletion(receipt: receipts.last);
        await fixture.writeAsString(
          jsonEncode({
            'project': config.projectId,
            'uids': uids,
            'receipts': receipts,
            'code': code,
            'createdAt': DateTime.now().toUtc().toIso8601String(),
            'ready': true,
          }),
        );
        // Host coordinator runs the real worker, restricted to these fixtures.
        final deadline = DateTime.now().add(const Duration(minutes: 3));
        for (final receipt in receipts) {
          while (await readDeletionReceipt(config, receipt) !=
              DeletionReceiptStatus.complete) {
            expect(
              DateTime.now().isBefore(deadline),
              isTrue,
              reason: 'Host cleanup coordinator did not complete',
            );
            await Future<void>.delayed(const Duration(seconds: 3));
          }
        }
        await fixture
            .delete(); // Signals that unauthenticated client reads passed.
      } finally {
        if (await fixture.exists()) {
          // Also request cleanup after an assertion/network failure. Never silently
          // strand a disposable identity. A retained file is an explicit retry aid.
          for (final client in [host, guest]) {
            if (client.auth.session != null) {
              await client.requestDataDeletion(
                receipt: receipts[[host, guest].indexOf(client)],
              );
            }
          }
          if (uids.length == 2 && code != null) {
            await fixture.writeAsString(
              jsonEncode({
                'project': config.projectId,
                'uids': uids,
                'receipts': receipts,
                'code': code,
                'createdAt': DateTime.now().toUtc().toIso8601String(),
                'ready': true,
              }),
            );
            final cleanupDeadline = DateTime.now().add(
              const Duration(minutes: 3),
            );
            for (final receipt in receipts) {
              while (await readDeletionReceipt(config, receipt) !=
                  DeletionReceiptStatus.complete) {
                if (DateTime.now().isAfter(cleanupDeadline)) {
                  throw StateError(
                    'Disposable cleanup pending; retain private fixture',
                  );
                }
                await Future<void>.delayed(const Duration(seconds: 3));
              }
            }
            await fixture.delete();
          }
        }
        host.close();
        guest.close();
        resumed.close();
        // On failure retain the private fixture file for bounded operator cleanup.
      }
    },
    skip: !enabled,
    timeout: const Timeout(Duration(minutes: 6)),
  );
}
