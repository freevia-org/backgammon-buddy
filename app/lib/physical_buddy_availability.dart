import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'l10n/localization_lookup.dart';

/// Physical-board play is parked for v2. Only its retained test suites override
/// this provider; no preference, remote config or route can enable it in v1.
final physicalBuddyEnabledProvider = Provider<bool>((ref) => false);

/// Gate before constructing the stateful screen, so a direct route cannot open
/// camera/microphone, initialize speech or write an abandoned match.
class PhysicalBuddyGate extends ConsumerWidget {
  const PhysicalBuddyGate({super.key, required this.builder});

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (ref.watch(physicalBuddyEnabledProvider)) return builder(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(appLocalizationsOf(context).physicalBuddyUnavailableTitle),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            appLocalizationsOf(context).physicalBuddyUnavailableBody,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
