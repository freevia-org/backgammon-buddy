import 'dart:math' as math;

import 'package:flutter/material.dart';

/// One continuous tutor surface, bottom-anchored by its caller above the actions.
///
/// Reserve [collapsedHeight] in the game layout and place this widget in a Stack
/// with a fixed bottom edge. Expansion then covers the board instead of resizing
/// it. The header and summary retain their space while details open below them.
class TutorPanel extends StatefulWidget {
  const TutorPanel({
    super.key,
    required this.expanded,
    required this.onExpandedChanged,
    required this.summary,
    required this.details,
    required this.onOpenSettings,
    this.leading,
    this.collapsedHeight = 132,
    this.expandedHeight = 320,
  }) : assert(collapsedHeight >= headerHeight),
       assert(expandedHeight >= collapsedHeight);

  static const double headerHeight = 48;

  final bool expanded;
  final ValueChanged<bool> onExpandedChanged;
  final Widget summary;
  final Widget details;
  final VoidCallback onOpenSettings;

  /// Optional persistent header action, such as returning from history to live.
  final Widget? leading;
  final double collapsedHeight;
  final double expandedHeight;

  @override
  State<TutorPanel> createState() => _TutorPanelState();
}

class _TutorPanelState extends State<TutorPanel> {
  double _dragDistance = 0;
  double _summaryDragDistance = 0;

  bool _summaryScroll(ScrollNotification notification) {
    if (notification.depth != 0 || widget.expanded) return false;
    if (notification is ScrollStartNotification) {
      _summaryDragDistance = 0;
    } else if (notification is ScrollUpdateNotification) {
      _summaryDragDistance += notification.dragDetails?.primaryDelta ?? 0;
    } else if (notification is OverscrollNotification) {
      _summaryDragDistance += notification.dragDetails?.primaryDelta ?? 0;
    } else if (notification is ScrollEndNotification) {
      if (_summaryDragDistance < -24) widget.onExpandedChanged(true);
      _summaryDragDistance = 0;
    }
    return false;
  }

  void _finishDrag(DragEndDetails details) {
    final velocity = details.primaryVelocity ?? 0;
    if (_dragDistance < -24 || velocity < -200) {
      widget.onExpandedChanged(true);
    } else if (_dragDistance > 24 || velocity > 200) {
      widget.onExpandedChanged(false);
    }
    _dragDistance = 0;
  }

  @override
  Widget build(BuildContext context) {
    final scheme = Theme.of(context).colorScheme;
    return LayoutBuilder(
      builder: (context, constraints) {
        final available = constraints.maxHeight;
        final collapsedHeight = math.min(widget.collapsedHeight, available);
        final headerHeight = math.min(TutorPanel.headerHeight, collapsedHeight);
        final summaryHeight = math.max(0.0, collapsedHeight - headerHeight);
        final targetHeight = widget.expanded
            ? math.min(widget.expandedHeight, available)
            : collapsedHeight;
        return AnimatedContainer(
          key: const ValueKey('tutorPanel'),
          duration: MediaQuery.disableAnimationsOf(context)
              ? Duration.zero
              : const Duration(milliseconds: 220),
          curve: Curves.easeOutCubic,
          height: targetHeight,
          width: double.infinity,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(color: scheme.surfaceContainer),
          foregroundDecoration: BoxDecoration(
            border: Border(top: BorderSide(color: scheme.outlineVariant)),
          ),
          child: Material(
            color: Colors.transparent,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  key: const ValueKey('tutorPanelHeader'),
                  behavior: HitTestBehavior.opaque,
                  onVerticalDragStart: (_) => _dragDistance = 0,
                  onVerticalDragUpdate: (details) =>
                      _dragDistance += details.primaryDelta ?? 0,
                  onVerticalDragEnd: _finishDrag,
                  onVerticalDragCancel: () => _dragDistance = 0,
                  child: SizedBox(
                    height: headerHeight,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (widget.leading != null)
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: widget.leading,
                            ),
                          )
                        else
                          const Spacer(),
                        Semantics(
                          key: const ValueKey('tutorPanelToggle'),
                          label: 'Tutor:',
                          button: true,
                          expanded: widget.expanded,
                          onTap: () =>
                              widget.onExpandedChanged(!widget.expanded),
                          child: ExcludeSemantics(
                            child: TextButton(
                              onPressed: () =>
                                  widget.onExpandedChanged(!widget.expanded),
                              style: TextButton.styleFrom(
                                minimumSize: const Size(64, 48),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                ),
                              ),
                              child: const Text('Tutor:'),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 48,
                          height: 48,
                          child: widget.expanded
                              ? IconButton(
                                  key: const ValueKey('tutorPanelSettings'),
                                  tooltip: 'Tutoring options',
                                  onPressed: widget.onOpenSettings,
                                  icon: const Icon(Icons.settings_outlined),
                                )
                              : null,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  key: const ValueKey('tutorPanelSummary'),
                  height: summaryHeight,
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _summaryScroll,
                    child: SingleChildScrollView(
                      key: const ValueKey('tutorPanelSummaryScroll'),
                      physics: const AlwaysScrollableScrollPhysics(
                        parent: ClampingScrollPhysics(),
                      ),
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                      child: widget.summary,
                    ),
                  ),
                ),
                if (widget.expanded)
                  Expanded(
                    child: SingleChildScrollView(
                      key: const ValueKey('tutorPanelDetails'),
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Divider(color: scheme.outlineVariant),
                          widget.details,
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}
