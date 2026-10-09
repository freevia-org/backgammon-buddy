import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/coaching_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('tutoring styles apply presets and switches become Custom', (
    tester,
  ) async {
    var options = TutorOptions.coach;
    await tester.pumpWidget(
      MaterialApp(
        home: StatefulBuilder(
          builder: (context, setState) => Scaffold(
            body: TutorOptionControls(
              options: options,
              onChanged: (value) => setState(() => options = value),
            ),
          ),
        ),
      ),
    );
    expect(TutorOptions.coach.style, TutorStyle.coach);
    expect(
      find.text('Position prompts, move feedback, hints, and cube advice.'),
      findsOneWidget,
    );

    await tester.tap(find.widgetWithText(ChoiceChip, 'Hints only'));
    await tester.pumpAndSettle();
    expect(options.style, TutorStyle.hintsOnly);
    expect(options.bestMoves, isTrue);
    expect(options.explanations, isFalse);
    expect(options.commentary, isFalse);
    expect(options.cubeAdvice, isFalse);
    expect(
      find.text(
        'Ranked plays on request. Live position prompts and automatic move feedback stay off.',
      ),
      findsOneWidget,
    );

    await tester.tap(find.widgetWithText(ChoiceChip, 'Try first'));
    await tester.pumpAndSettle();
    expect(options.style, TutorStyle.tryFirst);
    expect(options.tryFirst, isTrue);
    expect(options.commentary, isTrue);
    expect(
      find.text(
        'Stage your current play before seeing ranked hints or its grade; board guidance stays on.',
      ),
      findsOneWidget,
    );

    await tester.tap(find.widgetWithText(SwitchListTile, 'Best-move hints'));
    await tester.pumpAndSettle();
    expect(options.style, isNull);
    expect(
      find.text('Custom mix. Adjust any of the options below.'),
      findsOneWidget,
    );
    expect(tester.takeException(), isNull);
  });

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
      expect(find.textContaining('0-ply, no rollouts'), findsOneWidget);
      expect(
        find.textContaining('Point numbers in the teaching notes'),
        findsNothing,
      );
      await tester.tap(find.text('Estimates and how they work'));
      await tester.pumpAndSettle();
      expect(find.textContaining('60.0%'), findsOneWidget);
      expect(find.textContaining('0-ply'), findsNWidgets(2));
      expect(tester.takeException(), isNull);
    },
  );

  testWidgets('long move details stay collapsed until requested', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: MoveExplanationView(
              explanation: MoveExplanation(
                verdict: 'A stronger option was available.',
                plan: 'Keep the anchor while building a point.',
                observations: [
                  'The opponent must re-enter from the bar.',
                  'The move creates a new home-board point.',
                  'This play leaves two exposed single checkers.',
                  'The anchor stays safe in the opponent’s home board.',
                ],
                comparison: null,
                estimate: 'Engine estimate.',
              ),
            ),
          ),
        ),
      ),
    );
    expect(find.textContaining('exposed single checkers'), findsOneWidget);
    expect(find.textContaining('must re-enter'), findsOneWidget);
    expect(find.textContaining('new home-board point'), findsNothing);
    await tester.tap(find.text('More board details'));
    await tester.pumpAndSettle();
    expect(find.textContaining('must re-enter'), findsOneWidget);
    expect(find.textContaining('new home-board point'), findsOneWidget);
    expect(find.textContaining('anchor stays safe'), findsOneWidget);
  });

  testWidgets(
    'static estimate limits are visible without opening methodology',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SingleChildScrollView(
              child: MoveExplanationView(
                explanation: MoveExplanation(
                  verdict: 'A top choice for this position.',
                  plan: 'Build a useful point.',
                  observations: [],
                  comparison: null,
                  estimate: 'Engine estimate.',
                ),
              ),
            ),
          ),
        ),
      );
      expect(find.textContaining('0-ply, no rollouts'), findsOneWidget);
      expect(find.textContaining('methodology'), findsNothing);
    },
  );
}
