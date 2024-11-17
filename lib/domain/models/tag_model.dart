import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_model.freezed.dart';
part 'tag_model.g.dart';

@freezed
class Tag with _$Tag {
  const factory Tag({
    required int id,
    required String tagName,
  }) = _Tag;

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);
}