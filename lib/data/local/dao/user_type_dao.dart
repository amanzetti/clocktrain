import 'package:clocktrain/data/local/tables/user_type_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/user_type_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'user_type_dao.g.dart';

@DriftAccessor(tables: [UserTypes])
class UserTypeDao extends DatabaseAccessor<AppDatabase> with _$UserTypeDaoMixin {
  UserTypeDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<UserTypeDto>>> getAllUserTypeDto() async {
    try {
      final userTypes = await select(db.userTypes).get();
      final userTypeDtos = userTypes
          .map((userType) => UserTypeDto(
            id: userType.id,
            typeName: userType.typeName,
          ))
          .toList();
      return Right(userTypeDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, UserTypeDto>> getUserTypeDtoById(int id) async {
    try {
      final userType = await (select(db.userTypes)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (userType != null) {
        return Right(UserTypeDto(
          id: userType.id,
          typeName: userType.typeName,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> putUserTypeDto(UserTypeDto userTypeDto) async {
    try {
      await into(userTypes).insert(UserTypesCompanion.insert(
        typeName: (userTypeDto.typeName),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateUserType(UserTypeDto userTypeDto) async {
    try {
      await (update(userTypes)..where((tbl) => tbl.id.equals(userTypeDto.id)))
          .write(UserTypesCompanion(
            typeName: Value(userTypeDto.typeName),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteUserType(int id) async {
    try {
      await (delete(userTypes)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}