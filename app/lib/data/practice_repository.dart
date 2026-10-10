import 'dart:convert';

import 'package:backgammon_core/backgammon_core.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../game/player_agent.dart';
import '../tutor/coaching.dart';
import '../tutor/game_analyzer.dart';
import '../tutor/move_assessment.dart';
import 'database.dart';
import 'match_repository.dart';
import 'recorded_match_context.dart';

/// A complete, immutable retry position. The answer is retained for review,
/// but the practice screen never renders it until an attempt is submitted.
class SavedPractice {
  const SavedPractice(
      {required this.row,
      required this.before,
      required this.original,
      required this.context});
  final PracticePositionRow row;
  final GameState before;
  final MoveAssessment original;
  final MatchContext? context;
}

class LearningDecision {
  const LearningDecision(
      {required this.gameId,
      required this.eventIndex,
      required this.player,
      required this.human,
      required this.assessment,
      required this.themes});
  final int gameId;
  final int eventIndex;
  final Player player;
  final bool human;
  final MoveAssessment assessment;
  final Set<CoachingTheme> themes;
  bool get isMistake => switch (assessment.mark) {
        MoveMark.dubious || MoveMark.error || MoveMark.blunder => true,
        _ => false,
      };
}

class LearningSnapshot {
  const LearningSnapshot(
      {required this.decisions,
      required this.positions,
      required this.attempts,
      required this.gamesNeedingAnalysis});
  final List<LearningDecision> decisions;
  final List<PracticePositionRow> positions;
  final List<PracticeAttemptRow> attempts;
  final int gamesNeedingAnalysis;
}

class PracticeRepository {
  PracticeRepository(this.db, {DateTime Function()? now})
      : _now = now ?? DateTime.now;
  final AppDatabase db;
  final DateTime Function() _now;

  Future<int> saveMistake({required int gameId, required int eventIndex}) {
    return db.transaction(() async {
      final existing = await (db.select(db.practicePositions)
            ..where((p) =>
                p.gameId.equals(gameId) & p.eventIndex.equals(eventIndex)))
          .getSingleOrNull();
      if (existing != null) return existing.id;
      final repo = MatchRepository(db);
      final row = await repo.loadGame(gameId);
      if (row.analysisJson == null) {
        throw StateError('Analyze this game before saving a decision.');
      }
      final analysis = GameAnalysis.fromJson(
          (jsonDecode(row.analysisJson!) as Map).cast<String, dynamic>());
      final candidates =
          analysis.moves.where((m) => m.eventIndex == eventIndex);
      if (candidates.length != 1) {
        throw StateError('This move has no analysis.');
      }
      final assessed = candidates.single;
      if (!assessed.assessment.isDecision ||
          assessed.assessment.ranked.isEmpty) {
        throw StateError(
            'A forced play does not provide a choice to practise.');
      }
      final events = await repo.loadGameEvents(gameId);
      if (eventIndex <= 0 ||
          eventIndex >= events.length ||
          events[eventIndex] is! MoveEvent) {
        throw StateError('The saved decision is not a checker move.');
      }
      final prefix = events.take(eventIndex).toList();
      final before = Game.replay(prefix, isCrawfordGame: row.isCrawford).state;
      if (before.turn != assessed.player || before.phase != GamePhase.moving) {
        throw StateError('The analysis does not match this position.');
      }
      final match = await repo.loadMatch(row.matchId);
      final score = await matchBeforeRecordedGame(repo, row);
      if (!analysis.matchesContext(score, match.cubeless)) {
        throw StateError(
            'Analyze this game again: its historical context has changed.');
      }
      final now = _now().toUtc();
      return db
          .into(db.practicePositions)
          .insert(PracticePositionsCompanion.insert(
            gameId: gameId,
            eventIndex: eventIndex,
            createdAt: now,
            player: assessed.player.name,
            eventsJson:
                jsonEncode([for (final event in prefix) event.toJson()]),
            isCrawford: row.isCrawford,
            matchLength: Value(score?.matchLength),
            whiteScore: Value(score?.whiteScore),
            blackScore: Value(score?.blackScore),
            crawfordPlayed: Value(score?.crawfordPlayed),
            cubeless: Value(match.cubeless),
            assessmentJson: jsonEncode(assessed.assessment.toJson()),
            themesJson: jsonEncode(MoveExplanation.themeTags(
                    before, assessed.assessment.played,
                    best: assessed.assessment.best)
                .map((theme) => theme.name)
                .toList()),
            dueAt: now,
          ));
    });
  }

  Future<SavedPractice> load(int positionId) async {
    final row = await (db.select(db.practicePositions)
          ..where((p) => p.id.equals(positionId)))
        .getSingle();
    final before =
        Game.replay(MatchRepository.decodeEventsJson(row.eventsJson),
            isCrawfordGame: row.isCrawford)
            .state;
    final score = row.matchLength;
    final context = score == null ||
            row.whiteScore == null ||
            row.blackScore == null ||
            row.crawfordPlayed == null
        ? null
        : MatchContext(
            moverAway: score -
                (before.turn == Player.white
                    ? row.whiteScore!
                    : row.blackScore!),
            opponentAway: score -
                (before.turn == Player.white
                    ? row.blackScore!
                    : row.whiteScore!),
            crawfordPlayed: row.crawfordPlayed!,
          );
    return SavedPractice(
        row: row,
        before: before,
        context: context,
        original: MoveAssessment.fromJson(
            (jsonDecode(row.assessmentJson) as Map).cast<String, dynamic>()));
  }

