import 'package:app_feature_login/data/di/di_repositories.dart';
import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:app_feature_login/domain/enities/user_type_entity.dart';
import 'package:app_feature_login/domain/use_case/login_use_case.dart';
import 'package:app_feature_login/domain/use_case/register_use_case.dart';
import 'package:app_feature_login/presentation/routes/app_paths.dart';
import 'package:app_shared/config/logger_config.dart';
import 'package:app_shared/routes/path.dart';
import 'package:app_shared/utils/ext/future.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'login_state.dart';
import 'package:flutter/material.dart';

class LoginVm extends AutoDisposeNotifier<LoginState> {
  @override
  LoginState build() {
    return const LoginState();
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
      state = state.copyWith(isLoading: false);
      context.go(AppPath.dashboardPage);
    });
  }

  register(BuildContext context) {
    final user = User(
      name: 'John Doe',
      surname: 'Doe',
      email: 'test@test.com',
      username: 'testUsername',
      birthDate: DateTime(1990, 1, 1),
      height: 1800,
      weight: 750,
      avatar: 'https://example.com/avatar.jpg',
      userType: UserType(id: 1, name: 'ATHLETE'),
    );
    state = state.copyWith(isLoading: true);
    RegisterUseCase(ref.authRepository)
        .call(user)
        // .call(state.user)
        .foldAsync((l) {
      LoggerConfig.logger.e('register error');
    }, (r) {
      LoggerConfig.logger.i('register success');
      // context.go(AppPaths.dashboardPage);
    });
  }

  goRegistration(BuildContext context) {
    context.push(AppPaths.registration);
  }

  void saveEmail(String? email) {
    state = state.copyWith(email: email);
  }

  void savePassword(String? password) {
    state = state.copyWith(password: password);
  }
}
