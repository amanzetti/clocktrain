import 'dart:async';

import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutSessionVm extends AutoDisposeNotifier<WorkoutSessionState> {
  late Timer _timer;

  @override
  build() {
    return const WorkoutSessionState(
      duration: Duration(minutes: 2),
    );
  }

  void initialize() {
    startTimer();
  }

  void dispose() {
    _timer.cancel();
    state = const WorkoutSessionState(duration: Duration(minutes: 2));
  }

  void setDuration(Duration duration) {
    state = state.copyWith(duration: duration);
  }

  void pop(BuildContext context) {
    context.pop();
  }

  void startTimer() {
    final startTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (!state.isPaused && !state.isDragging) {
        final elapsed = DateTime.now().difference(startTime).inMilliseconds;
        final newProgress =
            (elapsed / state.duration.inMilliseconds).clamp(0.0, 1.0);

        if (newProgress == 1.0) {
          _timer.cancel();
        }

        state = state.copyWith(
          elapsedTime: elapsed,
          progress: newProgress,
        );
      }
    });
  }

  void pauseTimer() {
    state = state.copyWith(isPaused: true);
  }

  void resumeTimer() {
    state = state.copyWith(isPaused: false);
  }

  void resetTimer() {
    _timer.cancel();
    state = const WorkoutSessionState(duration: Duration(minutes: 2));
    startTimer();
  }

  void updateProgressOnDrag(double progress) {
    state = state.copyWith(
      progress: progress,
      elapsedTime: (progress * 50000).toInt(),
    );
  }

  void setDragging(bool isDragging) {
    state = state.copyWith(isDragging: isDragging);
  }

  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }
}

final workoutSessionVmProvider =
    NotifierProvider.autoDispose<WorkoutSessionVm, WorkoutSessionState>(
        () => WorkoutSessionVm());
