import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/models/user_model.dart';
import 'package:clocktrain/domain/repositories/user_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserRepositoryImpl implements UserRepository {
  final Ref ref;
  LocalDbDatasource localDbDatasource;

  UserRepositoryImpl(this.ref, {required this.localDbDatasource});
  
  @override
  Future<User> getCurrentUser(String userId) {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  // @override
  // Future<User> getUser() {
  //   final userDto =
  //   // Qui va chiamata l'API per recuperare l'utente corrente
  //   // return User.fromJson(json);
  // }
}
