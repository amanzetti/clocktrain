import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_entity.freezed.dart';

@freezed
class Exercise with _$Exercise {
  factory Exercise({
    int? id,
    required String name,
    String? description,
    String? media,
    String? difficultyLevel,
    required List<MuscleGroup> muscleGroups,
  }) = _Exercise;
 
}
