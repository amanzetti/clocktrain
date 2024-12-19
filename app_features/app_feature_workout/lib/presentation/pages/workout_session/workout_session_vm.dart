import 'dart:async';

import 'package:app_feature_workout/presentation/pages/workout_session/workout_session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class WorkoutSessionVm extends AutoDisposeNotifier<WorkoutSessionState> {
  late Timer? _timer;
  Duration _accumulatedElapsed = Duration.zero;
  DateTime? _lastStartTime;

  @override
  build() {
    return const WorkoutSessionState(
      duration: Duration(minutes: 2),
      elapsedTime: Duration.zero,
      progress: 0.0,
      isPaused: false,
      isDragging: false,
    );
  }

  void initialize() {
    startTimer();
  }

  void dispose() {
    _timer?.cancel();
  }

  void setDuration(Duration duration) {
    state = state.copyWith(duration: duration);
  }

  void pop(BuildContext context) {
    context.pop();
  }

  void startTimer() {
    _lastStartTime = DateTime.now();
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      if (!state.isPaused && !state.isDragging) {
        final currentTime = DateTime.now();
        final elapsedSinceLastStart = currentTime.difference(_lastStartTime!);
        final totalElapsed = _accumulatedElapsed + elapsedSinceLastStart;

        final newProgress =
            (totalElapsed.inMilliseconds / state.duration.inMilliseconds)
                .clamp(0.0, 1.0);

        if (newProgress >= 1.0) {
          _timer?.cancel();
          // Azioni da eseguire al termine del timer
        }

        state = state.copyWith(
          elapsedTime: totalElapsed,
          progress: newProgress,
        );
      }
    });
  }

  void pauseTimer() {
    if (!state.isPaused) {
      _accumulatedElapsed += DateTime.now().difference(_lastStartTime!);
      _timer?.cancel();
      state = state.copyWith(isPaused: true);
    }
  }

  void resumeTimer() {
    if (state.isPaused) {
      _lastStartTime = DateTime.now();
      state = state.copyWith(isPaused: false);
      startTimer();
    }
  }

  void resetTimer() {
    _timer?.cancel();
    _accumulatedElapsed = Duration.zero;
    state = state.copyWith(
      elapsedTime: Duration.zero,
      progress: 0.0,
      isPaused: false,
    );
    startTimer();
  }

  void updateProgressOnDrag(double progress) {
    final newElapsedTime = Duration(
        milliseconds: (state.duration.inMilliseconds * progress).toInt());
    _accumulatedElapsed = newElapsedTime;
    _lastStartTime = DateTime.now();
    state = state.copyWith(
      progress: progress,
      elapsedTime: newElapsedTime,
    );
  }

  void setDragging(bool isDragging) {
    state = state.copyWith(isDragging: isDragging);
  }
}
