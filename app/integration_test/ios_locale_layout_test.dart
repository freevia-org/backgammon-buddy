// Actual iOS fonts, all shipped locales, portrait/landscape and enlarged text.
import 'package:aigammon_app/data/app_settings.dart';
import 'package:aigammon_app/data/database.dart';
import 'package:aigammon_app/data/settings_repository.dart';
import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test/data/test_database.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  for (final locale in AppLocalizations.supportedLocales) {
    for (final size in [const Size(320, 640), const Size(844, 390)]) {
      testWidgets('${locale.languageCode} home/setup/settings layout $size', (
        t,
      ) async {
        t.view.physicalSize = size * 3;
        t.view.devicePixelRatio = 3;
        final portrait = size.height > size.width;
        final insets = FakeViewPadding(
          top: portrait ? 141 : 0,
          bottom: portrait ? 102 : 63,
          left: portrait ? 0 : 141,
          right: portrait ? 0 : 141,
        );
        t.view.padding = insets;
        t.view.viewPadding = insets;
        addTearDown(t.view.resetPhysicalSize);
        addTearDown(t.view.resetDevicePixelRatio);
        addTearDown(t.view.resetPadding);
        addTearDown(t.view.resetViewPadding);
        final db = newTestDatabase();
        final settings = AppSettings.defaults.copyWith(
          localeCode: locale.languageCode,
        );
        final container = ProviderContainer(
          overrides: [
            databaseProvider.overrideWithValue(db),
            settingsProvider.overrideWith((ref) => Stream.value(settings)),
          ],
        );
        try {
          await t.pumpWidget(
            UncontrolledProviderScope(
              container: container,
              child: const AiGammonApp(),
            ),
          );
          await t.pumpAndSettle();
          final strings = await AppLocalizations.delegate.load(locale);
          expect(t.takeException(), isNull, reason: 'home $locale $size');
          await t.tap(find.text(strings.playVsComputer));
          await t.pumpAndSettle();
          expect(t.takeException(), isNull, reason: 'setup $locale $size');
          await t.tap(find.byType(BackButton));
          await t.pumpAndSettle();
          await t.tap(find.byTooltip(strings.settings));
          await t.pumpAndSettle();
          expect(t.takeException(), isNull, reason: 'settings $locale $size');
          // Exercise the same routes at the user's enlarged text size.
          final app = t.widget<MaterialApp>(find.byType(MaterialApp));
          await t.pumpWidget(
            UncontrolledProviderScope(
              container: container,
              child: MaterialApp(
                locale: locale,
                theme: app.theme,
                localizationsDelegates: app.localizationsDelegates,
                supportedLocales: AppLocalizations.supportedLocales,
                builder: (context, child) => MediaQuery(
                  data: MediaQuery.of(
                    context,
                  ).copyWith(textScaler: const TextScaler.linear(2)),
                  child: child!,
                ),
                home: app.home,
              ),
            ),
          );
          await t.pumpAndSettle();
          expect(
            t.takeException(),
            isNull,
            reason: 'large-text home $locale $size',
          );
          await t.tap(find.text(strings.playVsComputer));
          await t.pumpAndSettle();
          expect(
            t.takeException(),
            isNull,
            reason: 'large-text setup $locale $size',
          );
          await t.tap(find.byType(BackButton));
          await t.pumpAndSettle();
          await t.tap(find.byTooltip(strings.settings));
          await t.pumpAndSettle();
          expect(
            t.takeException(),
            isNull,
            reason: 'large-text settings $locale $size',
          );
        } finally {
          await t.pumpWidget(const SizedBox.shrink());
          container.dispose();
          await db.close();
        }
      });
    }
  }
}
