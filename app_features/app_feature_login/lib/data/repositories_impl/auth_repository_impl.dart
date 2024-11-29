import 'package:app_feature_login/data/datasource/abstraction/auth_local_db_datasource.dart';
import 'package:app_feature_login/data/dto/user_dto.dart';
import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:app_feature_login/domain/repositories/auth_repository.dart';
import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/enum/common_error.dart';
import 'package:app_shared/utils/enum/login_resp.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Ref ref;
  final AuthLocalDbDatasource authLocalDbDatasource;

  AuthRepositoryImpl(this.ref, {required this.authLocalDbDatasource});

  @override
  Future<Either<CommonError, LoginResp>> login(
      String email, String password) async {
    try {
      ///TODO
      final user = await authLocalDbDatasource.getUserByEmail(email);
      // final user = await localDbDatasource.getUserById('l');
      return user.fold((error) => left(CommonError.databaseError), (userDto) {
        // LocalDb().setUser(userDto);
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
      // await localDbDatasource.insertUser(user0);
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

