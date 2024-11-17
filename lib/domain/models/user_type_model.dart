import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_type_model.freezed.dart';
part 'user_type_model.g.dart';

@freezed
class UserType with _$UserType {
  const factory UserType({
    required int id,
    required String typeName,
  }) = _UserType;

  factory UserType.fromJson(Map<String, dynamic> json) => _$UserTypeFromJson(json);
}