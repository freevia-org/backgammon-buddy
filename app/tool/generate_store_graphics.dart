// Run from app/: flutter test tool/generate_store_graphics.dart
// Uses the app's existing painter and the Flutter SDK's bundled Roboto fonts.
// These are store artwork, not screenshots or simulated app interfaces.
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:aigammon_app/branding/app_mark.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('generate Backgammon Buddy Play artwork', () async {
    TestWidgetsFlutterBinding.ensureInitialized();
    final root = Platform.environment['FLUTTER_ROOT'];
    if (root == null) throw StateError('Run through flutter test.');
    for (final weight in ['regular', 'bold']) {
      final loader = FontLoader('StoreRoboto-$weight');
      loader.addFont(
        Future.value(
          ByteData.sublistView(
            await File(
              '$root/bin/cache/artifacts/material_fonts/roboto-$weight.ttf',
            ).readAsBytes(),
          ),
        ),
      );
      await loader.load();
    }
    final dir = Directory('../docs/store-assets')..createSync(recursive: true);
    await _render('${dir.path}/play-icon.png', 512, 512, (canvas) {
      const AppMarkPainter(
        cornerRadiusFraction: 0,
      ).paint(canvas, const Size.square(512));
    });
    await _render('${dir.path}/play-feature.png', 1024, 500, (canvas) {
      const bounds = Rect.fromLTWH(0, 0, 1024, 500);
      canvas.drawRect(
        bounds,
        Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff120e0c), Color(0xff2c211a)],
          ).createShader(bounds),
      );
      canvas.drawCircle(
        const Offset(795, 240),
        310,
        Paint()
          ..shader = const RadialGradient(
            colors: [Color(0x334b3120), Color(0x004b3120)],
          ).createShader(const Rect.fromLTWH(485, -70, 620, 620)),
      );
      _text(
        canvas,
        'FREEVIA',
        const Offset(64, 58),
        15,
        const Color(0xffe2b26c),
        bold: true,
        spacing: 3,
      );
      _text(
        canvas,
        'Backgammon\nBuddy',
        const Offset(60, 111),
        62,
        const Color(0xfffff8ec),
        bold: true,
        height: 1.04,
      );
      canvas.drawRect(
        const Rect.fromLTWH(64, 291, 42, 3),
        Paint()..color = const Color(0xffd53739),
      );
      _text(
        canvas,
        'Play the position.\nLearn the reason.',
        const Offset(64, 322),
        27,
        const Color(0xffe2b26c),
        height: 1.3,
      );
      canvas.save();
      canvas.translate(766, 250);
      canvas.rotate(-0.055);
      canvas.translate(-170, -170);
      const AppMarkPainter(
        cornerRadiusFraction: 0.09,
      ).paint(canvas, const Size.square(340));
      canvas.restore();
    }, rgb: true);
  });
}

void _text(
  Canvas canvas,
  String text,
  Offset at,
  double size,
  Color color, {
  bool bold = false,
  double height = 1,
  double spacing = 0,
}) {
  final painter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: 'StoreRoboto-${bold ? 'bold' : 'regular'}',
        fontSize: size,
        color: color,
        height: height,
        letterSpacing: spacing,
      ),
    ),
    textDirection: TextDirection.ltr,
  )..layout();
  painter.paint(canvas, at);
  painter.dispose();
}

Future<void> _render(
  String path,
  int width,
  int height,
  void Function(Canvas) draw, {
  bool rgb = false,
}) async {
  final recorder = ui.PictureRecorder();
  draw(Canvas(recorder));
  final picture = recorder.endRecording();
  final image = await picture.toImage(width, height);
  picture.dispose();
  final bytes = rgb
      ? _rgbPng(
          width,
          height,
          (await image.toByteData(format: ui.ImageByteFormat.rawRgba))!,
        )
      : (await image.toByteData(
          format: ui.ImageByteFormat.png,
        ))!.buffer.asUint8List();
  image.dispose();
  File(path).writeAsBytesSync(bytes);
  expect(bytes.length, lessThan(1024 * 1024));
  // ignore: avoid_print
  print('Wrote $path ($width x $height; ${bytes.length} bytes)');
}

// Play requires a 24-bit feature PNG with no alpha channel. Encoding RGB from
// the canvas avoids adding an imaging dependency just to drop opaque alpha.
Uint8List _rgbPng(int width, int height, ByteData rgba) {
  final rows = BytesBuilder();
  for (var y = 0; y < height; y++) {
    rows.addByte(0); // PNG scanline filter: none.
    for (var x = 0; x < width; x++) {
      final offset = (y * width + x) * 4;
      expect(rgba.getUint8(offset + 3), 255);
      rows.add([
        rgba.getUint8(offset),
        rgba.getUint8(offset + 1),
        rgba.getUint8(offset + 2),
      ]);
    }
  }
  final header = ByteData(13)
    ..setUint32(0, width)
    ..setUint32(4, height)
    ..setUint8(8, 8)
    ..setUint8(9, 2);
  final png = BytesBuilder()..add([137, 80, 78, 71, 13, 10, 26, 10]);
  void chunk(String type, List<int> data) {
    final body = Uint8List.fromList([...type.codeUnits, ...data]);
    var crc = 0xffffffff;
    for (final byte in body) {
      crc ^= byte;
      for (var bit = 0; bit < 8; bit++) {
        crc = (crc >>> 1) ^ ((crc & 1) == 1 ? 0xedb88320 : 0);
      }
    }
    png.add((ByteData(4)..setUint32(0, data.length)).buffer.asUint8List());
    png.add(body);
    png.add((ByteData(4)..setUint32(0, crc ^ 0xffffffff)).buffer.asUint8List());
  }

  chunk('IHDR', header.buffer.asUint8List());
  chunk('IDAT', ZLibEncoder().convert(rows.takeBytes()));
  chunk('IEND', []);
  return png.takeBytes();
}
