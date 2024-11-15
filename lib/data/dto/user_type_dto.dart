import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/user_type_dto.freezed.dart';
part '../model/user_type_dto.g.dart';

@freezed
class UserTypeDto with _$UserTypeDto {
  const factory UserTypeDto({
    required int id,
    required String typeName,
  }) = _UserTypeDto;

  factory UserTypeDto.fromJson(Map<String, dynamic> json) => _$UserTypeDtoFromJson(json);
}