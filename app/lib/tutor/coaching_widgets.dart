import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
import '../l10n/move_explanation_localization.dart';
import 'coaching.dart';
import 'move_explanation_copy.dart';

class TutorOptionControls extends StatelessWidget {
  const TutorOptionControls({
    super.key,
    required this.options,
    required this.onChanged,
  });

  final TutorOptions options;
  final ValueChanged<TutorOptions> onChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          child: Text(
            l10n.tutoringStyle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Wrap(
            spacing: 8,
            runSpacing: 0,
            children: [
              _styleChoice(context, TutorStyle.coach, l10n.tutorStyleCoach),
              _styleChoice(
                context,
                TutorStyle.hintsOnly,
                l10n.tutorStyleHintsOnly,
              ),
              _styleChoice(
                context,
                TutorStyle.tryFirst,
                l10n.tutorStyleTryFirst,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(switch (options.style) {
            TutorStyle.coach => l10n.tutorCoachDescription,
            TutorStyle.hintsOnly => l10n.tutorHintsDescription,
            TutorStyle.tryFirst => l10n.tutorTryFirstDescription,
            null => l10n.tutorCustomDescription,
          }, style: Theme.of(context).textTheme.bodySmall),
        ),
        const Divider(height: 1),
        SwitchListTile(
          title: Text(l10n.tutorBestMoveHints),
          subtitle: Text(l10n.tutorRevealRankedPlays),
          value: options.bestMoves,
          onChanged: (v) => onChanged(options.copyWith(bestMoves: v)),
        ),
        SwitchListTile(
          title: Text(l10n.tutorMoveExplanations),
          subtitle: Text(l10n.tutorCompareEstimates),
          value: options.explanations,
          onChanged: (v) => onChanged(options.copyWith(explanations: v)),
        ),
        SwitchListTile(
          title: Text(l10n.tutorGameCommentary),
          subtitle: Text(l10n.tutorPositionPrompts),
          value: options.commentary,
          onChanged: (v) => onChanged(options.copyWith(commentary: v)),
        ),
        SwitchListTile(
          title: Text(l10n.tutorCubeAdvice),
          subtitle: Text(l10n.tutorMatchAwareCubeAdvice),
          value: options.cubeAdvice,
          onChanged: (v) => onChanged(options.copyWith(cubeAdvice: v)),
        ),
        SwitchListTile(
          title: Text(l10n.tutorTryMoveFirst),
          subtitle: Text(l10n.tutorStageBeforeHints),
          value: options.tryFirst,
          onChanged: (v) => onChanged(options.copyWith(tryFirst: v)),
        ),
      ],
    );
  }

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

  @override
  Widget build(BuildContext context) {
    final l10n = appLocalizationsOf(context);
    final copy = explanation.copy;
    final comparison = copy?.comparisonDetail != null
        ? localizeMoveExplanationCopy(
            l10n,
            copy!.comparisonDetail!,
            includeSummary: false,
          )
        : showOverview
        ? explanation.comparison
        : explanation.comparison
              ?.replaceFirst(explanation.summaryReason, '')
              .trim();
    final verdict = copy == null
        ? explanation.verdict
        : localizeMoveExplanationCopy(l10n, copy.verdict);
    final plan = copy == null
        ? explanation.plan
        : localizeMoveExplanationCopy(l10n, copy.plan);
    final summaryReason = copy == null
        ? explanation.summaryReason
        : localizeMoveExplanationSummary(l10n, copy);
    final observationCopy = copy?.observations;
    final observations = observationCopy == null
        ? _prioritizedObservations(explanation.observations)
        : _prioritizedCopyObservations(l10n, observationCopy);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (showOverview) Text(verdict),
        if (explanation.comparison == null &&
            plan.isNotEmpty &&
            (showOverview || plan != summaryReason)) ...[
          const SizedBox(height: 8),
          Text(plan),
        ],
        if (comparison != null && comparison.isNotEmpty) ...[
          const SizedBox(height: 8),
          Text(comparison),
        ],
        const SizedBox(height: 8),
        Text(
          l10n.tutorStaticEstimateNote,
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 12),
        Text(
          l10n.tutorWhatToWatchNext,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        for (final observation in observations.take(2))
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text('• $observation'),
          ),
        if (observations.length > 2)
          ExpansionTile(
            tilePadding: EdgeInsets.zero,
            childrenPadding: const EdgeInsets.only(bottom: 8),
            title: Text(l10n.tutorMoreBoardDetails),
            children: [
              for (final observation in observations.skip(2))
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
          title: Text(l10n.tutorEstimatesAndHowTheyWork),
          children: [
            Text(
              copy == null
                  ? explanation.estimate
                  : localizeMoveExplanationCopy(l10n, copy.estimate),
            ),
            const SizedBox(height: 8),
            Text(
              '${l10n.tutorEstimateLimitations} ${l10n.tutorPointNumberNote} '
              '${l10n.tutorHittingRollNote}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }

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

  List<String> _prioritizedCopyObservations(
    AppLocalizations l10n,
    List<MoveExplanationCopy> observations,
  ) {
    int priority(MoveExplanationCopyId id) => switch (id) {
      MoveExplanationCopyId.observationReplyHit ||
      MoveExplanationCopyId.observationNoReplyHit => 5,
      MoveExplanationCopyId.observationBlots ||
      MoveExplanationCopyId.observationNoBlots => 4,
      MoveExplanationCopyId.observationHit ||
      MoveExplanationCopyId.observationEntry => 3,
      MoveExplanationCopyId.observationBrokenPoints ||
      MoveExplanationCopyId.observationMadePoints => 2,
      MoveExplanationCopyId.observationAnchors ||
      MoveExplanationCopyId.observationPrimeRun => 1,
      _ => 0,
    };

    final ranked = observations.indexed.toList()
      ..sort((a, b) {
        final byPriority = priority(b.$2.id).compareTo(priority(a.$2.id));
        return byPriority != 0 ? byPriority : a.$1.compareTo(b.$1);
      });
    return [
      for (final entry in ranked) localizeMoveExplanationCopy(l10n, entry.$2),
    ];
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
                Text(
                  '${appLocalizationsOf(context).tutorNoEvaluatedAlternatives} '
                  '${appLocalizationsOf(context).tutorForcedPassNoDecision}',
                ),
            ],
          ),
        ),
      ),
    ),
  );
}
