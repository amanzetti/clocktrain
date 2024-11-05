import 'package:clocktrain/domain/models/workout_model.dart';

class User {
  final String id;
  final String name;
  final String surname;
  final String username;
  final String email;
  final int height;
  final double weight;
  final DateTime birthDate;
  final String goal;
  final String? profileImageUrl;
  final List<Workout> workouts; // Lista dei workout personalizzati dell'utente
  final bool darkModeEnabled;
  final DateTime createdAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.surname,
    required this.username,
    required this.height,
    required this.weight,
    required this.birthDate,
    required this.goal,
    this.profileImageUrl,
    this.workouts = const [],
    this.darkModeEnabled = false,
    required this.createdAt,
  });
}
