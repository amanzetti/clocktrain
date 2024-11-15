import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/workout_api.dart';
import 'package:clocktrain/domain/models/workout_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final workoutApiProvider = Provider<WorkoutApi>((ref) {
  return WorkoutApi();
});

final workoutProvider = StateNotifierProvider<WorkoutNotifier, List<Workout>>((ref) {
  final workoutApi = ref.watch(workoutApiProvider);
  return WorkoutNotifier(workoutApi: workoutApi);
});

class WorkoutNotifier extends StateNotifier<List<Workout>> {
  final WorkoutApi workoutApi;

  WorkoutNotifier({required this.workoutApi}) : super([]);

  // Aggiungi un nuovo workout
  Future<void> createWorkout(String workoutId, Workout workout) async {
    try {
      await workoutApi.createWorkout(workoutId, workout);
      final updatedWorkouts = [...state, workout];
      state = updatedWorkouts;
      LoggerConfig.logger.i('Workout created successfully: ${workout.name}');
    } catch (e) {
      LoggerConfig.logger.e('Error creating workout: $e');
    }
  }

  // Recupera un workout per ID
  Future<void> getWorkoutById(String workoutId) async {
    try {
      final workout = await workoutApi.getWorkoutById(workoutId);
      if (workout != null) {
        state = [workout];
        LoggerConfig.logger.i('Workout fetched successfully: ${workout.name}');
      } else {
        LoggerConfig.logger.w('Workout not found for ID: $workoutId');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching workout: $e');
    }
  }

  // Aggiorna un workout esistente
  Future<void> updateWorkout(String workoutId, Workout workout) async {
    try {
      await workoutApi.updateWorkout(workoutId, workout);
      final updatedWorkouts = state.map((w) {
        return w.id == workoutId ? workout : w;
      }).toList();
      state = updatedWorkouts;
      LoggerConfig.logger.i('Workout updated successfully: ${workout.name}');
    } catch (e) {
      LoggerConfig.logger.e('Error updating workout: $e');
    }
  }

  // Elimina un workout
  Future<void> deleteWorkout(String workoutId) async {
    try {
      await workoutApi.deleteWorkout(workoutId);
      state = state.where((w) => w.id != workoutId).toList();
      LoggerConfig.logger.i('Workout deleted successfully: $workoutId');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting workout: $e');
    }
  }

  // Recupera tutti i workout
  Future<List<Workout?>?> getAllWorkouts() async {
    try {
      final workouts = await workoutApi.getAllWorkouts();
      state = workouts;
      LoggerConfig.logger.i('Fetched all workouts successfully');
      return workouts;
    } catch (e) {
      LoggerConfig.logger.e('Error fetching all workouts: $e');
    }
    return null;
  }
}