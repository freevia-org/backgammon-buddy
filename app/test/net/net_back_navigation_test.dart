import 'dart:math';

import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/net/net_match_controller.dart';
import 'package:aigammon_app/screens/game_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:match_transport/match_transport.dart';
import 'package:match_transport/testing.dart';

import '../helpers/board_driving.dart';

/// Reconnecting to an existing log can buffer several complete games. Continuing
/// one summary folds the next game synchronously, so a callback from the previous
/// frame must not acknowledge the next game's new summary as well.
void main() {
  for (final dismissSummary in [false, true]) {
    testWidgets(
      'network ${dismissSummary ? 'dismissed' : 'visible'} summaries ignore stale '
      'Next game callbacks and continue each buffered game',
      (t) async {
        await t.binding.setSurfaceSize(const Size(900, 1300));
        addTearDown(() => t.binding.setSurfaceSize(null));

        final backend = InMemoryBackend(config: const MatchConfig(length: 7));
        for (var gameNo = 1; gameNo <= 3; gameNo++) {
          backend.seedOpening(whiteDie: 6, blackDie: 1, gameNo: gameNo);
          final opening = Game.start(
            const OpeningRollEvent(whiteDie: 6, blackDie: 1),
          );
          backend.appendEvent(
            author: backend.hostAuthor,
            seq: backend.nextSeq,
            gameNo: gameNo,
            event: MoveEvent(Player.white, opening.state.legalMoves.first),
          );
          backend.appendEvent(
            author: backend.guestAuthor,
            seq: backend.nextSeq,
            gameNo: gameNo,
            event: const ResignOfferEvent(Player.black, ResignValue.single),
          );
          backend.appendEvent(
            author: backend.hostAuthor,
            seq: backend.nextSeq,
            gameNo: gameNo,
            event: const ResignAcceptEvent(Player.white),
          );
        }
        backend.seedOpening(whiteDie: 6, blackDie: 1, gameNo: 4);
        final peer = InMemoryTransport.guest(backend);
        addTearDown(peer.dispose);
        final controller = NetMatchController(
          transport: InMemoryTransport.host(backend),
          rng: Random(7),
        );
        addTearDown(controller.disposeController);
        await controller.playMatch();
        await t.pumpWidget(const MaterialApp(home: SizedBox()));
        await pumpUntil(
          t,
          () =>
              controller.isReady &&
              controller.awaitingNextGame &&
              controller.lastSeq == backend.events.length,
        );
        await t.pumpWidget(
          MaterialApp(
            locale: const Locale('en'),
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            supportedLocales: AppLocalizations.supportedLocales,
            home: GameScreen(controller: controller),
          ),
        );
        await t.pumpAndSettle();
        expect(controller.gameNumber, 1);
        expect(controller.match.whiteScore, 1);
        final firstEnd = controller.state;

        Future<VoidCallback> nextGameCallback() async {
          if (dismissSummary) {
            await t.binding.handlePopRoute();
            await t.pumpAndSettle();
            expect(find.text('Game over'), findsNothing);
          } else {
            expect(find.text('Game over'), findsOneWidget);
          }
          return t
              .widget<FilledButton>(
                find.widgetWithText(FilledButton, 'Next game'),
              )
              .onPressed!;
        }

        final staleNextGame = await nextGameCallback();
        staleNextGame();
        // The real network controller drains game 2 from its buffer before this
        // callback returns, without an intervening rendered frame.
        expect(controller.gameNumber, 2);
        expect(controller.awaitingNextGame, isTrue);
        expect(controller.state, isNot(same(firstEnd)));
        final secondEnd = controller.state;
        staleNextGame();
        expect(controller.gameNumber, 2);
        expect(controller.state, same(secondEnd));
        expect(controller.match.whiteScore, 2);
        await t.pumpAndSettle();

        final secondNextGame = await nextGameCallback();
        secondNextGame();
        expect(controller.gameNumber, 3);
        expect(controller.awaitingNextGame, isTrue);
        final thirdEnd = controller.state;
        secondNextGame();
        staleNextGame();
        expect(controller.gameNumber, 3);
        expect(controller.state, same(thirdEnd));
        expect(controller.match.whiteScore, 3);
        await t.pumpAndSettle();

        final thirdNextGame = await nextGameCallback();
        thirdNextGame();
        expect(controller.gameNumber, 4);
        expect(controller.awaitingNextGame, isFalse);
        expect(controller.matchOver, isFalse);
        expect(controller.state.phase, GamePhase.moving);
        expect(controller.pendingMoveOf(Player.white).value, isNotNull);
        await t.pumpAndSettle();
        expect(find.byType(GameScreen), findsOneWidget);
        expect(find.text('Game over'), findsNothing);
        expect(controller.frozen, isFalse);
        expect(controller.error, isNull);
        expect(t.takeException(), isNull);
      },
    );
  }
}
