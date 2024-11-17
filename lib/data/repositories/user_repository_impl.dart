import 'package:clocktrain/data/api/repositories/user_api_repository.dart';
import 'package:clocktrain/domain/models/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<void> createUser(String userId, User user) {
    // TODO: implement createUser
    throw UnimplementedError();
  }

  @override
  Future<void> deleteUser(String userId) {
    // TODO: implement deleteUser
    throw UnimplementedError();
  }

  @override
  Future<List<User>> getAllUsers() {
    // TODO: implement getAllUsers
    throw UnimplementedError();
  }

  @override
  Future<User?> getUserById(String userId) {
    // TODO: implement getUserById
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(String userId, User user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

  // @override
  // Future<User> getUser() {
  //   final userDto = 
  //   // Qui va chiamata l'API per recuperare l'utente corrente
  //   // return User.fromJson(json);
  // }

}