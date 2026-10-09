import 'package:aigammon_app/screens/game/tutor_panel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Widget panel({
    required Size size,
    double textScale = 1,
    VoidCallback? onSettings,
    bool history = false,
    bool canRoll = true,
  }) {
    var expanded = false;
    return MaterialApp(
      home: MediaQuery(
        data: MediaQueryData(
          size: size,
          textScaler: TextScaler.linear(textScale),
        ),
        child: Scaffold(
          body: StatefulBuilder(
            builder: (context, setState) => Stack(
              children: [
                const Positioned.fill(
                  child: ColoredBox(
                    key: ValueKey('board'),
                    color: Colors.brown,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: size.height - 64),
                    child: TutorPanel(
                      expanded: expanded,
                      onExpandedChanged: (value) =>
                          setState(() => expanded = value),
                      onOpenSettings: onSettings ?? () {},
                      prompt: const Text('Good move', key: ValueKey('verdict')),
                      rollActionWidth: textScale > 1.4 ? 112 : 80,
                      rollAction: FilledButton(
                        onPressed: canRoll ? () {} : null,
                        child: const Text('Roll'),
                      ),
                      leading: history
                          ? TextButton(
                              onPressed: () {},
                              child: const Text('Live'),
                            )
                          : null,
                      summary: const Text(
                        'Making a point protects both checkers and makes '
                        're-entry harder for your opponent.',
                        key: ValueKey('reason'),
                      ),
                      details: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          24,
                          (i) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Text('Alternative $i: compare this play'),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> setSize(WidgetTester t, Size size) async {
    t.view.physicalSize = size;
    t.view.devicePixelRatio = 1;
    addTearDown(t.view.resetPhysicalSize);
    addTearDown(t.view.resetDevicePixelRatio);
  }

  testWidgets('one surface grows upward with summary unchanged', (t) async {
    const size = Size(360, 640);
    await setSize(t, size);
    await t.pumpWidget(panel(size: size));
    final surface = find.byKey(const ValueKey('tutorPanel'));
    final summary = find.byKey(const ValueKey('tutorPanelSummary'));
    final board = t.getRect(find.byKey(const ValueKey('board')));
    final collapsed = t.getRect(surface);
    final summaryOffset = t.getTopLeft(summary) - collapsed.topLeft;

    expect(collapsed.height, 128);
    expect(find.text('Tutor:'), findsOneWidget);
    expect(t.getCenter(find.text('Tutor:')).dx, lessThan(100));
    expect(find.byIcon(Icons.school_outlined), findsOneWidget);
    final grip = t.getRect(find.byKey(const ValueKey('tutorPanelGrip')));
    expect(grip.center.dx, collapsed.center.dx);
    expect(grip.top, lessThan(collapsed.top + 12));
    final labelOffset = t.getTopLeft(find.text('Tutor:')) - collapsed.topLeft;
    expect(find.byKey(const ValueKey('tutorPanelDetails')), findsNothing);
    expect(find.byTooltip('Tutoring options'), findsNothing);
    final roll = t.getRect(find.widgetWithText(FilledButton, 'Roll'));
    expect(collapsed.contains(roll.center), isTrue);
    expect(roll.right, collapsed.right - 12);

    await t.tap(find.text('Tutor:'));
    await t.pump();
    await t.pump(const Duration(milliseconds: 80));
    expect(t.getSize(surface).height, greaterThan(128));
    expect(t.getSize(surface).height, lessThan(320));
    expect(t.takeException(), isNull);
    await t.pumpAndSettle();

    final expanded = t.getRect(surface);
    expect(expanded.height, 320);
    expect(expanded.bottom, collapsed.bottom);
    expect(t.getTopLeft(summary) - expanded.topLeft, summaryOffset);
    expect(t.getTopLeft(find.text('Tutor:')) - expanded.topLeft, labelOffset);
    expect(t.getRect(find.byKey(const ValueKey('board'))), board);
    expect(t.getRect(find.widgetWithText(FilledButton, 'Roll')), roll);
    expect(find.text('Good move'), findsOneWidget);
    expect(find.byKey(const ValueKey('reason')), findsOneWidget);
    expect(find.byTooltip('Tutoring options'), findsOneWidget);

    await t.tap(find.text('Tutor:'));
    await t.pumpAndSettle();
    expect(t.getRect(surface), collapsed);
    expect(find.byTooltip('Tutoring options'), findsNothing);
    expect(t.takeException(), isNull);
  });

  testWidgets('center grip expands and collapses; settings only expanded', (
    t,
  ) async {
    const size = Size(360, 640);
    await setSize(t, size);
    var settingsOpened = 0;
    await t.pumpWidget(panel(size: size, onSettings: () => settingsOpened++));
    final handle = find.byKey(const ValueKey('tutorPanelHandle'));
    await t.drag(handle, const Offset(0, -60));
    await t.pumpAndSettle();
    expect(find.byTooltip('Tutoring options'), findsOneWidget);
    await t.tap(find.byTooltip('Tutoring options'));
    expect(settingsOpened, 1);

    await t.drag(handle, const Offset(0, 60));
    await t.pumpAndSettle();
    expect(find.byTooltip('Tutoring options'), findsNothing);
    expect(t.getSize(find.byKey(const ValueKey('tutorPanel'))).height, 128);
    expect(t.takeException(), isNull);
  });

  testWidgets('upward drag on collapsed summary opens details', (t) async {
    const size = Size(360, 640);
    await setSize(t, size);
    await t.pumpWidget(panel(size: size));
    await t.drag(
      find.byKey(const ValueKey('tutorPanelSummaryScroll')),
      const Offset(0, -60),
    );
    await t.pumpAndSettle();
    expect(find.byKey(const ValueKey('tutorPanelDetails')), findsOneWidget);
    expect(t.getSize(find.byKey(const ValueKey('tutorPanel'))).height, 320);
    expect(t.takeException(), isNull);
  });

  for (final size in [const Size(320, 568), const Size(640, 320)]) {
    testWidgets('compact $size and large text retain scrollable content', (
      t,
    ) async {
      await setSize(t, size);
      await t.pumpWidget(
        panel(size: size, textScale: 2, history: true, canRoll: false),
      );
      expect(t.takeException(), isNull);
      expect(find.text('Live').hitTestable(), findsOneWidget);
      final roll = find.widgetWithText(FilledButton, 'Roll');
      expect(t.widget<FilledButton>(roll).onPressed, isNull);
      final rollRect = t.getRect(roll);
      final summary = find.byKey(const ValueKey('tutorPanelSummaryScroll'));
      await t.drag(summary, const Offset(0, -70));
      await t.pumpAndSettle();
      expect(t.takeException(), isNull);
      expect(find.byKey(const ValueKey('tutorPanelDetails')), findsOneWidget);
      expect(t.takeException(), isNull);
      final surface = t.getRect(find.byKey(const ValueKey('tutorPanel')));
      expect(surface.top, greaterThanOrEqualTo(0));
      expect(surface.bottom, size.height);
      expect(t.getRect(roll), rollRect);
      expect(find.text('Live').hitTestable(), findsOneWidget);
      final details = find.byKey(const ValueKey('tutorPanelDetails'));
      final scrollable = find.descendant(
        of: details,
        matching: find.byType(Scrollable),
      );
      await t.scrollUntilVisible(
        find.text('Alternative 23: compare this play'),
        150,
        scrollable: scrollable,
        maxScrolls: 30,
      );
      expect(
        find.text('Alternative 23: compare this play').hitTestable(),
        findsOneWidget,
      );
      expect(t.takeException(), isNull);
    });
  }
}
