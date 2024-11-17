import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/presentation/pages/profile/profile_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfilePageVm extends AutoDisposeNotifier {
  @override
  ProfilePageState build() {
    return const ProfilePageState();
  }

  readCurrentUser(String userId) {
    if (state.currentUser == null) {
      // Qui va chiamata la repository per recuperare l'utente corrente
      state = ref.userRepository.getCurrentUser(userId);
      // state = state.copyWith(currentUser: user);
    }
  }
}