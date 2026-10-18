import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:aigammon_app/l10n/framework_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all shipped app locales can load every framework delegate', () async {
    for (final locale in AppLocalizations.supportedLocales) {
      for (final delegate in appLocalizationDelegates) {
        expect(
          delegate.isSupported(locale),
          isTrue,
          reason: '${delegate.type} must support $locale',
        );
        expect(await delegate.load(locale), isNotNull);
      }
    }
  });

  testWidgets('Maltese app text keeps English framework controls available', (
    t,
  ) async {
    late BuildContext localized;
    await t.pumpWidget(
      MaterialApp(
        locale: const Locale('mt'),
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: appLocalizationDelegates,
        home: Builder(
          builder: (context) {
            localized = context;
            return Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context).settings),
              ),
              body: const TextField(),
            );
          },
        ),
      ),
    );
    await t.pumpAndSettle();
    expect(Localizations.localeOf(localized).languageCode, 'mt');
    expect(AppLocalizations.of(localized).localeName, 'mt');
    expect(MaterialLocalizations.of(localized).backButtonTooltip, 'Back');
    expect(CupertinoLocalizations.of(localized).copyButtonLabel, 'Copy');
    expect(WidgetsLocalizations.of(localized).textDirection, TextDirection.ltr);
    expect(t.takeException(), isNull);
  });
}
