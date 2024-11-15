import 'package:clocktrain/domain/models/exercise_model.dart';
import 'package:clocktrain/domain/models/timestamp_serializer.dart';
import 'package:clocktrain/presentation/widgets/organisms/list_tile_app.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_model.freezed.dart';
part 'workout_model.g.dart';

@freezed
class Workout with _$Workout implements ObjectT {
  const factory Workout({
    String? id,
    @Default([]) List<Exercise> exercises, // Lista di esercizi associati
    @TimestampSerializer() required DateTime createdAt, // Data di creazione
    @override required String name,
    @override String? description,
    @override String? mediaUrl,
  }) = _Workout;

  // Metodo di serializzazione JSON
  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);

  // Metodo di serializzazione JSON
  // Map<String, dynamic> toJson() => _$WorkoutToJson(this);

  // Implementazione di metodi di ObjectT (se necessario)
}
