import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:backgammon_core/backgammon_core.dart';

import 'backgammon_match_export.dart';

/// Writes an eXtreme Gammon native `.xg` match file (RGMH header + ZLB archive).
/// The archive intentionally contains no analysis, thumbnail, or comments.
Uint8List exportMatchXg(ExportableMatch match) {
  if (match.games.isEmpty) throw ArgumentError('Match has no games');
  if (match.length < 0) throw ArgumentError.value(match.length, 'length');

  final records = <Uint8List>[_matchHeader(match)];
  for (final game in match.games) {
    records.addAll(_gameRecords(match, game));
  }
  final lastScore = _scoresAfter(match.games);
  final winner = _matchWinner(match);
  records.add(_footerMatch(lastScore.$1, lastScore.$2, winner));
  final stream = Uint8List.fromList(records.expand((r) => r).toList());
  final archive = _archive({
    'temp.xg': stream,
    'temp.xgi': Uint8List.fromList([...records.first, ...records.last]),
    'temp.xgr': Uint8List(0),
    'temp.xgc': Uint8List(0),
  });
  return Uint8List.fromList([..._richHeader(), ...archive]);
}

List<Uint8List> _gameRecords(ExportableMatch match, ExportableGame game) {
  final opening = game.events.whereType<OpeningRollEvent>().firstOrNull;
  if (opening == null) {
    throw FormatException('Game ${game.number} has no opening roll');
  }
  var state = GameState.opening(
    firstPlayer: opening.firstPlayer,
    openingDice: Dice(opening.whiteDie, opening.blackDie),
    isCrawfordGame: game.isCrawford,
  );
  final records = <Uint8List>[_headerGame(game, _enginePosition(state.board))];
  int? pendingDie1 = opening.firstPlayer == Player.white
      ? opening.whiteDie
      : opening.blackDie;
  int? pendingDie2 = opening.firstPlayer == Player.white
      ? opening.blackDie
      : opening.whiteDie;
  for (final event in game.events.skip(1)) {
    switch (event) {
      case OpeningRollEvent():
        throw FormatException(
          'Game ${game.number} contains a second opening roll',
        );
      case RollEvent(die1: final rolledDie1, die2: final rolledDie2):
        pendingDie1 = rolledDie1;
        pendingDie2 = rolledDie2;
        state = Game.applyEvent(state, event);
      case MoveEvent(:final player, :final move):
        if (pendingDie1 == null || pendingDie2 == null) {
          throw FormatException(
            'Game ${game.number} move has no preceding roll',
          );
        }
        final before = state;
        final after = Game.applyEvent(state, event);
        records.add(
          _moveRecord(
            before: before,
            after: after,
            player: player,
            move: move,
            die1: pendingDie1,
            die2: pendingDie2,
          ),
        );
        state = after;
        pendingDie1 = pendingDie2 = null;
      case DoubleEvent():
        // Cube records are emitted when the response (take/drop) is encountered.
        state = Game.applyEvent(state, event);
      case TakeEvent() || DropEvent():
        final after = Game.applyEvent(state, event);
        records.add(_cubeRecord(state, after, event));
        state = after;
      case ResignOfferEvent() || ResignAcceptEvent() || ResignDeclineEvent():
        state = Game.applyEvent(state, event);
    }
  }
  final result = game.result;
  if (result != null) records.add(_footerGame(game, result));
  return records;
}

Uint8List _matchHeader(ExportableMatch match) {
  final r = _record(0);
  _shortString(r, 9, match.whitePlayer);
  _shortString(r, 50, match.blackPlayer);
  _i32(r, 92, match.length == 0 ? 99999 : match.length);
  _i32(r, 96, 0); // standard backgammon
  r[100] = 1; // Crawford rule enabled
  _f64(r, 128, match.date == null ? 0 : _oleDate(match.date!));
  _shortString(r, 136, match.event ?? '');
  _i32(r, 412, 0); // normal game mode
  _i32(r, 548, 1); // not inverted
  _i32(r, 552, 30); // SaveFileVersion
  _i32(r, 556, 0x494C4D44); // DMLI
  _wideString(r, 622, match.event ?? '');
  _wideString(r, 880, match.whitePlayer);
  _wideString(r, 1138, match.blackPlayer);
  return r;
}

Uint8List _headerGame(ExportableGame game, List<int> initial) {
  final r = _record(1);
  _i32(r, 12, game.whiteScore);
  _i32(r, 16, game.blackScore);
  r[20] = game.isCrawford ? 1 : 0;
  r.setRange(21, 47, initial);
  _i32(r, 48, game.number);
  r[52] = game.result == null ? 1 : 0;
  return r;
}

