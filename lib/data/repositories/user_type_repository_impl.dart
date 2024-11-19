import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/user_type_entity.dart';
import 'package:clocktrain/domain/repositories/user_type_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/user_type_dto.dart';

class UserTypeRepositoryImpl implements UserTypeRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  UserTypeRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<UserType>> getAllUserTypes() async {
    final result = await localDbDatasource.getAllUserTypeDto();
    return result.fold(
      (error) => throw Exception('Error fetching user types: $error'),
      (userTypeDtos) => userTypeDtos.map((userTypeDto) => UserType(
        id: userTypeDto.id,
        typeName: userTypeDto.typeName,
      )).toList(),
    );
  }

  @override
  Future<UserType> getUserTypeById(int id) async {
    final result = await localDbDatasource.getUserTypeDtoById(id);
    return result.fold(
      (error) => throw Exception('Error fetching user type: $error'),
      (userTypeDto) => UserType(
        id: userTypeDto.id,
        typeName: userTypeDto.typeName,
      ),
    );
  }

  @override
  Future<void> addUserType(UserType userType) async {
    final userTypeDto = UserTypeDto(
      id: userType.id,
      typeName: userType.typeName,
    );
    final result = await localDbDatasource.putUserTypeDto(userTypeDto);
    result.fold(
      (error) => throw Exception('Error adding user type: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateUserType(UserType userType) async {
    final userTypeDto = UserTypeDto(
      id: userType.id,
      typeName: userType.typeName,
    );
    final result = await localDbDatasource.updateUserType(userTypeDto);
    result.fold(
      (error) => throw Exception('Error updating user type: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteUserType(int id) async {
    final result = await localDbDatasource.deleteUserType(id);
    result.fold(
      (error) => throw Exception('Error deleting user type: $error'),
      (_) => null,
    );
  }
}