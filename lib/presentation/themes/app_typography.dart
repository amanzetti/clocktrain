import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTypography {
  static final AppTypography _instance = AppTypography._internal();
  factory AppTypography() => _instance;
  AppTypography._internal();

  /// Display large text style, used for large headers or titles on big screens.
  static final TextStyle displayLarge = GoogleFonts.poppins(
    fontSize: 57,
    fontWeight: FontWeight.w400,
  );

  /// Display medium text style, typically used for prominent titles or headers.
  static final TextStyle displayMedium = GoogleFonts.poppins(
    fontSize: 45,
    fontWeight: FontWeight.w400,
  );

  /// Display small text style, suitable for smaller headings or large subtitles.
  static final TextStyle displaySmall = GoogleFonts.poppins(
    fontSize: 36,
    fontWeight: FontWeight.w400,
  );

  /// Headline large text style, used for major section titles or prominent headers.
  static final TextStyle headlineLarge = GoogleFonts.rubik(
    fontSize: 32,
    fontWeight: FontWeight.w400,
  );

  /// Headline medium text style, for medium-sized headings or important subheadings.
  static final TextStyle headlineMedium = GoogleFonts.rubik(
    fontSize: 28,
    fontWeight: FontWeight.w400,
  );

  /// Headline small text style, for smaller section titles or less prominent headings.
  static final TextStyle headlineSmall = GoogleFonts.rubik(
    fontSize: 24,
    fontWeight: FontWeight.w400,
  );

  /// Title large text style, used for medium-sized titles or important labels.
  static final TextStyle titleLarge = GoogleFonts.montserrat(
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  /// Title medium text style, typically used for smaller titles or headings.
  static final TextStyle titleMedium = GoogleFonts.montserrat(
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  /// Title small text style, used for compact titles or captions.
  static final TextStyle titleSmall = GoogleFonts.montserrat(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  /// Body large text style, used for large body text such as paragraphs.
  static final TextStyle bodyLarge = GoogleFonts.baiJamjuree(
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  /// Body medium text style, used for medium-sized body text, such as descriptions.
  static final TextStyle bodyMedium = GoogleFonts.baiJamjuree(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  /// Body small text style, used for smaller body text, such as footnotes or captions.
  static final TextStyle bodySmall = GoogleFonts.baiJamjuree(
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  /// Label large text style, used for large labels such as form input labels or buttons.
  static final TextStyle labelLarge = GoogleFonts.inter(
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  /// Label medium text style, used for medium labels or less prominent form input labels.
  static final TextStyle labelMedium = GoogleFonts.inter(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  );

  /// Label small text style, used for small labels such as icons or short descriptors.
  static final TextStyle labelSmall = GoogleFonts.inter(
    fontSize: 11,
    fontWeight: FontWeight.w600,
  );

  // Metodo per restituire l'intero TextTheme
  /// Returns the entire [TextTheme] for consistent typography across the app.
  static TextTheme get textTheme => TextTheme(
        displayLarge: displayLarge,
        displayMedium: displayMedium,
        displaySmall: displaySmall,
        headlineLarge: headlineLarge,
        headlineMedium: headlineMedium,
        headlineSmall: headlineSmall,
        titleLarge: titleLarge,
        titleMedium: titleMedium,
        titleSmall: titleSmall,
        bodyLarge: bodyLarge,
        bodyMedium: bodyMedium,
        bodySmall: bodySmall,
        labelLarge: labelLarge,
        labelMedium: labelMedium,
        labelSmall: labelSmall,
      );
}
