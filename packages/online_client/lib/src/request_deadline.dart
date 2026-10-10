import 'dart:async';

import 'package:http/http.dart' as http;

import 'online_exception.dart';

/// Sends one request with an abort signal and a deadline covering both the
/// response headers and body. AbortableRequest lets IOClient stop the socket
/// work when the deadline expires; injected clients that do not support
/// abortion still get a bounded wait at this call site.
Future<http.Response> sendWithDeadline(
  http.Client client, {
  required String method,
  required Uri url,
  required Duration timeout,
  Map<String, String>? headers,
  Object? body,
}) async {
  final abort = Completer<void>();
  final request = http.AbortableRequest(
    method,
    url,
    abortTrigger: abort.future,
  );
  if (headers != null) request.headers.addAll(headers);
  if (body is String) {
    request.body = body;
  } else if (body is Map<String, String>) {
    request.bodyFields = body;
  } else if (body != null) {
    request.body = body.toString();
  }

  try {
    return await (() async {
      final streamed = await client.send(request);
      return http.Response.fromStream(streamed);
    })()
        .timeout(timeout);
  } on TimeoutException {
    if (!abort.isCompleted) abort.complete();
    throw const OnlineException(
      'request-timeout',
      'The online request timed out. Check your connection and try again.',
    );
  }
}
