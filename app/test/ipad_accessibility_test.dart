// Shipping widgets on iPad-sized surfaces with native iOS fonts and semantics.
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

import 'data/test_database.dart';

void main() {
  for (final size in [
    const Size(1032, 1376),
    const Size(1376, 1032),
    const Size(507, 1032),
  ]) {
    for (final scale in [1.0, 2.0]) {
      testWidgets('iPad $size text $scale home/setup/settings accessibility', (
        t,
      ) async {
        final semantics = t.ensureSemantics();
        t.view.physicalSize = size * 2;
        t.view.devicePixelRatio = 2;
        t.view.padding = const FakeViewPadding(top: 48, bottom: 40);
        t.view.viewPadding = const FakeViewPadding(top: 48, bottom: 40);
        addTearDown(t.view.resetPhysicalSize);
        addTearDown(t.view.resetDevicePixelRatio);
        addTearDown(t.view.resetPadding);
        addTearDown(t.view.resetViewPadding);
        final db = newTestDatabase();
        addTearDown(db.close);
        final scope = ProviderContainer(
          overrides: [
            databaseProvider.overrideWithValue(db),
            settingsProvider.overrideWith(
              (ref) =>
                  Stream.value(AppSettings.defaults.copyWith(localeCode: 'en')),
            ),
          ],
        );
        try {
          await t.pumpWidget(
            UncontrolledProviderScope(
              container: scope,
              child: const AiGammonApp(),
            ),
          );
          await t.pumpAndSettle();
          final app = t.widget<MaterialApp>(find.byType(MaterialApp));
          await t.pumpWidget(
            UncontrolledProviderScope(
              container: scope,
              child: MaterialApp(
                theme: app.theme,
                localizationsDelegates: app.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                locale: const Locale('en'),
                builder: (context, child) => MediaQuery(
                  data: MediaQuery.of(
                    context,
                  ).copyWith(textScaler: TextScaler.linear(scale)),
                  child: child!,
                ),
                home: app.home,
              ),
            ),
          );
          await t.pumpAndSettle();
          Future<void> check(String route) async {
            debugPrint('Checking $route at $size / $scale');
            expect(t.takeException(), isNull, reason: route);
            await expectLater(
              t,
              meetsGuideline(labeledTapTargetGuideline),
              reason: '$route labels',
            );
            await expectLater(
              t,
              meetsGuideline(iOSTapTargetGuideline),
              reason: '$route 44-point targets',
            );
          }

          await check('home');
          await t.tap(find.text('Play vs Computer'));
          await t.pumpAndSettle();
          await check('setup');
          await t.tap(find.byType(BackButton));
          await t.pumpAndSettle();
          await t.tap(find.byTooltip('Settings'));
          await t.pumpAndSettle();
          await check('settings');
          await t.scrollUntilVisible(find.text('Privacy and data'), 400);
          await t.tap(find.text('Privacy and data'));
          await t.pumpAndSettle();
          await check('privacy');
          await t.drag(find.byType(Scrollable).last, const Offset(0, -600));
          await t.pumpAndSettle();
          await check('privacy lower content');
          await t.tap(find.byType(BackButton));
          await t.pumpAndSettle();
          await t.tap(find.byType(BackButton));
          await t.pumpAndSettle();
          final strings = await AppLocalizations.delegate.load(
            const Locale('en'),
          );
          for (final label in [
            strings.learningPractice,
            strings.gamesArchive,
          ]) {
            await t.ensureVisible(find.text(label));
            await t.tap(find.text(label));
            await t.pumpAndSettle();
            await check(label);
            await t.tap(find.byType(BackButton));
            await t.pumpAndSettle();
          }
        } finally {
          await t.pumpWidget(const SizedBox.shrink());
          semantics.dispose();
          scope.dispose();
          await t.pump(
            const Duration(milliseconds: 1),
          ); // Drain Drift cancellation.
        }
      });
    }
  }
}
