import 'dart:convert';

import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/match_repository.dart';
import 'package:aigammon_app/data/practice_repository.dart';
import 'package:aigammon_app/data/recorded_match_context.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/game/player_agent.dart';
import 'package:aigammon_app/tutor/coaching.dart';
import 'package:aigammon_app/tutor/game_analyzer.dart';
import 'package:aigammon_app/tutor/move_assessment.dart';
import 'package:aigammon_app/tutor/tutor_service.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:engine_bindings/engine_bindings.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_database.dart';

class PracticeTestEngine implements EngineFacade {
  @override
  Future<List<ScoredMove>> rankMoves(
          BoardState board, Player mover, Dice dice) async =>
      [
        for (final (i, move)
            in MoveGenerator.legalMoves(board, mover, dice).indexed)
          ScoredMove(
              move: move,
              probabilities: Probabilities(
                  win: i == 0 ? .8 : .4,
                  winGammon: 0,
                  winBackgammon: 0,
                  loseGammon: 0,
                  loseBackgammon: 0)),
      ];
  @override
  Future<Probabilities> evaluate(BoardState board, Player mover) async =>
      const Probabilities(
          win: .5,
          winGammon: 0,
          winBackgammon: 0,
          loseGammon: 0,
          loseBackgammon: 0);
  @override
  Future<CubeAdvice> cubeInfo(BoardState board, Player mover) =>
      throw UnimplementedError();
}

Future<int> seedPracticeGame(AppDatabase db,
    {String blackType = 'human'}) async {
  final repo = MatchRepository(db);
  final matchId = await repo.startMatch(
      matchLength: 5,
      mode: 'hotSeat',
      whiteType: 'human',
      blackType: blackType,
      cubeless: true);
  var game = Game.start(const OpeningRollEvent(whiteDie: 6, blackDie: 1));
  game = game.append(MoveEvent(Player.white, game.state.legalMoves.last));
  game = game.append(const RollEvent(Player.black, 3, 2));
  game = game.append(MoveEvent(Player.black, game.state.legalMoves.last));
  game = game.append(const ResignOfferEvent(Player.white, ResignValue.single));
  game = game.append(const ResignAcceptEvent(Player.black));
  final gameId = await repo.recordGameAndScore(
      matchId: matchId,
      gameNumber: 1,
      isCrawford: false,
      events: game.events,
      result: game.state.result!,
      matchAfter:
          const MatchState(matchLength: 5).applyResult(game.state.result!));
  final analysis = await GameAnalyzer(TutorService(PracticeTestEngine()))
      .analyze(game.events,
          isCrawford: false,
          matchBefore: const MatchState(matchLength: 5),
          cubeless: true);
  await repo.saveAnalysis(gameId, jsonEncode(analysis.toJson()));
  return gameId;
}

class _FailScoreRepository extends MatchRepository {
  _FailScoreRepository(super.db);
  @override
  Future<void> updateScore(
          {required int matchId,
          required int whiteScore,
          required int blackScore}) async =>
      throw StateError('disk failure');
}

