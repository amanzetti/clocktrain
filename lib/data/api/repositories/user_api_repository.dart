import 'package:clocktrain/data/models/user_model.dart';

abstract class UserRepository {
  Future<void> createUser(String userId, User user);
  Future<User?> getUserById(String userId);
  Future<void> updateUser(String userId, User user);
  Future<void> deleteUser(String userId);
  Future<List<User>> getAllUsers();
}