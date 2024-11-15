import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/user_dto.freezed.dart';
part '../model/user_dto.g.dart';

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
}