import 'package:aigammon_app/feedback/feedback_link.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  tearDown(() => debugDefaultTargetPlatformOverride = null);

  group('buildFeedbackIssueUri', () {
    test('produces the exact URL for a known version and platform', () {
      final uri = buildFeedbackIssueUri(
        kind: FeedbackKind.bug,
        appVersion: '0.12.0',
        platform: 'android',
      );

      // Spelled out in full, once. The pieces are asserted individually below;
      // this is the assertion that catches a change to the SHAPE — a moved
      // repo, a dropped label, a body that stopped being escaped.
      expect(
        uri.toString(),
        'https://github.com/freevia-org/backgammon-buddy/issues/new'
        '?template=bug_report.yml'
        '&title=%5BBug%5D%3A+Backgammon+Buddy+0.12.0+%28android%29'
        '&version=0.12.0&platform=android'
        '&summary=Replace+this+with+a+short+description+of+what+happened.'
        '&reproduce=Replace+this+with+the+steps+that+led+to+the+problem.'
        '&expected=Replace+this+with+what+you+expected+to+happen.',
      );
    });

    test('points at the issues form of the right repository', () {
      final uri = buildFeedbackIssueUri(
        kind: FeedbackKind.idea,
        appVersion: '1.0.0',
        platform: 'ios',
      );
      expect(uri.scheme, 'https');
      expect(uri.host, 'github.com');
      expect(uri.path, '/freevia-org/backgammon-buddy/issues/new');
      expect(uri.queryParameters['template'], 'feature_request.yml');
      expect(uri.queryParameters['need'], isNotEmpty);
      expect(uri.queryParameters['idea'], isNotEmpty);
    });

    test('the form carries the version and platform', () {
      final uri = buildFeedbackIssueUri(
        kind: FeedbackKind.bug,
        appVersion: '9.9.9',
        platform: 'windows',
      );
      expect(uri.queryParameters['version'], '9.9.9');
      expect(uri.queryParameters['platform'], 'windows');
      expect(
        uri.queryParameters['title'],
        '[Bug]: Backgammon Buddy 9.9.9 (windows)',
      );
    });

    test('no context field when there is no diagnostics excerpt', () {
      for (final excerpt in [null, '', '   \n  ']) {
        final uri = buildFeedbackIssueUri(
          kind: FeedbackKind.bug,
          appVersion: '0.12.0',
          platform: 'android',
          diagnosticsExcerpt: excerpt,
        );
        expect(
          uri.queryParameters.containsKey('context'),
          isFalse,
          reason: 'excerpt: ${excerpt == null ? 'null' : '"$excerpt"'}',
        );
      }
    });

    test('an excerpt is prefilled in the optional context field', () {
      final uri = buildFeedbackIssueUri(
        kind: FeedbackKind.bug,
        appVersion: '0.12.0',
        platform: 'android',
        diagnosticsExcerpt: 'StateError: boom\n#0  main',
      );
      expect(uri.queryParameters['context'], contains('StateError: boom'));
    });

    test('a long excerpt is truncated so the URL stays usable', () {
      // GitHub's issue form is a GET. An over-long URL is not truncated
      // gracefully — it is rejected — so the excerpt has to be cut here.
      final uri = buildFeedbackIssueUri(
        kind: FeedbackKind.bug,
        appVersion: '0.12.0',
        platform: 'android',
        diagnosticsExcerpt: 'x' * 100000,
      );
      final body = uri.queryParameters['context']!;
      expect(body, contains('(truncated'));
      expect(body.length, lessThan(2000));
      // And the whole percent-encoded URL stays inside the practical browser
      // limit, which is the property that actually matters.
      expect(uri.toString().length, lessThan(8000));
    });
  });

  group('currentPlatformName', () {
    test("names the running platform with Flutter's own spelling", () {
      debugDefaultTargetPlatformOverride = TargetPlatform.windows;
      expect(currentPlatformName(), 'windows');
      debugDefaultTargetPlatformOverride = TargetPlatform.android;
      expect(currentPlatformName(), 'android');
      debugDefaultTargetPlatformOverride = TargetPlatform.iOS;
      expect(currentPlatformName(), 'iOS');
    });
  });
}
