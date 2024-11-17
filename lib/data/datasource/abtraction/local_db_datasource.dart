import 'package:clocktrain/data/dto/user_dto.dart';

abstract class LocalDbDatasource {
  Future<UserDto> getUser(String userId);
}
