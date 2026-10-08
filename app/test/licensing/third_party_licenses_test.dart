import 'dart:io';

import 'package:aigammon_app/licensing/third_party_licenses.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  test(
    'native transitive notices and model terms are available offline',
    () async {
      final entries = await additionalNativeLicenses().toList();
      expect(entries, hasLength(3));
      final text = entries
          .expand((e) => e.paragraphs)
          .map((p) => p.text)
          .join('\n');
      expect(text, contains('dyn-eq 0.1.3'));
      expect(text, contains('Mozilla Public License'));
      expect(text, contains('CC0'));
      expect(text, contains('by Neil Kazaross 2011.'));
      expect(text, contains('permission notice are preserved.'));
      final source = await rootBundle.load(
        'assets/licenses/dyn-eq-0.1.3-source.tar.gz',
      );
      expect(source.lengthInBytes, greaterThan(0));
    },
  );

  test('bundled native licenses preserve the upstream texts exactly', () async {
    for (final name in ['MIT', 'APACHE']) {
      final bundled = await rootBundle.load(
        'assets/licenses/wildbg-LICENSE-$name.txt',
      );
      final upstream = await File(
        '../native/wildbg/LICENSE-$name',
      ).readAsBytes();
      expect(
        bundled.buffer.asUint8List(
          bundled.offsetInBytes,
          bundled.lengthInBytes,
        ),
        upstream,
      );
    }
  });

  test(
    'native registry entries include attribution and both licenses',
    () async {
      final entries = await nativeEngineLicenses().toList();
      expect(entries, hasLength(3));
      expect(
        entries.every((e) => e.packages.single == 'wildbg (native engine)'),
        isTrue,
      );
      final text = entries
          .expand((e) => e.paragraphs)
          .map((p) => p.text)
          .join('\n');
      expect(text, contains('Copyright (c) 2023 Carsten Wenderdel'));
      expect(text, contains('Permission is hereby granted'));
      expect(text, contains('Version 2.0, January 2004'));
      expect(text, contains('8c42b06f2ff4868431fc0372b2787e612537317d'));
    },
  );
}
