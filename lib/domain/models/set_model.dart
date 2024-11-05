import 'package:clocktrain/domain/models/rep_model.dart';

class Set {
  final int setNumber;
  final List<Rep> reps; // Lista di ripetizioni con target e riposo

  Set({
    required this.setNumber,
    this.reps = const [],
  });
}