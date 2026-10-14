import 'package:backgammon_core/backgammon_core.dart';

enum EvaluationEngine { wildbg, gnubg }

/// Absolute game and match context, interpreted relative to the on-roll player
/// only at the native boundary. Scores are points won, not away scores.
class AnalysisContext {
  const AnalysisContext(
      {this.cubeValue = 1,
      this.cubeOwner,
      this.matchLength = 0,
      this.whiteScore = 0,
      this.blackScore = 0,
      this.crawford = false,
      this.jacoby = false,
      this.cubeless = false,
      this.plies = 2});
  final int cubeValue, matchLength, whiteScore, blackScore, plies;
  final Player? cubeOwner;
  final bool crawford, jacoby, cubeless;
  List<int> encode(Player mover) => [
        cubeValue,
        cubeOwner == null
            ? -1
            : cubeOwner == mover
                ? 1
                : 0,
        matchLength,
        mover == Player.white ? blackScore : whiteScore,
        mover == Player.white ? whiteScore : blackScore,
        crawford ? 1 : 0,
        jacoby ? 1 : 0,
        plies,
        cubeless ? 1 : 0
      ];
  Map<String, Object?> toWire() => {
        'cube': cubeValue,
        'owner': cubeOwner?.index,
        'length': matchLength,
        'white': whiteScore,
        'black': blackScore,
        'crawford': crawford,
        'jacoby': jacoby,
        'plies': plies,
        'cubeless': cubeless
      };
  factory AnalysisContext.fromWire(Map raw) => AnalysisContext(
      cubeValue: raw['cube'] as int,
      cubeOwner:
          raw['owner'] == null ? null : Player.values[raw['owner'] as int],
      matchLength: raw['length'] as int,
      whiteScore: raw['white'] as int,
      blackScore: raw['black'] as int,
      crawford: raw['crawford'] as bool,
      jacoby: raw['jacoby'] as bool,
      cubeless: raw['cubeless'] as bool? ?? false,
      plies: raw['plies'] as int);
}
