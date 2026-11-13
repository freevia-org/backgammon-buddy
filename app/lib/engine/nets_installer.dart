import 'dart:io';

import 'package:flutter/services.dart' show ByteData, Uint8List, rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Reads a bundled asset's bytes. Injectable so [NetsInstaller.ensureInstalledTo]
/// is testable without the Flutter asset system.
typedef AssetReader = Future<ByteData> Function(String key);

/// Ensures the neural nets exist as real files on disk.
///
/// tract (the ONNX runtime inside wildbg) loads nets from filesystem paths, not
/// from memory, so Flutter assets — which live inside the app bundle — must be
/// materialised to a real directory before [EngineService.spawn] can point the
/// native engine at them.
class NetsInstaller {
  NetsInstaller._();

  /// Asset keys as declared in `pubspec.yaml` (`assets/nets/`).
  static const _assets = [
    'assets/nets/contact.onnx',
    'assets/nets/race.onnx',
  ];

  /// Relative path from a dev checkout root to the repo's production nets.
  static const _repoNetsRelative = 'native/wildbg-nets/neural-nets';

  /// How many parent directories to walk searching for the repo nets dir.
  static const _repoWalkUpLevels = 4;

  /// Copies the bundled nets into [targetDir], returning [targetDir]'s path.
  ///
  /// The directory is created recursively if missing. For each asset the
  /// destination filename is the asset's basename (e.g. `contact.onnx`). A copy
  /// is skipped when the destination already holds exactly the asset's bytes,
  /// which avoids rewriting ~1.5 MB on every launch.
  ///
  /// The comparison is on CONTENT, not length: a retrained net of the same
  /// architecture serializes to the same number of bytes, so a length check
  /// would leave an app upgrade evaluating with the previous release's nets
  /// for good. The asset is already in memory here, so the compare costs one
  /// read of a file the engine is about to read anyway.
  ///
  /// A replacement is written beside the destination and renamed over it, so
  /// an interrupted install leaves the old file or the new one — never a
  /// truncated net for the native loader to open.
  static Future<String> ensureInstalledTo(
      Directory targetDir, AssetReader readAsset) async {
    await targetDir.create(recursive: true);
    for (final assetKey in _assets) {
      final data = await readAsset(assetKey);
      final bytes = data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      );
      final dest = File(p.join(targetDir.path, p.basename(assetKey)));
      if (await dest.exists() &&
          await dest.length() == bytes.length &&
          _sameBytes(await dest.readAsBytes(), bytes)) {
        continue;
      }
      final temp = File('${dest.path}.tmp');
      await temp.writeAsBytes(bytes, flush: true);
      await temp.rename(dest.path);
    }
    return targetDir.path;
  }

  static bool _sameBytes(Uint8List a, Uint8List b) {
    if (a.length != b.length) return false;
    for (var i = 0; i < a.length; i++) {
      if (a[i] != b[i]) return false;
    }
    return true;
  }

  /// Resolves a real nets directory for the running platform.
  ///
  /// On a desktop dev checkout (Windows/Linux/macOS) the repo already holds the
  /// production nets, so we use them in place — no copy — when
  /// `native/wildbg-nets/neural-nets` is found by walking up from
  /// [Directory.current] (up to [_repoWalkUpLevels] levels; the app runs from
  /// `app/`, tests from various depths). Otherwise (packaged desktop app, or
  /// Android/iOS where there is no checkout) the bundled assets are copied into
  /// the application-support directory via [getApplicationSupportDirectory].
  static Future<String> ensureInstalled() async {
    final repoDir = _findRepoNetsDir();
    if (repoDir != null) return repoDir.path;

    final support = await getApplicationSupportDirectory();
    final netsDir = Directory(p.join(support.path, 'nets'));
    return ensureInstalledTo(netsDir, rootBundle.load);
  }

  /// Walks up from [Directory.current] looking for the repo nets directory.
  /// Returns it only when it contains both nets; null otherwise.
  static Directory? _findRepoNetsDir() {
    var dir = Directory.current;
    for (var i = 0; i <= _repoWalkUpLevels; i++) {
      final candidate = Directory(p.join(dir.path, _repoNetsRelative));
      if (candidate.existsSync() &&
          File(p.join(candidate.path, 'contact.onnx')).existsSync() &&
          File(p.join(candidate.path, 'race.onnx')).existsSync()) {
        return candidate;
      }
      final parent = dir.parent;
      if (parent.path == dir.path) break; // reached filesystem root
      dir = parent;
    }
    return null;
  }
}
