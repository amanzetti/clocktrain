import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/user_type_entity.dart' as domain;

part 'user_type_dto.freezed.dart';
part 'user_type_dto.g.dart';

@freezed
class UserTypeDto with _$UserTypeDto {
  const factory UserTypeDto({
    int? id,
    required String name,
  }) = _UserTypeDto;

  factory UserTypeDto.fromJson(Map<String, dynamic> json) => _$UserTypeDtoFromJson(json);

  factory UserTypeDto.fromDomain(domain.UserType userType) {
    return UserTypeDto(
      id: userType.id,
      name: userType.name,
    );
  }

  domain.UserType toDomain() {
    return domain.UserType(
      id: id,
      name: name,
    );
  }
}