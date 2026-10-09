import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../branding/app_version.dart';
import '../diagnostics/crash_log.dart';
import '../feedback/feedback_link.dart';

/// Shows the rolling on-device error log and lets the user get it OUT.
///
/// Two routes out, and they are for different people. **Copy to clipboard** is
/// the universal one — it works with no network, no GitHub account and no
/// Firebase config, and a tester can paste the result into any message.
/// ("Copy" rather than a share sheet deliberately: `share_plus` is not a
/// dependency and a plugin is not worth adding for one button.) **Report an
/// issue** previews the exact report locally before opening a GitHub draft.
///
/// Configured, opted-in Crashlytics can report errors on mobile, but this
/// screen also works without Firebase or optional telemetry.
class DiagnosticsScreen extends StatefulWidget {
  const DiagnosticsScreen({super.key, this.log, this.openUrl});

  /// Injectable for tests; defaults to the process-wide log the global
  /// handlers write to.
  final CrashLog? log;

  /// How a URL is opened. Injectable for the same reason [log] is: this screen
  /// is mounted in tests WITHOUT a [ProviderScope], so it takes its
  /// collaborators as parameters rather than reading providers.
  final UrlOpener? openUrl;

  @override
  State<DiagnosticsScreen> createState() => _DiagnosticsScreenState();
}

class _DiagnosticsScreenState extends State<DiagnosticsScreen> {
  CrashLog get _log => widget.log ?? CrashLog.instance;
  bool _reporting = false;

  Future<void> _copy() async {
    final messenger = ScaffoldMessenger.of(context);
    await Clipboard.setData(ClipboardData(text: _log.asText()));
    if (!mounted) return;
    messenger.showSnackBar(
      const SnackBar(content: Text('Diagnostics copied to clipboard')),
    );
  }

  /// Previews the exact payload before it is sent in a GitHub URL.
  ///
  /// The excerpt is the same human-readable report Copy produces, clamped by
  /// [buildFeedbackIssueUri] to something a URL can actually carry — the
  /// clipboard route stays the way to send a long log in full.
  Future<void> _reportIssue() async {
    if (_reporting) return;
    final uri = buildFeedbackIssueUri(
      kind: FeedbackKind.bug,
      appVersion: appVersion,
      platform: currentPlatformName(),
      diagnosticsExcerpt: _log.isEmpty ? null : _log.asText(),
    );
    setState(() => _reporting = true);
    try {
      final confirmed = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          scrollable: true,
          title: const Text('Review diagnostic report'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Opening the draft sends the details below to GitHub, '
                'including the app version, platform and any error details. '
                'No public issue is posted until you submit it there. '
                'If these details contain private information, cancel and '
                'use Copy to prepare a report yourself.',
              ),
              const SizedBox(height: 16),
              SelectableText(feedbackDraftPreviewText(uri)),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Open GitHub'),
            ),
          ],
        ),
      );
      if (confirmed != true || !mounted) return;
      final open = widget.openUrl ?? openExternally;
      await open(uri).catchError((Object _) => false);
    } finally {
      if (mounted) setState(() => _reporting = false);
    }
  }

  Future<void> _clear() async {
    await _log.clear();
    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final entries = _log.entries.reversed.toList(growable: false);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Diagnostics'),
        actions: [
          // Always enabled, unlike Copy and Clear: "there is nothing in the log
          // and the app is still misbehaving" is a report worth sending, and
          // the version and platform go with it either way.
          IconButton(
            onPressed: _reporting ? null : _reportIssue,
            icon: const Icon(Icons.outgoing_mail),
            tooltip: 'Report an issue on GitHub',
          ),
          IconButton(
            onPressed: entries.isEmpty ? null : _copy,
            icon: const Icon(Icons.copy_all),
            tooltip: 'Copy to clipboard',
          ),
          IconButton(
            onPressed: entries.isEmpty ? null : _clear,
            icon: const Icon(Icons.delete_outline),
            tooltip: 'Clear log',
          ),
        ],
      ),
      body: SafeArea(
        child: entries.isEmpty
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(32),
                  child: Text(
                    'No errors recorded.\n\nIf something goes wrong, it is '
                    'logged here — come back and copy the details into a bug '
                    'report.',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium
                        ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
                  ),
                ),
              )
            : ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: entries.length,
                separatorBuilder: (_, _) => const Divider(height: 24),
                itemBuilder: (context, i) {
                  final e = entries[i];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${e.time.toIso8601String()}  ·  ${e.source}',
                        style: theme.textTheme.labelSmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant),
                      ),
                      const SizedBox(height: 4),
                      SelectableText(e.error,
                          style: theme.textTheme.bodyMedium),
                      if (e.stack != null) ...[
                        const SizedBox(height: 8),
                        // Stacks are wide; let them scroll sideways rather
                        // than wrap into an unreadable block.
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SelectableText(
                            e.stack!,
                            style: theme.textTheme.bodySmall?.copyWith(
                              fontFamily: 'monospace',
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                          ),
                        ),
                      ],
                    ],
                  );
                },
              ),
      ),
    );
  }
}
