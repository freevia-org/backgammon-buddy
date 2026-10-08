import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../analytics/telemetry_controller.dart';
import '../data/settings_repository.dart';
import 'privacy_screen.dart';

class PrivacySettingsSection extends ConsumerStatefulWidget {
  const PrivacySettingsSection({super.key});

  @override
  ConsumerState<PrivacySettingsSection> createState() =>
      _PrivacySettingsSectionState();
}

class _PrivacySettingsSectionState
    extends ConsumerState<PrivacySettingsSection> {
  bool _saving = false;

  Future<void> _change(bool enabled) async {
    if (_saving) return;
    if (enabled) {
      final accepted = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Share usage and crash diagnostics?'),
          content: const SingleChildScrollView(
            child: Text(
              'This sends usage events, app/device information, crash '
              'reports and performance measurements to Google Firebase. '
              'Sharing is optional. Games and tutoring work with it off, '
              'and you can turn it off again in Settings.',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Keep off'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Share diagnostics'),
            ),
          ],
        ),
      );
      if (accepted != true || !mounted) return;
    }
    setState(() => _saving = true);
    final telemetry = ref.read(telemetryControllerProvider);
    try {
      // Close the forwarding gate immediately on withdrawal, even if disk IO
      // subsequently fails. Opt-in only opens it after the preference is saved.
      if (!enabled) await telemetry.setEnabled(false);
      await ref.read(settingsRepositoryProvider).setTelemetryEnabled(enabled);
      await telemetry.setEnabled(enabled);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
              'Could not save the privacy choice. Please try again.',
            ),
          ),
        );
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final settings = ref.watch(settingsProvider).valueOrNull;
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.privacy_tip_outlined),
          title: const Text('Privacy and data'),
          subtitle: const Text('What stays on your device and what is shared'),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(builder: (_) => const PrivacyScreen()),
          ),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: const Text('Share usage and crash diagnostics'),
          subtitle: const Text('Optional · off by default'),
          value: settings?.telemetryEnabled ?? false,
          onChanged: _saving || settings == null ? null : _change,
        ),
      ],
    );
  }
}
