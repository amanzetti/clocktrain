import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'muscle_group_dto.dart';

part 'exercise_dto.freezed.dart';
part 'exercise_dto.g.dart';

@freezed
class ExerciseDto with _$ExerciseDto {
  const factory ExerciseDto({
    int? id,
    required String name,
    String? description,
    String? media,
    required List<MuscleGroupDto> muscleGroups,
  }) = _ExerciseDto;

  factory ExerciseDto.fromJson(Map<String, dynamic> json) => _$ExerciseDtoFromJson(json);

  factory ExerciseDto.fromDomain(Exercise exercise, int? id) {
    return ExerciseDto(
      id: id,
      name: exercise.name,
      description: exercise.description,
      media: exercise.media,
      muscleGroups: exercise.muscleGroups.map((mg) => MuscleGroupDto.fromDomain(mg)).toList(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      id: id,
      name: name,
      description: description,
      media: media,
      muscleGroups: muscleGroups.map((mg) => mg.toDomain()).toList(),
    );
  }
}