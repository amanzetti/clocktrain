import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/user_dto.dart';

class UserRepositoryImpl implements UserRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  UserRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<User> getCurrentUser(String userId) async {
    final result = await localDbDatasource.getUserById(int.parse(userId));
    return result.fold(
      (error) => throw Exception('Error fetching user: $error'),
      (userDto) => User(
        id: userDto.id,
        name: userDto.name,
        email: userDto.email,
        password: userDto.password,
        dateOfBirth: userDto.dateOfBirth,
        height: userDto.height,
        weight: userDto.weight,
        avatar: userDto.avatar,
        userTypeId: userDto.userTypeId,
      ),
    );
  }

  @override
  Future<List<User>> getAllUsers() async {
    final result = await localDbDatasource.getAllUsers();
    return result.fold(
      (error) => throw Exception('Error fetching users: $error'),
      (userDtos) => userDtos.map((userDto) => User(
        id: userDto.id,
        name: userDto.name,
        email: userDto.email,
        password: userDto.password,
        dateOfBirth: userDto.dateOfBirth,
        height: userDto.height,
        weight: userDto.weight,
        avatar: userDto.avatar,
        userTypeId: userDto.userTypeId,
      )).toList(),
    );
  }

  @override
  Future<void> addUser(User user) async {
    final userDto = UserDto(
      id: user.id,
      name: user.name,
      email: user.email,
      password: user.password,
      dateOfBirth: user.dateOfBirth,
      height: user.height,
      weight: user.weight,
      avatar: user.avatar,
      userTypeId: user.userTypeId,
    );
    final result = await localDbDatasource.insertUser(userDto);
    result.fold(
      (error) => throw Exception('Error adding user: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateUser(User user) async {
    final userDto = UserDto(
      id: user.id,
      name: user.name,
      email: user.email,
      password: user.password,
      dateOfBirth: user.dateOfBirth,
      height: user.height,
      weight: user.weight,
      avatar: user.avatar,
      userTypeId: user.userTypeId,
    );
    final result = await localDbDatasource.updateUser(userDto);
    result.fold(
      (error) => throw Exception('Error updating user: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteUser(String userId) async {
    final result = await localDbDatasource.deleteUser(int.parse(userId));
    result.fold(
      (error) => throw Exception('Error deleting user: $error'),
      (_) => null,
    );
  }
}