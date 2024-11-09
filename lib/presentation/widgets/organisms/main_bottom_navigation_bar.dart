import 'package:clocktrain/domain/providers/ui/bottom_nav_bar_provider.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/routes/router_methods.dart';
import 'package:clocktrain/presentation/routes/routers.dart';
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

    onItemTapped(int index) {
      ref.read(indexBottomNavbarProvider.notifier).update((state) => index);
      // var route = navigationShell.route.branches[index];
      RouterMethods().setStateBottomNavigationPath(index, context, ref);
      // if (route.defaultRoute != null) {
      //   context.pushReplacement(route.defaultRoute!.path);
      // }
      navigationShell.goBranch(index, initialLocation: true);
    }

    return BottomNavigationBar(
      currentIndex: indexBottomNavbar,
      selectedItemColor: colors.primary,
      unselectedItemColor: colors.textSecondary,
      onTap: onItemTapped,
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
