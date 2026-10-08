import 'package:flutter/material.dart';

import 'coaching.dart';

class TutorOptionControls extends StatelessWidget {
  const TutorOptionControls({
    super.key,
    required this.options,
    required this.onChanged,
  });

  final TutorOptions options;
  final ValueChanged<TutorOptions> onChanged;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          SwitchListTile(
            title: const Text('Best-move hints'),
            subtitle: const Text('Reveal ranked plays while you decide'),
            value: options.bestMoves,
            onChanged: (v) => onChanged(options.copyWith(bestMoves: v)),
          ),
          SwitchListTile(
            title: const Text('Move explanations'),
            subtitle: const Text('Compare estimates and changes on the board'),
            value: options.explanations,
            onChanged: (v) => onChanged(options.copyWith(explanations: v)),
          ),
          SwitchListTile(
            title: const Text('Game commentary'),
            subtitle:
                const Text('Position prompts and feedback after each play'),
            value: options.commentary,
            onChanged: (v) => onChanged(options.copyWith(commentary: v)),
          ),
          SwitchListTile(
            title: const Text('Cube advice'),
            subtitle:
                const Text('Match-aware double, take, and pass suggestions'),
            value: options.cubeAdvice,
            onChanged: (v) => onChanged(options.copyWith(cubeAdvice: v)),
          ),
        ],
      );
}

class MoveExplanationView extends StatelessWidget {
  const MoveExplanationView({super.key, required this.explanation});

  final MoveExplanation explanation;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(explanation.verdict),
          const SizedBox(height: 8),
          Text(explanation.estimate),
          if (explanation.comparison != null) ...[
            const SizedBox(height: 8),
            Text(explanation.comparison!),
          ],
          const SizedBox(height: 12),
          Text(
            'What changes on the board',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          for (final observation in explanation.observations)
            Padding(
              padding: const EdgeInsets.only(top: 6),
              child: Text('• $observation'),
            ),
          const SizedBox(height: 12),
          Text(
            MoveExplanation.limitations,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      );
}

Future<void> showMoveExplanation(
  BuildContext context, {
  required String title,
  required MoveExplanation? explanation,
}) {
  return showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    builder: (context) => SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.sizeOf(context).height * .8,
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: 12),
              if (explanation != null)
                MoveExplanationView(explanation: explanation)
              else
                const Text(
                  'No evaluated alternatives are available for this play. '
                  'A forced pass does not involve a checker-play decision.',
                ),
            ],
          ),
        ),
      ),
    ),
  );
}
