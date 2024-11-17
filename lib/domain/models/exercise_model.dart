
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
class Exercise with _$Exercise{
  const factory Exercise({
   required int id,
    required String name,
    required String description,
    String? videoUrl,
    String? imageUrl,
    required String difficultyLevel,
  }) = _Exercise;

  // Metodo di serializzazione JSON
  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);
}
