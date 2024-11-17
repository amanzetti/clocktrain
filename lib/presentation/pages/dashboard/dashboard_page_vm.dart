import 'package:clocktrain/domain/models/user_model.dart';
import 'package:clocktrain/presentation/pages/dashboard/dashboard_page_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPageVm extends AutoDisposeNotifier {
  @override
  DashboardPageState build() {
    return const DashboardPageState();
  }

  readCurrentUser(){
    if(state.currentUser == null){
      // Qui va chiamata la repository per recuperare l'utente corrente
      
      // state = state.copyWith(currentUser: user);
    }
  }
}
