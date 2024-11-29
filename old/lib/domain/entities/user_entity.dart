import 'package:clocktrain/domain/entities/user_type_entity.dart';

class User {
  final String name;
  final String surname;
  final String username;
  final String email;
  final DateTime birthDate;
  final int height;
  final int weight;
  final String? avatar;
  final UserType userType;

  User({
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
