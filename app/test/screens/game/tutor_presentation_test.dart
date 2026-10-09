import 'dart:async';

import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/screens/game/tutor_presentation.dart';
import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter_test/flutter_test.dart';

Probabilities _probs(double win) => Probabilities(
  win: win,
  winGammon: 0,
  winBackgammon: 0,
  loseGammon: 0,
  loseBackgammon: 0,
);

class _DelayedEngine implements EngineFacade {
  final rankings = <Completer<List<ScoredMove>>>[];
  final evaluations = <Completer<Probabilities>>[];
  final evaluatedSides = <Player>[];

  @override
  Future<List<ScoredMove>> rankMoves(
    BoardState board,
    Player mover,
    Dice dice,
  ) {
    final pending = Completer<List<ScoredMove>>();
    rankings.add(pending);
    return pending.future;
  }

  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) {
    evaluatedSides.add(mover);
    final pending = Completer<Probabilities>();
    evaluations.add(pending);
    return pending.future;
  }

  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) =>
      throw UnimplementedError();

  void finishRank(int index, GameState state) {
    rankings[index].complete([
      for (final move in state.legalMoves)
        ScoredMove(move: move, probabilities: _probs(.6)),
    ]);
  }
}

class _Harness {
  final engine = _DelayedEngine();
  final model = TutorPresentation();
  late final tutor = TutorService(engine);
  final root = OpeningRollEvent(whiteDie: 3, blackDie: 1);
  final state = GameState.opening(
    firstPlayer: Player.white,
    openingDice: Dice(3, 1),
  );
  static const context = MatchContext(
    moverAway: 5,
    opponentAway: 5,
    crawfordPlayed: false,
  );

  void sync({
    GameState? position,
    Move? staged,
    bool complete = false,
    TutorOptions options = const TutorOptions(),
    List<GameEvent>? events,
  }) => model.sync(
    position: position ?? state,
    events: events ?? [root],
    staged: staged,
    complete: complete,
    options: options,
    tutor: tutor,
    context: context,
  );
}

Future<void> _settle() => Future<void>.delayed(Duration.zero);

void main() {
  test(
    'partial staging never grades and position evaluation is reused across hops',
    () async {
      final h = _Harness();
      addTearDown(h.model.dispose);
      final full = h.state.legalMoves.first;
      h.sync();
      h.sync(staged: Move([full.checkerMoves.first]));
      expect(h.engine.rankings, isEmpty);
      expect(h.engine.evaluations, hasLength(1));
      h.engine.evaluations.single.complete(_probs(.7));
      await _settle();
      expect(h.model.positionAssessment, 'White has the estimated edge.');
      h.sync(staged: full, complete: true);
      expect(h.model.assessingStage, isTrue);
      expect(h.engine.evaluations, hasLength(1));
      h.engine.finishRank(0, h.state);
      await _settle();
      expect(h.model.stagedAssessment?.played.sameAs(full), isTrue);
      h.sync(staged: Move(full.checkerMoves), complete: true);
      expect(h.engine.rankings, hasLength(1));
      expect(h.engine.evaluations, hasLength(1));
    },
  );

  test('Undo discards a delayed full-play grade', () async {
    final h = _Harness();
    addTearDown(h.model.dispose);
    final full = h.state.legalMoves.first;
    h.sync(staged: full, complete: true);
    h.sync(staged: Move([full.checkerMoves.first]));
    expect(h.model.assessingStage, isFalse);
    h.engine.finishRank(0, h.state);
    await _settle();
    expect(h.model.stagedAssessment, isNull);
    h.sync();
    expect(h.model.stagedAssessment, isNull);
    expect(h.engine.evaluations, hasLength(1));
  });

  test(
    'turn changes discard old grade and evaluate the correct new side',
    () async {
      final h = _Harness();
      addTearDown(h.model.dispose);
      h.sync(staged: h.state.legalMoves.first, complete: true);
      final next = GameState.testState(
        board: h.state.board,
        turn: Player.black,
        phase: GamePhase.moving,
        dice: Dice(5, 2),
      );
      h.sync(position: next);
      h.engine.finishRank(0, h.state);
      h.engine.evaluations[0].complete(_probs(.95));
      await _settle();
      expect(h.model.stagedAssessment, isNull);
      expect(h.model.positionAssessment, isNull);
      expect(h.engine.evaluatedSides, [Player.white, Player.black]);
      h.engine.evaluations[1].complete(_probs(.8));
      await _settle();
      expect(h.model.positionAssessment, 'Black has the estimated edge.');
    },
  );

  test(
    'a new game root fences requests even if the board object is reused',
    () async {
      final h = _Harness();
      addTearDown(h.model.dispose);
      h.sync(staged: h.state.legalMoves.first, complete: true);
      h.model.select(1);
      h.sync(events: [OpeningRollEvent(whiteDie: 3, blackDie: 1)]);
      expect(h.model.selectedEventIndex, isNull);
      h.engine.finishRank(0, h.state);
      h.engine.evaluations[0].complete(_probs(.9));
      await _settle();
      expect(h.model.stagedAssessment, isNull);
      expect(h.model.positionAssessment, isNull);
      h.engine.evaluations[1].complete(_probs(.5));
      await _settle();
      expect(h.model.positionAssessment, 'The position is roughly even.');
    },
  );

  test(
    'history selection resists late results and Live restarts canceled work',
    () async {
      final h = _Harness();
      addTearDown(h.model.dispose);
      final full = h.state.legalMoves.first;
      h.sync(staged: full, complete: true);
      h.model.select(1);
      h.engine.finishRank(0, h.state);
      h.engine.evaluations[0].complete(_probs(.9));
      await _settle();
      expect(h.model.selectedEventIndex, 1);
      expect(h.model.stagedAssessment, isNull);
      expect(h.model.positionAssessment, isNull);
      h.model.select(null);
      h.sync(staged: full, complete: true);
      expect(h.engine.rankings, hasLength(2));
      expect(h.engine.evaluations, hasLength(2));
      h.engine.finishRank(1, h.state);
      h.engine.evaluations[1].complete(_probs(.5));
      await _settle();
      expect(h.model.selectedEventIndex, isNull);
      expect(h.model.stagedAssessment?.played.sameAs(full), isTrue);
      expect(h.model.positionAssessment, 'The position is roughly even.');
    },
  );

  test('disabling hints and commentary fences pending results', () async {
    final h = _Harness();
    addTearDown(h.model.dispose);
    final full = h.state.legalMoves.first;
    h.sync(staged: full, complete: true);
    h.sync(
      staged: full,
      complete: true,
      options: const TutorOptions(
        bestMoves: false,
        commentary: false,
        explanations: false,
      ),
    );
    h.engine.finishRank(0, h.state);
    h.engine.evaluations[0].complete(_probs(.9));
    await _settle();
    expect(h.model.stagedAssessment, isNull);
    expect(h.model.positionAssessment, isNull);
    expect(h.model.assessingStage, isFalse);
    h.sync(
      staged: full,
      complete: true,
      options: const TutorOptions(bestMoves: false),
    );
    expect(h.engine.rankings, hasLength(1));
    expect(h.engine.evaluations, hasLength(2));
  });

  test('disposed model never notifies for late engine work', () async {
    final h = _Harness();
    var notifications = 0;
    h.model.addListener(() => notifications++);
    h.sync(staged: h.state.legalMoves.first, complete: true);
    h.model.dispose();
    h.engine.finishRank(0, h.state);
    h.engine.evaluations[0].complete(_probs(.9));
    await _settle();
    expect(notifications, 0);
  });
}
