// Native platform checks. The three share cases require a reviewer to dismiss
// the real iOS share sheet; no recipient or share destination is selected.
import 'dart:convert';

import 'package:aigammon_app/diagnostics/crash_log.dart';
import 'package:aigammon_app/export/backgammon_match_export.dart';
import 'package:aigammon_app/export/extreme_gammon_export.dart';
import 'package:aigammon_app/export/jellyfish_mat_export.dart';
import 'package:aigammon_app/lan/qr_scanner.dart';
import 'package:aigammon_app/screens/diagnostics_screen.dart';
import 'package:backgammon_core/backgammon_core.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

ExportableMatch _match() {
  var game = Game.start(const OpeningRollEvent(whiteDie: 6, blackDie: 1));
  game = game.append(MoveEvent(Player.white, game.state.legalMoves.first));
  game = game.append(const DoubleEvent(Player.black));
  game = game.append(const DropEvent(Player.white));
  return ExportableMatch(
    whitePlayer: 'Simulator White',
    blackPlayer: 'Simulator Black',
    length: 3,
    games: [
      ExportableGame(
        number: 1,
        whiteScore: 0,
        blackScore: 0,
        isCrawford: false,
        events: game.events,
        result: game.state.result,
      ),
    ],
  );
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('native HTTPS browser handoff is available', (t) async {
    expect(
      await canLaunchUrl(
        Uri.https('github.com', '/freevia-org/backgammon-buddy/issues/new'),
      ),
      isTrue,
    );
  });

  testWidgets('diagnostics copies through the real iOS clipboard', (t) async {
    final log = CrashLog()..record('Simulator clipboard check', source: 'test');
    await t.pumpWidget(MaterialApp(home: DiagnosticsScreen(log: log)));
    await t.tap(find.byTooltip('Copy to clipboard'));
    await t.pumpAndSettle();
    final data = await Clipboard.getData(Clipboard.kTextPlain);
    expect(data?.text, contains('Simulator clipboard check'));
    expect(data?.text, contains('test'));
    expect(t.takeException(), isNull);
  });

  testWidgets('real simulator camera failure offers manual QR fallback', (
    t,
  ) async {
    // Prove the actual native plugin responds, rather than accepting a
    // MissingPluginException as a generic camera failure.
    expect(await t.runAsync(availableCameras), isEmpty);
    QrScanOutcome? outcome;
    await t.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => Scaffold(
            body: TextButton(
              onPressed: () async {
                outcome = await const CameraQrScanner().scan(context);
              },
              child: const Text('Scan'),
            ),
          ),
        ),
      ),
    );
    await t.tap(find.text('Scan'));
    for (
      var i = 0;
      i < 200 && find.text('Enter the address instead').evaluate().isEmpty;
      i++
    ) {
      await t.pump(const Duration(milliseconds: 50));
      await Future<void>.delayed(const Duration(milliseconds: 25));
    }
    expect(find.text('Enter the address instead'), findsOneWidget);
    await t.pumpAndSettle();
    await t.ensureVisible(find.text('Enter the address instead'));
    await t.tap(find.text('Enter the address instead'));
    await t.pumpAndSettle();
    expect(outcome, isA<QrScanUnavailable>());
    expect((outcome as QrScanUnavailable).message, isNotEmpty);
    expect(t.takeException(), isNull);
  });

  for (final format in ['sgf', 'mat', 'xg']) {
    testWidgets(
      'native $format export share sheet dismisses cleanly',
      (t) async {
        await t.pumpWidget(
          MaterialApp(home: Scaffold(body: Text('Share $format'))),
        );
        final match = _match();
        final bytes = switch (format) {
          'sgf' => utf8.encode(exportMatchSgf(match)),
          'mat' => utf8.encode(exportMatchMat(match)),
          _ => exportMatchXg(match),
        };
        expect(bytes, isNotEmpty);
        // Keep file creation and plugin presentation identical to match history.
        final result = await SharePlus.instance.share(
          ShareParams(
            files: [
              XFile.fromData(
                Uint8List.fromList(bytes),
                mimeType: 'application/octet-stream',
              ),
            ],
            fileNameOverrides: ['simulator-match.$format'],
          ),
        );
        expect(result.status, ShareResultStatus.dismissed);
        // Keep a clear interval for reviewing the dismissed native hierarchy
        // before the next sheet. These cases are explicitly manual opt-in.
        await t.pump(const Duration(seconds: 10));
        expect(t.takeException(), isNull);
      },
      timeout: const Timeout(Duration(minutes: 3)),
      skip: !const bool.fromEnvironment('AIGAMMON_MANUAL_SHARE'),
    );
  }
}
