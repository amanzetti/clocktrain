import 'package:app_feature_login/data/datasource/abstraction/auth_local_db_datasource.dart';
import 'package:app_feature_login/data/dto/user_dto.dart';
import 'package:app_shared/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

class AuthLocalDbDatasourceImpl implements AuthLocalDbDatasource {
  @override
  Future<Either<CommonError, UserDto>> getUserByEmail(String email) {
    var userDto = UserDto(
      id: '1',
      name: 'name',
      surname: 'surname',
      email: 'email',
      username: 'username',
      birthDate: DateTime.now(),
      height: 1,
      weight: 1,
      avatar: 'avatar',
    );
    return Future.value(right(userDto));
  }
}