import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/dto/user_dto.dart';
import 'package:clocktrain/data/local/app_database.dart';

class LocalDbDatasourceImpl implements LocalDbDatasource {
  late AppDatabase _db;

  @override
  void init() {
    // _db = AppDatabase();
  }

  @override
  Future<UserDto> getUser(String userId) async {
    // final userEntity = await _db.getUser(userId);
    // final userDto = UserDto.fromEntity(userEntity);
    // return userDto;
    return UserDto(
      id: 1,
      name: 'John Doe',
      email: '',
      password: 'password123',
      dateOfBirth: DateTime(1990, 1, 1),
      height: 180.0,
      weight: 75.0,
      userTypeId: 1,
    );
  }
}
