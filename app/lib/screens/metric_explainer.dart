import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../l10n/localization_lookup.dart';
import '../tutor/move_assessment.dart';

/// Mark → (colour, label): best/good green, dubious amber, error orange,
/// blunder red. The single source of truth for the mark vocabulary — the score
/// sheet's dots, the analysis screen's chips and this file's threshold legend
/// all read it, so a mark can never be one colour in the list and another in
/// the explanation of the list.
(Color, String) moveMarkStyle(MoveMark mark, AppLocalizations l10n) =>
    switch (mark) {
      MoveMark.best => (Colors.green.shade700, l10n.analysisMarkBest),
      MoveMark.good => (Colors.green.shade600, l10n.analysisMarkGood),
      MoveMark.dubious => (Colors.amber.shade800, l10n.analysisMarkDubious),
      MoveMark.error => (Colors.orange.shade800, l10n.analysisMarkError),
      MoveMark.blunder => (Colors.red.shade700, l10n.analysisMarkBlunder),
    };

/// Opens the plain-language [MetricExplainerDialog].
///
/// Shared by every surface that shows equity numbers: the analysis screen's
/// app-bar ⓘ and the in-game hint sheet's ⓘ. One explanation, one place to edit.
void showMetricExplainer(BuildContext context) {
  showDialog<void>(
    context: context,
    builder: (context) => const MetricExplainerDialog(),
  );
}

/// Plain-language explainer for the analysis metrics: equity, equity loss (the
/// "−0.016" number), the per-game error rate, and the mark scale with its
/// thresholds. Deliberately non-jargon.
class MetricExplainerDialog extends StatelessWidget {
  const MetricExplainerDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    final l10n = appLocalizationsOf(context);
    return AlertDialog(
      title: Text(l10n.metricExplainerTitle),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.metricExplainerMwcTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerMwcBody),
            const SizedBox(height: 12),
            Text(l10n.metricExplainerSearchTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerSearchBody),
            const SizedBox(height: 12),
            Text(l10n.metricExplainerEquityTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerEquityBody),
            const SizedBox(height: 12),
            Text(l10n.metricExplainerEquityLossTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerEquityLossBody),
            const SizedBox(height: 12),
            Text(l10n.metricExplainerErrorRateTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerErrorRateBody),
            const SizedBox(height: 12),
            Text(l10n.metricExplainerMoveMarksTitle, style: text.titleSmall),
            const SizedBox(height: 4),
            Text(l10n.metricExplainerMoveMarksBody),
            const SizedBox(height: 8),
            for (final (mark, range) in [
              (MoveMark.best, l10n.metricExplainerThresholdBest),
              (MoveMark.good, l10n.metricExplainerThresholdGood),
              (MoveMark.dubious, l10n.metricExplainerThresholdDubious),
              (MoveMark.error, l10n.metricExplainerThresholdError),
              (MoveMark.blunder, l10n.metricExplainerThresholdBlunder),
            ])
              _threshold(context, moveMarkStyle(mark, l10n), range),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(l10n.metricExplainerGotIt),
        ),
      ],
    );
  }

  Widget _threshold(
    BuildContext context,
    (Color, String) style,
    String range,
  ) {
    final (color, label) = style;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        children: [
          Icon(Icons.circle, size: 10, color: color),
          const SizedBox(width: 8),
          SizedBox(
            width: 80,
            child: Text(
              label,
              style: TextStyle(color: color, fontWeight: FontWeight.w600),
            ),
          ),
          Text(range, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }
}
