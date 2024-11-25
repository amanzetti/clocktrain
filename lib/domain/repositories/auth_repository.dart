import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:clocktrain/utils/enum/login_resp.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<CommonError, LoginResp>> login(String email, String password);

  Either<CommonError, String?> getUserId();

  Either<CommonError, User?> getUser();
}