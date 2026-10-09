import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/coaching_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('inline details do not repeat the visible summary', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: MoveExplanationView(
              showOverview: false,
              explanation: MoveExplanation(
                verdict: 'The engine prefers another play here.',
                plan: 'A plan for the played move.',
                comparisonReason: 'The top play closes an extra entry number.',
                comparison:
                    'The top play closes an extra entry number. It also leaves fewer shots.',
                observations: ['The checker on point 5 is covered.'],
                estimate: 'After this play: 60.0% wins.',
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.textContaining('The engine prefers'), findsNothing);
    expect(find.textContaining('A plan for'), findsNothing);
    expect(find.textContaining('extra entry number'), findsNothing);
    expect(find.text('It also leaves fewer shots.'), findsOneWidget);
    expect(find.textContaining('point 5 is covered'), findsOneWidget);
  });
  testWidgets(
    'teaching is visible while estimates and methodology are optional',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: MoveExplanationView(
                explanation: MoveExplanation(
                  verdict: 'A top choice for this position.',
                  plan: 'Strengthen your home board.',
                  observations: ['The new point closes an entry number.'],
                  comparison: null,
                  estimate: 'After this play: 60.0% wins.',
                ),
              ),
            ),
          ),
        ),
      );
      expect(find.text('Strengthen your home board.'), findsOneWidget);
      expect(find.textContaining('closes an entry number'), findsOneWidget);
      expect(find.textContaining('60.0%'), findsNothing);
      expect(find.textContaining('0-ply'), findsNothing);
      await tester.tap(find.text('Estimates and how they work'));
      await tester.pumpAndSettle();
      expect(find.textContaining('60.0%'), findsOneWidget);
      expect(find.textContaining('0-ply'), findsOneWidget);
      expect(tester.takeException(), isNull);
    },
  );
}
