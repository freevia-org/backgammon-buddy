import 'dart:io';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  final output = Platform.environment['STORE_SCREENSHOT_DIR'];
  if (output == null) throw StateError('Set STORE_SCREENSHOT_DIR');
  await integrationDriver(
    onScreenshot: (name, bytes, [args]) async {
      final directory = Directory(output);
      await directory.create(recursive: true);
      await File('${directory.path}/$name.png').writeAsBytes(bytes);
      return true;
    },
  );
}
