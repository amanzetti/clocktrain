import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  const factory Exercise({
    required int id,
    required String name,
    required String description,
    String? videoUrl,
    String? imageUrl,
    required String difficultyLevel,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}