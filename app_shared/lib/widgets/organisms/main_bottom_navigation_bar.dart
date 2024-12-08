import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int indexBottomNavbar = 0; // Store the current index

  void onItemTapped(int index) {
    setState(() {
      indexBottomNavbar = index;
    });
    widget.navigationShell.goBranch(index, initialLocation: true);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: indexBottomNavbar,
      selectedItemColor: context.colorScheme.primary,
      unselectedItemColor: context.colorScheme.secondary,
      onTap: onItemTapped,
      items: [
        BottomNavigationBarItem(
          // icon: AppAsset().homeSvg(context),
          icon: SvgWidget(
              path: SharedAssets.icons.home.path, width: 24, height: 24),
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