Uint8List _moveRecord({
  required GameState before,
  required GameState after,
  required Player player,
  required Move move,
  required int die1,
  required int die2,
}) {
  final r = _record(3);
  r.setRange(9, 35, _enginePosition(before.board));
  r.setRange(35, 61, _enginePosition(after.board));
  _i32(r, 64, player == Player.white ? 1 : -1);
  _assignDice(move, player, die1, die2);
  var offset = 68;
  for (var i = 0; i < move.checkerMoves.length; i++) {
    final hop = move.checkerMoves[i];
    final from = hop.from == CheckerMove.bar
        ? 24
        : _pointForPlayer(hop.from, player);
    final destination = hop.to == CheckerMove.off
        ? -1
        : _pointForPlayer(hop.to, player);
    _i32(r, offset, from);
    // XG stores each checker hop as (source point, destination point).
    // Source/destination points are player-relative; negative means bear-off.
    _i32(r, offset + 4, destination);
    offset += 8;
  }
  if (offset < 100) _i32(r, offset, -1);
  _i32(r, 100, die1);
  _i32(r, 104, die2);
  _i32(r, 108, _cubeLog(before.cube.value, before.cube.owner));
  _f64(r, 112, -1000);
  _i32(r, 120, 0);
  _f64(r, 2312, -1000);
  _f64(r, 2320, -1000);
  _i32(r, 2328, -1);
  return r;
}

Uint8List _cubeRecord(GameState before, GameState after, GameEvent response) {
  final r = _record(2);
  final offerer = before.turn.opponent;
  _i32(r, 12, offerer == Player.white ? 1 : -1);
  _i32(r, 16, 1);
  _i32(r, 20, response is TakeEvent ? 1 : 0);
  _i32(r, 32, _cubeLog(after.cube.value, after.cube.owner));
  r.setRange(36, 62, _enginePosition(before.board));
  _f64(r, 200, -1000);
  _f64(r, 216, -1000);
  return r;
}

Uint8List _footerGame(ExportableGame game, GameResult result) {
  final r = _record(4);
  final finalWhite =
      game.whiteScore + (result.winner == Player.white ? result.points : 0);
  final finalBlack =
      game.blackScore + (result.winner == Player.black ? result.points : 0);
  _i32(r, 12, finalWhite);
  _i32(r, 16, finalBlack);
  _i32(r, 24, result.winner == Player.white ? 1 : -1);
  _i32(r, 28, result.points);
  final termination = switch (result.outcome) {
    GameOutcome.drop => 0,
    GameOutcome.single => 1,
    GameOutcome.gammon => 2,
    GameOutcome.backgammon => 3,
    GameOutcome.resignation =>
      100 +
          (game.events
                  .whereType<ResignOfferEvent>()
                  .firstOrNull
                  ?.value
                  .multiplier ??
              1),
  };
  _i32(r, 32, termination);
  _f64(r, 40, -1000);
  _f64(r, 48, -1000);
  return r;
}

Uint8List _footerMatch(int whiteScore, int blackScore, int winner) {
  final r = _record(5);
  _i32(r, 12, whiteScore);
  _i32(r, 16, blackScore);
  _i32(r, 20, winner);
  _f64(r, 48, 0);
  return r;
}

/// XG stores PositionEngine in fixed Player 1 (White) coordinates. The active
/// player is recorded separately in ActifP; mirroring this vector for Black
/// makes the move's before/after positions inconsistent with its hop fields.
List<int> _enginePosition(BoardState board) => [
  -board.blackBar,
  ...board.points,
  board.whiteBar,
];

List<int> _assignDice(Move move, Player player, int die1, int die2) {
  final available = die1 == die2 ? [die1, die1, die1, die1] : [die1, die2];
  final assigned = List<int>.filled(move.checkerMoves.length, 0);
  bool search(int i) {
    if (i == move.checkerMoves.length) return true;
    final hop = move.checkerMoves[i];
    final source = hop.from == CheckerMove.bar
        ? 24
        : _pointForPlayer(hop.from, player);
    final destination = hop.to == CheckerMove.off
        ? -1
        : _pointForPlayer(hop.to, player);
    final distance = hop.to == CheckerMove.off
        ? source + 1
        : source - destination;
    final candidates =
        available
            .where(
              (die) =>
                  die >= distance &&
                  (hop.to == CheckerMove.off || die == distance),
            )
            .toSet()
            .toList()
          ..sort();
    for (final die in candidates) {
      final at = available.indexOf(die);
      if (at < 0) continue;
      available.removeAt(at);
      assigned[i] = die;
      if (search(i + 1)) return true;
      available.insert(at, die);
    }
    return false;
  }

  if (!search(0)) {
    throw FormatException('Move hops do not match the recorded dice');
  }
  return assigned;
}

int _pointForPlayer(int sharedPoint, Player player) =>
    player == Player.white ? sharedPoint : 23 - sharedPoint;

