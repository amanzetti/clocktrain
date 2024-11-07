import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPageParams {
  final String title;

  MainPageParams({required this.title});

  MainPageParams copyWith({String? title}) {
    return MainPageParams(
      title: title ?? this.title,
    );
  }
}

class MainAppState extends StateNotifier<MainPageParams> {
  MainAppState() : super(MainPageParams(title: 'Home'));

  // Funzione per aggiornare il titolo
  void updateTitle(String newTitle) {
    state = state.copyWith(title: newTitle);
  }
}

final mainAppStateProvider = StateNotifierProvider<MainAppState, MainPageParams>((ref) {
  return MainAppState();
});