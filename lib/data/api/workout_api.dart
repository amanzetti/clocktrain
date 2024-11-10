import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/data/models/workout_model.dart';

class WorkoutApi {
  static final WorkoutApi _instance = WorkoutApi._internal();
  factory WorkoutApi() => _instance;
  WorkoutApi._internal();

  final Api _api = Api();

  // Crea un nuovo workout
  Future<void> createWorkout(String workoutId, Workout workout) async {
    try {
      await _api.firestore.collection('workouts').doc(workoutId).set(workout.toJson());
      LoggerConfig.logger.i('Workout created successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error creating workout: $e');
      rethrow;
    }
  }

  // Recupera un workout per ID
  Future<Workout?> getWorkoutById(String workoutId) async {
    try {
      final workoutSnapshot =
          await _api.firestore.collection('workouts').doc(workoutId).get();
      if (workoutSnapshot.exists) {
        return Workout.fromJson(workoutSnapshot.data()!);
      } else {
        LoggerConfig.logger.w('Workout not found');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching workout: $e');
      rethrow;
    }
    return null;
  }

  // Aggiorna un workout esistente
  Future<void> updateWorkout(String workoutId, Workout workout) async {
    try {
      await _api.firestore.collection('workouts').doc(workoutId).update(workout.toJson());
      LoggerConfig.logger.i('Workout updated successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error updating workout: $e');
      rethrow;
    }
  }

  // Elimina un workout
  Future<void> deleteWorkout(String workoutId) async {
    try {
      await _api.firestore.collection('workouts').doc(workoutId).delete();
      LoggerConfig.logger.i('Workout deleted successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting workout: $e');
      rethrow;
    }
  }

  // Recupera tutti i workout
  Future<List<Workout>> getAllWorkouts() async {
    try {
      final querySnapshot = await _api.firestore.collection('workouts').get();
      return querySnapshot.docs
          .map((doc) => Workout.fromJson(doc.data()))
          .toList();
    } catch (e) {
      LoggerConfig.logger.e('Error fetching workouts: $e');
      return [];
    }
  }
}