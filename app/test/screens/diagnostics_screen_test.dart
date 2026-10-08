import 'package:aigammon_app/diagnostics/crash_log.dart';
import 'package:aigammon_app/branding/app_version.dart';
import 'package:aigammon_app/feedback/feedback_link.dart';
import 'package:aigammon_app/screens/diagnostics_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Future<void> pump(WidgetTester tester, CrashLog log) =>
      tester.pumpWidget(MaterialApp(home: DiagnosticsScreen(log: log)));

  testWidgets('an empty log says so and disables the actions', (tester) async {
    await pump(tester, CrashLog());
    expect(find.textContaining('No errors recorded'), findsOneWidget);

    final copy = tester
        .widget<IconButton>(find.widgetWithIcon(IconButton, Icons.copy_all));
    expect(copy.onPressed, isNull,
        reason: 'copying an empty log would paste nothing useful');
  });

  testWidgets('errors are listed newest first, with the stack', (tester) async {
    final log = CrashLog()
      ..record('older failure')
      ..record('newest failure', stack: StackTrace.fromString('#0 aFrame'));

    await pump(tester, log);

    expect(find.text('newest failure'), findsOneWidget);
    expect(find.text('older failure'), findsOneWidget);
    expect(find.textContaining('aFrame'), findsOneWidget);

    // Newest first: the newest entry sits above the older one on screen.
    final newest = tester.getTopLeft(find.text('newest failure')).dy;
    final older = tester.getTopLeft(find.text('older failure')).dy;
    expect(newest, lessThan(older));
  });

  testWidgets('copy puts the shareable report on the clipboard',
      (tester) async {
    final clipboard = <MethodCall>[];
    tester.binding.defaultBinaryMessenger.setMockMethodCallHandler(
      SystemChannels.platform,
      (call) async {
        if (call.method == 'Clipboard.setData') clipboard.add(call);
        return null;
      },
    );
    addTearDown(() => tester.binding.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null));

    final log = CrashLog()..record(StateError('copy me'), source: 'flutter');
    await pump(tester, log);

    await tester.tap(find.widgetWithIcon(IconButton, Icons.copy_all));
    await tester.pumpAndSettle();

    expect(clipboard, hasLength(1));
    final text = (clipboard.single.arguments as Map)['text'] as String;
    expect(text, contains('copy me'));
    expect(text, contains('flutter'));
    expect(find.text('Diagnostics copied to clipboard'), findsOneWidget);
  });

  testWidgets('clear empties the log and the list', (tester) async {
    final log = CrashLog()..record('goes away');
    await pump(tester, log);

    await tester.tap(find.widgetWithIcon(IconButton, Icons.delete_outline));
    await tester.pumpAndSettle();

    expect(log.entries, isEmpty);
    expect(find.text('goes away'), findsNothing);
    expect(find.textContaining('No errors recorded'), findsOneWidget);
  });

  testWidgets('cancelling the local report preview never opens a URL',
      (tester) async {
    final opened = <Uri>[];
    await tester.pumpWidget(MaterialApp(
      home: DiagnosticsScreen(
        log: CrashLog()..record('private error'),
        openUrl: (uri) async {
          opened.add(uri);
          return true;
        },
      ),
    ));
    await tester.tap(find.byTooltip('Report an issue on GitHub'));
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    expect(find.textContaining('Opening the draft sends'), findsOneWidget);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    expect(find.byType(AlertDialog), findsNothing);
  });

  testWidgets('confirmation sends exactly the truncated report previewed',
      (tester) async {
    final opened = <Uri>[];
    final log = CrashLog()
      ..record('diagnostic ${'x' * 2000}',
          stack: StackTrace.fromString('#0 sampleStack'));
    final expected = buildFeedbackIssueUri(
      appVersion: appVersion,
      platform: currentPlatformName(),
      diagnosticsExcerpt: log.asText(),
    );
    await tester.pumpWidget(MaterialApp(
      home: DiagnosticsScreen(
        log: log,
        openUrl: (uri) async {
          opened.add(uri);
          return true;
        },
      ),
    ));
    await tester.tap(find.byTooltip('Report an issue on GitHub'));
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    final preview = tester.widget<SelectableText>(find.descendant(
      of: find.byType(AlertDialog),
      matching: find.byType(SelectableText),
    ));
    expect(preview.data,
        '${expected.queryParameters['title']}\n\n${expected.queryParameters['body']}');
    expect(preview.data, contains('(truncated'));
    log.record('new error after the review opened');
    await tester.tap(find.text('Open GitHub'));
    await tester.pumpAndSettle();
    expect(opened, [expected]);
    expect(opened.single.queryParameters['body'],
        isNot(contains('new error after the review opened')));
  });

  testWidgets('report preview scrolls on a small phone with large text',
      (tester) async {
    tester.view.physicalSize = const Size(320, 568);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    final opened = <Uri>[];
    await tester.pumpWidget(MaterialApp(
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context)
            .copyWith(textScaler: const TextScaler.linear(2)),
        child: child!,
      ),
      home: DiagnosticsScreen(
        log: CrashLog()..record('long detail\n' * 150),
        openUrl: (uri) async {
          opened.add(uri);
          return true;
        },
      ),
    ));
    await tester.tap(find.byTooltip('Report an issue on GitHub'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(opened, isEmpty);
    expect(tester.takeException(), isNull);
  });
}
