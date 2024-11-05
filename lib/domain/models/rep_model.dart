class Rep {
  final int repNumber; // Numero di ripetizioni
  final Duration restTime; // Tempo di riposo in secondi tra le ripetizioni
  final int? weight; // Peso in kg

  Rep({
    required this.repNumber,
    required this.restTime,
    this.weight,
  });
}