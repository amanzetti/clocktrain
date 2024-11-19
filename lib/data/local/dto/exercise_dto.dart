import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_dto.freezed.dart';
part 'exercise_dto.g.dart';

@freezed
class ExerciseDto with _$ExerciseDto {
  const factory ExerciseDto({
    required int id,
    required String name,
    required String description,
    String? videoUrl,
    String? imageUrl,
    required String difficultyLevel,
  }) = _ExerciseDto;

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);

  factory ExerciseDto.fromEntity(Exercise entity) {
    return ExerciseDto(
      id: entity.id,
      name: entity.name,
      description: entity.description ?? '',
      videoUrl: entity.videoUrl,
      imageUrl: entity.imageUrl,
      difficultyLevel: entity.difficultyLevel.toString(),
    );
  }
}

extension ExerciseDtoX on ExerciseDto {
  Exercise toEntity() {
    return Exercise(
      id: id,
      name: name,
      description: description,
      videoUrl: videoUrl,
      imageUrl: imageUrl,
      difficultyLevel: int.tryParse(difficultyLevel) ?? 0,
    );
  }
}
