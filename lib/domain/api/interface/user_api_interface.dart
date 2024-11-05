import 'package:clocktrain/domain/models/user_model.dart';

abstract class UserApiInterface {
  Future<User> getUserById(String id);
}
