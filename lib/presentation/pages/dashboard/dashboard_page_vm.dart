import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/presentation/pages/dashboard/dashboard_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPageVm extends AutoDisposeNotifier {
  @override
  DashboardPageState build() {
    return const DashboardPageState();
  }

  readCurrentUser(String userId) {
    if (state.currentUser == null) {
      // Qui va chiamata la repository per recuperare l'utente corrente
      state = ref.userRepository.getCurrentUser(userId);
      // state = state.copyWith(currentUser: user);
    }
  }
}
