import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/domain/use_case/login_use_case.dart';
import 'package:clocktrain/presentation/pages/auth/login_page_state.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/utils/ext/future.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginPageVm extends AutoDisposeNotifier<LoginPageState> {
  @override
  LoginPageState build() {
    return const LoginPageState();
  }

  login(BuildContext context) {
    state = state.copyWith(isLoading: true);
    LoginUseCase(ref.authRepository)
        .call(state.email ?? '', state.password ?? '')
        .foldAsync((l) {
      print('login error');
      state = state.copyWith(isLoading: false);
    }, (r) {
      print('login success');
      state = state.copyWith(isLoading: false);
      context.go(AppPath.dashboardPage);
    });
  }

  void saveEmail(String? email) {
    state = state.copyWith(email: email);
  }

  void savePassword(String? password) {
    state = state.copyWith(password: password);
  }
}
