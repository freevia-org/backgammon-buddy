import 'dart:convert';

import 'package:aigammon_app/board/board_view.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/practice_repository.dart';
import 'package:aigammon_app/engine/engine_provider.dart';
import 'package:aigammon_app/screens/learning_screen.dart';
import 'package:aigammon_app/screens/practice_screen.dart';
import 'package:aigammon_app/tutor/coaching_widgets.dart';
import 'package:drift/drift.dart' show Value;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import '../data/practice_repository_test.dart'
    show seedPracticeGame, PracticeTestEngine;
import '../data/test_database.dart';

Future<void> _settle(WidgetTester tester) async {
  for (var i = 0; i < 15; i++) {
    await tester
        .runAsync(() => Future<void>.delayed(const Duration(milliseconds: 15)));
    await tester.pump();
  }
  await tester.pumpAndSettle();
}

void main() {
  late AppDatabase db;
  setUp(() => db = newTestDatabase());
  tearDown(() => db.close());

  Widget app(Widget child, {double scale = 1}) => ProviderScope(
          overrides: [
            databaseProvider.overrideWithValue(db),
            engineFacadeProvider.overrideWithValue(PracticeTestEngine()),
          ],
          child: MaterialApp(
              builder: (context, child) => MediaQuery(
                  data: MediaQuery.of(context)
                      .copyWith(textScaler: TextScaler.linear(scale)),
                  child: child!),
              home: child));

  testWidgets(
      'blind answer is graded and saved before its explanation is revealed',
      (t) async {
    await t.binding.setSurfaceSize(const Size(900, 1200));
    addTearDown(() => t.binding.setSurfaceSize(null));
    late int positionId;
    await t.runAsync(() async {
      positionId = await PracticeRepository(db)
          .saveMistake(gameId: await seedPracticeGame(db), eventIndex: 1);
    });
    await t.pumpWidget(app(PracticeScreen(positionId: positionId)));
    await _settle(t);
    expect(find.textContaining('Best:'), findsNothing);
    expect(find.byType(MoveExplanationView), findsNothing);
    final board = t.widget<BoardView>(find.byType(BoardView));
    expect(board.interactive, isTrue);
    board.onMoveCommitted(board.state.legalMoves.first);
    await _settle(t);
    expect(find.textContaining('Best:'), findsWidgets);
    expect(find.byType(MoveExplanationView), findsOneWidget);
    expect(t.widget<BoardView>(find.byType(BoardView)).interactive, isFalse);
    await t.runAsync(() async {
      final attempts = (await PracticeRepository(db).loadLearning()).attempts;
      expect(attempts, hasLength(1));
      expect(attempts.single.passed, isTrue);
      expect(attempts.single.revealed, isFalse);
    });
    expect(t.takeException(), isNull);
  });

  testWidgets(
      'narrow large-text practice allows revealing with no recall credit',
      (t) async {
    await t.binding.setSurfaceSize(const Size(320, 568));
    addTearDown(() => t.binding.setSurfaceSize(null));
    late int positionId;
    await t.runAsync(() async {
      positionId = await PracticeRepository(db)
          .saveMistake(gameId: await seedPracticeGame(db), eventIndex: 3);
    });
    await t.pumpWidget(app(PracticeScreen(positionId: positionId), scale: 2));
    await _settle(t);
    final reveal = find.text('Reveal answer (no credit)');
    await t.ensureVisible(reveal);
    await t.tap(reveal);
    await _settle(t);
    expect(find.text('Answer revealed — no recall credit.'), findsOneWidget);
    expect(t.takeException(), isNull);
    await t.runAsync(() async {
      final attempt =
          (await PracticeRepository(db).loadLearning()).attempts.single;
      expect(attempt.revealed, isTrue);
      expect(attempt.passed, isFalse);
    });
  });

  testWidgets('corrupt in-range saved moves show unavailable instead of crashing',
      (t) async {
    await t.binding.setSurfaceSize(const Size(900, 1200));
    addTearDown(() => t.binding.setSurfaceSize(null));
    late int positionId;
    await t.runAsync(() async {
      final gameId = await seedPracticeGame(db);
      positionId = await PracticeRepository(db)
          .saveMistake(gameId: gameId, eventIndex: 1);
      final row = await (db.select(db.practicePositions)
            ..where((p) => p.id.equals(positionId)))
          .getSingle();
      final assessment =
          (jsonDecode(row.assessmentJson) as Map).cast<String, dynamic>();
      // Valid coordinates, but no checker can be entered from the bar here.
      const illegalMove = [<Object>[24, 23, false]];
      assessment['played'] = illegalMove;
      assessment['best'] = illegalMove;
      for (final ranked in assessment['ranked'] as List) {
        (ranked as Map)['move'] = illegalMove;
      }
      await (db.update(db.practicePositions)
            ..where((p) => p.id.equals(positionId)))
          .write(PracticePositionsCompanion(
              assessmentJson: Value(jsonEncode(assessment))));
    });
    await t.pumpWidget(app(PracticeScreen(positionId: positionId)));
    await _settle(t);
    final reveal = find.text('Reveal answer (no credit)');
    await t.ensureVisible(reveal);
    await t.tap(reveal);
    await _settle(t);
    expect(find.text('This practice position is no longer available.'),
        findsOneWidget);
    expect(t.takeException(), isNull);
  });

  testWidgets(
      'learning defaults to human decisions and saves only selected mistakes',
      (t) async {
    await t.binding.setSurfaceSize(const Size(320, 568));
    addTearDown(() => t.binding.setSurfaceSize(null));
    await t.runAsync(() => seedPracticeGame(db, blackType: 'ai:expert'));
    await t.pumpWidget(app(const LearningScreen(), scale: 2));
    await _settle(t);
    expect(
        find.text('1 decisions · 1 to improve · 1 blunders'), findsOneWidget);
    final save = find.text('Save these mistakes for practice');
    await t.ensureVisible(save);
    await t.tap(save);
    await _settle(t);
    await t.runAsync(() async {
      final positions = (await PracticeRepository(db).loadLearning()).positions;
      expect(positions, hasLength(1));
      expect(positions.single.player, 'white');
    });
    expect(t.takeException(), isNull);
  });
}
