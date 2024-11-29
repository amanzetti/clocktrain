import 'package:clocktrain/domain/entities/user_type_entity.dart';

abstract class UserTypeRepository {
  Future<List<UserType>> getAllUserTypes();
  Future<UserType> getUserTypeById(int id);
  Future<void> addUserType(UserType userType);
  Future<void> updateUserType(UserType userType);
  Future<void> deleteUserType(int id);
}