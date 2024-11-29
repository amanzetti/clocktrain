import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:clocktrain/domain/use_case/create_exercise_use_case.dart';
import 'package:clocktrain/domain/use_case/get_all_muscle_group_use_case.dart';
import 'package:clocktrain/presentation/pages/sheet/workout_editor/exercise_editor_page/exercise_manager_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExerciseMangerVm extends AutoDisposeNotifier<ExerciseManagerState> {
  @override
  ExerciseManagerState build() {
    return const ExerciseManagerState();
  }

  Future<void> createExercse() async {
    state = state.copyWith(isLoading: true);
    final result = await CreateExerciseUseCase(ref.exerciseRepository)
        .call(state.exercise!);
    result.fold((error) {
      state = state.copyWith(isLoading: false, message: error.toString());
    }, (value) {
      state = state.copyWith(isLoading: false, message: 'success');
    });
  }

  Future<void> getAllMuslceGroup() async {
    state = state.copyWith(isLoading: true);
    final result =
        await GetAllMuscleGroupUseCase(ref.muscleGroupRepository).call();
    result.fold((error) {
      state = state.copyWith(isLoading: false, message: error.toString());
    }, (value) {
      state = state.copyWith(isLoading: false, muscleGroups: value);
    });
  }

  void saveExerciseName(String? name) {
    state = state.copyWith(name: name);
  }

  void saveExerciseDescription(String? description) {
    state = state.copyWith(description: description);
  }

  void saveExerciseVideoUrl(String? videoUrl) {
    state = state.copyWith(videoUrl: videoUrl);
  }

  void saveExerciseImageUrl(String? imageUrl) {
    state = state.copyWith(imageUrl: imageUrl);
  }

  void saveExerciseDifficultyLevel(String? difficultyLevel) {
    state = state.copyWith(difficultyLevel: difficultyLevel);
  }

  void saveExerciseMuscleGroups(List<MuscleGroup>? muscleGroups) {
    muscleGroups = muscleGroups?.toSet().toList();
    state = state.copyWith(muscleGroupsSelected: muscleGroups);
  }

  void onDeleteTap(MuscleGroup muscleGroup) {
    final updatedList = state.muscleGroupsSelected
        ?.where((mg) => mg.id != muscleGroup.id)
        .toList();
    state = state.copyWith(muscleGroupsSelected: updatedList);
  }
}
