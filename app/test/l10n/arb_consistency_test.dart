import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('all locale bundles define the same keys and placeholders', () {
    final directory = Directory('lib/l10n');
    final files = directory
        .listSync()
        .whereType<File>()
        .where((file) => RegExp(r'app_[a-z]{2}\.arb$')
            .hasMatch(file.uri.pathSegments.last))
        .toList()
      ..sort((a, b) => a.path.compareTo(b.path));

    expect(files, hasLength(28));
    final template = jsonDecode(File('lib/l10n/app_en.arb').readAsStringSync())
        as Map<String, dynamic>;
    final templateKeys = template.keys.where((key) => !key.startsWith('@')).toSet();

    for (final file in files) {
      final bundle = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
      final locale = file.uri.pathSegments.last
          .replaceFirst('app_', '')
          .replaceFirst('.arb', '');
      expect(bundle['@@locale'], locale, reason: file.path);
      expect(bundle.keys.where((key) => !key.startsWith('@')).toSet(),
          templateKeys, reason: 'translation keys in ${file.path}');

      for (final key in templateKeys) {
        expect(bundle[key], isA<String>(), reason: '$locale.$key');
        expect((bundle[key] as String).trim(), isNotEmpty,
            reason: '$locale.$key must have translated text');
        final metadata = bundle['@$key'] as Map<String, dynamic>?;
        final templateMetadata = template['@$key'] as Map<String, dynamic>?;
        expect(metadata?['placeholders'] ?? const {},
            templateMetadata?['placeholders'] ?? const {},
            reason: '$locale.$key placeholder definitions');
      }
    }
  });
}
