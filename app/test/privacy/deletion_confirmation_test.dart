import 'dart:convert';
import 'package:aigammon_app/online/online_providers.dart';
import 'package:aigammon_app/privacy/online_data_deletion.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:online_client/online_client.dart';

class MemoryReceipts implements DeletionReceiptStorage {
  String? value;
  @override
  Future<String?> read() async => value;
  @override
  Future<void> write(String next) async => value = next;
}

void main() {
  final config = OnlineConfig.emulator();
  Map<String, Object> record(String token) => {
    'receipt': token,
    'uid': 'old-user',
    'project': config.projectId,
    'backend': config.firestoreDocumentsBase,
  };
  test(
    'verified completion survives restart with UID removed and no sign-in',
    () async {
      final storage = MemoryReceipts()..value = jsonEncode([record('a' * 64)]);
      var reads = 0;
      ProviderContainer container() => ProviderContainer(
        overrides: [
          deletionReceiptStorageProvider.overrideWithValue(storage),
          onlineConfigProvider.overrideWithValue(config),
          deletionReceiptReaderProvider.overrideWithValue((_, receipt) async {
            reads++;
            expect(receipt, 'a' * 64);
            return DeletionReceiptStatus.complete;
          }),
          matchApiProvider.overrideWith(
            (_) => throw StateError('must not sign in'),
          ),
        ],
      );
      final first = container();
      expect(
        await first.read(checkOnlineDeletionProvider)(),
        DeletionConfirmation.complete,
      );
      first.dispose();
      expect(storage.value, isNot(contains('old-user')));
      final restarted = container();
      addTearDown(restarted.dispose);
      expect(
        await restarted.read(checkOnlineDeletionProvider)(),
        DeletionConfirmation.complete,
      );
      expect(reads, 1);
    },
  );
  test(
    'another pending request is not hidden by an older completed request',
    () async {
      final storage = MemoryReceipts()
        ..value = jsonEncode([
          {...record('a' * 64), 'complete': true},
          record('b' * 64),
        ]);
      final scope = ProviderContainer(
        overrides: [
          deletionReceiptStorageProvider.overrideWithValue(storage),
          onlineConfigProvider.overrideWithValue(config),
          deletionReceiptReaderProvider.overrideWithValue(
            (_, _) async => DeletionReceiptStatus.pending,
          ),
        ],
      );
      addTearDown(scope.dispose);
      expect(
        await scope.read(checkOnlineDeletionProvider)(),
        DeletionConfirmation.pending,
      );
    },
  );
  test(
    'missing receipt and backend mismatch cannot imply completion',
    () async {
      final storage = MemoryReceipts();
      final scope = ProviderContainer(
        overrides: [
          deletionReceiptStorageProvider.overrideWithValue(storage),
          onlineConfigProvider.overrideWithValue(null),
        ],
      );
      addTearDown(scope.dispose);
      expect(
        await scope.read(checkOnlineDeletionProvider)(),
        DeletionConfirmation.none,
      );
      storage.value = jsonEncode([record('a' * 64)]);
      await expectLater(
        scope.read(checkOnlineDeletionProvider)(),
        throwsStateError,
      );
      expect(storage.value, isNot(contains('complete')));
    },
  );
}
