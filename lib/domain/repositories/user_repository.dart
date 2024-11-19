import 'package:clocktrain/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<User> getCurrentUser(String userId);
  Future<List<User>> getAllUsers();
  Future<void> addUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(String userId);
}