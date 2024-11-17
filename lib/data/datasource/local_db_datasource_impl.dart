import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/dto/user_dto.dart';
import 'package:clocktrain/data/local/db.dart';

class LocalDbDatasourceImpl implements LocalDbDatasource {
  late AppDatabase _db;
  
  @override
  void init() {
    _db = AppDatabase();
  }

  @override
  Future<UserDto> getUser(String userId) async {
    final userEntity = await _db.getUser(userId);
    final userDto = UserDto.fromEntity(userEntity);
    return userDto;
  }
}
