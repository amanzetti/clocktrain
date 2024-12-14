import 'package:app_shared/config/l10n/generated/app_localizations.dart';
import 'package:app_shared/themes/app_asset.dart';
import 'package:flutter/material.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension MediaQueryExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}

extension ThemeExt on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ColorScheme get colorScheme => theme.colorScheme;
}

extension AssetExt on BuildContext {
  AppAsset get asset => AppAsset();
}
