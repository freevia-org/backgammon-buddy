import 'package:backgammon_core/backgammon_core.dart';

/// A completed game plus the score and match context needed to export it.
/// Scores are the match score immediately before this game began.
class ExportableGame {
  const ExportableGame({
    required this.number,
    required this.whiteScore,
    required this.blackScore,
    required this.isCrawford,
    required this.events,
    required this.result,
  });

  final int number;
  final int whiteScore;
  final int blackScore;
  final bool isCrawford;
  final List<GameEvent> events;
  final GameResult? result;
}

/// Metadata common to every game in an exported match.
class ExportableMatch {
  const ExportableMatch({
    required this.whitePlayer,
    required this.blackPlayer,
    required this.length,
    required this.games,
    this.date,
    this.event,
  });

  final String whitePlayer;
  final String blackPlayer;
  final int length;
  final List<ExportableGame> games;
  final DateTime? date;
  final String? event;
}

/// Serializes a complete match as an SGF collection (one `GM[6]` game tree per
/// played game). The notation follows the published backgammon SGF extension.
String exportMatchSgf(ExportableMatch match, {String appVersion = ''}) {
  if (match.games.isEmpty) {
    throw ArgumentError.value(match.games, 'games', 'must not be empty');
  }
  final trees = <String>[];
  for (final game in match.games) {
    final root = StringBuffer()
      ..write('GM[6]FF[4]CA[UTF-8]')
      ..write('AP[Backgammon Buddy${appVersion.isEmpty ? '' : ':$appVersion'}]')
      ..write('PW[${_sgfEscape(match.whitePlayer)}]')
      ..write('PB[${_sgfEscape(match.blackPlayer)}]')
      ..write('MI[length:${match.length}]')
      ..write('[game:${game.number}]')
      ..write('[ws:${game.whiteScore}]')
      ..write('[bs:${game.blackScore}]');
    if (match.date != null) {
      final date = match.date!;
      root.write(
        'DT[${date.year.toString().padLeft(4, '0')}-'
        '${date.month.toString().padLeft(2, '0')}-'
        '${date.day.toString().padLeft(2, '0')}]',
      );
    }
    if (match.event case final event? when event.isNotEmpty) {
      root.write('EV[${_sgfEscape(event)}]');
    }
    if (game.isCrawford) root.write('RU[Crawford:CrawfordGame]');

    final nodes = <String>[];
    int? pendingDie1;
    int? pendingDie2;
    for (final event in game.events) {
      switch (event) {
        case OpeningRollEvent(:final whiteDie, :final blackDie):
          // The winning die is the first die played in the opening roll.
          pendingDie1 = whiteDie > blackDie ? whiteDie : blackDie;
          pendingDie2 = whiteDie > blackDie ? blackDie : whiteDie;
        case RollEvent(:final die1, :final die2):
          pendingDie1 = die1;
          pendingDie2 = die2;
        case MoveEvent(:final player, :final move):
          final side = player == Player.white ? 'W' : 'B';
          final roll = pendingDie1 == null || pendingDie2 == null
              ? ''
              : '$pendingDie1$pendingDie2';
          pendingDie1 = null;
          pendingDie2 = null;
          final hops = move.checkerMoves.map(_sgfHop).join();
          nodes.add(';$side[$roll$hops]');
        case DoubleEvent(:final player):
          final side = player == Player.white ? 'W' : 'B';
          nodes.add(';$side[double]');
        case TakeEvent(:final player):
          final side = player == Player.white ? 'W' : 'B';
          nodes.add(';$side[take]');
        case DropEvent(:final player):
          final side = player == Player.white ? 'W' : 'B';
          nodes.add(';$side[drop]');
        case ResignOfferEvent(:final player, :final value):
          final side = player == Player.white ? 'W' : 'B';
          final label = switch (value) {
            ResignValue.single => 'single',
            ResignValue.gammon => 'gammon',
            ResignValue.backgammon => 'backgammon',
          };
          nodes.add(
            ';C[${side == 'W' ? 'White' : 'Black'} offers resignation: $label]',
          );
        case ResignAcceptEvent(:final player):
          final side = player == Player.white ? 'W' : 'B';
          nodes.add(
            ';C[${side == 'W' ? 'White' : 'Black'} accepts resignation]',
          );
        case ResignDeclineEvent(:final player):
          final side = player == Player.white ? 'W' : 'B';
          nodes.add(
            ';C[${side == 'W' ? 'White' : 'Black'} declines resignation]',
          );
      }
    }
    final result = game.result;
    if (result != null) {
      final winner = result.winner == Player.white ? 'W' : 'B';
      final resignation = game.events.any((e) => e is ResignAcceptEvent);
      final resultText = '$winner+${result.points}${resignation ? 'R' : ''}';
      root.write('RE[$resultText]');
    }
    trees.add('(;${root.toString()}${nodes.join()})');
  }
  return "${trees.join('\n')}\n";
}

String _sgfHop(CheckerMove hop) {
  final from = hop.from == CheckerMove.bar ? 'y' : _sgfPoint(hop.from);
  final to = hop.to == CheckerMove.off ? 'z' : _sgfPoint(hop.to);
  return '$from$to';
}

String _sgfPoint(int index) {
  if (index < 0 || index >= 24) {
    throw FormatException('Checker point $index is outside the board');
  }
  // SGF coordinates are fixed to the board, not rotated to the mover's POV:
  // `a` is White's 1-point / Black's 24-point, while `x` is White's
  // 24-point / Black's 1-point.
  return String.fromCharCode(97 + index);
}

String _sgfEscape(String text) => text
    .replaceAll('\\', '\\\\')
    .replaceAll(']', r'\]')
    .replaceAll('\r\n', '\n')
    .replaceAll('\r', '\n')
    .replaceAll('\n', r'\n');
