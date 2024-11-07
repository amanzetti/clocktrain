import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/data/api/repositories/user_api_repository.dart';
import 'package:clocktrain/data/models/user_model.dart';

class UserApi implements UserRepository {
  static final UserApi _instance = UserApi._internal();
  factory UserApi() => _instance;
  UserApi._internal();

  final Api _api = Api();

  @override
  Future<void> createUser(String userId, User user) async {
    try {
      await _api.firestore.collection('users').doc(userId).set(user.toJson());
      LoggerConfig.logger.i(
          'User created successfully!'); // Usa il logger per i messaggi informativi
    } catch (e) {
      LoggerConfig.logger
          .e('Error creating user: $e'); // Usa il logger per gli errori
      rethrow; // Rilancia l'errore per gestione più in alto
    }
  }

  @override
  Future<User?> getUserById(String userId) async {
    try {
      final userSnapshot =
          await _api.firestore.collection('users').doc(userId).get();
      if (userSnapshot.exists) {
        var a = userSnapshot.data();
        return User.fromJson(
            userSnapshot.data()!); // `data()` è già un Map<String, dynamic>
      } else {
        LoggerConfig.logger.w('User not found'); // Usa il logger per un avviso
      }
    } catch (e) {
      LoggerConfig.logger
          .e('Error fetching user: $e'); // Usa il logger per gli errori
      rethrow;
    }
    return null;
  }

  @override
  Future<void> updateUser(String userId, User user) async {
    try {
      await _api.firestore
          .collection('users')
          .doc(userId)
          .update(user.toJson());
      LoggerConfig.logger.i(
          'User updated successfully!'); // Usa il logger per i messaggi informativi
    } catch (e) {
      LoggerConfig.logger
          .e('Error updating user: $e'); // Usa il logger per gli errori
      rethrow;
    }
  }

  @override
  Future<void> deleteUser(String userId) async {
    try {
      await _api.firestore.collection('users').doc(userId).delete();
      LoggerConfig.logger.i(
          'User deleted successfully!'); // Usa il logger per i messaggi informativi
    } catch (e) {
      LoggerConfig.logger
          .e('Error deleting user: $e'); // Usa il logger per gli errori
      rethrow;
    }
  }

  @override
  Future<List<User>> getAllUsers() async {
    try {
      final querySnapshot = await _api.firestore.collection('users').get();
      return querySnapshot.docs
          .map((doc) => User.fromJson(
              doc.data())) // `data()` è già un Map<String, dynamic>
          .toList();
    } catch (e) {
      LoggerConfig.logger
          .e('Error fetching users: $e'); // Usa il logger per gli errori
      return [];
    }
  }
}
