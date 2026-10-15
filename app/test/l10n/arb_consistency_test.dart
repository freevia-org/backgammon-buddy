import 'dart:convert';
import 'dart:io';

import 'package:aigammon_app/l10n/app_localizations.dart';
import 'package:intl/message_format.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all locale bundles define the same keys and placeholders', () {
    final directory = Directory('lib/l10n');
    final files =
        directory
            .listSync()
            .whereType<File>()
            .where(
              (file) => RegExp(
                r'app_[a-z]{2}\.arb$',
              ).hasMatch(file.uri.pathSegments.last),
            )
            .toList()
          ..sort((a, b) => a.path.compareTo(b.path));

    expect(files, hasLength(28));
    final template =
        jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
            as Map<String, dynamic>;
    final templateKeys = template.keys
        .where((key) => !key.startsWith('@'))
        .toSet();
    final declaredLocales = AppLocalizations.supportedLocales
        .map((locale) => locale.languageCode)
        .toSet();
    final arbLocales = files
        .map(
          (file) => file.uri.pathSegments.last
              .replaceFirst('app_', '')
              .replaceFirst('.arb', ''),
        )
        .toSet();
    expect(arbLocales, declaredLocales, reason: 'ARB files match app locales');

    for (final file in files) {
      final bundle =
          jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final locale = file.uri.pathSegments.last
          .replaceFirst('app_', '')
          .replaceFirst('.arb', '');
      expect(bundle['@@locale'], locale, reason: file.path);
      expect(
        bundle.keys.where((key) => !key.startsWith('@')).toSet(),
        templateKeys,
        reason: 'translation keys in ${file.path}',
      );

      for (final key in templateKeys) {
        expect(bundle[key], isA<String>(), reason: '$locale.$key');
        expect(
          (bundle[key] as String).trim(),
          isNotEmpty,
          reason: '$locale.$key must have translated text',
        );
        expect(
          bundle[key],
          isNot(contains('QZXQ')),
          reason: '$locale.$key must not contain translation batch markers',
        );
        expect(
          bundle[key],
          isNot(matches(RegExp(r'\bJ\d{1,2}\b'))),
          reason: '$locale.$key must not contain translation segment markers',
        );
        expect(
          bundle[key],
          isNot(contains('#')),
          reason: '$locale.$key must use a declared placeholder for numbers',
        );
        final metadata = bundle['@$key'] as Map<String, dynamic>?;
        final templateMetadata = template['@$key'] as Map<String, dynamic>?;
        expect(
          metadata?['placeholders'] ?? const {},
          templateMetadata?['placeholders'] ?? const {},
          reason: '$locale.$key placeholder definitions',
        );

        final placeholders = (templateMetadata?['placeholders'] as Map?) ?? {};
        final declaredNames = placeholders.keys.cast<String>().toSet();
        // Match only ICU argument openings (`{name}` or `{name, plural, ...`),
        // not plural branches such as `one { ... }`.
        final usedNames = RegExp(r'\{([A-Za-z][A-Za-z0-9_]*)\s*[,}]')
            .allMatches(bundle[key] as String)
            .map((match) => match.group(1)!)
            .toSet();
        // ICU plural branches also use braces (`one { ... }`). The raw scan
        // can see those branch words as candidates; only require every
        // declared argument to appear here. MessageFormat below rejects any
        // undeclared argument because the sample map contains declared names.
        expect(
          usedNames.intersection(declaredNames),
          declaredNames,
          reason: '$locale.$key placeholder names used in translated text',
        );
        final arguments = <String, Object>{
          for (final entry in placeholders.entries)
            entry.key as String: switch ((entry.value as Map?)?['type']) {
              'int' => 2,
              'num' || 'double' => 2.5,
              _ => 'sample',
            },
        };
        try {
          MessageFormat(
            bundle[key] as String,
            locale: locale,
          ).format(arguments);
        } catch (error) {
          fail(
            '$locale.$key has invalid ICU text or missing arguments: $error',
          );
        }
      }
    }
  });
}
