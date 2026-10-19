import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'package:online_client/online_client.dart';
import 'package:test/test.dart';

void main() {
  final config = OnlineConfig.emulator();
  final receipt = 'a' * 64;
  test('receipt is a random 256-bit capability', () {
    final values = List.generate(100, (_) => newDeletionReceipt());
    expect(values.toSet(), hasLength(100));
    expect(values.every(validDeletionReceipt), isTrue);
  });
  test('completion works without Authorization or sign-in', () async {
    final client = MockClient((request) async {
      expect(request.headers.containsKey('Authorization'), isFalse);
      expect(request.method, 'GET');
      expect(request.url.path, endsWith('/deletionReceipts/$receipt'));
      return http.Response(
          jsonEncode({
            'fields': {
              'status': {'stringValue': 'complete'},
              'completedAt': {'timestampValue': '2026-01-01T00:00:00Z'},
              'expiresAt': {'timestampValue': '2099-01-01T00:00:00Z'},
            }
          }),
          200);
    });
    expect(await readDeletionReceipt(config, receipt, inner: client),
        DeletionReceiptStatus.complete);
  });
  test('missing, denied, expired and malformed never mean complete', () async {
    expect(
        await readDeletionReceipt(config, receipt,
            inner: MockClient((_) async => http.Response('{}', 404))),
        DeletionReceiptStatus.pending);
    for (final response in [
      http.Response('{}', 403),
      http.Response('{}', 500),
        http.Response(jsonEncode({'fields': {
          'status': {'stringValue': 'complete'},
          'completedAt': {'timestampValue': '2020-01-01T00:00:00Z'},
          'expiresAt': {'timestampValue': '2020-04-01T00:00:00Z'},
        }}), 200),
      http.Response('{"fields":{"status":{"stringValue":"complete"}}}', 200)
    ]) {
      await expectLater(
          readDeletionReceipt(config, receipt,
              inner: MockClient((_) async => response)),
          throwsA(anything));
    }
    await expectLater(readDeletionReceipt(config, '../x'), throwsArgumentError);
  });
}
