import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_set.freezed.dart';
part 'workout_set.g.dart';

@freezed
class WorkoutSet with _$WorkoutSet {
  const factory WorkoutSet({
    required int id,
    required int workoutExerciseId,
    required int setNumber,
    required int reps,
    double? weight,
    required int restTime,
  }) = _WorkoutSet;

  factory WorkoutSet.fromJson(Map<String, dynamic> json) => _$WorkoutSetFromJson(json);
}