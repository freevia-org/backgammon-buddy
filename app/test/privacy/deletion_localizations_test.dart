import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/l10n/framework_localizations.dart';
import 'package:aigammon_app/privacy/online_data_deletion.dart';
import 'package:aigammon_app/privacy/privacy_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  for (final locale in AppLocalizations.supportedLocales) {
    testWidgets(
      '${locale.languageCode} deletion states fit narrow enlarged text',
      (tester) async {
        tester.view.physicalSize = const Size(320, 640);
        tester.view.devicePixelRatio = 1;
        tester.view.padding = FakeViewPadding.zero;
        tester.view.viewPadding = FakeViewPadding.zero;
        addTearDown(tester.view.resetPhysicalSize);
        addTearDown(tester.view.resetDevicePixelRatio);
        addTearDown(tester.view.resetPadding);
        addTearDown(tester.view.resetViewPadding);
        var state = DeletionConfirmation.none;
        var fail = false;
        await tester.pumpWidget(
          ProviderScope(
            overrides: [
              checkOnlineDeletionProvider.overrideWithValue(() async {
                if (fail) throw StateError('offline');
                return state;
              }),
            ],
            child: MaterialApp(
              locale: locale,
              localizationsDelegates: appLocalizationDelegates,
              supportedLocales: AppLocalizations.supportedLocales,
              builder: (context, child) => MediaQuery(
                data: MediaQuery.of(
                  context,
                ).copyWith(textScaler: const TextScaler.linear(2)),
                child: child!,
              ),
              home: const PrivacyScreen(),
            ),
          ),
        );
        await tester.pumpAndSettle();
        final context = tester.element(find.byType(PrivacyScreen));
        final l10n = AppLocalizations.of(context);
        final button = find.text(l10n.privacyDeletionReceiptCheck);
        for (final outcome in [
          DeletionConfirmation.none,
          DeletionConfirmation.pending,
          DeletionConfirmation.complete,
          null,
        ]) {
          fail = outcome == null;
          state = outcome ?? DeletionConfirmation.none;
          await tester.scrollUntilVisible(button, 180);
          await tester.ensureVisible(button);
          await tester.pumpAndSettle();
          await tester.tap(button);
          await tester.pumpAndSettle();
          final text = switch (outcome) {
            DeletionConfirmation.none => l10n.privacyDeletionReceiptNone,
            DeletionConfirmation.pending => l10n.privacyDeletionReceiptPending,
            DeletionConfirmation.complete =>
              l10n.privacyDeletionReceiptComplete,
            null => l10n.privacyDeletionReceiptFailed,
          };
          expect(find.text(text), findsOneWidget);
          await tester.ensureVisible(find.text(text));
          await tester.pumpAndSettle();
          expect(tester.takeException(), isNull);
          if (outcome != DeletionConfirmation.complete) {
            expect(
              find.text(l10n.privacyDeletionReceiptComplete),
              findsNothing,
            );
          }
        }
      },
    );
  }
}