int _cubeLog(int value, Player? owner) {
  var exponent = 0;
  for (var v = value; v > 1; v ~/= 2) {
    exponent++;
  }
  return owner == null
      ? 0
      : owner == Player.white
      ? exponent
      : -exponent;
}

Uint8List _record(int type) {
  final r = Uint8List(2560);
  r[8] = type; // 32-bit pointers occupy bytes 0..7; tag is byte 8.
  return r;
}

Uint8List _richHeader() {
  final b = ByteData(8232);
  b.setUint32(0, 0x484D4752, Endian.little);
  b.setUint32(4, 1, Endian.little);
  b.setUint32(8, 8232, Endian.little);
  b.setInt64(12, 0, Endian.little);
  b.setUint32(20, 0, Endian.little);
  final name = _utf16('Backgammon Buddy');
  b.buffer.asUint8List().setRange(40, 40 + name.length, name);
  return b.buffer.asUint8List();
}

Uint8List _archive(Map<String, Uint8List> files) {
  final chunks = <Uint8List>[];
  final entries = <Uint8List>[];
  var start = 0;
  for (final item in files.entries) {
    final compressed = Uint8List.fromList(ZLibCodec().encode(item.value));
    chunks.add(compressed);
    final e = Uint8List(532);
    _shortString(e, 0, item.key);
    _shortString(e, 256, '');
    final d = ByteData.sublistView(e);
    d.setInt32(512, item.value.length, Endian.little);
    d.setInt32(516, compressed.length, Endian.little);
    d.setInt32(520, start, Endian.little);
    d.setUint32(524, crc32(item.value), Endian.little);
    e[528] = 0; // compressed
    e[529] = 2; // default compression
    entries.add(e);
    start += compressed.length.toInt();
  }
  final payload = Uint8List.fromList(chunks.expand((x) => x).toList());
  final registry = ZLibCodec().encode(
    Uint8List.fromList(entries.expand((x) => x).toList()),
  );
  final preFooter = Uint8List.fromList([...payload, ...registry]);
  final footer = Uint8List(36);
  final d = ByteData.sublistView(footer);
  d.setUint32(0, crc32(preFooter), Endian.little);
  d.setInt32(4, files.length, Endian.little);
  d.setInt32(8, 1, Endian.little);
  d.setInt32(12, registry.length, Endian.little);
  d.setInt32(16, payload.length, Endian.little);
  footer[20] = 1;
  return Uint8List.fromList([...preFooter, ...footer]);
}

void _shortString(Uint8List b, int offset, String text) {
  final raw = latin1.encode(text.replaceAll(RegExp(r'[^\x00-\xff]'), '?'));
  final n = raw.length.clamp(0, 255);
  b[offset] = n;
  b.setRange(offset + 1, offset + 1 + n, raw.take(n));
}

void _wideString(Uint8List b, int offset, String text) {
  final raw = _utf16(text);
  final n = raw.length.clamp(0, 256);
  b.setRange(offset, offset + n, raw.take(n));
}

Uint8List _utf16(String text) {
  final units = text.codeUnits;
  final out = Uint8List(units.length * 2);
  final d = ByteData.sublistView(out);
  for (var i = 0; i < units.length; i++) {
    d.setUint16(i * 2, units[i], Endian.little);
  }
  return out;
}

void _i32(Uint8List b, int o, int v) =>
    ByteData.sublistView(b).setInt32(o, v, Endian.little);
void _f64(Uint8List b, int o, double v) =>
    ByteData.sublistView(b).setFloat64(o, v, Endian.little);

double _oleDate(DateTime date) =>
    date.toUtc().difference(DateTime.utc(1899, 12, 30)).inMicroseconds /
    Duration.microsecondsPerDay;

(int, int) _scoresAfter(List<ExportableGame> games) {
  final last = games.last;
  var w = last.whiteScore, b = last.blackScore;
  final r = last.result;
  if (r != null && r.winner == Player.white) w += r.points;
  if (r != null && r.winner == Player.black) b += r.points;
  return (w, b);
}

int _matchWinner(ExportableMatch match) {
  final s = _scoresAfter(match.games);
  if (match.length == 0 || (s.$1 < match.length && s.$2 < match.length)) {
    return 0;
  }
  return s.$1 == s.$2
      ? 0
      : s.$1 > s.$2
      ? 1
      : -1;
}

int crc32(List<int> bytes) {
  var crc = 0xffffffff;
  for (final b in bytes) {
    crc ^= b;
    for (var i = 0; i < 8; i++) {
      crc = (crc & 1) != 0 ? (crc >> 1) ^ 0xedb88320 : crc >> 1;
    }
  }
  return (crc ^ 0xffffffff) & 0xffffffff;
}
