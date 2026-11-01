import 'package:cupertino_http/cupertino_http.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:online_client/online_client.dart';

import 'package:aigammon_app/online/online_providers.dart';

const _iosURLSessionTransportBuild = bool.fromEnvironment(
  'BGB_IOS_URLSESSION_TRANSPORT',
);

void main() {
  tearDown(() {
    debugDefaultTargetPlatformOverride = null;
  });

  test(
    'iOS selects CupertinoClient and disables the Firestore gRPC channel',
    () {
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      final container = ProviderContainer();
      addTearDown(container.dispose);

      expect(
        container.read(onlineHttpClientFactoryProvider),
        equals(CupertinoClient.defaultSessionConfiguration),
      );
      expect(
        container.read(listenChannelBuilderProvider)(_IgnoredMatchApi()),
        isNull,
      );
    },
  );

  test(
    'the release define forces Apple transport even on a non-iOS target',
    () {
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      final container = ProviderContainer();
      addTearDown(container.dispose);

      final factory = container.read(onlineHttpClientFactoryProvider);
      final listenChannel = container.read(listenChannelBuilderProvider)(
        _IgnoredMatchApi(),
      );
      if (_iosURLSessionTransportBuild) {
        expect(factory, equals(CupertinoClient.defaultSessionConfiguration));
        expect(listenChannel, isNull);
      } else {
        expect(factory, equals(http.Client.new));
        expect(listenChannel, isNotNull);
      }
    },
  );
}

class _IgnoredMatchApi implements MatchApi {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
