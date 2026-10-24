import 'package:aigammon_app/screens/game/game_dialogs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'actions stay reachable on a short landscape display at large text',
    (tester) async {
      await tester.binding.setSurfaceSize(const Size(667, 375));
      addTearDown(() => tester.binding.setSurfaceSize(null));

      var closed = false;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) => MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(2.5)),
              child: Scaffold(
                body: ModalCard(
                  title: 'Game over',
                  message: 'Match score: White 1 — Black 0',
                  details: const SizedBox(
                    height: 900,
                    child: Text('Long localized game details'),
                  ),
                  actions: [
                    CardAction(label: 'Review game', onPressed: () {}),
                    CardAction(label: 'Next game', onPressed: () {}),
                    CardAction(
                      label: 'Close',
                      onPressed: () => closed = true,
                      filled: true,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final close = find.text('Close');
      expect(tester.getRect(close).bottom, lessThan(375));
      await tester.tap(close);
      expect(closed, isTrue);
    },
  );
}
