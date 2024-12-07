import 'package:app_feature_login/domain/enities/user_type_entity.dart';

class User {
  final String? id;
  final String name;
  final String surname;
  final String username;
  final String email;
  final DateTime birthDate;
  final int height;
  final double weight;
  final String? avatar;
  final UserType userType;

  User({
    this.id,
    required this.name,
    required this.surname,
    required this.username,
    required this.email,
    required this.birthDate,
    required this.height,
    required this.weight,
    this.avatar,
    required this.userType,
  });
}