  /// Records exactly one answer and its next review together. Revealing before
  /// answering earns no credit. An early repeat cannot advance the schedule.
  Future<DateTime> recordAttempt(
      {required int positionId,
      MoveAssessment? assessment,
      bool revealed = false}) {
    if (assessment == null && !revealed) {
      throw ArgumentError('An attempt needs an assessment.');
    }
    if (assessment != null && !assessment.equityLoss.isFinite) {
      throw ArgumentError('Invalid evaluation.');
    }
    return db.transaction(() async {
      final row = await (db.select(db.practicePositions)
            ..where((p) => p.id.equals(positionId)))
          .getSingle();
      final now = _now().toUtc();
      final passed = !revealed &&
          assessment != null &&
          (assessment.mark == MoveMark.best ||
              assessment.mark == MoveMark.good);
      final isDue = !row.dueAt.toUtc().isAfter(now);
      final streak =
          passed ? (isDue ? row.successStreak + 1 : row.successStreak) : 0;
      const days = [1, 3, 7, 14, 30];
      final interval = passed
          ? (isDue
              ? days[(streak - 1).clamp(0, days.length - 1)]
              : row.intervalDays)
          : 0;
      final due = passed
          ? (isDue ? now.add(Duration(days: interval)) : row.dueAt.toUtc())
          : now.add(const Duration(minutes: 10));
      await db
          .into(db.practiceAttempts)
          .insert(PracticeAttemptsCompanion.insert(
            positionId: positionId,
            attemptedAt: now,
            assessmentJson: Value(
                assessment == null ? null : jsonEncode(assessment.toJson())),
            passed: passed,
            revealed: revealed,
          ));
      await (db.update(db.practicePositions)
            ..where((p) => p.id.equals(positionId)))
          .write(
        PracticePositionsCompanion(
            dueAt: Value(due),
            intervalDays: Value(interval),
            successStreak: Value(streak),
            lastAttemptAt: Value(now)),
      );
      return due;
    });
  }

  Future<void> delete(int id) async {
    await (db.delete(db.practicePositions)..where((p) => p.id.equals(id))).go();
  }

  Future<void> resetProgress() => db.transaction(() async {
        await db.delete(db.practiceAttempts).go();
        await db.update(db.practicePositions).write(PracticePositionsCompanion(
            dueAt: Value(_now().toUtc()),
            intervalDays: const Value(0),
            successStreak: const Value(0),
            lastAttemptAt: const Value(null)));
      });

  Future<LearningSnapshot> loadLearning() async {
    final games = await db.select(db.games).get();
    final matches = {
      for (final match in await db.select(db.matches).get()) match.id: match
    };
    final decisions = <LearningDecision>[];
    var missing = 0;
    for (final row in games) {
      if (row.analysisJson == null) {
        missing++;
        continue;
      }
      try {
        final analysis = GameAnalysis.fromJson(
            (jsonDecode(row.analysisJson!) as Map).cast<String, dynamic>());
        final match = matches[row.matchId]!;
        if (!analysis.matchesContext(
            await matchBeforeRecordedGame(MatchRepository(db), row),
            match.cubeless)) {
          missing++;
          continue;
        }
        final events = MatchRepository.decodeEventsJson(row.eventsJson);
        final byIndex = {
          for (final move in analysis.moves) move.eventIndex: move
        };
        if (events.isEmpty || events.first is! OpeningRollEvent) {
          missing++;
          continue;
        }
        var game = Game.start(events.first as OpeningRollEvent,
            isCrawfordGame: row.isCrawford);
        final gameDecisions = <LearningDecision>[];
        for (var index = 1; index < events.length; index++) {
          final move = byIndex[index];
          if (move != null && move.assessment.isDecision) {
            gameDecisions.add(LearningDecision(
              gameId: row.id,
              eventIndex: index,
              player: move.player,
              human: (move.player == Player.white
                      ? match.whiteType
                      : match.blackType) ==
                  'human',
              assessment: move.assessment,
              themes: MoveExplanation.themeTags(
                      game.state, move.assessment.played,
                      best: move.assessment.best)
                  .toSet(),
            ));
          }
          game = game.append(events[index]);
        }
        decisions.addAll(gameDecisions);
      } on FormatException {
        missing++;
      } on TypeError {
        missing++;
      } on StateError {
        missing++;
      } on ArgumentError {
        missing++;
      }
    }
    return LearningSnapshot(
        decisions: decisions,
        positions: await (db.select(db.practicePositions)
              ..orderBy([(p) => OrderingTerm.asc(p.dueAt)]))
            .get(),
        attempts: await (db.select(db.practiceAttempts)
              ..orderBy([(p) => OrderingTerm.desc(p.attemptedAt)]))
            .get(),
        gamesNeedingAnalysis: missing);
  }

}

final practiceRepositoryProvider = Provider<PracticeRepository>(
    (ref) => PracticeRepository(ref.watch(databaseProvider)));
