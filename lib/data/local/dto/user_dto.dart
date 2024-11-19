import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    required int id,
    required String name,
    required String email,
    required String password,
    required DateTime dateOfBirth,
    required double height,
    required double weight,
    String? avatar,
    required int userTypeId,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromEntity(User entity) {
    return UserDto(
      id: entity.id,
      name: entity.name,
      email: entity.email,
      password: entity.password,
      dateOfBirth: entity.dateOfBirth,
      height: entity.height,
      weight: entity.weight,
      avatar: entity.avatar,
      userTypeId: entity.userTypeId,
    );
  }
}

extension UserDtoX on UserDto {
  User toEntity() {
    return User(
      id: id,
      name: name,
      email: email,
      password: password,
      dateOfBirth: dateOfBirth,
      height: height,
      weight: weight,
      avatar: avatar,
      userTypeId: userTypeId,
    );
  }
}
