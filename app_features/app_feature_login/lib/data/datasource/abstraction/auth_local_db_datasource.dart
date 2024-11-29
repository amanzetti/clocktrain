import 'package:app_feature_login/data/dto/user_dto.dart';
import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/enum/common_error.dart';

abstract class AuthLocalDbDatasource {
  Future<Either<CommonError, UserDto>> getUserByEmail(String email);
  // Future<Either<CommonError, UserDto>> getUserById(String id);
  // Future<Either<CommonError, void>> insertUser(UserDto user);
}