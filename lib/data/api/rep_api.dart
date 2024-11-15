import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/data/%20model-old/rep_model.dart';

class RepApi {
  static final RepApi _instance = RepApi._internal();
  factory RepApi() => _instance;
  RepApi._internal();

  final Api _api = Api();

  // Crea una nuova ripetizione
  Future<void> createRep(String repId, Rep rep) async {
    try {
      await _api.firestore.collection('reps').doc(repId).set(rep.toJson());
      LoggerConfig.logger.i('Rep created successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error creating rep: $e');
      rethrow;
    }
  }

  // Recupera una ripetizione per ID
  Future<Rep?> getRepById(String repId) async {
    try {
      final repSnapshot =
          await _api.firestore.collection('reps').doc(repId).get();
      if (repSnapshot.exists) {
        return Rep.fromJson(repSnapshot.data()!);
      } else {
        LoggerConfig.logger.w('Rep not found');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching rep: $e');
      rethrow;
    }
    return null;
  }

  // Aggiorna una ripetizione esistente
  Future<void> updateRep(String repId, Rep rep) async {
    try {
      await _api.firestore.collection('reps').doc(repId).update(rep.toJson());
      LoggerConfig.logger.i('Rep updated successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error updating rep: $e');
      rethrow;
    }
  }

  // Elimina una ripetizione
  Future<void> deleteRep(String repId) async {
    try {
      await _api.firestore.collection('reps').doc(repId).delete();
      LoggerConfig.logger.i('Rep deleted successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting rep: $e');
      rethrow;
    }
  }

  // Recupera tutte le ripetizioni
  Future<List<Rep>> getAllReps() async {
    try {
      final querySnapshot = await _api.firestore.collection('reps').get();
      return querySnapshot.docs.map((doc) => Rep.fromJson(doc.data())).toList();
    } catch (e) {
      LoggerConfig.logger.e('Error fetching reps: $e');
      return [];
    }
  }
}
