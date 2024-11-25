import 'package:clocktrain/data/local/app_database.dart' as db;
import 'package:clocktrain/domain/entities/user_entity.dart' as domain;
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    String? id,
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

  factory UserDto.fromEntity(db.User entity) {
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

  factory UserDto.fromDomainEntity(domain.User entity) {
    return UserDto(
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
  db.User toEntity() {
    return db.User(
      id: id ?? '',
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

  domain.User toDomainEntity(){
    return domain.User(
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
