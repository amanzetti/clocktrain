import 'dart:math';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircularTimerWidget extends ConsumerWidget {
  const CircularTimerWidget({
    required this.updateProgressOnDrag,
    required this.setDragging,
    required this.duration,
    required this.progress,
    required this.resumeTimer,
    required this.resetTimer,
    required this.pauseTimer,
    required this.isPaused,
    this.size = const Size(200, 200),
    super.key,
  });

  final Size size;
  final void Function() resumeTimer;
  final void Function() resetTimer;
  final void Function() pauseTimer;
  final void Function(double) updateProgressOnDrag;
  final void Function(bool) setDragging;
  final Duration duration;
  final double progress;
  final bool isPaused;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                onPressed: resetTimer,
              ),
              SizedBox(
                width: size.width,
                height: size.height,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    GestureDetector(
                      onPanUpdate: (details) {
                        final center = Offset(size.width / 2, size.height / 2);
                        final dx = details.localPosition.dx - center.dx;
                        final dy = details.localPosition.dy - center.dy;
                        final angle = (atan2(dy, dx) + pi / 2) % (2 * pi);
                        final newProgress = (angle / (2 * pi)) % 1.0;

                        updateProgressOnDrag(newProgress);
                      },
                      onPanStart: (_) => setDragging(true),
                      onPanEnd: (_) => setDragging(false),
                      child: CustomPaint(
                        size: size,
                        foregroundPainter: CircularTimerLabelsPainter(
                          duration: duration.inSeconds,
                          textStyle: Theme.of(context).textTheme.displayMedium,
                        ),
                        painter: CircularTimerPainter(
                          textStyleTimer:
                              Theme.of(context).textTheme.displayMedium,
                          progress: progress,
                          duration: duration.inSeconds,
                        ),
                      ),
                    ),
                    // Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Text(
                    //       (duration.inSeconds * (1 - progress))
                    //           .toInt()
                    //           .toString(),
                    //       style: Theme.of(context).textTheme.displayMedium,
                    //     ),
                    //     const Text('sec'),
                    //   ],
                    // ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(isPaused ? Icons.play_arrow : Icons.pause),
                onPressed: isPaused ? resumeTimer : pauseTimer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
