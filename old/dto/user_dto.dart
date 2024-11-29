import 'user_type_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/user_entity.dart' as domain;

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto({
    String? id,
    required String username,
    required String email,
    required String name,
    required String surname,
    required DateTime birthDate,
    required int weight,
    required int height,
    String? avatar,
    UserTypeDto? userType,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  factory UserDto.fromDomain(domain.User user, String? id) {
    return UserDto(
      id: id,
      username: user.username,
      email: user.email,
      name: user.name,
      surname: user.surname,
      birthDate: user.birthDate,
      weight: user.weight,
      height: user.height,
      avatar: user.avatar,
      userType: UserTypeDto.fromDomain(user.userType),
    );
  }

  domain.User toDomain() {
    return domain.User(
      username: username,
      email: email,
      name: name,
      surname: surname,
      birthDate: birthDate,
      weight: weight,
      height: height,
      avatar: avatar,
      userType: userType!.toDomain(),
    );
  }
}