import 'package:app_shared/themes/app_typography.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
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
        ? AppColors.lightColorSchemeFromSeed()
        // ? AppColors.lightColorScheme()
        : AppColors.darkColorScheme();

    return ThemeData(
      colorScheme: colorScheme,
      textTheme: AppTypography.textTheme,
      iconTheme: _getIconThemeData(colorScheme),
    );
  }

  static IconThemeData _getIconThemeData(ColorScheme colorScheme) {
    return IconThemeData(
      color: colorScheme.onSurface,
    );
  }

  static BoxDecoration boxDecorationRounded(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppDimensions.borderRadius24),
    );
  }

  static BoxDecoration boxDecorationCircle(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(AppDimensions.borderRadius100),
    );
  }

  static BoxDecoration boxDecorationOutlined(BuildContext context) {
    return boxDecorationRounded(context).copyWith(
      border: Border.all(color: context.colorScheme.onSurface),
    );
  }

  static BoxDecoration boxDecorationFilled(BuildContext context) {
    return boxDecorationRounded(context).copyWith(
      color: context.colorScheme.primary,
    );
  }

  static InputBorder outlinedBorder(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.borderRadius8),
      borderSide: const BorderSide(color: Colors.transparent),
    );
  }

  static InputBorder outlinedBorderError(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppDimensions.borderRadius8),
      borderSide: BorderSide(color: context.colorScheme.onError),
    );
  }
}
