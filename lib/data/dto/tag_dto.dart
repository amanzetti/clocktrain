import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/tag_dto.freezed.dart';
part '../model/tag_dto.g.dart';

@freezed
class TagDto with _$TagDto {
  const factory TagDto({
    required int id,
    required String tagName,
  }) = _TagDto;

  factory TagDto.fromJson(Map<String, dynamic> json) => _$TagDtoFromJson(json);
}