import 'package:app_feature_workout/domain/enities/workout.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workouts_state.freezed.dart';

@freezed
class WorkoutsState with _$WorkoutsState {
  const factory WorkoutsState({
    @Default(false) bool isLoading,
    @Default(null) List<Workout>? workouts,
  }) = _WorkoutsState;
}
