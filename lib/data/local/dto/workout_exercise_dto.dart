import 'package:clocktrain/data/local/app_database.dart';
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

  factory WorkoutExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseDtoFromJson(json);

  factory WorkoutExerciseDto.fromEntity(WorkoutExercise entity) {
    return WorkoutExerciseDto(
      id: entity.id,
      workoutId: entity.workoutId,
      exerciseId: entity.exerciseId,
      order: entity.order,
      supersetGroup: entity.supersetGroup,
      notes: entity.notes,
    );
  }
}

extension WorkoutExerciseDtoX on WorkoutExerciseDto {
  WorkoutExercise toEntity() {
    return WorkoutExercise(
      id: id,
      workoutId: workoutId,
      exerciseId: exerciseId,
      order: order,
      supersetGroup: supersetGroup,
      notes: notes,
    );
  }
}
