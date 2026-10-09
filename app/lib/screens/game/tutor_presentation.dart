import 'dart:async';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/foundation.dart';

import '../../game/player_agent.dart';
import '../../tutor/coaching.dart';
import '../../tutor/move_assessment.dart';
import '../../tutor/tutor_service.dart';

/// The visible tutor decision, separate from background historical grading.
/// Every board edit, roll, game replacement, option change or history selection
/// fences pending preview work, so a late answer cannot replace what is shown.
class TutorPresentation extends ChangeNotifier {
  GameState? _position;
  Move? _staged;
  bool _complete = false;
  TutorOptions? _options;
  TutorService? _tutor;
  Object? _logRoot;
  int _sequence = 0;
  bool _disposed = false;
  int _positionSequence = 0;
  String? positionAssessment;

  int? selectedEventIndex;
  MoveAssessment? stagedAssessment;
  bool assessingStage = false;
  Future<MoveAssessment?>? stagedRequest;

  void sync({
    required GameState position,
    required List<GameEvent> events,
    required Move? staged,
    required bool complete,
    required TutorOptions options,
    required TutorService? tutor,
    required MatchContext context,
  }) {
    final root = events.isEmpty ? null : events.first;
    final sameStage = _staged == null
        ? staged == null
        : staged != null && _staged!.sameAs(staged);
    final positionChanged =
        !identical(_position, position) ||
        !identical(_logRoot, root) ||
        _options != options ||
        !identical(_tutor, tutor);
    final boardChanged =
        !identical(_position, position) ||
        !identical(_logRoot, root) ||
        !sameStage ||
        _complete != complete;
    if (!boardChanged && _options == options && identical(_tutor, tutor)) {
      return;
    }
    if (boardChanged) selectedEventIndex = null;
    _position = position;
    _logRoot = root;
    _staged = staged;
    _complete = complete;
    _options = options;
    _tutor = tutor;
    if (positionChanged) {
      positionAssessment = null;
      final positionSequence = ++_positionSequence;
      if (tutor != null &&
          options.commentary &&
          (position.phase == GamePhase.moving ||
              position.phase == GamePhase.awaitingRoll)) {
        unawaited(
          tutor.evaluatePositionOrNull(position).then((value) {
            if (_disposed ||
                positionSequence != _positionSequence ||
                value == null) {
              return;
            }
            final side = position.turn == Player.white ? 'White' : 'Black';
            final opponent = position.turn == Player.white ? 'Black' : 'White';
            positionAssessment = value.win > .57
                ? '$side has the estimated edge.'
                : value.win < .43
                ? '$opponent has the estimated edge.'
                : 'The position is roughly even.';
            notifyListeners();
          }),
        );
      }
    }
    stagedAssessment = null;
    stagedRequest = null;
    assessingStage = false;
    final sequence = ++_sequence;
    // Partial moves have no valid full-play ranking. With hints disabled,
    // live staging gives board facts only; committed moves remain reviewable.
    if (tutor == null ||
        staged == null ||
        !complete ||
        !options.bestMoves ||
        (!options.commentary && !options.explanations)) {
      return;
    }
    assessingStage = true;
    final request = tutor.assessOrNull(position, staged, context: context);
    stagedRequest = request;
    unawaited(
      request.then((value) {
        if (_disposed || sequence != _sequence || selectedEventIndex != null) {
          return;
        }
        stagedAssessment = value;
        assessingStage = false;
        notifyListeners();
      }),
    );
  }

  void select(int? eventIndex) {
    selectedEventIndex = eventIndex;
    ++_sequence;
    ++_positionSequence;
    // Returning Live must restart a request canceled by browsing history.
    _options = null;
    assessingStage = false;
    stagedRequest = null;
    notifyListeners();
  }

  @override
  void dispose() {
    _disposed = true;
    ++_sequence;
    super.dispose();
  }
}
