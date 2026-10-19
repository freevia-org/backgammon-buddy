import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
import '../feedback/feedback_link.dart';
import 'online_data_deletion.dart';

const privacyPolicyUrl = String.fromEnvironment(
  'AIGAMMON_PRIVACY_POLICY_URL',
  defaultValue: 'https://freevia.org/backgammon-buddy/privacy/',
);
const privacyContact = String.fromEnvironment(
  'AIGAMMON_PRIVACY_CONTACT',
  defaultValue: 'privacy@freevia.org',
);
const supportUrl = 'https://freevia.org/backgammon-buddy/support/';

Uri? publicPrivacyPolicyUri(String value) {
  final uri = Uri.tryParse(value);
  return uri != null && uri.scheme == 'https' && uri.host.isNotEmpty
      ? uri
      : null;
}

/// Facts about the current app. Publisher/contact/retention promises belong in
/// the approved hosted policy; do not invent them in this product disclosure.
class PrivacyScreen extends ConsumerWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final policy = publicPrivacyPolicyUri(privacyPolicyUrl);
    final l10n = appLocalizationsOf(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.privacyTitle)),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            _PrivacySection(
              title: l10n.privacyAppTitle,
              text: l10n.privacyIntro,
            ),
            _PrivacySection(
              title: l10n.privacyLocalTitle,
              text: l10n.privacyLocalBody,
            ),
            _PrivacySection(
              title: l10n.privacyOnlineTitle,
              text: l10n.privacyOnlineBody,
            ),
            _OnlineDeletionSection(l10n: l10n),
            _PrivacySection(
              title: l10n.privacyDiagnosticsTitle,
              text: l10n.privacyDiagnosticsBody,
            ),
            _PrivacySection(
              title: l10n.privacyCameraTitle,
              text: l10n.privacyCameraBody,
            ),
            _PrivacySection(
              title: l10n.privacyFeedbackTitle,
              text: l10n.privacyFeedbackBody,
            ),
            if (privacyContact.isNotEmpty)
              _PrivacySection(
                title: l10n.privacyContactTitle,
                text: privacyContact,
              ),
            if (policy != null)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(l10n.privacyReadPolicy),
                trailing: const Icon(Icons.open_in_new),
                onTap: () async {
                  var opened = false;
                  try {
                    opened = await ref.read(urlOpenerProvider)(policy);
                  } catch (_) {}
                  if (context.mounted && !opened) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.privacyPolicyOpenFailed)),
                    );
                  }
                },
              ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(l10n.privacySupportTitle),
              subtitle: const Text('support@freevia.org'),
              trailing: const Icon(Icons.open_in_new),
              onTap: () async {
                try {
                  if (await ref.read(urlOpenerProvider)(
                    Uri.parse(supportUrl),
                  )) {
                    return;
                  }
                } catch (_) {}
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text(l10n.privacySupportOpenFailed)),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _OnlineDeletionSection extends ConsumerStatefulWidget {
  const _OnlineDeletionSection({required this.l10n});

  final AppLocalizations l10n;

  @override
  ConsumerState<_OnlineDeletionSection> createState() =>
      _OnlineDeletionSectionState();
}

class _OnlineDeletionSectionState
    extends ConsumerState<_OnlineDeletionSection> {
  bool _busy = false;
  String? _result;
  String? _confirmation;

  Future<void> _check() async {
    setState(() => _busy = true);
    try {
      final status = await ref.read(checkOnlineDeletionProvider)();
      if (!mounted) return;
      setState(
        () => _confirmation = switch (status) {
          DeletionConfirmation.none => widget.l10n.privacyDeletionReceiptNone,
          DeletionConfirmation.pending =>
            widget.l10n.privacyDeletionReceiptPending,
          DeletionConfirmation.complete =>
            widget.l10n.privacyDeletionReceiptComplete,
        },
      );
    } catch (_) {
      if (mounted) {
        setState(
          () => _confirmation = widget.l10n.privacyDeletionReceiptFailed,
        );
      }
    } finally {
      if (mounted) setState(() => _busy = false);
    }
  }

  Future<void> _request() async {
    final l10n = widget.l10n;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.privacyDeleteConfirmTitle),
        content: Text(l10n.privacyDeleteConfirmBody),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.commonCancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.privacyRequestDeletion),
          ),
        ],
      ),
    );
    if (confirmed != true || !mounted) return;
    setState(() {
      _busy = true;
      _result = null;
    });
    try {
      final result = await ref.read(requestOnlineDeletionProvider)();
      if (!mounted) return;
      setState(() {
        _result = switch (result) {
          OnlineDeletionResult.requested => l10n.privacyDeleteRequested,
          OnlineDeletionResult.requestedLocalSignOutFailed =>
            l10n.privacyDeleteRequestedSignOutFailed,
          OnlineDeletionResult.noIdentity => l10n.privacyDeleteNoIdentity,
        };
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _result = l10n.privacyDeleteRequestFailed;
      });
    } finally {
      if (mounted) {
        setState(() {
          _busy = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.l10n.privacyDeleteSectionTitle,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Text(widget.l10n.privacyDeleteInstructions),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: _busy ? null : _request,
          icon: const Icon(Icons.delete_outline),
          label: Text(
            _busy
                ? widget.l10n.privacySendingRequest
                : widget.l10n.privacyDeleteAction,
          ),
        ),
        if (_result != null) ...[const SizedBox(height: 8), Text(_result!)],
        const SizedBox(height: 8),
        Text(widget.l10n.privacyDeletionReceiptHelp),
        TextButton.icon(
          onPressed: _busy ? null : _check,
          icon: const Icon(Icons.verified_user_outlined),
          label: Text(widget.l10n.privacyDeletionReceiptCheck),
        ),
        if (_confirmation != null) ...[
          const SizedBox(height: 8),
          Text(_confirmation!),
        ],
      ],
    ),
  );
}

class _PrivacySection extends StatelessWidget {
  const _PrivacySection({required this.title, required this.text});
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 8),
        Text(text),
      ],
    ),
  );
}
