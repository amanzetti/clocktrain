import 'package:flutter/material.dart';

class AppColors {
  factory AppColors() => _instance;
  AppColors._internal();
  static final AppColors _instance = AppColors._internal();

  // Light Mode Colors
  static const Color primaryLight =
      Color(0xFFDCE4C9); // Primary color for Light Mode
  static const Color onPrimaryLight =
      Color(0xFF000000); // Text color on primary elements for Light Mode
  static const Color secondaryLight =
      Color(0xFFB6A28E); // Accent color for Light Mode
  static const Color onSecondaryLight =
      Color(0xFF000000); // Text color on secondary elements for Light Mode
  static const Color surfaceLight =
      Color(0xFFF5F5DC); // Background color for Light Mode
  static const Color onSurfaceLight =
      Color(0xFF000000); // Text color on surface elements for Light Mode
  static const Color errorLight =
      Color(0xFFB00020); // Error color for Light Mode
  static const Color onErrorLight =
      Color(0xFFFFFFFF); // Text color on error elements for Light Mode
  static const Color outlineLight =
      Color(0xFF000000); // Outline color for borders in Light Mode
  static const Color surfaceContainerHighestLight =
      Color(0xFFF5F5F5); // Surface container highest for Light Mode
  static const Color primaryContainerLight =
      Color(0xFFBB86FC); // Container color for primary in Light Mode
  static const Color onPrimaryContainerLight =
      Color(0xFF000000); // Text color on primary container for Light Mode
  static const Color secondaryContainerLight =
      Color(0xFF03DAC6); // Container color for secondary in Light Mode
  static const Color onSecondaryContainerLight =
      Color(0xFF000000); // Text color on secondary container for Light Mode
  static const Color tertiaryLight =
      Color(0xFFFF9800); // Tertiary color for Light Mode
  static const Color onTertiaryLight =
      Color(0xFF000000); // Text color on tertiary color for Light Mode
  static const Color tertiaryContainerLight =
      Color(0xFFFFF3E0); // Tertiary container color for Light Mode
  static const Color onTertiaryContainerLight =
      Color(0xFF000000); // Text color on tertiary container for Light Mode

  // Dark Mode Colors (coerenti con i colori del Light Mode, ma scuri per miglior contrasto)
  static const Color primaryDark = Color(0xFF1C1C1C); // Dark primary color
  static const Color onPrimaryDark =
      Color(0xFFFFFFFF); // Text on primary color for Dark Mode
  static const Color secondaryDark = Color(0xFFB6A28E); // Dark secondary color
  static const Color onSecondaryDark =
      Color(0xFFFFFFFF); // Text on secondary color for Dark Mode
  static const Color surfaceDark =
      Color(0xFF121212); // Background color for Dark Mode
  static const Color onSurfaceDark =
      Color(0xFFFFFFFF); // Text on surface color for Dark Mode
  static const Color errorDark = Color(0xFFCF6679); // Error color for Dark Mode
  static const Color onErrorDark =
      Color(0xFF000000); // Text on error color for Dark Mode
  static const Color outlineDark =
      Color(0xFFBB86FC); // Outline color for borders in Dark Mode
  static const Color surfaceContainerHighestDark =
      Color(0xFF1E1E1E); // Surface container highest for Dark Mode
  static const Color primaryContainerDark =
      Color(0xFF6200EE); // Container color for primary in Dark Mode
  static const Color onPrimaryContainerDark =
      Color(0xFFFFFFFF); // Text color on primary container for Dark Mode
  static const Color secondaryContainerDark =
      Color(0xFF03DAC6); // Container color for secondary in Dark Mode
  static const Color onSecondaryContainerDark =
      Color(0xFF000000); // Text color on secondary container for Dark Mode
  static const Color tertiaryDark =
      Color(0xFFFF9800); // Tertiary color for Dark Mode
  static const Color onTertiaryDark =
      Color(0xFF000000); // Text color on tertiary color for Dark Mode
  static const Color tertiaryContainerDark =
      Color(0xFFFFF3E0); // Tertiary container color for Dark Mode
  static const Color onTertiaryContainerDark =
      Color(0xFF000000); // Text color on tertiary container for Dark Mode

  // Light Mode Color Scheme
  static ColorScheme lightColorScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: primaryLight, // Main primary color for Light Mode
      onPrimary: onPrimaryLight, // Text on primary color for Light Mode
      secondary: secondaryLight, // Accent color for Light Mode
      onSecondary: onSecondaryLight, // Text on secondary color for Light Mode
      surface: surfaceLight, // Background color for Light Mode
      onSurface: onSurfaceLight, // Text on surface color for Light Mode
      error: errorLight, // Error color for Light Mode
      onError: onErrorLight, // Text on error color for Light Mode
      outline: outlineLight, // Outline color for borders in Light Mode
      surfaceContainerHighest:
          surfaceContainerHighestLight, // Surface container highest for Light Mode
      primaryContainer:
          primaryContainerLight, // Container color for primary in Light Mode
      onPrimaryContainer:
          onPrimaryContainerLight, // Text color on primary container for Light Mode
      secondaryContainer:
          secondaryContainerLight, // Container color for secondary in Light Mode
      onSecondaryContainer:
          onSecondaryContainerLight, // Text color on secondary container for Light Mode
      tertiary: tertiaryLight, // Tertiary color for Light Mode
      onTertiary:
          onTertiaryLight, // Text color on tertiary color for Light Mode
      tertiaryContainer:
          tertiaryContainerLight, // Tertiary container color for Light Mode
      onTertiaryContainer:
          onTertiaryContainerLight, // Text color on tertiary container for Light Mode
    );
  }

  static ColorScheme lightColorSchemeFromSeed() {
    const seedColor = Color(0xFFA3D9A5);
    return ColorScheme.fromSeed(seedColor: seedColor);
  }

  // Dark Mode Color Scheme
  static ColorScheme darkColorScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: primaryDark, // Main primary color for Dark Mode
      onPrimary: onPrimaryDark, // Text on primary color for Dark Mode
      secondary: secondaryDark, // Accent color for Dark Mode
      onSecondary: onSecondaryDark, // Text on secondary color for Dark Mode
      surface: surfaceDark, // Background color for Dark Mode
      onSurface: onSurfaceDark, // Text on surface color for Dark Mode
      error: errorDark, // Error color for Dark Mode
      onError: onErrorDark, // Text on error color for Dark Mode
      outline: outlineDark, // Outline color for borders in Dark Mode
      surfaceContainerHighest:
          surfaceContainerHighestDark, // Surface container highest for Dark Mode
      primaryContainer:
          primaryContainerDark, // Container color for primary in Dark Mode
      onPrimaryContainer:
          onPrimaryContainerDark, // Text color on primary container for Dark Mode
      secondaryContainer:
          secondaryContainerDark, // Container color for secondary in Dark Mode
      onSecondaryContainer:
          onSecondaryContainerDark, // Text color on secondary container for Dark Mode
      tertiary: tertiaryDark, // Tertiary color for Dark Mode
      onTertiary: onTertiaryDark, // Text color on tertiary color for Dark Mode
      tertiaryContainer:
          tertiaryContainerDark, // Tertiary container color for Dark Mode
      onTertiaryContainer:
          onTertiaryContainerDark, // Text color on tertiary container for Dark Mode
    );
  }
}
