import 'package:app_feature_login/data/datasource/abstraction/auth_local_db_datasource.dart';
import 'package:app_feature_login/data/dto/user_dto.dart';
import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:app_feature_login/domain/repositories/auth_repository.dart';
import 'package:app_shared/config/logger_config.dart';
import 'package:app_shared/utils/enum/common_error.dart';
import 'package:app_shared/utils/enum/login_resp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Ref ref;
  final AuthLocalDbDatasource authLocalDbDatasource;

  final log = LoggerConfig.logger;

  AuthRepositoryImpl(this.ref, {required this.authLocalDbDatasource});

  @override
  Future<Either<CommonError, LoginResp>> login(
      String email, String password) async {
    try {
      final user = await authLocalDbDatasource.getUserByEmail(email);
      return user.fold((error) => left(CommonError.databaseError), (userDto) {
        return right(LoginResp.success);
      });
    } catch (e) {
      return left(CommonError.unknown);
    }
  }

  @override
  Future<Either<CommonError, RegistrationResp>> register(User user) async {
    try {
      final user0 = UserDto.fromDomain(user);
      await authLocalDbDatasource.insertUser(user0);

      return right(RegistrationResp.success);
    } catch (e) {
      return left(CommonError.unknown);
    }
  }

  // @override
  // Either<CommonError, String?> getUserId() {
  //   if (LocalDb().user == null) {
  //     return left(CommonError.userNotAuthenticated);
  //   } else {
  //     return right(LocalDb().user!.id.toString());
  //   }
  // }

  // @override
  // Either<CommonError, User?> getUser() {
  //   if (LocalDb().user == null) {
  //     return left(CommonError.userNotAuthenticated);
  //   } else {
  //     return right(User(
  //       name: LocalDb().user!.name,
  //       email: LocalDb().user!.email,
  //       password: LocalDb().user!.password,
  //       dateOfBirth: LocalDb().user!.dateOfBirth,
  //       height: LocalDb().user!.height,
  //       weight: LocalDb().user!.weight,
  //       avatar: LocalDb().user!.avatar,
  //       userTypeId: LocalDb().user!.userTypeId,
  //     ));
  //   }
  // }
}
