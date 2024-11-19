import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_dto.freezed.dart';
part 'tag_dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    required int id,
    required String tagName,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);

  factory TagDto.fromEntity(Tag entity) {
    return TagDto(
      id: entity.id,
      tagName: entity.tagName,
    );
  }
}

extension TagDtoX on TagDto {
  Tag toEntity() {
    return Tag(
      id: id,
      tagName: tagName,
    );
  }
}
