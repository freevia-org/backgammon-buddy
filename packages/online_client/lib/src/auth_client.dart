import 'dart:convert';

import 'package:http/http.dart' as http;

import 'online_config.dart';
import 'online_exception.dart';
import 'token_store.dart';

/// An active anonymous authentication session.
class AuthSession {
  final String uid;
  final String idToken;
  final String refreshToken;

  /// When [idToken] expires (UTC).
  final DateTime expiresAt;

  const AuthSession({
    required this.uid,
    required this.idToken,
    required this.refreshToken,
    required this.expiresAt,
  });
}

/// Firebase anonymous auth over the Identity Toolkit REST API.
///
/// Refreshes proactively: [validToken] exchanges the refresh token whenever
/// fewer than [refreshWindow] remain before expiry. The [now] clock is
/// injectable for deterministic tests.
///
/// ## The uid must outlive the process
///
/// The anonymous uid is the only identity the model has, and the security rules
/// gate every match document on it, so minting a fresh one on each launch
/// strands both seats of any match in progress. [store] is where the session is
/// kept between launches; [signInAnonymously] restores from it when it can and
/// only signs up a NEW user when it cannot. The default [InMemoryTokenStore]
/// keeps the old (process-lifetime) behaviour for callers with no storage.
class AuthClient {
  final OnlineConfig config;
  final http.Client _http;
  final DateTime Function() _now;

  /// Where the session is remembered between launches.
  final TokenStore store;

  /// Refresh when less than this remains before the token expires.
  static const Duration refreshWindow = Duration(minutes: 5);

  AuthSession? _session;

  AuthClient(
    this.config, {
    http.Client? inner,
    DateTime Function()? now,
    TokenStore? store,
  })  : _http = inner ?? http.Client(),
        _now = now ?? (() => DateTime.now().toUtc()),
        store = store ?? InMemoryTokenStore();

  /// The current session, or null before [signInAnonymously].
  AuthSession? get session => _session;

  /// Restore an existing identity without silently creating another account.
  /// Privacy actions must never create an account just to ask to delete it.
  Future<AuthSession?> restoreExistingSession() async =>
      _session ?? await _restore(preserveOnError: true);

  /// Sign in as the anonymous user, REUSING the stored one when possible.
  ///
  /// Order matters: a stored refresh token is exchanged first, so a relaunch
  /// keeps the uid (and therefore access to any match in progress). Only when
  /// there is nothing stored, or the server refuses what was stored, is a brand
  /// new anonymous user signed up — which does orphan whatever the old uid was
  /// a participant of, so it is the last resort rather than the first move.
  Future<AuthSession> signInAnonymously() async {
    final restored = await _restore();
    if (restored != null) return restored;
    return _signUp();
  }

  /// Exchange a stored refresh token for a live session, or null when there is
  /// nothing usable to restore.
  Future<AuthSession?> _restore({bool preserveOnError = false}) async {
    StoredSession? stored;
    try {
      stored = await store.read();
    } catch (_) {
      if (preserveOnError) rethrow;
      // An unreadable store costs a new anonymous user, never a failed launch.
      return null;
    }
    if (stored == null) return null;
    try {
      await _refresh(AuthSession(
        uid: stored.uid,
        idToken: '',
        refreshToken: stored.refreshToken,
        // Any past instant: this session exists only to carry the token into
        // the exchange below.
        expiresAt: DateTime.utc(1970),
      ));
      return _session;
    } on OnlineException catch (error) {
      // Privacy requests must retain the retry credential on any auth/network
      // failure and must not confuse a failed refresh with "no account".
      if (preserveOnError) rethrow;
      // Only a definitive Firebase credential rejection proves this identity
      // cannot be restored. Transient server failures and malformed responses
      // must not silently mint a new uid: doing so strands both seats of an
      // active match even though the stored credential may still work later.
      if (!_isRejectedRefreshToken(error)) rethrow;
      // The refresh token is dead (revoked, or the project was reset). Drop it
      // so the next launch does not pay for the same rejection again.
      await _clearStore();
      _session = null;
      return null;
    }
  }

  bool _isRejectedRefreshToken(OnlineException error) {
    // Identity Toolkit returns these message codes for unusable refresh
    // credentials. Do not treat arbitrary 4xx/5xx responses as proof that the
    // persisted uid is gone; some failures are caused by service/configuration
    // outages and are recoverable on the next launch.
    return error.message == 'TOKEN_EXPIRED' ||
        error.message == 'INVALID_REFRESH_TOKEN' ||
        error.message == 'USER_NOT_FOUND';
  }

