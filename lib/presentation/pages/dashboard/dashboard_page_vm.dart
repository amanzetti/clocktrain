import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/presentation/pages/dashboard/dashboard_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPageVm extends AutoDisposeNotifier<DashboardPageState> {
  @override
  DashboardPageState build() {
    return const DashboardPageState();
  }

  void loadUser() {
    state = state.copyWith(isLoading: true);
    try {
      final user = ref.read(authRepositoryProvider).getUser();
      if (user.isLeft()) {
        state = state.copyWith(isLoading: false);
      }
      if (user.isRight()) {
        state = state.copyWith(
            loggedUser: user.getOrElse(() => null), isLoading: false);
      }
    } catch (e) {
      state = state.copyWith(isLoading: false);
    }
  }
}