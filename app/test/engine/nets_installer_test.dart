import 'dart:io';
import 'dart:typed_data';

import 'package:aigammon_app/engine/nets_installer.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as p;

/// Wraps [bytes] as [ByteData], matching what `rootBundle.load` returns.
ByteData _bd(List<int> bytes) =>
    ByteData.view(Uint8List.fromList(bytes).buffer);

void main() {
  group('NetsInstaller.ensureInstalledTo', () {
    late Directory tmp;

    setUp(() {
      tmp = Directory.systemTemp.createTempSync('nets_installer_test');
    });

    tearDown(() {
      if (tmp.existsSync()) tmp.deleteSync(recursive: true);
    });

    // A reader returning distinct, recognisable payloads per asset.
    AssetReader readerReturning(Map<String, List<int>> payloads) {
      return (key) async {
        final bytes = payloads[key];
        if (bytes == null) throw ArgumentError('no fake asset for "$key"');
        return _bd(bytes);
      };
    }

    final fakeAssets = {
      'assets/nets/contact.onnx': [1, 2, 3, 4],
      'assets/nets/race.onnx': [9, 8, 7],
    };

    test('creates the target dir and writes both nets by basename', () async {
      final target = Directory(p.join(tmp.path, 'sub', 'nets'));
      expect(target.existsSync(), isFalse);

      final result =
          await NetsInstaller.ensureInstalledTo(target, readerReturning(fakeAssets));

      expect(result, target.path);
      final contact = File(p.join(target.path, 'contact.onnx'));
      final race = File(p.join(target.path, 'race.onnx'));
      expect(contact.readAsBytesSync(), [1, 2, 3, 4]);
      expect(race.readAsBytesSync(), [9, 8, 7]);
    });

    test('skips the copy when a file already holds the asset bytes', () async {
      final target = tmp;
      final contact = File(p.join(target.path, 'contact.onnx'));
      contact.writeAsBytesSync([1, 2, 3, 4]);
      final installedAt = DateTime(2020);
      contact.setLastModifiedSync(installedAt);

      var contactReads = 0;
      Future<ByteData> reader(String key) async {
        if (key == 'assets/nets/contact.onnx') contactReads++;
        return _bd(fakeAssets[key]!);
      }

      await NetsInstaller.ensureInstalledTo(target, reader);

      // The asset is still read (to compare against) but the file is NOT
      // rewritten because it is already current.
      expect(contactReads, 1);
      expect(contact.lastModifiedSync(), installedAt,
          reason: 'a current file must be left untouched');
    });

    test('replaces a same-length file whose content differs', () async {
      // A retrained net of the same architecture has the same byte length, so
      // length alone would keep serving the previous release's net.
      final target = tmp;
      final contact = File(p.join(target.path, 'contact.onnx'));
      contact.writeAsBytesSync([100, 101, 102, 103]);

      await NetsInstaller.ensureInstalledTo(target, readerReturning(fakeAssets));

      expect(contact.readAsBytesSync(), [1, 2, 3, 4]);
      expect(File('${contact.path}.tmp').existsSync(), isFalse,
          reason: 'the replacement is renamed into place, not left beside it');
    });

    test('overwrites when the existing file length differs', () async {
      final target = tmp;
      // Pre-place a contact.onnx of a DIFFERENT length (2 vs asset's 4).
      final contact = File(p.join(target.path, 'contact.onnx'));
      contact.writeAsBytesSync([55, 66]);

      await NetsInstaller.ensureInstalledTo(target, readerReturning(fakeAssets));

      expect(contact.readAsBytesSync(), [1, 2, 3, 4],
          reason: 'length mismatch must overwrite with the asset bytes');
    });
  });
}
