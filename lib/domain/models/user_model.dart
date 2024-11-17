
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum UserRole {
  user,
  admin,
  athlete,
  trainer,
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String name,
    required String email,
    required String password,
    required DateTime dateOfBirth,
    required double height,
    required double weight,
    String? avatar,
    required int userTypeId,
  }) = _User;

  // Metodo di serializzazione JSON
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
