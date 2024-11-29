import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_manager_state.freezed.dart';

@freezed
class ExerciseManagerState with _$ExerciseManagerState {
  const factory ExerciseManagerState({
    @Default(false) bool isLoading,
    @Default(null) Exercise? exercise,
    @Default(null) String? message,
    // @Default([]) List<Exercise> exercises,
    @Default(null) String? name,
    @Default(null) String? description,
    @Default(null) String? videoUrl,
    @Default(null) String? imageUrl,
    @Default(null) String? difficultyLevel,
    @Default(null) List<MuscleGroup>? muscleGroups, 
    @Default(null) List<MuscleGroup>? muscleGroupsSelected, 
  }) = _ExerciseManagerState;
}