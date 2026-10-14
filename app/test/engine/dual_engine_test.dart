import 'dart:async';
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/engine/engine_provider.dart';
import 'package:aigammon_app/engine/engine_comparison_panel.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'engine_provider_test.dart' show FakeEngine;

const _probabilities = Probabilities(
  win: 0.6,
  winGammon: 0.1,
  winBackgammon: 0.01,
  loseGammon: 0.05,
  loseBackgammon: 0.01,
);

class _ContextEngine extends FakeEngine implements ContextualEngineApi {
  _ContextEngine() : super(2);
  AnalysisContext? lastContext;
  Player? lastMover;
  final pending = <BoardState, Completer<Probabilities>>{};
  bool gated = false;
  @override
  Future<Probabilities> evaluate(BoardState b, Player m) async => gated
      ? (pending[b] ??= Completer<Probabilities>()).future
      : _probabilities;
  @override
  Future<Probabilities> evaluateWithContext(
    BoardState b,
    Player m,
    AnalysisContext c,
  ) => evaluate(b, m);
  @override
  Future<List<ScoredMove>> rankMoves(BoardState b, Player m, Dice d) async => [
    for (final move in MoveGenerator.legalMoves(b, m, d))
      ScoredMove(move: move, probabilities: _probabilities),
  ];
  @override
  Future<List<ScoredMove>> rankWithContext(
    BoardState b,
    Player m,
    Dice d,
    AnalysisContext c,
  ) {
    lastContext = c;
    lastMover = m;
    return rankMoves(b, m, d);
  }

  @override
  Future<CubeAdvice> cubeWithContext(
    BoardState b,
    Player m,
    AnalysisContext c,
  ) async {
    lastContext = c;
    lastMover = m;
    return const CubeAdvice(
      shouldDouble: true,
      shouldAccept: false,
      equityCubeless: 0,
      equityNoDouble: 0.6,
      equityDoubleTake: 0.8,
      equityDoublePass: 0.7,
      matchAware: true,
    );
  }
}

void main() {
  test(
    'selection reuses separate workers and GNUbg receives doubler context',
    () async {
      final wild = FakeEngine(1), gnu = _ContextEngine();
      var choice = EvaluationEngine.wildbg;
      final a = EngineManager(spawner: () async => wild),
          b = EngineManager(spawner: () async => gnu);
      final facade = SelectedEngineFacade(a, b, () => choice);
      final state = GameState.opening(
        firstPlayer: Player.white,
        openingDice: Dice(3, 1),
      );
      await facade.rankMoves(state.board, state.turn, state.dice!);
      expect(wild.rankMovesCalls, 1);
      choice = EvaluationEngine.gnubg;
      final ai = AiAgent(facade, Difficulty.expert);
      const ctx = MatchContext(
        moverAway: 2,
        opponentAway: 5,
        crawfordPlayed: true,
      );
      await ai.chooseMoveInMatch(state, ctx);
      expect(gnu.lastContext!.encode(Player.white), [
        1,
        -1,
        5,
        0,
        3,
        0,
        0,
        2,
        0,
      ]);
      final offered = GameState.testState(
        board: state.board,
        turn: Player.black,
        phase: GamePhase.cubeOffered,
      );
      expect(
        await ai.chooseCubeResponse(
          offered,
          const MatchContext(
            moverAway: 5,
            opponentAway: 2,
            crawfordPlayed: true,
          ),
        ),
        CubeAction.drop,
      );
      expect(gnu.lastMover, Player.white);
      expect(gnu.lastContext!.whiteScore, 3);
      expect(gnu.lastContext!.blackScore, 0);
      choice = EvaluationEngine.wildbg;
      await facade.rankMoves(state.board, state.turn, state.dice!);
      expect(wild.rankMovesCalls, 2);
      expect(wild.disposed, isFalse);
      expect(gnu.disposed, isFalse);
      await a.disposeManager();
      await b.disposeManager();
    },
  );
  testWidgets(
    'comparison starts both workers and discards a superseded board result',
    (tester) async {
      final wild = _ContextEngine()..gated = true,
          gnu = _ContextEngine()..gated = true;
      final a = EngineManager(spawner: () async => wild),
          b = EngineManager(spawner: () async => gnu);
      const ctx = MatchContext(
        moverAway: 5,
        opponentAway: 5,
        crawfordPlayed: false,
      );
      Widget shell(GameState state) => ProviderScope(
        overrides: [
          settingsProvider.overrideWith(
            (ref) => Stream.value(
              AppSettings.defaults.copyWith(parallelEngineAnalysis: true),
            ),
          ),
          engineManagerProvider.overrideWithValue(a),
          gnuBgManagerProvider.overrideWithValue(b),
        ],
        child: MaterialApp(
          locale: const Locale('en'),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          home: Scaffold(
            body: EngineComparisonPanel(position: state, context: ctx),
          ),
        ),
      );
      final old = GameState.opening(
        firstPlayer: Player.white,
        openingDice: Dice(3, 1),
      );
      final next = GameState.testState(
        board: old.board.applyMove(Player.white, old.legalMoves.first),
        turn: Player.black,
        phase: GamePhase.moving,
        dice: Dice(2, 1),
      );
      await tester.pumpWidget(shell(old));
      await tester.pump();
      await tester.pump();
      expect(wild.pending.containsKey(old.board), isTrue);
      expect(gnu.pending.containsKey(old.board), isTrue);
      await tester.pumpWidget(shell(next));
      await tester.pump();
      wild.pending[old.board]!.complete(_probabilities);
      gnu.pending[old.board]!.complete(_probabilities);
      await tester.pump();
      expect(find.textContaining('Win chance:'), findsNothing);
      wild.pending[next.board]!.complete(_probabilities);
      gnu.pending[next.board]!.complete(_probabilities);
      await tester.pumpAndSettle();
      expect(find.textContaining('Win chance:'), findsNWidgets(2));
      final best = next.legalMoves.first.toString();
      expect(find.textContaining('Best: $best'), findsNWidgets(2));
      await tester.pumpWidget(const SizedBox.shrink());
      await a.disposeManager();
      await b.disposeManager();
    },
  );
}
