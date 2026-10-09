import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

/// The repository issues live in.
const String kFeedbackRepository = 'freevia-org/backgammon-buddy';

enum FeedbackKind { bug, idea }

/// Builds the selected GitHub issue form URL with its fields pre-filled.
///
/// **Why pre-fill at all.** The two questions every bug report needs answered
/// first are "which version" and "which platform", and the two an author is
/// least likely to include. Putting them in the body before the user starts
/// typing means a report that arrives with nothing but "the dice are wrong" is
/// still actionable. The user can edit or delete any of it — this is a
/// suggestion in a text box, not a submission.
///
/// **Why a pure function.** It is the whole testable surface of the feedback
/// feature: no widget, no plugin, no network. Everything above it just launches
/// what this returns.
///
/// [appVersion] is `appVersion` from `branding/app_version.dart`; [platform] is
/// a short platform name from [currentPlatformName] (`android`, `iOS`,
/// `windows`, …) — Flutter's own spelling, mixed case and all, since a report
/// is read by a human and `iOS` is what that human calls it.
/// [diagnosticsExcerpt], when given, is prefilled in the optional context field
/// after the Diagnostics screen previews it for the user.
Uri buildFeedbackIssueUri({
  required FeedbackKind kind,
  required String appVersion,
  required String platform,
  String? diagnosticsExcerpt,
}) {
  final excerpt = diagnosticsExcerpt?.trim();
  final query = <String, String>{
    'template': kind == FeedbackKind.bug
        ? 'bug_report.yml'
        : 'feature_request.yml',
    'title': kind == FeedbackKind.bug
        ? '[Bug]: Backgammon Buddy $appVersion ($platform)'
        : '[Idea]: Backgammon Buddy',
    'version': appVersion,
    'platform': platform,
  };

  if (kind == FeedbackKind.bug) {
    query.addAll({
      'summary': 'Replace this with a short description of what happened.',
      'reproduce': 'Replace this with the steps that led to the problem.',
      'expected': 'Replace this with what you expected to happen.',
    });
    if (excerpt != null && excerpt.isNotEmpty) {
      query['context'] = _clampExcerpt(excerpt);
    }
  } else {
    query.addAll({
      'need': 'Replace this with what you wanted to do or learn.',
      'idea': 'Replace this with the change you would find helpful.',
    });
  }

  return Uri.https('github.com', '/$kFeedbackRepository/issues/new', query);
}

/// Text shown before opening GitHub, matching the fields sent in the URL.
String feedbackDraftPreviewText(Uri uri) {
  final fields = uri.queryParameters;
  final values = fields.entries
      .where((entry) => !const {'template', 'title'}.contains(entry.key))
      .map((entry) => '${entry.key}: ${entry.value}')
      .join('\n\n');
  return '${fields['title']}\n\n$values';
}

/// A URL is not an unbounded transport.
///
/// GitHub's issue form is reached by GET, and browsers and servers alike cap
/// the URL length (the practical floor across them is ~8 kB, and every byte of
/// a stack trace costs three once percent-encoded). An over-long URL does not
/// degrade gracefully — it is rejected outright, or silently truncated
/// mid-escape — so the excerpt is cut here, from the END, keeping the OLDEST
/// entries: the crash log is oldest-first and the first failure is usually the
/// cause, with everything after it the consequence.
const int _maxExcerptChars = 1500;

String _clampExcerpt(String excerpt) => excerpt.length <= _maxExcerptChars
    ? excerpt
    : '${excerpt.substring(0, _maxExcerptChars)}\n… (truncated — use Copy to '
        'clipboard on the Diagnostics screen for the full log)';

/// A short name for the platform the app is running on.
///
/// Flutter's own spelling, NOT normalized: `android`, `windows`, `macOS`,
/// `iOS`. It is [TargetPlatform]'s enum name, and it goes into an issue title
/// a person reads, so `iOS` is a feature rather than an inconsistency. Nothing
/// matches on this string, so there is nothing for the mixed case to break.
///
/// [defaultTargetPlatform] rather than `dart:io`'s `Platform` so this works on
/// every target and can be overridden in a test.
String currentPlatformName() => kIsWeb ? 'web' : defaultTargetPlatform.name;

/// Opens a URL. Injected so tests can assert on WHAT would be opened without a
/// plugin, a browser, or a platform channel.
typedef UrlOpener = Future<bool> Function(Uri url);

/// Opens [url] in the platform's browser.
///
/// `externalApplication` deliberately: an in-app web view cannot reach the
/// user's GitHub session, so it would show a login wall instead of a pre-filled
/// issue form.
Future<bool> openExternally(Uri url) =>
    launchUrl(url, mode: LaunchMode.externalApplication);

/// How the app opens external links. Overridden in tests with a recorder.
final urlOpenerProvider = Provider<UrlOpener>((ref) => openExternally);
