import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/organisms/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 16),
            child: ColoredBox(
                color: context.colorScheme.surface, child: navigationShell)),
        bottomNavigationBar:
            MainBottomNavBar(navigationShell: navigationShell));
  }
}
