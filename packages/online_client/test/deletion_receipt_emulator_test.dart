@Tags(['emulator'])
library;

import 'package:online_client/online_client.dart';
import 'package:test/test.dart';

void main() {
  test('real receipt request retry keeps the original capability', () async {
    final config = OnlineConfig.emulator();
    final api = MatchApi.forConfig(config);
    addTearDown(api.close);
    await api.signIn();
    final receipt = newDeletionReceipt();
    await api.requestDataDeletion(receipt: receipt);
    await api.requestDataDeletion(receipt: receipt);
    expect(await readDeletionReceipt(config, receipt), DeletionReceiptStatus.pending);
    await expectLater(api.requestDataDeletion(receipt: newDeletionReceipt()),
        throwsA(isA<OnlineException>()));
  });
  test('real legacy pending request attaches a confirmation capability once', () async {
    final config = OnlineConfig.emulator();
    final api = MatchApi.forConfig(config);
    addTearDown(api.close);
    await api.signIn();
    await api.requestDataDeletion();
    final receipt = newDeletionReceipt();
    await api.requestDataDeletion(receipt: receipt);
    await api.requestDataDeletion(receipt: receipt);
    expect(await readDeletionReceipt(config, receipt), DeletionReceiptStatus.pending);
  });
}
