import 'package:clocktrain/domain/providers/ui/bottom_nav_bar_provider.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_color.dart'; // Aggiunto import per AppColor
import 'package:clocktrain/presentation/widgets/molecules/list_tile_app.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const MainBottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final colors = AppColor.instance;

    void mainAppStatusProvider(int index) {
      switch (index) {
        case 0:
          ref
              .read(appStateProvider.notifier)
              .copyWith(mainAppBarTitle: 'Home', showSubAppBar: false);
          break;
        case 1:
          ref.read(appStateProvider.notifier).copyWith(
              mainAppBarTitle: 'Sheet',
              showSubAppBar: true,
              subAppBarOnAction: () {
                context.goAndUpdadeAppState(AppPath.sheetListPage + AppPath.workoutEditorPage,
                    ref: ref,
                    state: AppState(
                        mainAppBarTitle: 'New Workout', showSubAppBar: false));
              });
          break;
        case 2:
          ref
              .read(appStateProvider.notifier)
              .copyWith(mainAppBarTitle: 'Workout', showSubAppBar: false);
          break;
        case 3:
          ref
              .read(appStateProvider.notifier)
              .copyWith(mainAppBarTitle: 'Settings', showSubAppBar: false);
          break;
        default:
          ref
              .read(appStateProvider.notifier)
              .copyWith(mainAppBarTitle: 'ClockTrain', showSubAppBar: false);
      }
    }

    return BottomNavigationBar(
      currentIndex: indexBottomNavbar,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.textSecondary,
      onTap: (value) => {
        ref.read(indexBottomNavbarProvider.notifier).update((state) => value),
        mainAppStatusProvider(value),
        navigationShell.goBranch(value),
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_books),
          label: 'Sheet',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center),
          label: 'Workout',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Account',
        ),
      ],
    );
  }
}
