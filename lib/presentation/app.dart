import 'package:clocktrain/config/l10n/generated/app_localizations.dart';
import 'package:clocktrain/domain/providers/theme_provider.dart';
import 'package:clocktrain/presentation/routes/routers.dart';
import 'package:clocktrain/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);

    return MaterialApp.router(
      title: 'Your App Title',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: routers,
    );
  }
}
