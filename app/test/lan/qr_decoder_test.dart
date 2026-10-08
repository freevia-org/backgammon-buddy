import 'dart:math';
import 'dart:typed_data';

import 'package:aigammon_app/lan/qr_decoder.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:qr_flutter/qr_flutter.dart';

const payload = 'aigammon://join?v=1&h=192.168.1.25&p=47780&c=1234';

/// Generate with the independent encoder used by the actual Host screen.
QrLuminanceFrame fixture(String text,
    {int turns = 0, bool unevenLight = false}) {
  final qr = QrImage(
      QrCode.fromData(data: text, errorCorrectLevel: QrErrorCorrectLevel.M));
  const scale = 5;
  final size = (qr.moduleCount + 8) * scale;
  final bytes = Uint8List(size * size);
  for (var y = 0; y < size; y++) {
    for (var x = 0; x < size; x++) {
      final mx = x ~/ scale - 4;
      final my = y ~/ scale - 4;
      final dark = mx >= 0 &&
          my >= 0 &&
          mx < qr.moduleCount &&
          my < qr.moduleCount &&
          qr.isDark(my, mx);
      var tx = x, ty = y;
      for (var i = 0; i < turns; i++) {
        final old = tx;
        tx = size - 1 - ty;
        ty = old;
      }
      bytes[ty * size + tx] = dark
          ? (unevenLight ? 20 + x * 35 ~/ size : 0)
          : (unevenLight ? 170 + x * 70 ~/ size : 255);
    }
  }
  return QrLuminanceFrame.fromPlane(
      width: size, height: size, bytes: bytes, rowStride: size)!;
}

void main() {
  for (var rotation = 0; rotation < 4; rotation++) {
    test('decodes host QR at ${rotation * 90} degrees with uneven illumination',
        () {
      expect(
          decodeQrFrame(fixture(payload, turns: rotation, unevenLight: true)),
          payload);
    });
  }

  test('Y plane respects row padding and pixel stride without reading padding',
      () {
    final original = fixture(payload);
    final stride = original.width * 2 + 17;
    final bytes = Uint8List(stride * original.height)
      ..fillRange(0, stride * original.height, 100);
    for (var y = 0; y < original.height; y++) {
      for (var x = 0; x < original.width; x++) {
        bytes[y * stride + x * 2] =
            original.pixels[y * original.width + x] & 255;
      }
    }
    final frame = QrLuminanceFrame.fromPlane(
        width: original.width,
        height: original.height,
        bytes: bytes,
        rowStride: stride,
        pixelStride: 2)!;
    expect(decodeQrFrame(frame), payload);
  });

  test('BGRA camera frame respects row stride and ignores alpha', () {
    final original = fixture(payload);
    final stride = original.width * 4 + 32;
    final bytes = Uint8List(stride * original.height);
    for (var y = 0; y < original.height; y++) {
      for (var x = 0; x < original.width; x++) {
        final offset = y * stride + x * 4;
        final luminance = original.pixels[y * original.width + x] & 255;
        bytes.setRange(
            offset, offset + 4, [luminance, luminance, luminance, x % 256]);
      }
    }
    expect(
        decodeQrFrame(QrLuminanceFrame.fromPlane(
            width: original.width,
            height: original.height,
            bytes: bytes,
            rowStride: stride,
            pixelStride: 4,
            bgra: true)!),
        payload);
  });

  test('copies and bounds native buffers before decoding', () {
    final bytes = Uint8List(1280 * 960)..fillRange(0, 1280 * 960, 200);
    final frame = QrLuminanceFrame.fromPlane(
        width: 1280, height: 960, bytes: bytes, rowStride: 1280)!;
    bytes.fillRange(0, bytes.length, 0);
    expect(frame.width, 640);
    expect(frame.height, 480);
    expect(frame.pixels.first & 255, 200);
  });

  test('invalid geometry and truncated camera planes are rejected', () {
    for (final width in [-1, 0, 8193]) {
      expect(
          QrLuminanceFrame.fromPlane(
              width: width, height: 1, bytes: Uint8List(1), rowStride: 1),
          isNull);
    }
    expect(
        QrLuminanceFrame.fromPlane(
            width: 30, height: 30, bytes: Uint8List(899), rowStride: 30),
        isNull);
    expect(
        QrLuminanceFrame.fromPlane(
            width: 30, height: 30, bytes: Uint8List(900), rowStride: 29),
        isNull);
    expect(
        QrLuminanceFrame.fromPlane(
            width: 1, height: 1, bytes: Uint8List(4), rowStride: 4, bgra: true),
        isNull);
  });

  test('blank, noise and occluded frames do not produce a join code', () {
    final random = Random(7);
    for (final pixels in [
      Int8List(200 * 200),
      Int8List.fromList(List.generate(200 * 200, (_) => random.nextInt(256)))
    ]) {
      expect(decodeQrFrame(QrLuminanceFrame(200, 200, pixels)), isNull);
    }
    final obscured = fixture(payload);
    obscured.pixels.fillRange(0, obscured.pixels.length ~/ 2, -1);
    expect(decodeQrFrame(obscured), isNull);
  });

  test('foreign text remains untrusted for the existing payload validator', () {
    expect(
        decodeQrFrame(fixture('https://example.org/')), 'https://example.org/');
  });
}
