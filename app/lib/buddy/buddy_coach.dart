import 'dart:async';

import 'package:backgammon_core/backgammon_core.dart';

import '../game/game_controller.dart';
import '../game/player_agent.dart';
import '../tutor/coaching.dart';
import '../tutor/move_assessment.dart';
import '../tutor/tutor_service.dart';
import 'speaker.dart';

/// Retrospective teaching over committed game events. Camera recognition and
/// manual entry arrive here identically. Coaching never gates a turn or changes
/// the game, and cannot announce an answer before the human has played.
class BuddyCoach {
  BuddyCoach(
      {required this.tutor,
      required this.options,
      required this.speaker,
      required this.userSide});
  final TutorService tutor;
  final TutorOptions options;
  final BuddySpeaker speaker;
  final Player userSide;

  GameEvent? _root;
  GameState? _prefix;
  MatchState? _matchBefore;
  int _cursor = 0,
      _generation = 0,
      _request = 0,
      _humanMoves = 0,
      _lastSpoken = -2;
  bool _disposed = false;

  void sync(GameController? controller) {
    if (_disposed ||
        controller == null ||
        (!options.commentary && !options.explanations)) {
      return;
    }
    final events = controller.game.events;
    if (events.isEmpty) return;
    if (!identical(_root, events.first) || events.length < _cursor) {
      _generation++;
      _root = events.first;
      _matchBefore = controller.match;
      _prefix = Game.start(events.first as OpeningRollEvent,
              isCrawfordGame: controller.state.isCrawfordGame)
          .state;
      _cursor = 1;
      _humanMoves = 0;
      _lastSpoken = -2;
    }
    var before = _prefix!;
    for (var i = _cursor; i < events.length; i++) {
      final event = events[i];
      if (event is MoveEvent && event.player == userSide) {
        final match = _matchBefore!;
        final context = MatchContext(
          moverAway: match.matchLength -
              (userSide == Player.white ? match.whiteScore : match.blackScore),
          opponentAway: match.matchLength -
              (userSide == Player.white ? match.blackScore : match.whiteScore),
          crawfordPlayed: match.crawfordPlayed,
        );
        unawaited(_review(before, event.move, context, ++_humanMoves,
            _generation, ++_request));
      }
      before = Game.applyEvent(before, event);
    }
    _prefix = before;
    _cursor = events.length;
  }

  Future<void> _review(GameState before, Move played, MatchContext context,
      int ordinal, int generation, int request) async {
    final assessment =
        await tutor.assessOrNull(before, played, context: context);
    if (_disposed ||
        generation != _generation ||
        request != _request ||
        assessment == null ||
        !assessment.isDecision) {
      return;
    }
    final mistake = assessment.mark == MoveMark.dubious ||
        assessment.mark == MoveMark.error ||
        assessment.mark == MoveMark.blunder;
    // At most one coaching line every two human moves. Positive feedback is
    // rarer; ordinary move/dice dictation keeps priority in the speaker queue.
    if (ordinal - _lastSpoken < 2 ||
        (!mistake && (!options.commentary || ordinal % 3 != 0))) {
      return;
    }
    _lastSpoken = ordinal;
    if (!mistake) {
      await speaker.say(BuddyLine(assessment.mark == MoveMark.best
          ? 'Your last play matched the engine’s best.'
          : 'Your last play was close to the engine’s best.'));
      return;
    }
    final best = speaker.phrasing.describePlay(assessment.best);
    final observation =
        options.explanations ? _difference(before, assessment) : '';
    await speaker.say(BuddyLine(
      'For your last play, the engine preferred ${best.text}. $observation'
          .trim(),
      speech:
          'For your last play, the engine preferred ${best.speech}. $observation'
              .trim(),
    ));
  }

  String _difference(GameState before, MoveAssessment assessment) {
    BoardState result(Move move) {
      final board = before.board.applyMove(before.turn, move);
      return before.turn == Player.white ? board : board.mirrored();
    }

    final played = result(assessment.played), best = result(assessment.best);
    if (best.blackBar != played.blackBar) {
      return 'It leaves ${best.blackBar} opposing checkers on the bar instead of ${played.blackBar}.';
    }
    final playedBlots = played.points.where((n) => n == 1).length;
    final bestBlots = best.points.where((n) => n == 1).length;
    if (playedBlots != bestBlots) {
      return 'It leaves $bestBlots blots instead of $playedBlots.';
    }
    final playedHome = played.points.take(6).where((n) => n >= 2).length;
    final bestHome = best.points.take(6).where((n) => n >= 2).length;
    if (playedHome != bestHome) {
      return 'It holds $bestHome home-board points instead of $playedHome.';
    }
    if (best.whiteOff != played.whiteOff) {
      return 'It has ${best.whiteOff} checkers off instead of ${played.whiteOff}.';
    }
    return 'The ranking weighs estimated wins and gammons; no single board feature explains it.';
  }

  void dispose() {
    _disposed = true;
    _generation++;
  }
}
