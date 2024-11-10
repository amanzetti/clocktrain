import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RouterMethods {
  ///Main bottom navigation
  ///Main appbar navigation
  ///Sub appbar navigation
  ///Home Page
  void setStateDashboardPage(BuildContext context, WidgetRef ref) {
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'Home', showSubAppBar: false);
  }

  ///Sheet Page
  void setStateSheetPage(BuildContext context, WidgetRef ref) {
    ref.read(appStateProvider.notifier).copyWith(
        mainAppBarTitle: 'Sheet',
        showSubAppBar: true,
        subAppBarOnAction: () {
          context.push(AppPath.sheetListPage + AppPath.workoutEditorPage);
          setStateWorkoutEditorPage(context, ref);
        });
  }

  ///Settings Page
  void setStateSettingsPage(BuildContext context, WidgetRef ref) {
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'Settings', showSubAppBar: false);
  }

  ///Workout Page
  void setStateWorkoutPage(BuildContext context, WidgetRef ref) {
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'Workout', showSubAppBar: false);
  }

  ///Workout Editor Page
  void setStateWorkoutEditorPage(BuildContext context, WidgetRef ref) {
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'New Workout', showSubAppBar: false);
  }

  ///Profile Page
  void setStateProfilePage(BuildContext context, WidgetRef ref) {
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'Profile', showSubAppBar: false);
  }

  ///Sheet Page With Id
  ///Bottom Navigation Path
  setStateBottomNavigationPath(int index, BuildContext context, WidgetRef ref) {
    switch (index) {
      case 0:
        setStateDashboardPage(context, ref);
        break;
      case 1:
        setStateSheetPage(context, ref);
        break;
      case 2:
        setStateWorkoutPage(context, ref);
        break;
      case 3:
        setStateSettingsPage(context, ref);
        break;
      default:
        setStateDashboardPage(context, ref);
    }
  }

  setStatePop(BuildContext context, WidgetRef ref) {
    final currentRoute = GoRouter.of(context);
    ref
        .read(appStateProvider.notifier)
        .copyWith(mainAppBarTitle: 'Sheet', showSubAppBar: true);
  }

  ///Title Main Page
}
