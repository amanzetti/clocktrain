import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  const factory Workout({
    required int id,
    required String name,
    String? description,
    required int userId,
    required DateTime dateCreated,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) => _$WorkoutFromJson(json);
}