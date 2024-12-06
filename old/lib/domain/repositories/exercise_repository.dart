import 'package:clocktrain/domain/entities/exercise_entity.dart';
import 'package:clocktrain/app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

abstract class ExerciseRepository {
  Future<List<Exercise>> getAllExercises();
  Future<Exercise> getExerciseById(int id);
  Future<Either<CommonError, void>> addExercise(Exercise exercise);
  Future<void> updateExercise(Exercise exercise);
  Future<void> deleteExercise(int id);
}