void main() {
  late AppDatabase db;
  late DateTime now;
  late PracticeRepository practice;
  setUp(() {
    db = newTestDatabase();
    now = DateTime.utc(2026, 10, 8, 9);
    practice = PracticeRepository(db, now: () => now);
  });
  tearDown(() => db.close());

  test(
      'tutor defaults and telemetry survive storage without clobbering each other',
      () async {
    final settings = SettingsRepository(db);
    expect((await settings.load()).telemetryEnabled, isFalse);
    const options = TutorOptions(
        bestMoves: false,
        explanations: true,
        commentary: false,
        cubeAdvice: false,
        tryFirst: true);
    await settings.setTutorOptions(options);
    await settings.setTelemetryEnabled(true);
    final loaded = await settings.load();
    expect(loaded.tutorOptions, options);
    expect(loaded.telemetryEnabled, isTrue);
    await settings.save(loaded.copyWith(telemetryEnabled: false));
    expect((await settings.load()).tutorOptions, options);
  });

  test(
      'saved decisions deduplicate and retain exact dice, both sides and historical score',
      () async {
    final gameId = await seedPracticeGame(db);
    final id = await practice.saveMistake(gameId: gameId, eventIndex: 1);
    expect(await practice.saveMistake(gameId: gameId, eventIndex: 1), id);
    final blackId = await practice.saveMistake(gameId: gameId, eventIndex: 3);
    final white = await practice.load(id), black = await practice.load(blackId);
    expect(white.before.turn, Player.white);
    expect(black.before.turn, Player.black);
    expect(white.before.dice, Dice(6, 1));
    expect(black.before.dice, Dice(3, 2));
    expect(white.row.whiteScore, 0);
    expect(white.row.blackScore, 0);
    expect(white.context!.moverAway, 5);
    expect(white.row.cubeless, isTrue);
    expect(await db.select(db.practicePositions).get(), hasLength(2));
  });

  test(
      'spaced reviews persist grades, early repeats do not inflate interval, reveal has no credit',
      () async {
    final id = await practice.saveMistake(
        gameId: await seedPracticeGame(db), eventIndex: 1);
    final saved = await practice.load(id);
    final best = await TutorService(PracticeTestEngine()).assess(
        saved.before, saved.before.legalMoves.first,
        context: saved.context);
    expect(await practice.recordAttempt(positionId: id, assessment: best),
        now.add(const Duration(days: 1)));
    expect((await practice.load(id)).row.successStreak, 1);
    now = now.add(const Duration(hours: 1));
    final earlyDue =
        await practice.recordAttempt(positionId: id, assessment: best);
    expect(earlyDue, DateTime.utc(2026, 10, 9, 9));
    expect((await practice.load(id)).row.successStreak, 1);
    now = earlyDue;
    expect(await practice.recordAttempt(positionId: id, assessment: best),
        now.add(const Duration(days: 3)));
    expect((await practice.load(id)).row.successStreak, 2);
    expect(await practice.recordAttempt(positionId: id, revealed: true),
        now.add(const Duration(minutes: 10)));
    expect((await practice.load(id)).row.successStreak, 0);
    final attempts = (await practice.loadLearning()).attempts;
    expect(attempts, hasLength(4));
    expect(attempts.where((a) => a.revealed).single.passed, isFalse);
  });

  test('failed unassisted answer schedules a retry and preserves its grade',
      () async {
    final id = await practice.saveMistake(
        gameId: await seedPracticeGame(db), eventIndex: 1);
    final saved = await practice.load(id);
    expect(saved.original.mark, MoveMark.blunder);
    expect(
        await practice.recordAttempt(
            positionId: id, assessment: saved.original),
        now.add(const Duration(minutes: 10)));
    final attempt = (await practice.loadLearning()).attempts.single;
    expect(attempt.passed, isFalse);
    expect(attempt.revealed, isFalse);
    expect(
        MoveAssessment.fromJson(
                jsonDecode(attempt.assessmentJson!) as Map<String, dynamic>)
            .played
            .sameAs(saved.original.played),
        isTrue);
  });

  test(
      'learning separates human and computer decisions; deleting history cascades practice',
      () async {
    final gameId = await seedPracticeGame(db, blackType: 'ai:expert');
    final id = await practice.saveMistake(gameId: gameId, eventIndex: 1);
    await practice.recordAttempt(positionId: id, revealed: true);
    final snapshot = await practice.loadLearning();
    expect(snapshot.decisions, hasLength(2));
    expect(
        snapshot.decisions.where((d) => d.human).single.player, Player.white);
    expect(
        snapshot.decisions.where((d) => !d.human).single.player, Player.black);
    expect(snapshot.decisions.first.themes, isNotEmpty);
    final repo = MatchRepository(db);
    await repo.deleteMatch((await repo.loadGame(gameId)).matchId);
    expect(await db.select(db.practicePositions).get(), isEmpty);
    expect(await db.select(db.practiceAttempts).get(), isEmpty);
  });

  test('progress reset keeps saved exercises and history but removes attempts',
      () async {
    final gameId = await seedPracticeGame(db);
    final id = await practice.saveMistake(gameId: gameId, eventIndex: 1);
    final saved = await practice.load(id);
    final good = await TutorService(PracticeTestEngine())
        .assess(saved.before, saved.original.best, context: saved.context);
    await practice.recordAttempt(positionId: id, assessment: good);
    now = now.add(const Duration(hours: 1));
    await practice.resetProgress();
    final snapshot = await practice.loadLearning();
    expect(snapshot.attempts, isEmpty);
    expect(snapshot.positions.single.successStreak, 0);
    expect(snapshot.positions.single.intervalDays, 0);
    expect(snapshot.positions.single.lastAttemptAt, isNull);
    expect(snapshot.positions.single.dueAt.toUtc(), now);
    expect(await MatchRepository(db).loadGame(gameId), isNotNull);
    await practice.delete(id);
    expect((await practice.loadLearning()).positions, isEmpty);
    expect(await MatchRepository(db).loadGame(gameId), isNotNull);
  });

  test('learning and practice reject caches made before context was recovered',
      () async {
    final gameId = await seedPracticeGame(db);
    final repo = MatchRepository(db);
    final cache =
        jsonDecode((await repo.loadAnalysis(gameId))!) as Map<String, dynamic>;
    cache.remove('matchBefore');
    await repo.saveAnalysis(gameId, jsonEncode(cache));
    final snapshot = await practice.loadLearning();
    expect(snapshot.decisions, isEmpty);
    expect(snapshot.gamesNeedingAnalysis, 1);
    await expectLater(
        practice.saveMistake(gameId: gameId, eventIndex: 1), throwsStateError);
  });

  test('missing previous game never fabricates historical match context',
      () async {
    final gameId = await seedPracticeGame(db);
    final repo = MatchRepository(db),
        row = await MatchRepository(db).loadGame(gameId);
    final gap = row.copyWith(gameNumber: 3);
    expect(await matchBeforeRecordedGame(repo, gap), isNull);
    final onePointId = await repo.startMatch(
        matchLength: 1,
        mode: 'hotSeat',
        whiteType: 'human',
        blackType: 'human',
        cubeless: true);
    expect(
        (await matchBeforeRecordedGame(
                repo, row.copyWith(matchId: onePointId, isCrawford: true)))!
            .isCrawfordNext,
        isTrue);
  });

  test('game and score writes roll back together if the score write fails',
      () async {
    final repo = _FailScoreRepository(db);
    final matchId = await repo.startMatch(
        matchLength: 5,
        mode: 'hotSeat',
        whiteType: 'human',
        blackType: 'human');
    const result = GameResult(
        winner: Player.white, points: 1, outcome: GameOutcome.single);
    expect(
        repo.recordGameAndScore(
            matchId: matchId,
            gameNumber: 1,
            isCrawford: false,
            events: [const OpeningRollEvent(whiteDie: 6, blackDie: 1)],
            result: result,
            matchAfter: const MatchState(matchLength: 5, whiteScore: 1)),
        throwsStateError);
    await Future<void>.delayed(Duration.zero);
    expect(await db.select(db.games).get(), isEmpty);
    expect((await repo.loadMatch(matchId)).whiteScore, 0);
  });
}
