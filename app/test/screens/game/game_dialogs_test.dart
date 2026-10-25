import 'package:aigammon_app/screens/game/game_dialogs.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('complete checker rankings show the standard PR estimate', (
    tester,
  ) async {
    final played = Move([const CheckerMove(0, 1)]);
    final best = Move([const CheckerMove(0, 2)]);
    const probabilitiesBest = Probabilities(
      win: 0.75,
      winGammon: 0,
      winBackgammon: 0,
      loseGammon: 0,
      loseBackgammon: 0,
    );
    const probabilitiesPlayed = Probabilities(
      win: 0.74,
      winGammon: 0,
      winBackgammon: 0,
      loseGammon: 0,
      loseBackgammon: 0,
    );
    final assessment = MoveAssessment(
      played: played,
      best: best,
      equityLoss: 0.02,
      ranked: [
        ScoredMove(move: best, probabilities: probabilitiesBest),
        ScoredMove(move: played, probabilities: probabilitiesPlayed),
      ],
    );
    await tester.pumpWidget(
      MaterialApp(
        localizationsDelegates: [
          ...AppLocalizations.localizationsDelegates,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        home: Builder(
          builder: (context) => Scaffold(
            body: gameEndDialog(
              l10n: AppLocalizations.of(context),
              result: const GameResult(
                winner: Player.white,
                points: 1,
                outcome: GameOutcome.single,
              ),
              score: 'White 1 — 0 Black',
              gameNumber: 1,
              whiteRolls: 2,
              blackRolls: 2,
              whitePips: 14,
              blackPips: 14,
              assessmentsByPlayer: {
                Player.white: [assessment],
                Player.black: const [],
              },
              expectedMoveAssessments: 1,
              metric: AssessmentMetric.cubelessEquity,
              onClose: () {},
              onNextGame: () {},
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('PR 10.00'), findsOneWidget);
    expect(
      find.text('No move rating yet. Review the game for a full analysis.'),
      findsOneWidget,
    );
  });

  testWidgets(
    'actions stay reachable on a short landscape display at large text',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(667, 375));
      addTearDown(() => tester.binding.setSurfaceSize(null));

      var closed = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(2.5)),
              child: Scaffold(
                body: ModalCard(
                  title: 'Game over',
                  message: 'Match score: White 1 — Black 0',
                  details: const SizedBox(
                    height: 900,
                    child: Text('Long localized game details'),
                  ),
                  actions: [
                    CardAction(label: 'Review game', onPressed: () {}),
                    CardAction(label: 'Next game', onPressed: () {}),
                    CardAction(
                      label: 'Close',
                      onPressed: () => closed = true,
                      filled: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final close = find.text('Close');
      expect(tester.getRect(close).bottom, lessThan(375));
      await tester.tap(close);
      expect(closed, isTrue);
    },
  );
}
