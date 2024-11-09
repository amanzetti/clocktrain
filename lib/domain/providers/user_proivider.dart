import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/api/user_api.dart';
import 'package:clocktrain/data/models/user_model.dart';
import 'package:clocktrain/utils/helpers/json_helper.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final userApiProvider = Provider<UserApi>((ref) {
  return UserApi();
});

final userProvider = StateNotifierProvider<UserNotifier, List<User>>((ref) {
  final userApi = ref.watch(userApiProvider);
  return UserNotifier(userApi: userApi);
});

class UserNotifier extends StateNotifier<List<User>> {
  final UserApi userApi;

  UserNotifier({required this.userApi}) : super([]);

  // Crea un nuovo utente
  Future<void> createUser(String userId, User user) async {
    try {
      await userApi.createUser(userId, user);
      final updatedUsers = [...state, user];
      state = updatedUsers;
      LoggerConfig.logger.i('User created successfully: ${user.name}');
    } catch (e) {
      LoggerConfig.logger.e('Error creating user: $e');
    }
  }

  // Recupera un utente per ID
  Future<void> getUserById(String userId) async {
    try {
      final user = await userApi.getUserById(userId);
      if (user != null) {
        state = [user];
        LoggerConfig.logger.i('User fetched successfully: ${user.name}');
      } else {
        LoggerConfig.logger.w('User not found for ID: $userId');
      }
    } catch (e) {
      LoggerConfig.logger.e('Error fetching user: $e');
    }
  }

  Future<User?> getUserByIdMock(String userId) async {
    var dataUser = await loadJsonData('user');
    var user = User.fromJson(dataUser);
    state = [user];
    return user;
  }

  // Aggiorna un utente esistente
  Future<void> updateUser(String userId, User user) async {
    try {
      await userApi.updateUser(userId, user);
      final updatedUsers = state.map((u) {
        return u.id == userId ? user : u;
      }).toList();
      state = updatedUsers;
      LoggerConfig.logger.i('User updated successfully: ${user.name}');
    } catch (e) {
      LoggerConfig.logger.e('Error updating user: $e');
    }
  }

  // Elimina un utente
  Future<void> deleteUser(String userId) async {
    try {
      await userApi.deleteUser(userId);
      state = state.where((u) => u.id != userId).toList();
      LoggerConfig.logger.i('User deleted successfully: $userId');
    } catch (e) {
      LoggerConfig.logger.e('Error deleting user: $e');
    }
  }

  // Recupera tutti gli utenti
  Future<void> getAllUsers() async {
    try {
      final users = await userApi.getAllUsers();
      state = users;
      LoggerConfig.logger.i('Fetched all users successfully');
    } catch (e) {
      LoggerConfig.logger.e('Error fetching all users: $e');
    }
  }
}
