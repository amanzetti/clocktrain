import 'package:clocktrain/domain/models/exercise_model.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';

class Workout implements ObjectT {
  final String id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String mediaUrl;

  final List<Exercise> exercises; // Lista degli esercizi per il workout
  final DateTime createdAt;

  Workout({
    required this.id,
    required this.name,
    required this.description,
    required this.mediaUrl,
    this.exercises = const [],
    required this.createdAt,
  });
}
