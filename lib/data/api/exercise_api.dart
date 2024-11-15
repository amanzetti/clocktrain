import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/domain/models/exercise_model.dart';

class ExerciseApi {
  static final ExerciseApi _instance = ExerciseApi._internal();
  factory ExerciseApi() => _instance;
  ExerciseApi._internal();

  final Api _api = Api();

  // Crea un nuovo esercizio
  Future<void> createExercise(String exerciseId, Exercise exercise) async {
    try {
      await _api.firestore
          .collection('exercises')
          .doc(exerciseId)
          .set(exercise.toJson());
      LoggerConfig.logger.i('Exercise created successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error creating exercise: $e');
      rethrow;
    }
  }

  // Recupera un esercizio per ID
  Future<Exercise?> getExerciseById(String exerciseId) async {
    try {
      final exerciseSnapshot =
          await _api.firestore.collection('exercises').doc(exerciseId).get();
      if (exerciseSnapshot.exists) {
        return Exercise.fromJson(exerciseSnapshot.data()!);
      } else {
        LoggerConfig.logger.w('Exercise not found');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching exercise: $e');
      rethrow;
    }
    return null;
  }

  // Aggiorna un esercizio esistente
  Future<void> updateExercise(String exerciseId, Exercise exercise) async {
    try {
      await _api.firestore
          .collection('exercises')
          .doc(exerciseId)
          .update(exercise.toJson());
      LoggerConfig.logger.i('Exercise updated successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error updating exercise: $e');
      rethrow;
    }
  }

  // Elimina un esercizio
  Future<void> deleteExercise(String exerciseId) async {
    try {
      await _api.firestore.collection('exercises').doc(exerciseId).delete();
      LoggerConfig.logger.i('Exercise deleted successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting exercise: $e');
      rethrow;
    }
  }

  // Recupera tutti gli esercizi
  Future<List<Exercise>> getAllExercises() async {
    try {
      final querySnapshot = await _api.firestore.collection('exercises').get();
      return querySnapshot.docs
          .map((doc) => Exercise.fromJson(doc.data()))
          .toList();
    } catch (e) {
      LoggerConfig.logger.e('Error fetching exercises: $e');
      return [];
    }
  }
}
