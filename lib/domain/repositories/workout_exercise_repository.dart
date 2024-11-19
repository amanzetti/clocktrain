import 'package:clocktrain/domain/entities/workout_exercise_entity.dart';

abstract class WorkoutExerciseRepository {
  Future<List<WorkoutExercise>> getAllWorkoutExercises();
  Future<WorkoutExercise> getWorkoutExerciseById(int id);
  Future<void> addWorkoutExercise(WorkoutExercise workoutExercise);
  Future<void> updateWorkoutExercise(WorkoutExercise workoutExercise);
  Future<void> deleteWorkoutExercise(int id);
}