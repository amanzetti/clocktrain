import 'package:clocktrain/config/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension MediaQueryExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}

extension ThemeExt on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
}

extension RouteUtils on BuildContext {
  bool isCurrentRoute(String route) {
    return GoRouter.of(this).routerDelegate.currentConfiguration.fullPath ==
        route;
  }

  String get currentRoute =>
      GoRouter.of(this).routerDelegate.currentConfiguration.fullPath;
}
