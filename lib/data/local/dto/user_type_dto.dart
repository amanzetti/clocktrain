import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_type_dto.freezed.dart';
part 'user_type_dto.g.dart';

@freezed
class UserTypeDto with _$UserTypeDto {
  const factory UserTypeDto({
    required int id,
    required String typeName,
  }) = _UserTypeDto;

  factory UserTypeDto.fromJson(Map<String, dynamic> json) =>
      _$UserTypeDtoFromJson(json);

  factory UserTypeDto.fromEntity(UserType entity) {
    return UserTypeDto(
      id: entity.id,
      typeName: entity.typeName,
    );
  }
}

extension UserTypeDtoX on UserTypeDto {
  UserType toEntity() {
    return UserType(
      id: id,
      typeName: typeName,
    );
  }
}
