import 'package:clocktrain/domain/models/set_model.dart';
import 'package:clocktrain/presentation/widgets/organisms/list_tile_app.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise_model.freezed.dart';
part 'exercise_model.g.dart';

@freezed
class Exercise with _$Exercise implements ObjectT {
  const factory Exercise({
    String? id,
    @override required String name,
    @override String? description, // Descrizione opzionale dell'esercizio
    @override String? mediaUrl, // URL immagine dell'esercizio
    required String targetMuscle,
    Duration? duration, // Durata opzionale dell'esercizio
    required String videoUrl, // URL video dimostrativo
    @Default([]) List<Set> sets, // Lista delle serie per questo esercizio
  }) = _Exercise;

  // Metodo di serializzazione JSON
  factory Exercise.fromJson(Map<String, dynamic> json) => _$ExerciseFromJson(json);

  // Metodo di serializzazione JSON
  // Map<String, dynamic> toJson() => _$ExerciseToJson(this);
}
