import 'package:clocktrain/domain/entities/muscle_group_entity.dart';

abstract class MuscleGroupRepository {
  Future<List<MuscleGroup>> getAllMuscleGroups();
  Future<MuscleGroup> getMuscleGroupById(int id);
  Future<void> addMuscleGroup(MuscleGroup muscleGroup);
  Future<void> updateMuscleGroup(MuscleGroup muscleGroup);
  Future<void> deleteMuscleGroup(int id);
}