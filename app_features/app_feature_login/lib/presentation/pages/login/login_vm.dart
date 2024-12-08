import 'package:app_feature_login/data/di/di_repositories.dart';
import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:app_feature_login/domain/enities/user_type_entity.dart';
import 'package:app_feature_login/domain/use_case/login_use_case.dart';
import 'package:app_feature_login/domain/use_case/register_use_case.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_view.dart';
import 'package:app_feature_login/presentation/routes/app_paths.dart';
import 'package:app_shared/config/logger_config.dart';
import 'package:app_shared/routes/path.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
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
        .call(state.email!, state.password!)
        .foldAsync((l) {
      state = state.copyWith(isLoading: false);
    }, (r) {
      state = state.copyWith(isLoading: false);
      print('login success');
      // context.go(AppPath.dashboardPage);
    });
  }

  void loginWithGoogle(BuildContext context) {
    // state = state.copyWith(isLoading: true);
    // ref.authRepository.loginWithGoogle().foldAsync((l) {
    //   LoggerConfig.logger.e('login error');
    //   state = state.copyWith(isLoading: false);
    // }, (r) {
    //   LoggerConfig.logger.i('login success');
    //   state = state.copyWith(isLoading: false);
    //   context.go(AppPath.dashboardPage);
    // });
  }

  void loginWithApple(BuildContext context) {
    // state = state.copyWith(isLoading: true);
    // ref.authRepository.loginWithApple().foldAsync((l) {
    //   LoggerConfig.logger.e('login error');
    //   state = state.copyWith(isLoading: false);
    // }, (r) {
    //   LoggerConfig.logger.i('login success');
    //   state = state.copyWith(isLoading: false);
    //   context.go(AppPath.dashboardPage);
    // });
  }

  void forgotPassword(BuildContext context) {
    // ref.authRepository.forgotPassword(state.email ?? '').foldAsync((l) {
    //   LoggerConfig.logger.e('forgot password error');
    // }, (r) {
    //   LoggerConfig.logger.i('forgot password success');
    // });
  }

  void openLoginModal(
      BuildContext context, Widget Function(BuildContext) builder) {
    showModalBottomSheet(
        context: context,
        isDismissible: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.elliptical(
                context.mq.size.width * 0.6, context.mq.size.height * 0.14),
            topRight: Radius.elliptical(
                context.mq.size.width * 0.6, context.mq.size.height * 0.14),
          ),
        ),
        builder: builder);
  }

  void closeModal(BuildContext context) {
    context.pop();
  }

  void goRegistration(BuildContext context) {
    context.push(AppPaths.registration);
  }

  void saveEmail(String? email) {
    state = state.copyWith(email: email);
  }

  void savePassword(String? password) {
    state = state.copyWith(password: password);
  }
}
