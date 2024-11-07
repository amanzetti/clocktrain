import 'package:clocktrain/data/models/rep_model.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'rep_model.dart'; // Assicurati di importare la classe Rep

part 'set_model.freezed.dart';
part 'set_model.g.dart';

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