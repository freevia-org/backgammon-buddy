import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
      appBar: AppBar(title: const Text('Privacy and data')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(24),
          children: [
            const _PrivacySection(
              title: 'Backgammon Buddy by Freevia',
              text:
                  'This page describes how the current app handles your data.',
            ),
            const _PrivacySection(
              title: 'Games and tutoring on your device',
              text:
                  'Local matches, settings, analysis and practice progress are '
                  'stored on this device. The backgammon engine and tutor '
                  'explanations run here. Delete a saved match from History '
                  'to remove its saved practice exercises and attempts too. '
                  'Delete individual exercises or reset practice progress in Learning; '
                  'clear local error reports in Settings → Diagnostics. Your '
                  'device’s backup settings may also apply to app data.',
            ),
            const _PrivacySection(
              title: 'Online and nearby play',
              text:
                  'Online play sends an anonymous player identifier, match '
                  'settings, moves and dice-handshake records to Google '
                  'Firebase so both players can play the same match. Deleting '
                  'History on this device does not delete online records. '
                  'Hosted matches expire 30 days after creation; scheduled '
                  'cleanup removes their cloud logs. Match records are stored '
                  'in the EU; Firebase Authentication processes sign-in data '
                  'in the United States. '
                  'Online connections to Google use encryption in transit. '
                  'Nearby play exchanges match information with the other '
                  'device over an unencrypted local connection; use trusted '
                  'Wi-Fi.',
            ),
            const _OnlineDeletionSection(),
            const _PrivacySection(
              title: 'Optional usage and crash diagnostics',
              text:
                  'Sharing is off until you choose it in Settings. If enabled, '
                  'Google Firebase receives usage events, app/device '
                  'information, performance measurements and crash reports to '
                  'help improve the app. Turn sharing off at any time to stop '
                  'new optional collection. This does not erase data already '
                  'sent. Local diagnostics and online matches work separately '
                  'from this choice.',
            ),
            const _PrivacySection(
              title: 'Camera for nearby QR codes',
              text:
                  'The optional camera scans nearby game QR codes. Images '
                  'are processed on your device and are not saved or uploaded. '
                  'You can refuse camera access and enter the host address '
                  'manually. This version does not use the microphone or '
                  'provide physical-board play.',
            ),
            const _PrivacySection(
              title: 'Feedback you choose to send',
              text:
                  'Feedback opens a GitHub issue draft for you to review. '
                  'Opening the draft sends its app version and platform to '
                  'GitHub; feedback from Diagnostics may also send error '
                  'details. No issue is posted until you submit it. Issues may be '
                  'public, so remove private information before sending.',
            ),
            if (privacyContact.isNotEmpty)
              _PrivacySection(title: 'Privacy contact', text: privacyContact),
            if (policy != null)
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Text('Read the privacy policy'),
                trailing: const Icon(Icons.open_in_new),
                onTap: () async {
                  var opened = false;
                  try {
                    opened = await ref.read(urlOpenerProvider)(policy);
                  } catch (_) {}
                  if (context.mounted && !opened) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Could not open the privacy policy.'),
                      ),
                    );
                  }
                },
              ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Help and support'),
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
                    const SnackBar(
                      content: Text(
                        'Could not open support. Contact support@freevia.org.',
                      ),
                    ),
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
  const _OnlineDeletionSection();

  @override
  ConsumerState<_OnlineDeletionSection> createState() =>
      _OnlineDeletionSectionState();
}

class _OnlineDeletionSectionState
    extends ConsumerState<_OnlineDeletionSection> {
  bool _busy = false;
  String? _result;

  Future<void> _request() async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete online identity and data?'),
        content: const Text(
          'This immediately ends access to this identity’s cloud matches for '
          'both players and requests deletion of the identity and shared online '
          'match logs within 30 days. Google may take up to 180 days after '
          'account deletion to remove Authentication data from its live and '
          'backup systems. Local History and practice remain on this '
          'device. Previously sent optional diagnostics are separate; contact '
          'privacy@freevia.org about those. This request cannot be undone.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Request deletion'),
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
          OnlineDeletionResult.requested =>
            'Deletion requested. This online identity is signed out. Its cloud '
                'data will be deleted within 30 days. Starting online play again '
                'creates a new identity. Google’s Authentication data removal '
                'can take up to 180 days. Contact privacy@freevia.org for help.',
          OnlineDeletionResult.requestedLocalSignOutFailed =>
            'Deletion requested. Its cloud data will be deleted within 30 days. '
                'The device could not clear the saved sign-in, but the online identity '
                'is blocked from further match access. Google’s Authentication '
                'data removal can take up to 180 days. Contact privacy@freevia.org for help.',
          OnlineDeletionResult.noIdentity =>
            'No usable online identity is saved on this device. No new account '
                'was created. If you previously used online play, contact '
                'privacy@freevia.org for help; hosted matches expire after 30 days.',
        };
      });
    } catch (_) {
      if (!mounted) return;
      setState(() {
        _result =
            'Could not confirm the deletion request. Check your connection and retry, or contact privacy@freevia.org.';
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
          'Delete online data',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        const Text(
          'Use this device’s saved sign-in to verify ownership. A player identifier or invite code alone does not prove ownership. Local-only players do not need an online account.',
        ),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: _busy ? null : _request,
          icon: const Icon(Icons.delete_outline),
          label: Text(
            _busy ? 'Sending request…' : 'Delete online identity and data',
          ),
        ),
        if (_result != null) ...[const SizedBox(height: 8), Text(_result!)],
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
