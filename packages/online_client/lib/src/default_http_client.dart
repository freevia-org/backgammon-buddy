import 'package:http/http.dart' as http;

/// Default transport for ordinary targets. The iOS App Store build sets
/// `BGB_IOS_URLSESSION_TRANSPORT=true`, making the Dart HTTP/TLS fallback
/// unreachable at compile time and requiring a URLSession client to be injected.
http.Client createDefaultHttpClient() {
  if (const bool.fromEnvironment('BGB_IOS_URLSESSION_TRANSPORT')) {
    throw StateError('This build requires an explicitly injected HTTP client.');
  }
  return http.Client();
}
