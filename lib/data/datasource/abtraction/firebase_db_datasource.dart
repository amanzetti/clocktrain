import 'package:clocktrain/data/dto/user_dto.dart';

abstract class FirebaseDbDatasource {
  Future<UserDto> getUser(String userId);
}