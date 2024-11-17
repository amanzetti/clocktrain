import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_dto.freezed.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    required int id,
    required String tagName,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}