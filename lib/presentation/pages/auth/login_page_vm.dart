import 'package:clocktrain/config/logger_config.dart';
import 'package:clocktrain/data/di/di_repository.dart';
import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:clocktrain/domain/use_case/login_use_case.dart';
import 'package:clocktrain/domain/use_case/register_use_case.dart';
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

  login(BuildContext context, GlobalKey<FormState> formKey) {
    if (!formKey.currentState!.validate()) {
      return;
    }
    formKey.currentState!.save();
    state = state.copyWith(isLoading: true);
    LoginUseCase(ref.authRepository)
        .call(state.email ?? '', state.password ?? '')
        .foldAsync((l) {
      LoggerConfig.logger.e('login error');
      state = state.copyWith(isLoading: false);
    }, (r) {
      LoggerConfig.logger.i('login success');
      state = state.copyWith(isLoading: false
      );
      context.go(AppPath.dashboardPage);
    });
  }

  register(BuildContext context) {
    final user = User(
    name: 'John Doe',
    email: 'test@test.com',
    password: '123456',
    dateOfBirth: DateTime(1990, 1, 1),
    height: 180.0,
    weight: 75.0,
    avatar: 'https://example.com/avatar.jpg',
    userTypeId: 1,
  );
    state = state.copyWith(isLoading: true);
    RegisterUseCase(ref.authRepository)
        .call(user)
        // .call(state.user)
        .foldAsync((l) {
      LoggerConfig.logger.e('register error');
    }, (r) {
      LoggerConfig.logger.i('register success');
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
