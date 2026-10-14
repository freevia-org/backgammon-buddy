import 'dart:io';
import 'package:crypto/crypto.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'nets_installer.dart';

/// Validates immutable upstream assets before native initialization. Installing
/// uses a versioned directory and atomic rename, never a partially written net.
class GnuBgInstaller {
  static const assets = <String, String>{
    'gnubg.wd':
        'bb045bb416c70706ba34ad64595af2b43cac3722560b6ab01829eb719417153b',
    'gnubg_os0.bd':
        '38089567e87a681682bb4ff53f30d781af215fc04debbdff3f61b6db68547a49',
    'gnubg_ts0.bd':
        '9eac8a2c697dae8a09f2e5653022084b9e725df6c32950cb5299b273fc64500f',
    'kazaross-xg2.xml':
        '7a232b171744b8db34306d11cff79a5974541328bb033b6bf16c012e8f7a3cc3',
  };
  static Future<String>? _installing;
  static Future<String> ensureInstalled() => _installing ??= _install();
  static Future<String> _install() async {
    try {
      final support = await getApplicationSupportDirectory();
      return await ensureInstalledTo(
        Directory(p.join(support.path, 'gnubg-1.08.003')),
        rootBundle.load,
      );
    } catch (_) {
      _installing = null;
      rethrow;
    }
  }

  static Future<String> ensureInstalledTo(
    Directory directory,
    AssetReader read,
  ) async {
    await directory.create(recursive: true);
    for (final entry in assets.entries) {
      final file = File(p.join(directory.path, entry.key));
      if (await file.exists() &&
          sha256.convert(await file.readAsBytes()).toString() == entry.value) {
        continue;
      }
      final data = await read('assets/gnubg/${entry.key}');
      final bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );
      if (sha256.convert(bytes).toString() != entry.value) {
        throw StateError('Invalid GNUbg asset: ${entry.key}');
      }
      final temp = File('${file.path}.tmp');
      await temp.writeAsBytes(bytes, flush: true);
      if (await file.exists()) await file.delete();
      await temp.rename(file.path);
    }
    return directory.path;
  }
}
