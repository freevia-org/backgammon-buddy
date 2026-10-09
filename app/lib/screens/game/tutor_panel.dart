import 'dart:math' as math;

import 'package:flutter/material.dart';

/// One continuous tutor surface, bottom-anchored by its caller.
///
/// Reserve [collapsedHeight] in the game layout and place this widget in a Stack
/// with a fixed bottom edge. Expansion then covers the board instead of resizing
/// it. The header and summary retain their space while details open below them;
/// the action bar remains below this panel when details are expanded.
class TutorPanel extends StatefulWidget {
  const TutorPanel({
    super.key,
    required this.expanded,
    required this.onExpandedChanged,
    required this.prompt,
    required this.summary,
    required this.details,
    required this.onOpenSettings,
    this.collapsedHeight = 128,
    this.expandedHeight = 320,
  }) : assert(collapsedHeight >= handleHeight + headerHeight),
       assert(expandedHeight >= collapsedHeight);

  static const double handleHeight = 4;
  static const double headerHeight = 40;

  final bool expanded;
  final ValueChanged<bool> onExpandedChanged;
  final Widget prompt;
  final Widget summary;
  final Widget details;
  final VoidCallback onOpenSettings;

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
        final headerHeight = math.min(
          TutorPanel.headerHeight,
          collapsedHeight - TutorPanel.handleHeight,
        );
        final summaryHeight = math.max(
          0.0,
          collapsedHeight - TutorPanel.handleHeight - headerHeight,
        );
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
          decoration: const BoxDecoration(color: Colors.white),
          foregroundDecoration: BoxDecoration(
            border: Border(top: BorderSide(color: scheme.outlineVariant)),
          ),
          child: Material(
            color: Colors.transparent,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: TutorPanel.handleHeight),
                    _dragTarget(
                      key: const ValueKey('tutorPanelHeader'),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 64),
                        child: SizedBox(
                          height: headerHeight,
                          child: Row(
                            children: [
                              Semantics(
                                key: const ValueKey('tutorPanelToggle'),
                                label: 'Tutor:',
                                button: true,
                                expanded: widget.expanded,
                                onTap: _toggle,
                                child: ExcludeSemantics(
                                  child: InkWell(
                                    onTap: _toggle,
                                    child: SizedBox(
                                      height: headerHeight,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.school_outlined,
                                            size: 18,
                                            color: scheme.primary,
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            'Tutor:',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge
                                                ?.copyWith(
                                                  color: scheme.primary,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: DefaultTextStyle.merge(
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  child: widget.prompt,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      key: const ValueKey('tutorPanelSummary'),
                      height: summaryHeight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 12, right: 12),
                        child: NotificationListener<ScrollNotification>(
                          onNotification: _summaryScroll,
                          child: SingleChildScrollView(
                            key: const ValueKey('tutorPanelSummaryScroll'),
                            physics: const AlwaysScrollableScrollPhysics(
                              parent: ClampingScrollPhysics(),
                            ),
                            padding: const EdgeInsets.only(bottom: 8),
                            child: widget.summary,
                          ),
                        ),
                      ),
                    ),
                    if (widget.expanded)
                      Expanded(
                        child: SingleChildScrollView(
                          key: const ValueKey('tutorPanelDetails'),
                          padding: const EdgeInsets.fromLTRB(12, 0, 12, 64),
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
                Align(
                  alignment: Alignment.topCenter,
                  child: _dragTarget(
                    key: const ValueKey('tutorPanelHandle'),
                    child: Semantics(
                      label: widget.expanded
                          ? 'Collapse tutor'
                          : 'Expand tutor',
                      button: true,
                      onTap: _toggle,
                      child: GestureDetector(
                        onTap: _toggle,
                        behavior: HitTestBehavior.opaque,
                        child: SizedBox(
                          width: 64,
                          height: 48,
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Container(
                                key: const ValueKey('tutorPanelGrip'),
                                width: 32,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: scheme.onSurfaceVariant,
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                if (widget.expanded)
                  Positioned(
                    top: 0,
                    right: 12,
                    child: IconButton(
                      key: const ValueKey('tutorPanelSettings'),
                      tooltip: 'Tutoring options',
                      onPressed: widget.onOpenSettings,
                      icon: const Icon(Icons.settings_outlined),
                      constraints: const BoxConstraints.tightFor(
                        width: 48,
                        height: 48,
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

  void _toggle() => widget.onExpandedChanged(!widget.expanded);

  Widget _dragTarget({required Key key, required Widget child}) =>
      GestureDetector(
        key: key,
        behavior: HitTestBehavior.opaque,
        onVerticalDragStart: (_) => _dragDistance = 0,
        onVerticalDragUpdate: (details) =>
            _dragDistance += details.primaryDelta ?? 0,
        onVerticalDragEnd: _finishDrag,
        onVerticalDragCancel: () => _dragDistance = 0,
        child: child,
      );
}
