import 'package:clocktrain/domain/models/set_model.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';

class Exercise implements ObjectT {
  final String id;
  @override
  final String name;
  @override
  final String? description; // Descrizione dell'esercizio
  @override
  final String mediaUrl; // URL immagine dell'esercizio
  final String targetMuscle;
  final Duration? duration; // Durata dell'esercizio
  final String videoUrl; // URL video dimostrativo
  final List<Set> sets; // Lista delle serie per questo esercizio

  Exercise({
    required this.id,
    required this.name,
    required this.mediaUrl,
    required this.targetMuscle,
    this.description,
    this.duration,
    required this.videoUrl,
    this.sets = const [],
  });
}
