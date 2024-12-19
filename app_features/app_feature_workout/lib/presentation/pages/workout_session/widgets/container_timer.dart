import 'package:app_feature_workout/presentation/pages/workout_session/widgets/circular_timer_widget.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_state.dart';
import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_vm.dart';
import 'package:app_shared/widgets/organisms/container/resizable_container.dart';
import 'package:flutter/material.dart';

class ContainerTimer extends StatefulWidget {
  const ContainerTimer({required this.vm, required this.state, super.key});

  final WorkoutSessionVm vm;
  final WorkoutSessionState state;

  @override
  State<ContainerTimer> createState() => _ContainerTimerState();
}

class _ContainerTimerState extends State<ContainerTimer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildExerciseSessionDetails(context,
          duration: widget.state.duration, progress: widget.state.progress),
    );
  }

  Widget _buildExerciseSessionDetails(BuildContext context,
      {required Duration duration, required double progress}) {
    final remainTime = (duration * (1 - progress));
    return ResizableContainer(
        hintText: 'Exercise session details',
        title: 'Exercise session title ${remainTime.inSeconds} s',
        childExpands: Column(children: [_buildTimer(widget.vm, widget.state)]));
  }

  Widget _buildTimer(WorkoutSessionVm vm, WorkoutSessionState state) {
    return CircularTimerWidget(
      initCallback: vm.initialize,
      updateProgressOnDrag: vm.updateProgressOnDrag,
      setDragging: vm.setDragging,
      duration: state.duration,
      progress: state.progress,
      resumeTimer: vm.resumeTimer,
      resetTimer: vm.resetTimer,
      pauseTimer: vm.pauseTimer,
      isPaused: state.isPaused,
    );
  }
}
