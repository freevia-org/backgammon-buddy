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
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
        child: Text(
          'Tutoring style',
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Wrap(
          spacing: 8,
          runSpacing: 0,
          children: [
            _styleChoice(context, TutorStyle.coach, 'Coach'),
            _styleChoice(context, TutorStyle.hintsOnly, 'Hints only'),
            _styleChoice(context, TutorStyle.tryFirst, 'Try first'),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
        child: Text(switch (options.style) {
          TutorStyle.coach =>
            'Position prompts, move feedback, hints, and cube advice.',
          TutorStyle.hintsOnly =>
            'Ranked plays on request. Live position prompts and automatic move feedback stay off.',
          TutorStyle.tryFirst =>
            'Stage your current play before seeing ranked hints or its grade; board guidance stays on.',
          null => 'Custom mix. Adjust any of the options below.',
        }, style: Theme.of(context).textTheme.bodySmall),
      ),
      const Divider(height: 1),
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
        subtitle: const Text(
          'Stage your current play before revealing hints or its grade',
        ),
        value: options.tryFirst,
        onChanged: (v) => onChanged(options.copyWith(tryFirst: v)),
      ),
    ],
  );

  Widget _styleChoice(BuildContext context, TutorStyle style, String label) =>
      ChoiceChip(
        label: Text(label),
        selected: options.style == style,
        onSelected: (selected) {
          if (!selected) return;
          onChanged(switch (style) {
            TutorStyle.coach => TutorOptions.coach,
            TutorStyle.hintsOnly => TutorOptions.hintsOnly,
            TutorStyle.tryFirst => TutorOptions.tryFirstStyle,
          });
        },
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
      const SizedBox(height: 8),
      Text(
        'Quick static estimate (0-ply, no rollouts); notes describe board changes and possible replies, not a promise of what happens next.',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      const SizedBox(height: 12),
      Text('What to watch next', style: Theme.of(context).textTheme.titleSmall),
      for (final observation in _prioritizedObservations(
        explanation.observations,
      ).take(2))
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text('• $observation'),
        ),
      if (explanation.observations.length > 2)
        ExpansionTile(
          tilePadding: EdgeInsets.zero,
          childrenPadding: const EdgeInsets.only(bottom: 8),
          title: const Text('More board details'),
          children: [
            for (final observation in _prioritizedObservations(
              explanation.observations,
            ).skip(2))
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('• $observation'),
              ),
          ],
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

  List<String> _prioritizedObservations(List<String> observations) {
    int priority(String text) {
      final lower = text.toLowerCase();
      if (lower.contains('of 36 rolls') || lower.contains('hitting roll')) {
        return 5;
      }
      if (lower.contains('exposed single checker') ||
          lower.contains('leaves no exposed')) {
        return 4;
      }
      if (lower.startsWith('hits ') || lower.startsWith('enters ')) return 3;
      if (lower.startsWith('gives up ') || lower.startsWith('makes ')) return 2;
      if (lower.startsWith('anchors ') || lower.startsWith('longest run')) {
        return 1;
      }
      return 0;
    }

    final ranked = observations.indexed.toList()
      ..sort((a, b) {
        final byPriority = priority(b.$2).compareTo(priority(a.$2));
        return byPriority != 0 ? byPriority : a.$1.compareTo(b.$1);
      });
    return [for (final entry in ranked) entry.$2];
  }
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
