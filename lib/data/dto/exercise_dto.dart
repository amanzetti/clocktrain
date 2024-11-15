import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/exercise_dto.freezed.dart';
part '../model/exercise_dto.g.dart';

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

  factory ExerciseDto.fromJson(Map<String, dynamic> json) => _$ExerciseDtoFromJson(json);
}