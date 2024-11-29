import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
import 'package:clocktrain/app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

abstract class MuscleGroupRepository {
  Future<Either<CommonError, List<MuscleGroup>>> getAllMuscleGroups();
  Future<MuscleGroup> getMuscleGroupById(int id);
  Future<void> addMuscleGroup(MuscleGroup muscleGroup);
  Future<void> updateMuscleGroup(MuscleGroup muscleGroup);
  Future<void> deleteMuscleGroup(int id);
}