import 'package:clocktrain/domain/models/user_model.dart';

abstract class UserRepository {
  Future<User> getCurrentUser(String userId);
}
