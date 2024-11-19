import 'package:clocktrain/domain/entities/exercise_entity.dart';

abstract class ExerciseRepository {
  Future<List<Exercise>> getAllExercises();
  Future<Exercise> getExerciseById(int id);
  Future<void> addExercise(Exercise exercise);
  Future<void> updateExercise(Exercise exercise);
  Future<void> deleteExercise(int id);
}