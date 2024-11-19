import 'package:clocktrain/domain/entities/workout_set_entity.dart';

abstract class WorkoutSetRepository {
  Future<List<WorkoutSet>> getAllWorkoutSets();
  Future<WorkoutSet> getWorkoutSetById(int id);
  Future<void> addWorkoutSet(WorkoutSet workoutSet);
  Future<void> updateWorkoutSet(WorkoutSet workoutSet);
  Future<void> deleteWorkoutSet(int id);
}