import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/routes/router_methods.dart';
import 'package:clocktrain/presentation/widgets/organisms/main_app_bar.dart';
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
          child: navigationShell),
        bottomNavigationBar:
            MainBottomNavBar(navigationShell: navigationShell));
  }
}
