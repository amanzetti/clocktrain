import 'package:clocktrain/domain/models/rep_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
// Assicurati di importare la classe Rep

part 'set_model.freezed.dart';

@freezed
class Set with _$Set {
  const factory Set({
    String? id,
    required int setNumber, // Numero della serie
    @Default([]) List<Rep> reps, // Lista di ripetizioni (opzionale, default vuoto)
  }) = _Set;

  // Metodo di serializzazione JSON
  factory Set.fromJson(Map<String, dynamic> json) => _$SetFromJson(json);

  // Metodo di serializzazione JSON
  // Map<String, dynamic> toJson() => _$SetToJson(this);
}