import 'package:app_feature_workout/presentation/pages/workout_session/widgets/circular_timer_widget.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_vm.dart';
import 'package:app_shared/widgets/organisms/container/resizable_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ContainerTimer extends ConsumerStatefulWidget {
  const ContainerTimer({super.key});

  @override
  ConsumerState<ContainerTimer> createState() => _ContainerTimerState();
}

class _ContainerTimerState extends ConsumerState<ContainerTimer> {
  @override
  Widget build(BuildContext context) {
    final duration = ref.watch(_progressDuration);
    final progress = ref.watch(_progressProgress);
    return Container(
      child: _buildExerciseSessionDetails(context,
          duration: duration, progress: progress),
    );
  }

  Widget _buildExerciseSessionDetails(BuildContext context,
      {required Duration duration, required double progress}) {
    final remainTime = (duration * (1 - progress));
    return ResizableContainer(
        hintText: 'Exercise session details',
        title: 'Exercise session title ${remainTime.inSeconds} s',
        childExpands: Column(children: [_buildTimer()]));
  }

  Widget _buildTimer() {
    return const CircularTimerWidget();
  }
}

// final _workoutSessionVmProvider =
//     NotifierProvider.autoDispose<WorkoutSessionVm, WorkoutSessionState>(
//         () => WorkoutSessionVm());

final _progressDuration = StateProvider.autoDispose<Duration>(
    (ref) => ref.watch(workoutSessionVmProvider).duration);

final _progressProgress = StateProvider.autoDispose<double>(
    (ref) => ref.watch(workoutSessionVmProvider).progress);