  /// Sign up a fresh anonymous user, returning (and caching) the session.
  Future<AuthSession> _signUp() async {
    final url = Uri.parse(
      '${config.identityToolkitBase}/accounts:signUp?key=${config.effectiveApiKey}',
    );
    final res = await _http.post(
      url,
      headers: const {'Content-Type': 'application/json'},
      body: jsonEncode({'returnSecureToken': true}),
    );
    final body = _decodeOrThrow(res);
    final expiresIn = _expiresIn(body, 'expiresIn');
    _session = AuthSession(
      uid: _requiredString(body, 'localId'),
      idToken: _requiredString(body, 'idToken'),
      refreshToken: _requiredString(body, 'refreshToken'),
      expiresAt: _now().add(Duration(seconds: expiresIn)),
    );
    await _remember();
    return _session!;
  }

  /// Return a valid id token, refreshing first if it is within [refreshWindow]
  /// of expiry. Throws [StateError] if not signed in.
  Future<String> validToken() async {
    final session = _session;
    if (session == null) {
      throw StateError('not signed in — call signInAnonymously() first');
    }
    if (_now().add(refreshWindow).isBefore(session.expiresAt)) {
      return session.idToken;
    }
    return _refresh(session);
  }

  Future<String> _refresh(AuthSession session) async {
    final url = Uri.parse(
      '${config.secureTokenBase}/token?key=${config.effectiveApiKey}',
    );
    final res = await _http.post(
      url,
      headers: const {'Content-Type': 'application/x-www-form-urlencoded'},
      body: {
        'grant_type': 'refresh_token',
        'refresh_token': session.refreshToken,
      },
    );
    final body = _decodeOrThrow(res);
    final expiresIn = _expiresIn(body, 'expires_in');
    // The secure-token endpoint echoes the user id; trust it over the one we
    // carried in, so a restored session cannot end up mislabelled.
    final uid = body['user_id'] == null
        ? session.uid
        : _requiredString(body, 'user_id');
    _session = AuthSession(
      uid: uid,
      idToken: _requiredString(body, 'id_token'),
      refreshToken: _requiredString(body, 'refresh_token'),
      expiresAt: _now().add(Duration(seconds: expiresIn)),
    );
    await _remember();
    return _session!.idToken;
  }

  /// Persist the live session. A store that cannot be written is not fatal —
  /// this launch still works, only the NEXT one loses the uid.
  Future<void> _remember() async {
    final s = _session;
    if (s == null) return;
    try {
      await store
          .write(StoredSession(uid: s.uid, refreshToken: s.refreshToken));
    } catch (_) {
      // Best effort by design; see above.
    }
  }

  Future<void> _clearStore() async {
    try {
      await store.clear();
    } catch (_) {
      // Best effort by design.
    }
  }

  Map<String, Object?> _decodeOrThrow(http.Response res) {
    Map<String, Object?> body;
    try {
      body = jsonDecode(res.body) as Map<String, Object?>;
    } catch (_) {
      throw OnlineException('http-${res.statusCode}', res.body);
    }
    if (res.statusCode < 200 || res.statusCode >= 300) {
      final err = body['error'];
      final message =
          err is Map ? (err['message']?.toString() ?? res.body) : res.body;
      throw OnlineException('http-${res.statusCode}', message);
    }
    return body;
  }

  /// Validate a successful auth response at the boundary. A proxy, emulator,
  /// or upstream regression can return HTTP 200 with an error-shaped or
  /// incomplete body; raw casts/`int.parse` here used to leak TypeError and
  /// FormatException out of sign-in and token refresh.
  String _requiredString(Map<String, Object?> body, String key) {
    final value = body[key];
    if (value is String && value.isNotEmpty) return value;
    throw OnlineException(
        'malformed-auth-response', 'missing or invalid "$key" field');
  }

  int _expiresIn(Map<String, Object?> body, String key) {
    final value = body[key];
    final seconds = value is String ? int.tryParse(value) : null;
    if (seconds != null && seconds > 0) return seconds;
    throw OnlineException(
        'malformed-auth-response', 'missing or invalid "$key" field');
  }

  /// Close the underlying HTTP client.
  void close() => _http.close();
}
