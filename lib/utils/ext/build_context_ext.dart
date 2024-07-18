import 'package:clocktrain/config/l10n/generated/app_localizations.dart';
import 'package:flutter/widgets.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension MediaQueryExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}
