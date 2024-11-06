import 'package:clocktrain/data/models/workout_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum UserRole {
  user,
  admin,
  athlete,
  trainer,
}

class User {
  final String id;
  final String name;
  final String surname;
  final String username;
  final String email;
  final int height;
  final double weight;
  final DateTime birthDate;
  final UserRole userRole;
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
    required this.userRole,
    required this.height,
    required this.weight,
    required this.birthDate,
    required this.goal,
    this.profileImageUrl,
    this.workouts = const [],
    this.darkModeEnabled = false,
    required this.createdAt,
  });

// Metodo da utilizzare per mappare i dati da Firestore
  factory User.fromMap(Map<String, dynamic> data) {
    try {
      return User(
        id: data['id'] ?? '',
        name: data['name'] ?? '',
        surname: data['surname'] ?? '',
        username: data['username'] ?? '',
        email: data['email'] ?? '',
        height: data['height'] ?? 0,
        weight: data['weight'] ?? 0.0,
        birthDate: (data['birthDate'] as Timestamp).toDate(),
        userRole: UserRole.values.firstWhere(
            (e) => e.toString() == 'UserRole.' + (data['userRole'] ?? ''),
            orElse: () => UserRole.user),
        goal: data['goal'] ?? '',
        profileImageUrl: data['profileImageUrl'],
        workouts:
            // data['workouts'] != null
            //     ? List<Workout>.from(data['workouts'].map((x) => Workout.fromMap(x)))
            //     :
            [],
        darkModeEnabled: data['darkModeEnabled'] ?? false,
        createdAt: (data['createdAt'] as Timestamp).toDate(),
      );
    } catch (e) {
      print('Error in fromMap: $e');
      rethrow; // Rilancia l'errore per permettere al chiamante di gestirlo
    }
  }

  // Metodo per convertire l'oggetto User in un map per Firestore
  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'email': email,
      'role': userRole.toString(),
      'createdAt': createdAt,
      'name': name,
      'surname': surname,
      'height': height,
      'weight': weight,
      'birthDate': birthDate,
      'goal': goal,
      'profileImageUrl': profileImageUrl,
      'darkModeEnabled': darkModeEnabled,
    };
  }
}
