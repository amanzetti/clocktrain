import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/local/local_db.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/repositories/auth_repository.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:clocktrain/utils/enum/login_resp.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthRepositoryImpl implements AuthRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  AuthRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<Either<CommonError, LoginResp>> login(
      String email, String password) async {
    try {
      ///TODO
      // final user = await localDbDatasource.getUserByEmail(email);
      final user = await localDbDatasource.getUserById(1);
      print(email);
      return user.fold((error) => left(CommonError.databaseError), (userDto) {
        LocalDb().setUser(userDto);
        return right(LoginResp.success);
      });
    } catch (e) {
      return left(CommonError.unknown);
    }
  }

  @override
  Either<CommonError, String?> getUserId() {
    if (LocalDb().user == null) {
      return left(CommonError.userNotAuthenticated);
    } else {
      return right(LocalDb().user!.id.toString());
    }
  }



  @override
  Either<CommonError, User?> getUser()  {
    if (LocalDb().user == null) {
      return left(CommonError.userNotAuthenticated);
    } else {
      return right(User(
        name: LocalDb().user!.name,
        email: LocalDb().user!.email,
        password: LocalDb().user!.password,
        dateOfBirth: LocalDb().user!.dateOfBirth,
        height: LocalDb().user!.height,
        weight: LocalDb().user!.weight,
        avatar: LocalDb().user!.avatar,
        userTypeId: LocalDb().user!.userTypeId,
      ));
    }
  }
}
