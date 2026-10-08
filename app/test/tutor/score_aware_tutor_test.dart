import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/game_analyzer.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter_test/flutter_test.dart';

const _flat = Probabilities(
  win: .5,
  winGammon: 0,
  winBackgammon: 0,
  loseGammon: 0,
  loseBackgammon: 0,
);

class _Engine implements EngineFacade {
  List<ScoredMove>? ranking;
  Probabilities probabilities = _flat;
  final evaluatedFor = <Player>[];
  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) async =>
      ranking ??
      [
        for (final move in MoveGenerator.legalMoves(board, mover, dice))
          ScoredMove(move: move, probabilities: probabilities),
      ];
  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) async {
    evaluatedFor.add(mover);
    return probabilities;
  }

  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) =>
      throw UnimplementedError();
}

const _dmp = MatchContext(moverAway: 1, opponentAway: 1, crawfordPlayed: false);
GameState _position({bool crawford = false, int cube = 1}) =>
    GameState.testState(
      board: BoardState.initial(),
      turn: Player.white,
      phase: GamePhase.moving,
      dice: Dice(3, 1),
      isCrawfordGame: crawford,
      cube: CubeState(value: cube, owner: null),
    );

void main() {
  test(
    'DMP reranks by wins, not gammons or cubeless points; roundtrips units',
    () async {
      final state = _position(crawford: true);
      final gammonPlay = state.legalMoves.first,
          winningPlay = state.legalMoves.last;
      final engine = _Engine()
        ..ranking = [
          ScoredMove(
            move: gammonPlay,
            probabilities: const Probabilities(
              win: .55,
              winGammon: .3,
              winBackgammon: .01,
              loseGammon: .05,
              loseBackgammon: 0,
            ),
          ),
          ScoredMove(
            move: winningPlay,
            probabilities: const Probabilities(
              win: .60,
              winGammon: .05,
              winBackgammon: 0,
              loseGammon: .10,
              loseBackgammon: 0,
            ),
          ),
        ];
      final tutor = TutorService(engine);
      expect((await tutor.hint(state)).first.move, gammonPlay);
      final a = await tutor.assess(state, gammonPlay, context: _dmp);
      expect(a.best, winningPlay);
      expect(a.ranked.first.matchWinningChance, closeTo(.60, 1e-12));
      expect(a.equityLoss, closeTo(.05, 1e-12));
      expect(a.lossLabel, '5.00 pp MWC');
      expect(a.mark, MoveMark.blunder);
      final decoded = MoveAssessment.fromJson(a.toJson());
      expect(decoded.metric, AssessmentMetric.matchWinningChance);
      expect(decoded.isDecision, isTrue);
      expect(decoded.ranked.first.rankingValue, closeTo(.60, 1e-12));
    },
  );

  test(
    'current Crawford game consumes Crawford before valuing next score',
    () async {
      final engine = _Engine()
        ..probabilities = const Probabilities(
          win: .4,
          winGammon: .1,
          winBackgammon: .02,
          loseGammon: .2,
          loseBackgammon: .03,
        );
      final ranked = await TutorService(engine).hint(
        _position(crawford: true),
        context: const MatchContext(
          moverAway: 1,
          opponentAway: 5,
          crawfordPlayed: false,
        ),
      );
      final expected =
          .4 +
          .4 * matchEquityAfter(1, 4, crawfordPlayed: true) +
          .17 * matchEquityAfter(1, 3, crawfordPlayed: true) +
          .03 * matchEquityAfter(1, 2, crawfordPlayed: true);
      expect(ranked.first.rankingValue, closeTo(expected, 1e-12));
      expect(
        ranked.first.rankingValue,
        isNot(
          closeTo(
            matchEquityOfDistribution(
              engine.probabilities,
              moverAway: 1,
              opponentAway: 5,
              stake: 1,
              crawfordPlayed: false,
            ),
            1e-5,
          ),
        ),
      );
    },
  );

  test(
    'score utility includes doubled stake and rejects invalid outcomes',
    () async {
      final engine = _Engine()
        ..probabilities = const Probabilities(
          win: .65,
          winGammon: .25,
          winBackgammon: .02,
          loseGammon: .12,
          loseBackgammon: .01,
        );
      final tutor = TutorService(engine);
      const ctx = MatchContext(
        moverAway: 3,
        opponentAway: 5,
        crawfordPlayed: false,
      );
      final first = (await tutor.hint(_position(), context: ctx)).first;
      final doubled = (await tutor.hint(
        _position(cube: 2),
        context: ctx,
      )).first;
      expect(first.rankingValue, isNot(closeTo(doubled.rankingValue, 1e-6)));
      expect(
        doubled.rankingValue,
        closeTo(
          matchEquityOfDistribution(
            engine.probabilities,
            moverAway: 3,
            opponentAway: 5,
            stake: 2,
            crawfordPlayed: false,
          ),
          1e-12,
        ),
      );
      engine.probabilities = const Probabilities(
        win: .6,
        winGammon: .7,
        winBackgammon: 0,
        loseGammon: 0,
        loseBackgammon: 0,
      );
      expect(() => tutor.hint(_position(), context: ctx), throwsStateError);
      expect(
        await tutor.assessOrNull(
          _position(),
          _position().legalMoves.first,
          context: ctx,
        ),
        isNull,
      );
    },
  );

  test('forced paths and passes never dilute checker decision means', () async {
    final points = List<int>.filled(24, 0)
      ..[23] = 1
      ..[0] = -2;
    final state = GameState.testState(
      board: BoardState(points: points, whiteOff: 14, blackOff: 13),
      turn: Player.white,
      phase: GamePhase.moving,
      dice: Dice(4, 2),
    );
    expect(state.legalMoves, hasLength(1));
    final forced = await TutorService(
      _Engine(),
    ).assess(state, state.legalMoves.single, context: _dmp);
    expect(forced.isDecision, isFalse);
    final blocked = List<int>.filled(24, 0);
    for (var i = 18; i < 24; i++) {
      blocked[i] = -2;
    }
    final dance = GameState.testState(
      board: BoardState(points: blocked, whiteBar: 1),
      turn: Player.white,
      phase: GamePhase.moving,
      dice: Dice(3, 1),
    );
    final pass = await TutorService(
      _Engine(),
    ).assess(dance, Move.none, context: _dmp);
    expect(pass.isDecision, isFalse);
    final choice = MoveAssessment(
      played: Move.none,
      best: Move.none,
      equityLoss: .04,
      ranked: [],
      metric: AssessmentMetric.matchWinningChance,
    );
    final analysis = GameAnalysis([
      for (final (i, a) in [forced, pass, choice].indexed)
        MoveAnalysis(eventIndex: i, player: Player.white, assessment: a),
    ], matchBefore: const MatchState(matchLength: 1));
    expect(analysis.errorRate(Player.white), .04);
    expect(analysis.decisionCount(Player.white), 1);
    expect(analysis.blunderCount(Player.white), 1);
  });

  for (final take in [true, false]) {
    test(
      'cube replay grades ${take ? 'take' : 'pass'} in decider perspective',
      () async {
        var game = Game.start(const OpeningRollEvent(whiteDie: 6, blackDie: 1));
        game = game
            .append(MoveEvent(Player.white, game.state.legalMoves.first))
            .append(const DoubleEvent(Player.black))
            .append(
              take
                  ? const TakeEvent(Player.white)
                  : const DropEvent(Player.white),
            );
        final engine = _Engine()
          ..probabilities = const Probabilities(
            win: .95,
            winGammon: 0,
            winBackgammon: 0,
            loseGammon: 0,
            loseBackgammon: 0,
          );
        final result = await GameAnalyzer(TutorService(engine)).analyze(
          game.events,
          isCrawford: false,
          matchBefore: const MatchState(matchLength: 5, whiteScore: 1),
        );
        expect(result.cubeDecisions.map((c) => c.eventIndex), [2, 3]);
        final response = result.cubeDecisions.last;
        expect(response.player, Player.white);
        expect(response.bestAction, CubeDecisionKind.pass);
        expect(
          response.action,
          take ? CubeDecisionKind.take : CubeDecisionKind.pass,
        );
        expect(response.equityLoss, take ? greaterThan(.03) : 0);
        expect(engine.evaluatedFor, [Player.black, Player.black]);
        expect(
          GameAnalysis.fromJson(result.toJson()).cubeDecisions.last.lossLabel,
          response.lossLabel,
        );
      },
    );
  }

  test(
    'no-double reviews require known cube rules and exclude Crawford',
    () async {
      Future<GameAnalysis> analyze({
        bool? cubeless,
        bool crawford = false,
      }) async {
        var game = Game.start(
          const OpeningRollEvent(whiteDie: 6, blackDie: 1),
          isCrawfordGame: crawford,
        );
        game = game
            .append(MoveEvent(Player.white, game.state.legalMoves.first))
            .append(const RollEvent(Player.black, 3, 2));
        return GameAnalyzer(TutorService(_Engine())).analyze(
          game.events,
          isCrawford: crawford,
          cubeless: cubeless,
          matchBefore: const MatchState(matchLength: 5),
        );
      }

      final enabled = await analyze(cubeless: false);
      expect(enabled.cubeDecisions.single.action, CubeDecisionKind.noDouble);
      expect(enabled.cubeDecisions.single.player, Player.black);
      expect((await analyze(cubeless: true)).cubeDecisions, isEmpty);
      expect((await analyze(cubeless: null)).cubeDecisions, isEmpty);
      expect(
        (await analyze(cubeless: false, crawford: true)).cubeDecisions,
        isEmpty,
      );
    },
  );

  test(
    'strategic facts and hitting opportunities mirror and obey forced entry',
    () {
      final points = List<int>.filled(24, 0)
        ..[18] = 2
        ..[19] = 2
        ..[20] = 3
        ..[0] = -1;
      final board = BoardState(points: points);
      final a = PositionFeatures(board, Player.white);
      final b = PositionFeatures(board.mirrored(), Player.black);
      expect(a.anchors, [19, 20, 21]);
      expect(a.longestPrime, 3);
      expect(a.spares, 1);
      expect(a.isRace, isFalse);
      expect(b.anchors, a.anchors);
      expect(
        legalHittingRolls(board, Player.white),
        legalHittingRolls(board.mirrored(), Player.black),
      );
      final race = BoardState(
        points: List<int>.filled(24, 0)
          ..[0] = 1
          ..[23] = -1,
      );
      expect(PositionFeatures(race, Player.white).isRace, isTrue);
      expect(legalHittingRolls(race, Player.white), 0);
      final closed = List<int>.filled(24, 0)
        ..[10] = 1
        ..[8] = -1;
      for (var i = 0; i < 6; i++) {
        closed[i] = 2;
      }
      expect(
        legalHittingRolls(
          BoardState(points: closed, blackBar: 1),
          Player.white,
        ),
        0,
        reason:
            'The opponent must enter before hitting and all entries are closed.',
      );
    },
  );
}
