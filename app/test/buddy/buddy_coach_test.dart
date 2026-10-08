import 'dart:async';

import 'package:aigammon_app/buddy/buddy_coach.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/practice_repository_test.dart' show PracticeTestEngine;
import 'buddy_session_test.dart' show Harness;
import 'fake_vision.dart';

class _DelayedTutor extends TutorService {
  _DelayedTutor() : super(PracticeTestEngine());
  final pending = Completer<MoveAssessment?>();
  int calls = 0;
  @override
  Future<MoveAssessment?> assessOrNull(GameState before, Move move,
      {MatchContext? context}) {
    calls++;
    return pending.future;
  }
}

void main() {
  for (final side in Player.values) {
    test('typed dice and play get retrospective coaching for ${side.name}',
        () async {
      final h = Harness(buddySide: side.opponent);
      final coach = BuddyCoach(
          tutor: TutorService(PracticeTestEngine()),
          options: const TutorOptions(),
          speaker: h.speaker,
          userSide: side);
      h.session.addListener(() => coach.sync(h.session.controller));
      addTearDown(coach.dispose);
      h.start();
      h.session
          .enterDiceManually(side == Player.white ? Dice(6, 3) : Dice(3, 6));
      await h.settle();
      expect(
          h.speech.where((s) => s.startsWith('For your last play')), isEmpty);
      final before = h.controller.state;
      expect(before.turn, side);
      final moves = await TutorService(PracticeTestEngine()).hint(before);
      h.session.enterPlayManually(moves.last.move);
      await h.settle();
      final feedback =
          h.speech.where((s) => s.startsWith('For your last play'));
      expect(feedback, hasLength(1));
      expect(feedback.single, contains('the engine preferred'));
      expect(
          h.controller.game.events
              .whereType<MoveEvent>()
              .single
              .move
              .sameAs(moves.last.move),
          isTrue);
      coach.sync(h.controller);
      await h.settle();
      expect(h.speech.where((s) => s.startsWith('For your last play')),
          hasLength(1),
          reason: 'repeated screen notifications do not repeat the lesson');
    });
  }

  test('camera-observed move uses the same committed-event teaching path',
      () async {
    final h = Harness();
    final coach = BuddyCoach(
        tutor: TutorService(PracticeTestEngine()),
        options: const TutorOptions(),
        speaker: h.speaker,
        userSide: Player.white);
    h.session.addListener(() => coach.sync(h.session.controller));
    addTearDown(coach.dispose);
    h.vision.willReadDice([diceShowing(6, 3)]);
    h.start();
    await h.stableFrame();
    final last = h.controller.state.legalMoves.length - 1;
    h.vision.willMatchPlay([matchesPlay(last)]);
    await h.stableFrame();
    expect(h.speech.where((s) => s.startsWith('For your last play')),
        hasLength(1));
  });

  test('disabled teaching and late disposed results add no speech', () async {
    final h = Harness();
    final delayed = _DelayedTutor();
    final disabled = BuddyCoach(
        tutor: delayed,
        options: const TutorOptions(commentary: false, explanations: false),
        speaker: h.speaker,
        userSide: Player.white);
    final coach = BuddyCoach(
        tutor: delayed,
        options: const TutorOptions(),
        speaker: h.speaker,
        userSide: Player.white);
    h.session.addListener(() {
      disabled.sync(h.session.controller);
      coach.sync(h.session.controller);
    });
    addTearDown(disabled.dispose);
    h.start();
    h.session.enterDiceManually(Dice(6, 3));
    await h.settle();
    final before = h.controller.state;
    final move = before.legalMoves.last;
    h.session.enterPlayManually(move);
    await h.settle();
    expect(delayed.calls, 1,
        reason: 'the disabled coach makes no engine request');
    coach.dispose();
    delayed.pending.complete(
        await TutorService(PracticeTestEngine()).assess(before, move));
    await h.settle();
    expect(h.speech.where((s) => s.startsWith('For your last play')), isEmpty);
  });
}
