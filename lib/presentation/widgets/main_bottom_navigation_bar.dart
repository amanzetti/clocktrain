import 'package:clocktrain/domain/providers/bottom_nav_bar_provider.dart';
import 'package:clocktrain/domain/providers/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_color.dart'; // Aggiunto import per AppColor
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const MainBottomNavBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexBottomNavbar = ref.watch(indexBottomNavbarProvider);
    final colors = AppColor.instance; // Accesso all'istanza di AppColor

    return BottomNavigationBar(
      currentIndex: indexBottomNavbar,
      selectedItemColor: colors.primary, // Colore selezionato
      unselectedItemColor: colors.textSecondary, // Colore non selezionato
      onTap: (value) => {
        ref.read(indexBottomNavbarProvider.notifier).update((state) => value),
        ref
            .read(mainPageParamsProvider.notifier)
            .update((state) => MainPageParams(
                  title: AppPath.titleMainPage[value],
                )),
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
          icon: Icon(Icons.person),
          label: 'Account',
        ),
      ],
    );
  }
}
