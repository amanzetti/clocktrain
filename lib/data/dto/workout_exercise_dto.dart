import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise_dto.freezed.dart';
part 'workout_exercise_dto.g.dart';

@freezed
class WorkoutExerciseDto with _$WorkoutExerciseDto {
  const factory WorkoutExerciseDto({
    required int id,
    required int workoutId,
    required int exerciseId,
    required int order,
    int? supersetGroup,
    String? notes,
  }) = _WorkoutExerciseDto;

  factory WorkoutExerciseDto.fromJson(Map<String, dynamic> json) => _$WorkoutExerciseDtoFromJson(json);
}