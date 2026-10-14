import 'package:backgammon_core/backgammon_core.dart';

import 'backgammon_match_export.dart';

/// Exports a match as human-readable Jellyfish `.mat` text.
///
/// MAT is a de-facto interchange format rather than a fully specified
/// standard. Cube actions and Crawford status have no consistently supported
/// representation in its move text; they are noted as comments so consumers
/// that ignore comments still receive all checker plays and match scores.
String exportMatchMat(ExportableMatch match) {
  if (match.games.isEmpty) {
    throw ArgumentError.value(match.games, 'games', 'must not be empty');
  }

  final out = StringBuffer()
    ..writeln('; [Player 1 "${_matQuoted(match.whitePlayer)}"]')
    ..writeln('; [Player 2 "${_matQuoted(match.blackPlayer)}"]');
  if (match.event case final event? when event.trim().isNotEmpty) {
    out.writeln('; [Event "${_matQuoted(event)}"]');
  }
  if (match.date case final date?) {
    out.writeln(
      '; [EventDate "${date.year.toString().padLeft(4, '0')}.'
      '${date.month.toString().padLeft(2, '0')}.'
      '${date.day.toString().padLeft(2, '0')}"]',
    );
  }
  out.writeln('${match.length} point match');

  for (final game in match.games) {
    out
      ..writeln()
      ..writeln('Game ${game.number}')
      ..writeln(
        '${_matName(match.whitePlayer)} : ${game.whiteScore}  '
        '${_matName(match.blackPlayer)} : ${game.blackScore}',
      );
    if (game.isCrawford) {
      out.writeln('; Crawford game (MAT readers may ignore this marker)');
    }

    final turns = _matTurns(game.events);
    // MAT pairs White's turn with Black's turn. If Black wins the opening roll,
    // the first row contains only Black's opening turn; White starts in row 2.
    final openingPlayer = turns.isEmpty ? Player.white : turns.first.player;
    final rowCount = openingPlayer == Player.white
        ? (turns.length + 1) ~/ 2
        : (turns.length + 2) ~/ 2;
    final whiteTurns = List<_MatTurn?>.filled(rowCount, null);
    final blackTurns = List<_MatTurn?>.filled(rowCount, null);
    for (var i = 0; i < turns.length; i++) {
      final turn = turns[i];
      final row = openingPlayer == Player.white
          ? i ~/ 2
          : (i == 0 ? 0 : (i + 1) ~/ 2);
      (turn.player == Player.white ? whiteTurns : blackTurns)[row] = turn;
    }
    for (var i = 0; i < rowCount; i++) {
      final whiteTurn = whiteTurns[i];
      final blackTurn = blackTurns[i];
      final number = '${i + 1})';
      final white = whiteTurn == null
          ? ''
          : '${whiteTurn.dice}: ${whiteTurn.moves.join(' ')}';
      final black = blackTurn == null
          ? ''
          : '${blackTurn.dice}: ${blackTurn.moves.join(' ')}';
      out.writeln(' $number ${_matPad(white, 34)}$black'.trimRight());
    }

    final result = game.result;
    if (result != null) {
      final winner = result.winner == Player.white
          ? _matName(match.whitePlayer)
          : _matName(match.blackPlayer);
      final isResignation = game.events.any((e) => e is ResignAcceptEvent);
      out.writeln(
        isResignation
            ? '    $winner wins ${result.points} point${result.points == 1 ? '' : 's'} by resignation'
            : '    $winner wins ${result.points} point${result.points == 1 ? '' : 's'}',
      );
    }
    if (game.events.any(
      (e) => e is DoubleEvent || e is TakeEvent || e is DropEvent,
    )) {
      out.writeln(
        '; Cube actions occurred; MAT move text does not reliably preserve their timing or ownership.',
      );
    }
    if (game.events.any(
      (e) => e is ResignOfferEvent || e is ResignAcceptEvent,
    )) {
      out.writeln(
        '; Resignation is summarized in the result; offer value and response sequence may be lost.',
      );
    }
  }
  return out.toString();
}

class _MatTurn {
  _MatTurn(this.player, this.die1, this.die2);

  final Player player;
  final int die1;
  final int die2;
  final List<String> moves = [];

  String get dice => '$die1$die2';
}

List<_MatTurn> _matTurns(List<GameEvent> events) {
  final turns = <_MatTurn>[];
  _MatTurn? current;
  for (final event in events) {
    switch (event) {
      case OpeningRollEvent(:final whiteDie, :final blackDie):
        final player = whiteDie > blackDie ? Player.white : Player.black;
        final winningDie = whiteDie > blackDie ? whiteDie : blackDie;
        final losingDie = whiteDie > blackDie ? blackDie : whiteDie;
        current = _MatTurn(player, winningDie, losingDie);
        turns.add(current);
      case RollEvent(:final player, :final die1, :final die2):
        current = _MatTurn(player, die1, die2);
        turns.add(current);
      case MoveEvent(:final player, :final move):
        if (current == null || current.player != player) {
          throw FormatException('Move event has no matching roll');
        }
        current.moves.addAll(
          move.checkerMoves.map((hop) => _matCheckerMove(player, hop)),
        );
      case DoubleEvent() ||
          TakeEvent() ||
          DropEvent() ||
          ResignOfferEvent() ||
          ResignAcceptEvent() ||
          ResignDeclineEvent():
        // These events are summarized in match/game comments because MAT
        // consumers do not agree on a machine-readable notation for them.
        break;
    }
  }
  return turns;
}

String _matCheckerMove(Player player, CheckerMove move) {
  final from = move.from == CheckerMove.bar
      ? 25
      : _matPointNumber(player, move.from);
  final to = move.to == CheckerMove.off
      ? 'off'
      : '${_matPointNumber(player, move.to)}';
  return '$from/$to${move.isHit ? '*' : ''}';
}

int _matPointNumber(Player player, int point) {
  if (point < 0 || point >= 24) {
    throw FormatException('Checker point $point is outside the board');
  }
  // The core board uses White's point numbering; Black moves in the opposite
  // direction, so MAT notation is player-relative.
  return player == Player.white ? point + 1 : 24 - point;
}

String _matPad(String text, int width) =>
    text.length >= width ? '$text  ' : text.padRight(width);

String _matName(String text) => text
    .replaceAll(RegExp(r'[\r\n\t]+'), ' ')
    .replaceAll(RegExp(r'\s+'), ' ')
    .trim();

String _matQuoted(String text) => _matName(text).replaceAll('"', "'");
