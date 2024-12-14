import 'package:app_feature_workout/domain/enities/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_details_state.freezed.dart';

@freezed
class WorkoutDetailsState with _$WorkoutDetailsState {
  const factory WorkoutDetailsState({
    @Default(false) bool isLoading,
    @Default(null) Workout? workout,
  }) = _WorkoutDetailsState;
}
