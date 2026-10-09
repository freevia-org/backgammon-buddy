import 'dart:async';

import 'package:aigammon_app/game/match_controller.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/screens/game/tutor_sync.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';

class _Controller implements MatchController {
  @override
  Game game = Game.start(const OpeningRollEvent(whiteDie: 6, blackDie: 1));
  @override
  bool awaitingHumanTurn = true;
  @override
  GameState get state => game.state;
  final pendingCube = ValueNotifier<GameState?>(null);
  @override
  ValueListenable<GameState?> pendingCubeOf(Player side) => pendingCube;
  MatchContext context = const MatchContext(
    moverAway: 5,
    opponentAway: 5,
    crawfordPlayed: false,
  );
  @override
  MatchContext contextFor(Player actor) => context;
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _UnusedEngine implements EngineFacade {
  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class _DeferredTutor extends TutorService {
  _DeferredTutor() : super(_UnusedEngine());
  final offer = Completer<CubeAssessment?>();
  final response = Completer<CubeAssessment?>();
  @override
  Future<CubeAssessment?> assessCubeOrNull(
    GameState state,
    MatchContext ctx, {
    required bool playerDoubled,
    double cubeLife = .7,
  }) => offer.future;
  @override
  Future<CubeAssessment?> assessCubeResponseOrNull(
    GameState state,
    MatchContext ctx, {
    double cubeLife = .7,
  }) => response.future;
}

class _RecordingTutor extends TutorService {
  _RecordingTutor() : super(_UnusedEngine());
  MatchContext? assessedContext;
  @override
  Future<MoveAssessment?> assessOrNull(
    GameState before,
    Move played, {
    MatchContext? context,
  }) async {
    assessedContext = context;
    return null;
  }
}

class _RetryTutor extends TutorService {
  _RetryTutor() : super(_UnusedEngine());
  int calls = 0;
  MoveAssessment? answer;
  @override
  Future<MoveAssessment?> assessOrNull(
    GameState before,
    Move played, {
    MatchContext? context,
  }) async {
    calls++;
    return answer;
  }
}

class _DeferredMoveTutor extends TutorService {
  _DeferredMoveTutor() : super(_UnusedEngine());
  final answer = Completer<MoveAssessment?>();
  int calls = 0;
  @override
  Future<MoveAssessment?> assessOrNull(
    GameState before,
    Move played, {
    MatchContext? context,
  }) {
    calls++;
    return answer.future;
  }
}

void main() {
  test(
    'a final move retains the score from before the game was awarded',
    () async {
      final controller = _Controller()..awaitingHumanTurn = false;
      final tutor = _RecordingTutor();
      final sync = TutorSync(
        controller: controller,
        tutor: () => tutor,
        doublingLegal: (_) => false,
        pendingCubeSide: () => null,
        onSheetDirty: () {},
      );
      controller.game = controller.game.append(
        MoveEvent(Player.white, controller.state.legalMoves.first),
      );
      // Controllers may update match totals before delivering their change event.
      controller.context = const MatchContext(
        moverAway: 0,
        opponentAway: 5,
        crawfordPlayed: false,
      );
      sync.sync();
      await Future<void>.delayed(Duration.zero);
      expect(tutor.assessedContext?.moverAway, 5);
      sync.dispose();
      controller.pendingCube.dispose();
    },
  );
  test('a failed move grade can be retried from historical review', () async {
    final controller = _Controller()..awaitingHumanTurn = false;
    final tutor = _RetryTutor();
    final sync = TutorSync(
      controller: controller,
      tutor: () => tutor,
      doublingLegal: (_) => false,
      pendingCubeSide: () => null,
      onSheetDirty: () {},
    );
    final played = controller.state.legalMoves.first;
    controller.game = controller.game.append(MoveEvent(Player.white, played));
    sync.sync();
    await Future<void>.delayed(Duration.zero);

    const eventIndex = 1;
    expect(tutor.calls, 1);
    expect(sync.completedAssessments, isNot(contains(eventIndex)));
    expect(sync.assessmentsByEventIndex, isNot(contains(eventIndex)));

    tutor.answer = MoveAssessment(
      played: played,
      best: played,
      equityLoss: 0,
      ranked: const [],
    );
    sync.review(eventIndex);
    await Future<void>.delayed(Duration.zero);

    expect(tutor.calls, 2);
    expect(sync.completedAssessments, contains(eventIndex));
    expect(sync.assessmentsByEventIndex, contains(eventIndex));
    sync.dispose();
    controller.pendingCube.dispose();
  });
  test('a move grade retries on the replacement tutor service', () async {
    final controller = _Controller()..awaitingHumanTurn = false;
    final oldTutor = _DeferredMoveTutor();
    final newTutor = _RetryTutor();
    final played = controller.state.legalMoves.first;
    newTutor.answer = MoveAssessment(
      played: played,
      best: played,
      equityLoss: 0,
      ranked: const [],
    );
    TutorService? currentTutor = oldTutor;
    final sync = TutorSync(
      controller: controller,
      tutor: () => currentTutor,
      doublingLegal: (_) => false,
      pendingCubeSide: () => null,
      onSheetDirty: () {},
    );
    controller.game = controller.game.append(MoveEvent(Player.white, played));
    sync.sync();
    expect(oldTutor.calls, 1);
    currentTutor = newTutor;

    // Even a stale non-null answer must not be filed; the replacement tutor
    // should grade the saved position instead.
    oldTutor.answer.complete(
      MoveAssessment(
        played: played,
        best: played,
        equityLoss: .5,
        ranked: const [],
      ),
    );
    await Future<void>.delayed(Duration.zero);
    await Future<void>.delayed(Duration.zero);

    const eventIndex = 1;
    expect(newTutor.calls, 1);
    expect(sync.assessmentsByEventIndex[eventIndex]?.equityLoss, 0);
    expect(sync.completedAssessments, contains(eventIndex));
    sync.dispose();
    controller.pendingCube.dispose();
  });
  const answer = CubeAssessment(
    actionWasDouble: false,
    advice: MatchCubeAdvice(
      shouldDouble: true,
      shouldTake: true,
      equityNoDouble: .5,
      equityDoubleTake: .6,
      equityDoubleDrop: .7,
    ),
  );

  for (final response in [false, true]) {
    test(
      'late cube ${response ? 'response' : 'offer'} advice stays cleared',
      () async {
        final controller = _Controller();
        final tutor = _DeferredTutor();
        controller.awaitingHumanTurn = !response;
        if (response) controller.pendingCube.value = controller.state;
        final sync = TutorSync(
          controller: controller,
          tutor: () => tutor,
          doublingLegal: (_) => true,
          pendingCubeSide: () =>
              controller.pendingCube.value == null ? null : Player.white,
          onSheetDirty: () {},
        );
        sync.sync();
        controller.awaitingHumanTurn = false;
        controller.pendingCube.value = null;
        sync.sync();
        (response ? tutor.response : tutor.offer).complete(answer);
        await Future<void>.delayed(Duration.zero);
        expect(sync.cubeAdvice, isNull);
        expect(sync.cubeResponseAdvice, isNull);
        sync.dispose();
        controller.pendingCube.dispose();
      },
    );
  }
}
