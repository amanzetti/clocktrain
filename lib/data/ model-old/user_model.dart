import 'package:clocktrain/data/%20model-old/timestamp_serializer.dart';
import 'package:clocktrain/data/%20model-old/workout_model.dart';

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
    String? id,
    required String name,
    required String surname,
    required String username,
    required String email,
    required int height,
    required double weight,
    @TimestampSerializer() required DateTime birthDate,
    required String userRole,
    required String goal,
    String? profileImageUrl,
    @Default([]) List<Workout> workouts, // Lista dei workout personalizzati
    @Default(false) bool darkModeEnabled, // Stato del tema scuro
    @TimestampSerializer() required DateTime createdAt, // Data di creazione
  }) = _User;

  // Metodo di serializzazione JSON
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
