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

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);

  // factory UserDto.fromEntity(User user) {
  //   return UserDto(
  //     id: user.id,
  //     name: user.name,
  //     email: user.email,
  //     password: user.password,
  //     dateOfBirth: user.dateOfBirth,
  //     height: user.height,
  //     weight: user.weight,
  //     avatar: user.avatar,
  //     userTypeId: user.userTypeId,
  //   );
  // }
}