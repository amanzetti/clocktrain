import 'package:clocktrain/domain/providers/ui/bottom_nav_bar_provider.dart';
import 'package:clocktrain/presentation/routes/router_methods.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
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
      selectedItemColor: context.colorScheme.primary,
      unselectedItemColor: context.colorScheme.secondary,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: AppAsset().homeSvg(context),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: AppAsset().sheetSvg(context),
          label: 'Sheet',
        ),
        BottomNavigationBarItem(
          icon: AppAsset().toolsSvg(context),
          label: 'Tools',
        ),
        BottomNavigationBarItem(
          icon: AppAsset().settingsSvg(context),
          label: 'Settings',
        ),
      ],
    );
  }
}
