import 'dart:io';
import 'dart:typed_data';
import 'package:aigammon_app/engine/gnubg_installer.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'GNUbg installation repairs same-size corrupted networks before initialization',
    () async {
      final directory = await Directory.systemTemp.createTemp('gnubg-assets-');
      Future<ByteData> read(String path) async =>
          ByteData.sublistView(await File(path).readAsBytes());
      try {
        await GnuBgInstaller.ensureInstalledTo(directory, read);
        final file = File('${directory.path}/gnubg.wd');
        final original = await file.readAsBytes();
        final damaged = Uint8List.fromList(original)..[100] ^= 0xff;
        await file.writeAsBytes(damaged);
        await GnuBgInstaller.ensureInstalledTo(directory, read);
        expect(await file.readAsBytes(), original);
      } finally {
        await directory.delete(recursive: true);
      }
    },
  );
  test(
    'a corrupted bundled network fails without producing a native input file',
    () async {
      final directory = await Directory.systemTemp.createTemp('gnubg-invalid-');
      try {
        await expectLater(
          GnuBgInstaller.ensureInstalledTo(
            directory,
            (path) async => ByteData(10),
          ),
          throwsStateError,
        );
        expect(await File('${directory.path}/gnubg.wd').exists(), isFalse);
      } finally {
        await directory.delete(recursive: true);
      }
    },
  );
}
