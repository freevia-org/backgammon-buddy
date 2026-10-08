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
  final game = Game.start(const OpeningRollEvent(whiteDie: 6, blackDie: 1));
  @override
  bool awaitingHumanTurn = true;
  @override
  GameState get state => game.state;
  final pendingCube = ValueNotifier<GameState?>(null);
  @override
  ValueListenable<GameState?> pendingCubeOf(Player side) => pendingCube;
  @override
  MatchContext contextFor(Player actor) =>
      const MatchContext(moverAway: 5, opponentAway: 5, crawfordPlayed: false);
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
  Future<CubeAssessment?> assessCubeOrNull(GameState state, MatchContext ctx,
          {required bool playerDoubled, double cubeLife = .7}) =>
      offer.future;
  @override
  Future<CubeAssessment?> assessCubeResponseOrNull(
          GameState state, MatchContext ctx,
          {double cubeLife = .7}) =>
      response.future;
}

void main() {
  const answer = CubeAssessment(
      actionWasDouble: false,
      advice: MatchCubeAdvice(
          shouldDouble: true,
          shouldTake: true,
          equityNoDouble: .5,
          equityDoubleTake: .6,
          equityDoubleDrop: .7));

  for (final response in [false, true]) {
    test('late cube ${response ? 'response' : 'offer'} advice stays cleared',
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
          onSheetDirty: () {});
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
    });
  }
}
