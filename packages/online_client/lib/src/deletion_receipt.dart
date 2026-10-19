import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;

import 'online_config.dart';
import 'online_exception.dart';
import 'request_deadline.dart';

enum DeletionReceiptStatus { pending, complete }

/// A 256-bit capability, independent of the deleted Firebase credential.
/// Keep private: possession grants read-only access to completion status.
String newDeletionReceipt() {
  final random = Random.secure();
  return List.generate(
    32,
    (_) => random.nextInt(256).toRadixString(16).padLeft(2, '0'),
  ).join();
}

bool validDeletionReceipt(String value) =>
    RegExp(r'^[a-f0-9]{64}$').hasMatch(value);

/// No Auth client/token: checking after account erasure must not create a user.
/// Missing/expired receipts never prove completion.
Future<DeletionReceiptStatus> readDeletionReceipt(
  OnlineConfig config,
  String receipt, {
  http.Client? inner,
}) async {
  if (!validDeletionReceipt(receipt)) throw ArgumentError('Invalid receipt');
  final client = inner ?? http.Client();
  try {
    final response = await sendWithDeadline(
      client,
      method: 'GET',
      url: Uri.parse(
        '${config.firestoreDocumentsBase}/deletionReceipts/$receipt',
      ),
      timeout: const Duration(seconds: 15),
    );
    if (response.statusCode == 404) return DeletionReceiptStatus.pending;
    if (response.statusCode != 200) {
      throw onlineExceptionFor(response.statusCode, response.body);
    }
    final fields = (jsonDecode(response.body) as Map)['fields'] as Map;
    final status = (fields['status'] as Map?)?['stringValue'];
    final completed = DateTime.tryParse(
      ((fields['completedAt'] as Map?)?['timestampValue'] as String?) ?? '',
    );
    final expires = DateTime.tryParse(
      ((fields['expiresAt'] as Map?)?['timestampValue'] as String?) ?? '',
    );
    if (status != 'complete' ||
        completed == null ||
        expires == null ||
        expires.isBefore(DateTime.now()) ||
        completed.isAfter(expires)) {
      throw const FormatException('Invalid or expired deletion confirmation');
    }
    return DeletionReceiptStatus.complete;
  } finally {
    if (inner == null) client.close();
  }
}
