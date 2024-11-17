import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise.freezed.dart';

@freezed
class WorkoutExercise with _$WorkoutExercise {
  const factory WorkoutExercise({
    required int id,
    required int workoutId,
    required int exerciseId,
    required int order,
    int? supersetGroup,
    String? notes,
  }) = _WorkoutExercise;

  factory WorkoutExercise.fromJson(Map<String, dynamic> json) => _$WorkoutExerciseFromJson(json);
}