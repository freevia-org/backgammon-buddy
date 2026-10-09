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
        subtitle: const Text('Position prompts and feedback after each play'),
        value: options.commentary,
        onChanged: (v) => onChanged(options.copyWith(commentary: v)),
      ),
      SwitchListTile(
        title: const Text('Cube advice'),
        subtitle: const Text('Match-aware double, take, and pass suggestions'),
        value: options.cubeAdvice,
        onChanged: (v) => onChanged(options.copyWith(cubeAdvice: v)),
      ),
      SwitchListTile(
        title: const Text('Try a move first'),
        subtitle: const Text('Stage a complete play before revealing hints'),
        value: options.tryFirst,
        onChanged: (v) => onChanged(options.copyWith(tryFirst: v)),
      ),
    ],
  );
}

class MoveExplanationView extends StatelessWidget {
  const MoveExplanationView({
    super.key,
    required this.explanation,
    this.showOverview = true,
  });

  final MoveExplanation explanation;
  final bool showOverview;
  String? get _comparison => showOverview
      ? explanation.comparison
      : explanation.comparison
            ?.replaceFirst(explanation.summaryReason, '')
            .trim();

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      if (showOverview) Text(explanation.verdict),
      if (explanation.comparison == null &&
          explanation.plan.isNotEmpty &&
          (showOverview || explanation.plan != explanation.summaryReason)) ...[
        const SizedBox(height: 8),
        Text(explanation.plan),
      ],
      if (_comparison != null && _comparison!.isNotEmpty) ...[
        const SizedBox(height: 8),
        Text(_comparison!),
      ],
      const SizedBox(height: 12),
      Text('What to watch next', style: Theme.of(context).textTheme.titleSmall),
      for (final observation in explanation.observations)
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text('• $observation'),
        ),
      const SizedBox(height: 12),
      ExpansionTile(
        tilePadding: EdgeInsets.zero,
        childrenPadding: const EdgeInsets.only(bottom: 8),
        title: const Text('Estimates and how they work'),
        children: [
          Text(explanation.estimate),
          const SizedBox(height: 8),
          Text(
            '${MoveExplanation.limitations} Point numbers in the teaching notes '
            'are counted from the mover’s home board. Hitting-roll counts include '
            'all 36 ordered dice outcomes and legal direct or indirect hits; '
            'they are opportunities, not a prediction of the opponent’s choice.',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
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
