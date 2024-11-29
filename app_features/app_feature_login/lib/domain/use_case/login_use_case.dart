import 'package:app_shared/utils/enum/common_error.dart';
import 'package:app_shared/utils/enum/login_resp.dart';

import '../repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

class LoginUseCase {
  final AuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  Future<Either<CommonError, LoginResp>> call(
      String email, String password) async {
    return _authRepository
        .login(email, password)
        .then<Either<CommonError, LoginResp>>(
            (loginReps) => loginReps.fold((l) {
                  return Left(l);
                }, (r) {
                  if (r == LoginResp.success) {
                    return Right(r);
                  } else {
                    return const Left(CommonError.unknown);
                  }
                }));
  }
}
