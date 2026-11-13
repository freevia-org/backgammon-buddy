import 'package:flutter/material.dart';

/// The pieces the two lobby screens (Play Online, Play Nearby) are both built
/// from. They were private copies in each screen, kept alike by hand, which is
/// exactly the kind of likeness that drifts.

/// A titled card wrapper for a lobby's create / join / waiting sections.
class LobbySectionCard extends StatelessWidget {
  const LobbySectionCard({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}

/// The small spinner a lobby's primary button shows in place of its label
/// while the action it started is in flight.
class LobbyButtonSpinner extends StatelessWidget {
  const LobbyButtonSpinner({super.key});

  @override
  Widget build(BuildContext context) => const SizedBox(
    height: 20,
    width: 20,
    child: CircularProgressIndicator(strokeWidth: 2),
  );
}
