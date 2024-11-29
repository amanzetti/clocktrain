import 'package:app_shared/app_shared.dart';
import 'package:app_shared/config/l10n/generated/app_localizations.dart';
import 'package:app_shared/routes/routers.dart';
import 'package:app_shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ///VM
    // final vm = ref.read(appVmProvider.notifier);
    // final themeMode = ref.watch(appVmProvider).themeMode;

    ///INTI local db
    // ref.read(internalLocalDbDatasourceProvider).init();

    // vm.getUserAfterLogin(1);
    // vm.getThemeMode();

    ///App
    return MaterialApp.router(
      title: 'Your App Title',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // themeMode: themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: AppRouter().routers,
    );
  }
}

// final _appVMProvider = NotifierProvider.autoDispose<AppVm, AppState>(() {
//   return AppVm();
// });

// final _themeModeProvider = StateProvider.autoDispose<ThemeMode?>(
//   (ref) => ref.watch(_appVMProvider).themeMode,
// );