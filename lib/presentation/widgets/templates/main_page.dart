import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/app.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/routes/routers.dart';
import 'package:clocktrain/presentation/widgets/organisms/main_app_bar.dart';
import 'package:clocktrain/presentation/widgets/organisms/main_bottom_navigation_bar.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

// class MainPage extends ConsumerStatefulWidget {
//   const MainPage({required this.navigationShell, super.key});

//   final StatefulNavigationShell navigationShell;

//   @override
//   ConsumerState<MainPage> createState() => _ConsumerMainPageState();
// }

// class _ConsumerMainPageState extends ConsumerState<MainPage> {

// late final GoRouter router;

//   _onMainPressedAction(BuildContext context, WidgetRef ref) {
//     context.goAndUpdadeAppState(AppPath.profilePage,
//         ref: ref,
//         state: AppState(showSubAppBar: false, mainAppBarTitle: 'Profile'));
//   }

//   postFunction(BuildContext context) {
//     print('MainPage postFunction');
//   }

//   @override
//   void initState() {
//     print('MainPage initState');
//     router = GoRouter.of(context);
//     print(context.currentRoute);

//     // AppRouter.rootNavigatorKey.currentState?.addListener(() {
//     //   final currentRoute = router.location;
//     //   ref.read(appStateProvider.notifier).updateStateOnRoute(currentRoute);
//     // });
//     // router.addListener(() {
//     //   final currentRoute = router.location;
//     //   ref.read(appStateProvider.notifier).updateStateOnRoute(currentRoute);
//     // });
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) => postFunction(context));
    
//   }

//   @override
//   void dispose() {
//     print('MainPage dispose');
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final appState = ref.watch(appStateProvider);
//     return Scaffold(
//         appBar: MainAppBar(
//           showSubAppBar: appState.showSubAppBar,
//           mainAppBarTitle: appState.mainAppBarTitle ?? '',
//           onMainPressedBack: appState.mainAppBarOnBack,
//           onMainPressedAction: () => _onMainPressedAction(
//               context, ref), // appState.mainAppBarOnAction,
//           onSubPressedAction: appState.subAppBarOnAction,
//         ),
//         body: widget.navigationShell,
//         bottomNavigationBar:
//             MainBottomNavBar(navigationShell: widget.navigationShell));
//   }
// }

class MainPage extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const MainPage({super.key, required this.navigationShell});

  _onMainPressedAction(BuildContext context, WidgetRef ref) {
    context.goAndUpdadeAppState(AppPath.profilePage,
        ref: ref,
        state: AppState(showSubAppBar: false, mainAppBarTitle: 'Profile'));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appState = ref.watch(appStateProvider);
    // final l = ref.listen<AppState>(appStateProvider, (previousState, newState) {
    //   // Esegui azioni in risposta ai cambiamenti di stato
    //   print("AppState è cambiato: $newState");
    //   // Ad esempio, se vuoi cambiare il titolo dell'appBar in base al nuovo stato
    //   if (newState.mainAppBarTitle != previousState?.mainAppBarTitle) {
    //     // setState(() {}); // Aggiorna il widget se necessario
    //   }
    // });
    return Scaffold(
        appBar: MainAppBar(
          showSubAppBar: appState.showSubAppBar,
          mainAppBarTitle: appState.mainAppBarTitle ?? '',
          onMainPressedBack: appState.mainAppBarOnBack,
          onMainPressedAction: () => _onMainPressedAction(
              context, ref), // appState.mainAppBarOnAction,
          onSubPressedAction: appState.subAppBarOnAction,
        ),
        body: navigationShell,
        bottomNavigationBar:
            MainBottomNavBar(navigationShell: navigationShell));
  }
}
