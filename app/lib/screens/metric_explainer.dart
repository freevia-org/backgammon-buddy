import 'package:flutter/material.dart';

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
    return AlertDialog(
      title: const Text('Understanding the metrics'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Match-winning chance (MWC)', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'When the score is known, checker plays are ranked by '
              'estimated chance of winning the match. Loss is in percentage '
              'points (pp): 1 pp means 51% falls to 50%. The current cube stake '
              'and gammon/backgammon outcomes are included. Forced passes and '
              'rolls with one legal resulting position are excluded from averages.',
            ),
            const SizedBox(height: 12),
            Text('Search and uncertainty', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'Checker rankings are 0-ply static after-play estimates, '
              'not rollouts. Match values use a match equity table and no future '
              'cube turns. Cube reviews use a partial 0.7 cube-life approximation '
              'on taken doubles. Neither is full cubeful search. Away scores '
              'above 25 use the table’s 25-away boundary. Near ties can change '
              'with deeper analysis; there is no calibrated confidence interval.',
            ),
            const SizedBox(height: 12),
            Text('Equity', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'If the score is unavailable, cubeless equity is how many points a position is worth on average — the '
              'expected result with the cube at 1. +1.0 means you expect to win '
              'one point; −0.5 means you expect to lose half a point.',
            ),
            const SizedBox(height: 12),
            Text('Equity loss (e.g. −0.016)', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'For each move we compare what you played against the engine\'s '
              'best play. The equity loss is how much expected value your move '
              'gave up. −0.016 means the move was only 0.016 points worse than '
              'the best — a tiny slip. 0.000 means you found the best play.',
            ),
            const SizedBox(height: 12),
            Text('Error rate', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'Mean loss averages your graded checker decisions in the displayed '
              'unit. Cube decisions have their own average. Lower means closer '
              'to this engine’s top estimates; it is not a calibrated player rating.',
            ),
            const SizedBox(height: 12),
            Text('Move marks', style: text.titleSmall),
            const SizedBox(height: 4),
            const Text(
              'MWC teaching bands: Best < 0.05 pp, Good < 0.5 pp, '
              'Dubious < 1.5 pp, Error < 3 pp, Blunder ≥ 3 pp. These are product '
              'teaching bands, not calibrated confidence or tournament ratings.\n\n'
              'Cubeless equity teaching bands:',
            ),
            const SizedBox(height: 8),
            _threshold(context, Colors.green.shade700, 'Best', 'lost < 0.001'),
            _threshold(context, Colors.green.shade600, 'Good', 'lost < 0.020'),
            _threshold(
              context,
              Colors.amber.shade800,
              'Dubious',
              'lost < 0.050',
            ),
            _threshold(
              context,
              Colors.orange.shade800,
              'Error',
              'lost < 0.110',
            ),
            _threshold(context, Colors.red.shade700, 'Blunder', 'lost ≥ 0.110'),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Got it'),
        ),
      ],
    );
  }

  Widget _threshold(
    BuildContext context,
    Color color,
    String label,
    String range,
  ) {
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
