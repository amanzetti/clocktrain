import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_set_dto.freezed.dart';
part 'workout_set_dto.g.dart';

@freezed
class WorkoutSetDto with _$WorkoutSetDto {
  const factory WorkoutSetDto({
    required int id,
    required int workoutExerciseId,
    required int setNumber,
    required int reps,
    double? weight,
    required int restTime,
  }) = _WorkoutSetDto;

  factory WorkoutSetDto.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSetDtoFromJson(json);

  factory WorkoutSetDto.fromEntity(WorkoutSet entity) {
    return WorkoutSetDto(
      id: entity.id,
      workoutExerciseId: entity.workoutExerciseId,
      setNumber: entity.setNumber,
      reps: entity.reps,
      weight: entity.weight,
      restTime: entity.restTime,
    );
  }
}

extension WorkoutSetDtoX on WorkoutSetDto {
  WorkoutSet toEntity() {
    return WorkoutSet(
      id: id,
      workoutExerciseId: workoutExerciseId,
      setNumber: setNumber,
      reps: reps,
      weight: weight,
      restTime: restTime,
    );
  }
}
