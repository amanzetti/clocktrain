import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<CommonError, User>> getUserById(String userId);
  Future<Either<CommonError, User>> getUserByEmail(String email);
  Future<List<User>> getAllUsers();
  Future<void> addUser(User user);
  Future<void> updateUser(String userId, User user);
  Future<void> deleteUser(String userId);
}
