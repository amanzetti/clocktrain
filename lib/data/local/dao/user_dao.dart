import 'package:clocktrain/data/local/tables/user_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/user_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'user_dao.g.dart';

@DriftAccessor(tables: [Users])
class UserDao extends DatabaseAccessor<AppDatabase> with _$UserDaoMixin {
  UserDao(super.db);

  Future<Either<CommonError, List<UserDto>>> getAllUsers() async {
    try {
      final users = await select(db.users).get();
      final userDtos = users
          .map((user) => UserDto(
                id: user.id,
                name: user.name,
                email: user.email,
                password: user.password,
                dateOfBirth: user.dateOfBirth,
                height: user.height,
                weight: user.weight,
                avatar: user.avatar,
                userTypeId: user.userTypeId,
              ))
          .toList();
      return Right(userDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, UserDto>> getUserById(String id) async {
    try {
      final user = await (select(users)..where((tbl) => tbl.id.equals(id)))
          .getSingleOrNull();
      if (user != null) {
        return Right(UserDto(
          id: user.id,
          name: user.name,
          email: user.email,
          password: user.password,
          dateOfBirth: user.dateOfBirth,
          height: user.height,
          weight: user.weight,
          avatar: user.avatar,
          userTypeId: user.userTypeId,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, UserDto>> getUserByEmail(String email) async {
    try {
      final user = await (select(users)
            ..where((tbl) => tbl.email.equals(email)))
          .getSingleOrNull();
      if (user != null) {
        return Right(UserDto(
          id: user.id,
          name: user.name,
          email: user.email,
          password: user.password,
          dateOfBirth: user.dateOfBirth,
          height: user.height,
          weight: user.weight,
          avatar: user.avatar,
          userTypeId: user.userTypeId,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertUser(UserDto userDto) async {
    try {
      await into(users).insert(UsersCompanion.insert(
        // id: Value(userDto.id),
        name: userDto.name,
        email: userDto.email,
        password: userDto.password,
        dateOfBirth: userDto.dateOfBirth,
        height: userDto.height,
        weight: userDto.weight,
        avatar: Value(userDto.avatar),
        userTypeId: userDto.userTypeId,
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateUser(UserDto userDto) async {
    try {
      await (update(users)..where((tbl) => tbl.id.equals(userDto.id!)))
          .write(UsersCompanion.insert(
        id: Value(userDto.id!),
        name: userDto.name,
        email: userDto.email,
        password: userDto.password,
        dateOfBirth: userDto.dateOfBirth,
        height: userDto.height,
        weight: userDto.weight,
        avatar: Value(userDto.avatar),
        userTypeId: userDto.userTypeId,
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteUser(String id) async {
    try {
      await (delete(users)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}
