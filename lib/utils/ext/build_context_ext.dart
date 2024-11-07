import 'package:clocktrain/config/l10n/generated/app_localizations.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}

extension MediaQueryExt on BuildContext {
  MediaQueryData get mq => MediaQuery.of(this);
}

extension RouteUtils on BuildContext {
  bool isCurrentRoute(String route) {
    return GoRouter.of(this).routerDelegate.currentConfiguration.fullPath ==
        route;
  }

  Future<void> goAndUpdateTitle(
    String route, {
    required WidgetRef ref,
    String? newTitle,
  }) async {
    if (newTitle != null) {
      final notifier = ref.read(mainAppStateProvider.notifier);
      notifier.updateTitle(newTitle);
    }
    go(route);
  }

  String get currentRoute =>
      GoRouter.of(this).routerDelegate.currentConfiguration.fullPath;
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
