import '../../app_data/lib/local/realm/tables/app_database.dart' as db;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clocktrain/domain/entities/tag_entity.dart' as domain;
import 'user_dto.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    required int id,
    required String name,
    UserDto? user,
    required bool isGlobal,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  factory TagDto.fromRealm(Tag tag) {
    return TagDto(
      id: tag.id,
      name: tag.name,
      user: tag.user != null ? UserDto.fromRealm(tag.user!) : null,
      isGlobal: tag.isGlobal,
    );
  }

  db.Tag toRealm() {
    return db.Tag(
      id: id,
      name: name,
      user: user?.toRealm(),
      isGlobal: isGlobal,
    );
  }

  factory TagDto.fromDomain(domain.Tag tag) {
    return TagDto(
      id: tag.id,
      name: tag.name,
      user: tag.user != null ? UserDto.fromDomain(tag.user!) : null,
      isGlobal: tag.isGlobal,
    );
  }

  domain.Tag toDomain() {
    return domain.Tag(
      id: id,
      name: name,
      user: user?.toDomain(),
      isGlobal: isGlobal,
    );
  }
}