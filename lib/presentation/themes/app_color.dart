import 'package:flutter/material.dart';

class AppColor {
  // Singleton
  static final AppColor _instance = AppColor._internal();
  factory AppColor() => _instance;
  AppColor._internal();

  // Colori principali
  final Color primary = const Color(0xFF0073e6); // Azzurro medio-scuro
  final Color primaryLight = const Color(0xFF66a3ff);
  final Color primaryDark = const Color(0xFF004c99);

  final Color accent = const Color(0xFFFFC107);

  // Colori di sfondo e testo
  final Color surface = const Color(0xFFF3F4F6);
  final Color surfaceDark = const Color(0xFF1C1C1E);
  final Color textPrimary = const Color(0xFF212121);
  final Color textSecondary = const Color(0xFF757575);
  final Color textOnPrimary = Colors.white;

  // Stati
  final Color success = const Color(0xFF4CAF50);
  final Color error = const Color(0xFFF44336);
  final Color warning = const Color(0xFFFFA000);

  // Bottoni
  final Color editButtonColor =
      const Color(0xFF2196F3); // Colore del bottone di modifica
  final Color deleteButtonColor =
      const Color(0xFFF44336); // Colore del bottone di cancellazione

  static AppColor get instance => _instance;
}
