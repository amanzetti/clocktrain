import 'package:clocktrain/domain/models/set_model.dart';
import 'package:clocktrain/presentation/widgets/organisms/list_tile_app.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';

@freezed
class Exercise with _$Exercise implements ObjectT {
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
