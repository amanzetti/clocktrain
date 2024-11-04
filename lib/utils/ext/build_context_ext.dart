import 'package:clocktrain/config/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension MediaQueryExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}

extension KeyboardActionsConfigExtension on BuildContext {
  KeyboardActionsConfig buildKeyboardActionsConfig(FocusNode node) {
    return KeyboardActionsConfig(
      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
      keyboardBarColor: Colors.grey[200],
      nextFocus: true,
      actions: [
        KeyboardActionsItem(
          focusNode: node,
        ),
      ],
    );
  }
}