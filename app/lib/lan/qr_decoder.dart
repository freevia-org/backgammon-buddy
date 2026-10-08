import 'dart:math' as math;
import 'dart:typed_data';

import 'package:zxing2/qrcode.dart';

/// A bounded, copied luminance plane. It contains no camera/plugin handles and
/// can be sent to the decoder isolate without retaining a native frame buffer.
class QrLuminanceFrame {
  const QrLuminanceFrame(this.width, this.height, this.pixels);

  final int width;
  final int height;
  final Int8List pixels;

  /// Handles row padding and pixel stride; BGRA is used by the iOS camera.
  /// Invalid/truncated frames are rejected before indexing any sample.
  static QrLuminanceFrame? fromPlane({
    required int width,
    required int height,
    required Uint8List bytes,
    required int rowStride,
    int pixelStride = 1,
    bool bgra = false,
  }) {
    final sampleBytes = bgra ? 4 : 1;
    if (width <= 0 ||
        height <= 0 ||
        width > 8192 ||
        height > 8192 ||
        pixelStride < sampleBytes ||
        rowStride < (width - 1) * pixelStride + sampleBytes ||
        bytes.length <
            (height - 1) * rowStride +
                (width - 1) * pixelStride +
                sampleBytes) {
      return null;
    }
    final step = math.max(1, (math.max(width, height) / 640).ceil());
    final outWidth = (width + step - 1) ~/ step;
    final outHeight = (height + step - 1) ~/ step;
    final pixels = Int8List(outWidth * outHeight);
    for (var y = 0; y < outHeight; y++) {
      for (var x = 0; x < outWidth; x++) {
        final offset = y * step * rowStride + x * step * pixelStride;
        pixels[y * outWidth + x] = bgra
            ? (bytes[offset + 2] + 2 * bytes[offset + 1] + bytes[offset]) ~/ 4
            : bytes[offset];
      }
    }
    return QrLuminanceFrame(outWidth, outHeight, pixels);
  }
}

class _FrameSource extends LuminanceSource {
  _FrameSource(this.frame) : super(frame.width, frame.height);
  final QrLuminanceFrame frame;

  @override
  Int8List getMatrix() => frame.pixels;

  @override
  Int8List getRow(int y, Int8List? row) {
    final result = row == null || row.length < width ? Int8List(width) : row;
    result.setRange(0, width, frame.pixels, y * width);
    return result;
  }
}

/// QR detection handles finder-pattern rotation itself. No image, decoded text,
/// usage metric or model request leaves this process.
String? decodeQrFrame(QrLuminanceFrame frame) {
  if (frame.width <= 0 ||
      frame.height <= 0 ||
      frame.width > 640 ||
      frame.height > 640 ||
      frame.pixels.length != frame.width * frame.height) {
    return null;
  }
  try {
    return QRCodeReader()
        .decode(BinaryBitmap(HybridBinarizer(_FrameSource(frame))))
        .text;
  } on ReaderException {
    return null; // No readable QR in this frame is an ordinary camera result.
  }
}
