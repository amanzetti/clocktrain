import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/workout_set_dto.freezed.dart';
part '../model/workout_set_dto.g.dart';

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

  factory WorkoutSetDto.fromJson(Map<String, dynamic> json) => _$WorkoutSetDtoFromJson(json);
}