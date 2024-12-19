import 'package:app_feature_workout/domain/enities/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_session_state.freezed.dart';

@freezed
class WorkoutSessionState with _$WorkoutSessionState {
  const factory WorkoutSessionState({
    @Default(false) bool isLoading,
    @Default(null) Workout? workout,
    @Default(0) double progress,
    @Default(Duration()) Duration duration,
    @Default(false) bool isPaused,
    @Default(false) bool isDragging,
    @Default(Duration()) Duration elapsedTime, // In millisecondi
  }) = _WorkoutSessionState;
}
