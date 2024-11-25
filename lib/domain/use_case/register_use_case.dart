import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/repositories/auth_repository.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:clocktrain/utils/enum/login_resp.dart';
import 'package:dartz/dartz.dart';

class RegisterUseCase {
  final AuthRepository _authRepository;

  RegisterUseCase(this._authRepository);

  Future<Either<CommonError, RegistrationResp>> call(
      User user) async {
    return _authRepository
        .register(user)
        .then<Either<CommonError, RegistrationResp>>(
            (registrationReps) => registrationReps.fold((l) {
                  return Left(l);
                }, (r) {
                  if (r == RegistrationResp.success) {
                    return Right(r);
                  } else {
                    return const Left(CommonError.unknown);
                  }
                }));
  }
}
