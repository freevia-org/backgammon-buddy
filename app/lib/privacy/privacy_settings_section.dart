import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../analytics/telemetry_controller.dart';
import '../data/settings_repository.dart';
import '../l10n/localization_lookup.dart';
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
    final l10n = appLocalizationsOf(context);
    if (enabled) {
      final accepted = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(l10n.privacyConsentTitle),
          content: SingleChildScrollView(child: Text(l10n.privacyConsentBody)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l10n.privacyKeepOff),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context, true),
              child: Text(l10n.privacyShareDiagnostics),
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
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.privacySaveFailed)));
      }
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    final settings = ref.watch(settingsProvider).valueOrNull;
    return Column(
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: const Icon(Icons.privacy_tip_outlined),
          title: Text(l10n.privacyTitle),
          subtitle: Text(l10n.privacySettingsSubtitle),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(builder: (_) => const PrivacyScreen()),
          ),
        ),
        SwitchListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(l10n.privacyDiagnosticsSettingTitle),
          subtitle: Text(l10n.privacyDiagnosticsSettingSubtitle),
          value: settings?.telemetryEnabled ?? false,
          onChanged: _saving || settings == null ? null : _change,
        ),
      ],
    );
  }
}
