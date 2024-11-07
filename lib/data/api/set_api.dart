import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/data/models/set_model.dart';

class SetApi {
  static final SetApi _instance = SetApi._internal();
  factory SetApi() => _instance;
  SetApi._internal();

  final Api _api = Api();

  // Crea un nuovo set
  Future<void> createSet(String setId, Set set) async {
    try {
      await _api.firestore.collection('sets').doc(setId).set(set.toJson());
      LoggerConfig.logger.i('Set created successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error creating set: $e');
      rethrow;
    }
  }

  // Recupera un set per ID
  Future<Set?> getSetById(String setId) async {
    try {
      final setSnapshot = await _api.firestore.collection('sets').doc(setId).get();
      if (setSnapshot.exists) {
        return Set.fromJson(setSnapshot.data()!);
      } else {
        LoggerConfig.logger.w('Set not found');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching set: $e');
      rethrow;
    }
    return null;
  }

  // Aggiorna un set esistente
  Future<void> updateSet(String setId, Set set) async {
    try {
      await _api.firestore.collection('sets').doc(setId).update(set.toJson());
      LoggerConfig.logger.i('Set updated successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error updating set: $e');
      rethrow;
    }
  }

  // Elimina un set
  Future<void> deleteSet(String setId) async {
    try {
      await _api.firestore.collection('sets').doc(setId).delete();
      LoggerConfig.logger.i('Set deleted successfully!');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting set: $e');
      rethrow;
    }
  }

  // Recupera tutti i set
  Future<List<Set>> getAllSets() async {
    try {
      final querySnapshot = await _api.firestore.collection('sets').get();
      return querySnapshot.docs
          .map((doc) => Set.fromJson(doc.data()))
          .toList();
    } catch (e) {
      LoggerConfig.logger.e('Error fetching sets: $e');
      return [];
    }
  }
}