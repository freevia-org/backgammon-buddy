import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../feedback/feedback_link.dart';

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
                  'Nearby play exchanges match information with the other '
                  'device on your local network.',
            ),
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
              title: 'Camera and microphone',
              text:
                  'The camera scans a nearby game’s QR code or reads your '
                  'physical board in Buddy Mode. Board images are processed on '
                  'your device. The optional microphone detects the sound of '
                  'dice landing; audio is processed briefly in memory rather '
                  'than saved as a recording. The app does not upload Buddy '
                  'camera images or microphone audio. You can refuse these '
                  'permissions; local on-screen games need neither.',
            ),
            const _PrivacySection(
              title: 'Feedback you choose to send',
              text:
                  'Feedback opens a GitHub issue draft for you to review. '
                  'The draft includes the app version and platform; feedback '
                  'from Diagnostics may include error details. Nothing is '
                  'submitted until you submit the issue. Posted issues may be '
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
                  if (await ref.read(urlOpenerProvider)(Uri.parse(supportUrl))) {
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
