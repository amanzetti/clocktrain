import 'dart:math';

import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircularTimerWidget extends ConsumerStatefulWidget {
  const CircularTimerWidget(
      {required this.initCallback,
      required this.updateProgressOnDrag,
      required this.setDragging,
      required this.duration,
      required this.progress,
      required this.resumeTimer,
      required this.resetTimer,
      required this.pauseTimer,
      required this.isPaused,
      this.size = const Size(200, 200),
      super.key});

  final Size size;
  final void Function() initCallback;
  final void Function() resumeTimer;
  final void Function() resetTimer;
  final void Function() pauseTimer;
  final void Function(double) updateProgressOnDrag;
  final void Function(bool) setDragging;
  final Duration duration;
  final double progress;
  final bool isPaused;

  @override
  ConsumerState<CircularTimerWidget> createState() =>
      _CircularTimerWidgetState();
}

class _CircularTimerWidgetState extends ConsumerState<CircularTimerWidget> {
  @override
  void initState() {
    super.initState();
    widget.initCallback.call();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: widget.resetTimer,
              ),
              SizedBox(
                width: widget.size.width,
                height: widget.size.height,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    GestureDetector(
                      onPanUpdate: (details) {
                        final center = Offset(
                            widget.size.width / 2, widget.size.height / 2);
                        final dx = details.localPosition.dx - center.dx;
                        final dy = details.localPosition.dy - center.dy;
                        final angle = (atan2(dy, dx) + pi / 2) % (2 * pi);
                        final progress = (angle / (2 * pi)) % 1.0;

                        widget.updateProgressOnDrag.call(progress);
                      },
                      onPanStart: (_) => widget.setDragging.call(true),
                      onPanEnd: (_) => widget.setDragging.call(false),
                      child: CustomPaint(
                        size: widget.size,
                        painter: CircularTimerPainter(
                            textStyleTimer: context.textTheme.displayMedium,
                            progress: widget.progress,
                            duration: widget.duration.inSeconds),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          (widget.duration.inSeconds * (1 - widget.progress))
                              .toInt()
                              .toString(),
                          style: context.textTheme.displayMedium,
                        ),
                        Text('sec')
                      ],
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(widget.isPaused ? Icons.play_arrow : Icons.pause),
                onPressed:
                    widget.isPaused ? widget.resumeTimer : widget.pauseTimer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
