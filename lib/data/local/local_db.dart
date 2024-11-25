import 'package:clocktrain/data/local/dto/user_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

class LocalDb {
  static final LocalDb _instance = LocalDb._internal();
  UserDto? _user;

  LocalDb._internal();
  factory LocalDb() {
    return _instance;
  }

  UserDto? get user => _user;

  void setUser(UserDto user) {
    _user = user;
  }

  void clearUser() {
    _user = null;
  }

  Either<CommonError, int> getUserId() {
    if (_user == null) {
      return left(CommonError.userNotAuthenticated);
    } else {
      return right(_user!.id);
    }
  }
}
