import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppState {
  ///MainAppBar
  final String? mainAppBarTitle;
  final double? mainAppBarHeight;
  final void Function()? mainAppBarOnBack;
  final void Function()? mainAppBarOnAction;

  ///SubAppBar
  final String? subAppBarTitle;
  final double? subAppBarHeight;
  final bool showSubAppBar;
  final void Function()? subAppBarOnAction;

  AppState(
      {this.mainAppBarTitle,
      this.mainAppBarHeight,
      this.mainAppBarOnBack,
      this.mainAppBarOnAction,
      this.subAppBarTitle,
      this.subAppBarHeight,
      required this.showSubAppBar,
      this.subAppBarOnAction});

  AppState copyWith({
    ///MainAppBar
    String? mainAppBarTitle,
    double? mainAppBarHeight,
    void Function()? mainAppBarOnBack,
    void Function()? mainAppBarOnAction,

    ///SubAppBar
    String? subAppBarTitle,
    double? subAppBarHeight,
    bool? showSubAppBar,
    void Function()? subAppBarOnAction,
  }) {
    return AppState(
        mainAppBarTitle: mainAppBarTitle ?? this.mainAppBarTitle,
        mainAppBarHeight: mainAppBarHeight ?? this.mainAppBarHeight,
        mainAppBarOnBack: mainAppBarOnBack ?? this.mainAppBarOnBack,
        mainAppBarOnAction: mainAppBarOnAction ?? this.mainAppBarOnAction,
        subAppBarTitle: subAppBarTitle ?? this.subAppBarTitle,
        subAppBarHeight: subAppBarHeight ?? this.subAppBarHeight,
        showSubAppBar: showSubAppBar ?? this.showSubAppBar,
        subAppBarOnAction: subAppBarOnAction ?? this.subAppBarOnAction);
  }
}

class AppStateNotifier extends Notifier<AppState> {
  @override
  AppState build() =>
      AppState(mainAppBarTitle: 'ClockTrain', showSubAppBar: false);

  void copyWith({
    ///MainAppBar
    String? mainAppBarTitle,
    double? mainAppBarHeight,
    void Function()? mainAppBarOnBack,
    void Function()? mainAppBarOnAction,

    ///SubAppBar
    String? subAppBarTitle,
    double? subAppBarHeight,
    bool? showSubAppBar,
    void Function()? subAppBarOnAction,
  }) {
    state = state.copyWith(
        mainAppBarTitle: mainAppBarTitle ?? state.mainAppBarTitle,
        mainAppBarHeight: mainAppBarHeight ?? state.mainAppBarHeight,
        mainAppBarOnBack: mainAppBarOnBack ?? state.mainAppBarOnBack,
        mainAppBarOnAction: mainAppBarOnAction ?? state.mainAppBarOnAction,
        subAppBarTitle: subAppBarTitle ?? state.subAppBarTitle,
        subAppBarHeight: subAppBarHeight ?? state.subAppBarHeight,
        showSubAppBar: showSubAppBar ?? state.showSubAppBar,
        subAppBarOnAction: subAppBarOnAction ?? state.subAppBarOnAction);
  }

  void updateStateOnRoute(String routeName) {
    // Qui puoi implementare la logica di aggiornamento dello stato in base alla rotta
    switch (routeName) {
      case '/home_page':
        print('Unknown route: $routeName');
        state = state.copyWith(
          mainAppBarTitle: 'Home',
          showSubAppBar: false,
        );
        break;
      case '/profile':
        print('Unknown route: $routeName');
        state = state.copyWith(
          mainAppBarTitle: 'Profile',
          showSubAppBar: true,
        );
        break;
      // Aggiungi altre rotte e logiche qui
      default:
        print('Unknown route: $routeName');
        state = state.copyWith(
          mainAppBarTitle: 'Unknown',
          showSubAppBar: false,
        );
    }
  }
}

final appStateProvider =
    NotifierProvider<AppStateNotifier, AppState>(AppStateNotifier.new);
    
//     ((ref) {
//   return AppStateNotifier();
// });
