import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:flutter/material.dart';
import 'app_color.dart';

class AppTheme {
  static ThemeData get lightTheme {
    final colors = AppColor.instance;
    final typography = AppTypography.instance;

    return ThemeData(
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.surface,
      colorScheme: ColorScheme.light(
        primary: colors.primary,
        onPrimary: colors.textOnPrimary,
        secondary: colors.accent,
        surface: colors.surface,
        onSurface: colors.textPrimary,
        error: colors.error,
      ),
      textTheme: TextTheme(
        displayLarge: typography.titleXL,
        displayMedium: typography.titleL,
        displaySmall: typography.titleM,
        titleLarge: typography.titleL,
        bodyLarge: typography.paragraph,
        bodyMedium: typography.paragraph,
        labelSmall: typography.caption,
        labelLarge: typography.button,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primary,
        foregroundColor: colors.textOnPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.primaryLight),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.primaryLight),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: colors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }

  static ThemeData get darkTheme {
    final colors = AppColor.instance;
    final typography = AppTypography.instance;

    return ThemeData(
      primaryColor: colors.primary,
      scaffoldBackgroundColor: colors.surfaceDark,
      colorScheme: ColorScheme.dark(
        primary: colors.primary,
        onPrimary: colors.textOnPrimary,
        secondary: colors.accent,
        surface: colors.surfaceDark,
        onSurface: colors.textPrimary,
        error: colors.error,
      ),
      textTheme: TextTheme(
        displayLarge: typography.titleXL,
        displayMedium: typography.titleL,
        displaySmall: typography.titleM,
        titleLarge: typography.titleL,
        bodyLarge: typography.paragraph,
        bodyMedium: typography.paragraph,
        labelSmall: typography.caption,
        labelLarge: typography.button,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colors.primaryDark,
        foregroundColor: colors.textOnPrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colors.surfaceDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(color: colors.primaryLight),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: colors.primary,
        textTheme: ButtonTextTheme.primary,
      ),
    );
  }
}