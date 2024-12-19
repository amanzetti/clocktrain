import 'dart:math';

import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_vm.dart';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircularTimerWidget extends ConsumerStatefulWidget {
  const CircularTimerWidget({this.size = const Size(200, 200), super.key});

  final Size size;

  @override
  ConsumerState<CircularTimerWidget> createState() =>
      _CircularTimerWidgetState();
}

class _CircularTimerWidgetState extends ConsumerState<CircularTimerWidget> {
  late final WorkoutSessionVm vm;

  @override
  void initState() {
    super.initState();
    vm = ref.read(workoutSessionVmProvider.notifier);
    vm.initialize();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(workoutSessionVmProvider);
    final duration = ref.watch(_durationProvider);
    final progress = ref.watch(_progressProvider);

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
                onPressed: vm.resetTimer,
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

                        vm.updateProgressOnDrag(progress);
                      },
                      onPanStart: (_) => vm.setDragging(true),
                      onPanEnd: (_) => vm.setDragging(false),
                      child: CustomPaint(
                        size: widget.size,
                        painter: CircularTimerPainter(
                            textStyleTimer: context.textTheme.displayMedium,
                            progress: state.progress,
                            duration: duration.inSeconds),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          (duration.inSeconds * (1 - progress))
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
                icon: Icon(state.isPaused ? Icons.play_arrow : Icons.pause),
                onPressed: state.isPaused ? vm.resumeTimer : vm.pauseTimer,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final _durationProvider = StateProvider.autoDispose<Duration>(
    (ref) => ref.watch(workoutSessionVmProvider).duration);

final _progressProvider = StateProvider.autoDispose<double>(
    (ref) => ref.watch(workoutSessionVmProvider).progress);
