import 'dart:async';

import 'package:engine_bindings/engine_bindings.dart'
    show Difficulty, EvaluationEngine;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../analytics/analytics_events.dart';
import '../analytics/analytics_screen_view.dart';
import '../analytics/app_analytics.dart';
import '../branding/app_version.dart';
import '../buddy/phrasing.dart';
import '../physical_buddy_availability.dart';
import '../data/app_settings.dart';
import '../data/settings_repository.dart';
import '../diagnostics/crash_log.dart';
import '../feedback/feedback_link.dart';
import '../licensing/third_party_licenses.dart';
import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
import '../privacy/privacy_settings_section.dart';
import '../tutor/coaching_widgets.dart';
import 'diagnostics_screen.dart';

Future<PackageInfo>? _packageInfoFuture;

/// The preferences screen. Every control autosaves on change (there is no save
/// button); a "Reset to defaults" action in the app bar restores
/// [AppSettings.defaults]. All writes go through [SettingsRepository.save],
/// which the live [settingsProvider] re-emits, so the UI reflects the store.
///
/// Board-theme selection is intentionally omitted: only light/dark palettes
/// exist and they follow the app's brightness (the [themeMode] setting), so a
/// separate board-theme control would be redundant. It can be added later if
/// custom palettes land.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  // See [HomeScreen] for why every screen splits build/_build.
  Widget build(BuildContext context, WidgetRef ref) => AnalyticsScreenView(
    name: AnalyticsScreens.settings,
    child: _build(context, ref),
  );

  Widget _build(BuildContext context, WidgetRef ref) {
    // The row always exists; during the sub-frame initial load fall back to
    // defaults so the controls always have a concrete selection.
    final settings =
        ref.watch(settingsProvider).valueOrNull ?? AppSettings.defaults;
    final repo = ref.read(settingsRepositoryProvider);
    final l10n = appLocalizationsOf(context);

    void update(AppSettings Function(AppSettings current) change) =>
        recordFailures(repo.update(change), source: 'settings-autosave');

    void reset() => recordFailures(
      repo.save(AppSettings.defaults),
      source: 'settings-reset',
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
        actions: [
          TextButton(onPressed: reset, child: Text(l10n.settingsReset)),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 480),
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _Section(
                      label: l10n.evaluationEngine,
                      child: DropdownButtonFormField<EvaluationEngine>(
                        initialValue: settings.evaluationEngine,
                        isExpanded: true,
                        items: const [
                          DropdownMenuItem(
                            value: EvaluationEngine.wildbg,
                            child: Text('wildbg'),
                          ),
                          DropdownMenuItem(
                            value: EvaluationEngine.gnubg,
                            child: Text('GNUbg'),
                          ),
                        ],
                        onChanged: (value) {
                          if (value != null) {
                            update((s) => s.copyWith(evaluationEngine: value));
                          }
                        },
                      ),
                    ),
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(l10n.parallelEngineAnalysis),
                      subtitle: Text(l10n.parallelEngineExplanation),
                      value: settings.parallelEngineAnalysis,
                      onChanged: (value) => update(
                        (s) => s.copyWith(parallelEngineAnalysis: value),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsAppLanguage,
                      child: DropdownButtonFormField<String>(
                        initialValue: settings.localeCode ?? 'system',
                        isExpanded: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        items: _languageOptions(l10n),
                        onChanged: (locale) => update(
                          (current) => current.copyWith(
                            localeCode: locale == 'system' ? null : locale,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsTheme,
                      child: SegmentedButton<ThemeMode>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: ThemeMode.system,
                            label: Text(l10n.settingsThemeSystem),
                          ),
                          ButtonSegment(
                            value: ThemeMode.light,
                            label: Text(l10n.settingsThemeLight),
                          ),
                          ButtonSegment(
                            value: ThemeMode.dark,
                            label: Text(l10n.settingsThemeDark),
                          ),
                        ],
                        selected: {settings.themeMode},
                        onSelectionChanged: (s) => update(
                          (current) => current.copyWith(themeMode: s.first),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsAnimationSpeed,
                      child: SegmentedButton<AnimationSpeed>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: AnimationSpeed.off,
                            label: Text(l10n.settingsAnimationNone),
                          ),
                          ButtonSegment(
                            value: AnimationSpeed.normal,
                            label: Text(l10n.settingsAnimationNormal),
                          ),
                          ButtonSegment(
                            value: AnimationSpeed.fast,
                            label: Text(l10n.settingsAnimationFast),
                          ),
                        ],
                        selected: {settings.animationSpeed},
                        onSelectionChanged: (s) => update(
                          (current) =>
                              current.copyWith(animationSpeed: s.first),
                        ),
                      ),
                    ),
                    // Sits directly under the speed control it qualifies: the
                    // speed paces the CHECKERS, this decides whether a roll
                    // tumbles at all. Disabled-looking is avoided deliberately —
                    // at speed "None" the switch still reflects the stored
                    // preference, it simply has no beat to run.
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      title: Text(l10n.settingsDiceRollAnimation),
                      subtitle: Text(l10n.settingsDiceRollAnimationHelp),
                      value: settings.diceRollAnimation,
                      onChanged: (v) => update(
                        (current) => current.copyWith(diceRollAnimation: v),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsDefaultMatchLength,
                      child: SegmentedButton<int>(
                        showSelectedIcon: false,
                        segments: const [
                          ButtonSegment(value: 1, label: Text('1')),
                          ButtonSegment(value: 3, label: Text('3')),
                          ButtonSegment(value: 5, label: Text('5')),
                          ButtonSegment(value: 7, label: Text('7')),
                        ],
                        selected: {settings.defaultMatchLength},
                        onSelectionChanged: (s) => update(
                          (current) =>
                              current.copyWith(defaultMatchLength: s.first),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsDefaultDifficulty,
                      child: SegmentedButton<Difficulty>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: Difficulty.easy,
                            label: Text(l10n.settingsDifficultyEasy),
                          ),
                          ButtonSegment(
                            value: Difficulty.medium,
                            label: Text(l10n.settingsDifficultyMedium),
                          ),
                          ButtonSegment(
                            value: Difficulty.hard,
                            label: Text(l10n.settingsDifficultyHard),
                          ),
                          ButtonSegment(
                            value: Difficulty.expert,
                            label: Text(l10n.settingsDifficultyExpert),
                          ),
                        ],
                        selected: {settings.defaultDifficulty},
                        onSelectionChanged: (s) => update(
                          (current) =>
                              current.copyWith(defaultDifficulty: s.first),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsTutorModeDefault,
                      child: SegmentedButton<_TutorChoice>(
                        showSelectedIcon: false,
                        segments: [
                          ButtonSegment(
                            value: _TutorChoice.auto,
                            label: Text(l10n.settingsTutorAuto),
                          ),
                          ButtonSegment(
                            value: _TutorChoice.on,
                            label: Text(l10n.settingsTutorOn),
                          ),
                          ButtonSegment(
                            value: _TutorChoice.off,
                            label: Text(l10n.settingsTutorOff),
                          ),
                        ],
                        selected: {
                          _TutorChoice.fromOverride(settings.tutorOverride),
                        },
                        onSelectionChanged: (s) => update(
                          (current) => current.copyWith(
                            tutorOverride: s.first.toOverride(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      l10n.settingsTutorModeHelp,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 24),
                    ExpansionTile(
                      tilePadding: EdgeInsets.zero,
                      title: Text(l10n.settingsTutorPreferences),
                      subtitle: Text(l10n.settingsTutorPreferencesSubtitle),
                      children: [
                        TutorOptionControls(
                          options: settings.tutorOptions,
                          onChanged: (options) => repo
                              .setTutorOptions(options)
                              .catchError((Object error) {
                                if (!context.mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(l10n.settingsTutorSaveError),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsGameplay,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsMoveHighlights),
                            subtitle: Text(l10n.settingsMoveHighlightsHelp),
                            value: settings.showHighlights,
                            onChanged: (v) => update(
                              (current) => current.copyWith(showHighlights: v),
                            ),
                          ),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsDragToMove),
                            subtitle: Text(l10n.settingsDragToMoveHelp),
                            value: settings.enableDrag,
                            onChanged: (v) => update(
                              (current) => current.copyWith(enableDrag: v),
                            ),
                          ),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsCombinedMoves),
                            subtitle: Text(l10n.settingsCombinedMovesHelp),
                            value: settings.enableCombinedTaps,
                            onChanged: (v) => update(
                              (current) =>
                                  current.copyWith(enableCombinedTaps: v),
                            ),
                          ),
                          // Hot-seat only, and OFF by default: "when playing
                          // person vs person, the default should be not
                          // flipping the board. People will share the device at
                          // each side ... and keep the board fixed". Off is the
                          // tabletop layout (fixed board, an action bar at each
                          // player's edge); on restores the pre-v7 flip, where
                          // the board turns to face whoever is on turn and the
                          // single bottom bar follows them.
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsRotateBoard),
                            subtitle: Text(l10n.settingsRotateBoardHelp),
                            value: settings.rotateBoardHotSeat,
                            onChanged: (v) => update(
                              (current) =>
                                  current.copyWith(rotateBoardHotSeat: v),
                            ),
                          ),
                          // Independent of the rotation above — it covers the
                          // hand-over in either layout: "do not show the pass
                          // the device screen, or at least make it a setting,
                          // disabled by default".
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsPassDevice),
                            subtitle: Text(l10n.settingsPassDeviceHelp),
                            value: settings.showPassDevice,
                            onChanged: (v) => update(
                              (current) => current.copyWith(showPassDevice: v),
                            ),
                          ),
                          SwitchListTile(
                            contentPadding: EdgeInsets.zero,
                            title: Text(l10n.settingsShowScore),
                            subtitle: Text(l10n.settingsShowScoreHelp),
                            value: settings.showScoring,
                            onChanged: (v) => update(
                              (current) => current.copyWith(showScoring: v),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    // Retain v2 preferences in storage, without exposing their
                    // controls while physical-board play is unavailable.
                    if (ref.watch(physicalBuddyEnabledProvider)) ...[
                      _Section(
                        label: l10n.settingsBuddyMode,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // The DEFAULT for a session. The setup screen seeds
                            // its per-match choice from this and does not write
                            // back, exactly as it does for match length and
                            // difficulty — so a user can change their mind for
                            // one match without changing their mind for good.
                            SegmentedButton<BuddyPhrasing>(
                              showSelectedIcon: false,
                              segments: [
                                ButtonSegment(
                                  value: BuddyPhrasing.terse,
                                  label: Text(l10n.settingsBuddyTerse),
                                ),
                                ButtonSegment(
                                  value: BuddyPhrasing.friendly,
                                  label: Text(l10n.settingsBuddyFriendly),
                                ),
                              ],
                              selected: {settings.buddyPhrasing},
                              onSelectionChanged: (s) => update(
                                (current) =>
                                    current.copyWith(buddyPhrasing: s.first),
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              settings.buddyPhrasing == BuddyPhrasing.terse
                                  ? l10n.settingsBuddyTerseHelp
                                  : l10n.settingsBuddyFriendlyHelp,
                              style: Theme.of(context).textTheme.bodySmall
                                  ?.copyWith(
                                    color: Theme.of(
                                      context,
                                    ).colorScheme.onSurfaceVariant,
                                  ),
                            ),
                            // The microphone hint, and the way back from a
                            // refusal. Buddy asks for the microphone in context —
                            // the first time a throw is being waited for — and a
                            // refusal turns this off so the mode never asks
                            // again. This switch is what a user who has since
                            // granted the permission elsewhere turns back on.
                            SwitchListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(l10n.settingsListenForDice),
                              subtitle: Text(l10n.settingsListenForDiceHelp),
                              value: settings.buddyMicHint,
                              onChanged: (v) => update(
                                (current) => current.copyWith(buddyMicHint: v),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                    const PrivacySettingsSection(),
                    const SizedBox(height: 24),
                    // The ONLY route to the on-device error log — the sink that
                    // works with no network and no Firebase config, and the
                    // only one a tester can read. Crashlytics reports the same
                    // errors remotely on mobile, but nothing here depends on
                    // it having been configured.
                    _Section(
                      label: l10n.settingsDiagnostics,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.bug_report_outlined),
                            title: Text(l10n.settingsErrorLog),
                            subtitle: Text(l10n.settingsErrorLogHelp),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => Navigator.of(context).push(
                              MaterialPageRoute<void>(
                                builder: (_) => const DiagnosticsScreen(),
                              ),
                            ),
                          ),
                          // Deliberately WITHOUT the error log attached: this
                          // is the "I have an idea" / "this feels wrong" route,
                          // and most of the time there is no crash to send. The
                          // Diagnostics screen has its own feedback action that
                          // does attach the log.
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.bug_report_outlined),
                            title: Text(l10n.settingsReportBug),
                            subtitle: Text(l10n.settingsReportBugHelp),
                            trailing: const Icon(Icons.open_in_new, size: 18),
                            onTap: () =>
                                _sendFeedback(context, ref, FeedbackKind.bug),
                          ),
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.lightbulb_outline),
                            title: Text(l10n.settingsSuggestIdea),
                            subtitle: Text(l10n.settingsSuggestIdeaHelp),
                            trailing: const Icon(Icons.open_in_new, size: 18),
                            onTap: () =>
                                _sendFeedback(context, ref, FeedbackKind.idea),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    _Section(
                      label: l10n.settingsAbout,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            leading: const Icon(Icons.description_outlined),
                            title: Text(l10n.settingsOpenSourceLicenses),
                            trailing: const Icon(Icons.chevron_right),
                            onTap: () => showAppLicenses(context),
                          ),
                          FutureBuilder<PackageInfo>(
                            future: _packageInfoFuture ??=
                                PackageInfo.fromPlatform(),
                            builder: (context, snapshot) {
                              final packageInfo = snapshot.data;
                              final version =
                                  packageInfo?.version ?? appVersion;
                              final buildNumber = packageInfo?.buildNumber;
                              final versionAndBuild =
                                  buildNumber == null || buildNumber.isEmpty
                                  ? version
                                  : '$version+$buildNumber';
                              return Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                  vertical: 8,
                                ),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    l10n.settingsAppVersion(versionAndBuild),
                                    style: Theme.of(
                                      context,
                                    ).textTheme.bodySmall,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> _languageOptions(AppLocalizations l10n) => [
  DropdownMenuItem<String>(value: 'system', child: Text(l10n.followSystem)),
  for (final (code, name) in const <(String, String)>[
    ('en', 'English'),
    ('bg', 'Български'),
    ('hr', 'Hrvatski'),
    ('cs', 'Čeština'),
    ('da', 'Dansk'),
    ('nl', 'Nederlands'),
    ('et', 'Eesti'),
    ('fi', 'Suomi'),
    ('fr', 'Français'),
    ('de', 'Deutsch'),
    ('el', 'Ελληνικά'),
    ('hu', 'Magyar'),
    ('ga', 'Gaeilge'),
    ('it', 'Italiano'),
    ('lv', 'Latviešu'),
    ('lt', 'Lietuvių'),
    ('mt', 'Malti'),
    ('pl', 'Polski'),
    ('pt', 'Português'),
    ('ro', 'Română'),
    ('sk', 'Slovenčina'),
    ('sl', 'Slovenščina'),
    ('es', 'Español'),
    ('sv', 'Svenska'),
    ('uk', 'Українська'),
    ('ru', 'Русский'),
    ('tr', 'Türkçe'),
    ('sr', 'Српски'),
  ])
    DropdownMenuItem<String>(value: code, child: Text(name)),
];

/// Opens the pre-filled GitHub issue form.
///
/// Fire-and-forget, and failure is silent by design: if no browser can be
/// reached there is nothing the user can do about it from here, and a red
/// error under a "Send feedback" button is a poor joke.
void _sendFeedback(BuildContext context, WidgetRef ref, FeedbackKind kind) {
  ref.read(appAnalyticsProvider).logFeedbackOpened();
  final l10n = appLocalizationsOf(context);
  final uri = buildFeedbackIssueUri(
    kind: kind,
    appVersion: appVersion,
    platform: currentPlatformName(),
    l10n: l10n,
  );
  unawaited(ref.read(urlOpenerProvider)(uri).catchError((Object _) => false));
}

/// The tri-state tutor default as a segmented choice: auto (null), on, off.
enum _TutorChoice {
  auto,
  on,
  off;

  static _TutorChoice fromOverride(bool? override) => switch (override) {
    true => _TutorChoice.on,
    false => _TutorChoice.off,
    null => _TutorChoice.auto,
  };

  bool? toOverride() => switch (this) {
    _TutorChoice.on => true,
    _TutorChoice.off => false,
    _TutorChoice.auto => null,
  };
}

/// A labelled settings row: a caption above its control (mirrors the new-match
/// screen's section styling).
class _Section extends StatelessWidget {
  const _Section({required this.label, required this.child});

  final String label;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 12),
        child,
      ],
    );
  }
}
