import 'package:clocktrain/domain/providers/bottom_nav_bar_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const MainBottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);

    return BottomNavigationBar(
        currentIndex: indexBottomNavbar,
        onTap: (value) => {
              ref
                  .read(indexBottomNavbarProvider.notifier)
                  .update((state) => value),
              navigationShell.goBranch(value),
              context.go(bottomNavigationPath[value])
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
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: 'Settings',
          // ),
        ]);
  }
}
