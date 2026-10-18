import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../physical_buddy_availability.dart';

import '../analytics/analytics_events.dart';
import '../analytics/analytics_screen_view.dart';
import '../branding/app_mark.dart';
import '../branding/app_version.dart';
import '../l10n/localization_lookup.dart';
import 'buddy/buddy_game_screen.dart';
import 'buddy/buddy_setup_screen.dart';
import 'history_screen.dart';
import 'learning_screen.dart';
import 'lan_screen.dart';
import 'new_match_screen.dart';
import 'online_screen.dart';
import 'settings_screen.dart';

/// The app's landing screen: the brand mark, the app's name and promise, and
/// the match-mode entry points. Each mode button pushes a [NewMatchScreen] (as
/// a route) configured for its mode.
///
/// Layout: a settings row on top, the identity and all mode buttons grouped in
/// the remaining space, and the version pinned to the bottom. The home menu is
/// deliberately not scrollable: compact two-column buttons keep every mode
/// visible together on a phone.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  // Split in two so the analytics wrapper can sit at the root of the screen
  // without re-indenting the whole tree: [build] names the screen, [_build] is
  // the screen. Every screen in this app follows the same shape.
  Widget build(BuildContext context, WidgetRef ref) => AnalyticsScreenView(
    name: AnalyticsScreens.home,
    child: _build(context, ref),
  );

  Widget _build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final l10n = appLocalizationsOf(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: IconButton(
                  tooltip: l10n.settings,
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SettingsScreen()),
                  ),
                ),
              ),
            ),
            Expanded(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final textScale = MediaQuery.textScalerOf(context).scale(1);
                  final compact =
                      constraints.maxHeight < 570 || textScale > 1.3;
                  final actions = <Widget>[
                    _ModeButton(
                      label: l10n.playVsComputer,
                      compactLabel: l10n.playVsComputer,
                      icon: Icons.smart_toy_outlined,
                      onPressed: () => _open(context, vsComputer: true),
                    ),
                    _ModeButton(
                      label: l10n.twoPlayers,
                      compactLabel: l10n.twoPlayers,
                      icon: Icons.people_outline,
                      onPressed: () => _open(context, vsComputer: false),
                    ),
                    // Physical-board play is parked for v2. Its retained
                    // implementation also needs a supported mobile device.
                    if (ref.watch(physicalBuddyEnabledProvider) &&
                        isBuddyModeSupportedPlatform)
                      _ModeButton(
                        label: l10n.homePlayWithBuddy,
                        compactLabel: l10n.homeBuddyShort,
                        icon: Icons.videocam_outlined,
                        onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) =>
                                const BuddySetupScreen(launch: openBuddyGame),
                          ),
                        ),
                      ),
                    _ModeButton(
                      label: l10n.playNearby,
                      compactLabel: l10n.playNearby,
                      icon: Icons.wifi_tethering,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const LanScreen()),
                      ),
                    ),
                    _ModeButton(
                      label: l10n.playOnline,
                      compactLabel: l10n.playOnline,
                      icon: Icons.public,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => const OnlineScreen()),
                      ),
                    ),
                    _ModeButton(
                      label: l10n.learningPractice,
                      compactLabel: l10n.learningPractice,
                      icon: Icons.school_outlined,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const LearningScreen(),
                        ),
                      ),
                    ),
                    _ModeButton(
                      label: l10n.gamesArchive,
                      compactLabel: l10n.gamesArchive,
                      icon: Icons.history,
                      onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => const HistoryScreen(),
                        ),
                      ),
                    ),
                  ];
                  final largeText = textScale > 1.3;
                  final markSize = largeText ? 32.0 : (compact ? 56.0 : 104.0);
                  final wide =
                      constraints.maxWidth > 550 && constraints.maxHeight < 340;
                  final preferredTileHeight = largeText
                      ? 96.0
                      : (compact ? 82.0 : 92.0);
                  final rows = (actions.length / 3).ceil();
                  final tileHeight = wide
                      ? ((constraints.maxHeight - 16 - (rows - 1) * 8) / rows)
                            .clamp(48.0, preferredTileHeight)
                      : preferredTileHeight;
                  final identity = Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Semantics(
                        label: 'Backgammon Buddy',
                        child: AppMark(size: markSize),
                      ),
                      SizedBox(height: compact ? 4 : 8),
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Backgammon Buddy',
                          style: compact
                              ? theme.textTheme.titleLarge
                              : theme.textTheme.displaySmall,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          softWrap: false,
                        ),
                      ),
                      if (!largeText) ...[
                        const SizedBox(height: 4),
                        FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            l10n.homeTagline,
                            style: theme.textTheme.titleMedium?.copyWith(
                              color: theme.colorScheme.onSurfaceVariant,
                            ),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            softWrap: false,
                          ),
                        ),
                      ],
                    ],
                  );
                  final menu = GridView.count(
                    crossAxisCount: wide ? 3 : 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    mainAxisExtent: tileHeight,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: actions,
                  );
                  return Align(
                    alignment: compact
                        ? Alignment.topCenter
                        : const Alignment(0, -0.18),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: wide ? 900 : 420),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: wide
                            ? Row(
                                children: [
                                  SizedBox(width: 160, child: identity),
                                  const SizedBox(width: 20),
                                  Expanded(child: menu),
                                ],
                              )
                            : Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  identity,
                                  SizedBox(height: compact ? 8 : 16),
                                  menu,
                                ],
                              ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, top: 4),
              child: Text(
                'v$appVersion',
                style: theme.textTheme.bodySmall?.copyWith(
                  color: theme.colorScheme.onSurfaceVariant.withValues(
                    alpha: 0.7,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _open(BuildContext context, {required bool vsComputer}) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => NewMatchScreen(vsComputer: vsComputer)),
    );
  }
}

/// A compact home action with a generous tap target and a wrapped label.
class _ModeButton extends StatelessWidget {
  const _ModeButton({
    required this.label,
    required this.compactLabel,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final String compactLabel;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final largeText = MediaQuery.textScalerOf(context).scale(1) > 1.3;
    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: onPressed,
        style: FilledButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 5),
          textStyle: Theme.of(context).textTheme.labelLarge,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (!largeText) ...[Icon(icon), const SizedBox(height: 3)],
            Text(
              largeText ? compactLabel : label,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
