import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

enum ThemeModeEnum { light, dark }

class AppTheme {
  static ThemeData get lightTheme {
    return _getTheme(ThemeModeEnum.light);
  }

  static ThemeData get darkTheme {
    return _getTheme(ThemeModeEnum.dark);
  }

  // Function to generate the theme based on the theme mode (light/dark)
  static ThemeData _getTheme(ThemeModeEnum themeMode) {
    final colorScheme = themeMode == ThemeModeEnum.light
        ? AppColors.lightColorScheme()
        : AppColors.darkColorScheme();

    return ThemeData(
      colorScheme: colorScheme,
      textTheme: AppTypography.textTheme,
      iconTheme: _getIconThemeData(colorScheme)
      // scaffoldBackgroundColor: _getScaffoldBackgroundColor(colorScheme),
      // appBarTheme: _getAppBarTheme(colorScheme),
      // inputDecorationTheme: _getInputDecorationTheme(colorScheme),
      // buttonTheme: _getButtonTheme(colorScheme),
    );
  }

  static IconThemeData _getIconThemeData(ColorScheme colorScheme) {
    return IconThemeData(
      color: colorScheme.onSurface, // onSurface is used for icon color
    );
  }

  // Function to return the scaffold background color based on theme mode
  static Color _getScaffoldBackgroundColor(ColorScheme colorScheme) {
    return colorScheme.surface; // surface is used for background color
  }

  // Function to return the AppBar theme based on theme mode
  static AppBarTheme _getAppBarTheme(ColorScheme colorScheme) {
    return AppBarTheme(
      backgroundColor: colorScheme.primary,
      foregroundColor: colorScheme.onPrimary,
    );
  }

  // Function to return the input decoration theme based on theme mode
  static InputDecorationTheme _getInputDecorationTheme(
      ColorScheme colorScheme) {
    return InputDecorationTheme(
      filled: true,
      fillColor: colorScheme.surface, // surface color for input fields
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide:
            BorderSide(color: colorScheme.primary), // primary border color
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
            color: colorScheme.primary), // primary enabled border color
      ),
    );
  }

  // Function to return the button theme based on theme mode
  static ButtonThemeData _getButtonTheme(ColorScheme colorScheme) {
    return ButtonThemeData(
      buttonColor: colorScheme.primary, // primary color for buttons
      textTheme: ButtonTextTheme.primary,
    );
  }
}
