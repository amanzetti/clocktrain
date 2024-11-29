import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:app_shared/utils/enum/common_error.dart';
import 'package:app_shared/utils/enum/login_resp.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<CommonError, LoginResp>> login(String email, String password);
  Future<Either<CommonError, RegistrationResp>> register(User user);

  // Either<CommonError, String?> getUserId();

  // Either<CommonError, User?> getUser();
}
