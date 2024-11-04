import 'package:flutter/material.dart';

class AppTypography {
  static final AppTypography _instance = AppTypography._internal();
  factory AppTypography() => _instance;
  AppTypography._internal();

  // Aggiorna la dimensione dei font
  void updateFontSize(double scaleFactor) {
    titleXL = titleXL.copyWith(fontSize: 32 * scaleFactor);
    paragraph = paragraph.copyWith(fontSize: 16 * scaleFactor);
  }

  // Stili di testo principali
  late TextStyle titleXL = const TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  late TextStyle titleL = const TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  late TextStyle titleM = const TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  late TextStyle paragraph = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  late TextStyle caption = const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  late TextStyle button = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static AppTypography get instance => _instance;
}
