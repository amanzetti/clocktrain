import 'package:freezed_annotation/freezed_annotation.dart';

part 'rep_model.freezed.dart';
part 'rep_model.g.dart';

@freezed
class Rep with _$Rep {
  const factory Rep({
    String? id,
    required int repNumber, // Numero di ripetizioni
    required Duration restTime, // Tempo di riposo tra le ripetizioni
    int? weight, // Peso in kg (opzionale)
  }) = _Rep;

  // Metodo di serializzazione JSON
  factory Rep.fromJson(Map<String, dynamic> json) => _$RepFromJson(json);

  // Metodo di serializzazione JSON
  // Map<String, dynamic> toJson() => _$RepToJson(this);
}