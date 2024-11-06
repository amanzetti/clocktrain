import 'package:clocktrain/data/models/user_model.dart';

abstract class UserApiInterface {
  Future<User?> getUserById(String userId);
}
