import 'package:clocktrain/data/api/user_api.dart';
import 'package:clocktrain/domain/api/interface/user_api_interface.dart';
import 'package:clocktrain/data/models/user_model.dart';

class UserApiImp implements UserApiInterface {
  @override
  Future<User?> getUserById(String userId) async {
    return await UserApi().getUserById(userId);
  }
}
