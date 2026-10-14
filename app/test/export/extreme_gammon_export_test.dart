import 'dart:io';
import 'dart:typed_data';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:aigammon_app/export/backgammon_match_export.dart';
import 'package:aigammon_app/export/extreme_gammon_export.dart';

void main() {
  test(
    'writes a native XG rich header and ZLB archive with replayable moves',
    () {
      final match = _sampleMatch();
      final bytes = exportMatchXg(match);
      final view = ByteData.sublistView(bytes);

      expect(bytes.length, greaterThan(8232 + 36));
      expect(view.getUint32(0, Endian.little), 0x484D4752); // RGMH
      expect(view.getUint32(8, Endian.little), 8232);
      expect(String.fromCharCodes(bytes.sublist(40, 72)), contains('B'));

      final archive = bytes.sublist(8232);
      final footer = ByteData.sublistView(archive, archive.length - 36);
      expect(footer.getInt32(4, Endian.little), 4); // xg, xgi, xgr, xgc
      expect(footer.getInt32(8, Endian.little), 1);
      expect(footer.getUint8(20), 1); // compressed registry
      expect(
        footer.getUint32(0, Endian.little),
        crc32(archive.sublist(0, archive.length - 36)),
      );

      final filePayloadLength = footer.getInt32(16, Endian.little);
      final registry = Uint8List.fromList(
        ZLibCodec().decode(
          archive.sublist(filePayloadLength, archive.length - 36),
        ),
      );
      final firstEntry = ByteData.sublistView(registry);
      expect(registry[0], 7);
      expect(String.fromCharCodes(registry.sublist(1, 8)), 'temp.xg');
      final uncompressedSize = firstEntry.getInt32(512, Endian.little);
      final compressedSize = firstEntry.getInt32(516, Endian.little);
      final start = firstEntry.getInt32(520, Endian.little);
      expect(registry[528], 0); // zlib-compressed entry

      final gameStream = Uint8List.fromList(
        ZLibCodec().decode(archive.sublist(start, start + compressedSize)),
      );
      expect(gameStream.length, uncompressedSize);
      expect(gameStream.length % 2560, 0);
      final types = [
        for (var i = 0; i < gameStream.length; i += 2560) gameStream[i + 8],
      ];
      expect(types, [0, 1, 3, 5]);

      final initial = gameStream.sublist(2560 + 21, 2560 + 47);
      expect(initial.length, 26);
      expect(Int8List.fromList(initial).reduce((a, b) => a + b), 0);
      final move = ByteData.sublistView(gameStream, 5120, 7680);
      expect(
        gameStream.sublist(2560 + 21, 2560 + 47),
        gameStream.sublist(5120 + 9, 5120 + 35),
      );
      expect(move.getInt32(100, Endian.little), 6);
      expect(move.getInt32(104, Endian.little), 1);
      final firstHop = match.games.single.events
          .whereType<MoveEvent>()
          .single
          .move
          .checkerMoves
          .first;
      expect(
        move.getInt32(68, Endian.little),
        firstHop.from == CheckerMove.bar ? 24 : 23 - firstHop.from,
      );
      expect(
        move.getInt32(72, Endian.little),
        firstHop.to == CheckerMove.off ? -1 : 23 - firstHop.to,
      );
      final before = GameState.opening(
        firstPlayer: Player.black,
        openingDice: Dice(1, 6),
      );
      final after = before.play(
        match.games.single.events.whereType<MoveEvent>().single.move,
      );
      expect(
        gameStream.sublist(5120 + 35, 5120 + 61),
        _positionBytes(after.board),
      );
    },
  );

  test('rejects empty matches and malformed games before writing output', () {
    expect(
      () => exportMatchXg(
        const ExportableMatch(
          whitePlayer: 'A',
          blackPlayer: 'B',
          length: 5,
          games: [],
        ),
      ),
      throwsArgumentError,
    );
    expect(
      () => exportMatchXg(
        const ExportableMatch(
          whitePlayer: 'A',
          blackPlayer: 'B',
          length: 5,
          games: [
            ExportableGame(
              number: 1,
              whiteScore: 0,
              blackScore: 0,
              isCrawford: false,
              events: [],
              result: null,
            ),
          ],
        ),
      ),
      throwsFormatException,
    );
  });
}

List<int> _positionBytes(BoardState board) => [
  -board.blackBar,
  ...board.points,
  board.whiteBar,
].map((value) => value & 0xff).toList();

ExportableMatch _sampleMatch() {
  const opening = OpeningRollEvent(whiteDie: 1, blackDie: 6);
  final state = GameState.opening(
    firstPlayer: Player.black,
    openingDice: Dice(1, 6),
  );
  final move = state.legalMoves.first;
  final after = state.play(move);
  return ExportableMatch(
    whitePlayer: 'White',
    blackPlayer: 'Black',
    length: 5,
    date: DateTime.utc(2026, 10, 14),
    games: [
      ExportableGame(
        number: 1,
        whiteScore: 0,
        blackScore: 0,
        isCrawford: false,
        events: [opening, MoveEvent(Player.black, move)],
        result: after.result,
      ),
    ],
  );
}
