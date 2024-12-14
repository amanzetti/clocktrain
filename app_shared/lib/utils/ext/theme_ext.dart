import 'package:app_shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

extension AppThemeExt on ThemeData {
  AppTheme get appTheme => AppTheme();
  BoxDecoration circleBox(BuildContext context) =>
      AppTheme.boxDecorationCircle(context);
}
