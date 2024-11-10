import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/organisms/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainPage extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const MainPage({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: SafeArea(
            minimum: const EdgeInsets.symmetric(horizontal: 16),
            child: ColoredBox(
                color: AppColor.instance.surface, child: navigationShell)),
        bottomNavigationBar:
            MainBottomNavBar(navigationShell: navigationShell));
  }
}
