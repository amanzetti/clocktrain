import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/dividers/app_divider.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'login_state.dart';
import 'login_vm.dart';
import 'package:flutter/material.dart';

class LoginView extends ConsumerWidget {
  LoginView({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        minimum: AppDimesnionsEdgeInsetsExt.largeHorizontal,
        child: Column(
          children: [
            const Spacer(),
            _buildLoginForm(context, ref),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_loginVmProvider.notifier);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AppButton(
          style: AppButtonStyle.outlined,
          text: context.loc.google.toUpperCase(),
          width: double.infinity,
          onPressed: () => vm.loginWithGoogle(context),
        ),
        const VerticalMediumSpacer(),
        AppButton(
          style: AppButtonStyle.outlined,
          text: context.loc.apple.toUpperCase(),
          width: double.infinity,
          onPressed: () => vm.loginWithApple(context),
        ),
        const VerticalMediumSpacer(),
        AppButton(
          style: AppButtonStyle.elevated,
          text: context.loc.continueName('').toUpperCase(),
          width: double.infinity,
          onPressed: () => vm.openLoginModal(context, _builderLoginDialog(ref)),
        ),
        const VerticalMediumSpacer(),
        const AppDivider(),
        const VerticalMediumSpacer(),
        AppButton(
          style: AppButtonStyle.outlined,
          text: context.loc.createAccount.toUpperCase(),
          width: double.infinity,
          onPressed: () => vm.goRegistration(context),
        ),
        const VerticalMediumSpacer(),
        AppButton(
          style: AppButtonStyle.text,
          text: context.loc.forgotPassword,
          width: double.infinity,
          onPressed: () => vm.forgotPassword(context),
        ),
      ],
    );
  }

  Widget Function(BuildContext) _builderLoginDialog(WidgetRef ref) {
    final vm = ref.watch(_loginVmProvider.notifier);
    final email = ref.watch(_emailProvider);
    final password = ref.watch(_passowrdProvider);
    final emailController = TextEditingController(text: email);
    final passwordController = TextEditingController(text: password);
    return (context) => SafeArea(
          minimum: AppDimesnionsEdgeInsetsExt.mediumHorizontal,
          child: Form(
            key: formKey,
            child: Column(
              children: [
                VerticalCustomSpacer(height: context.mq.size.height * 0.14),
                Text(
                  context.loc.login,
                  style: context.textTheme.titleLarge,
                ),
                const VerticalMediumSpacer(),
                AppTextFormField(
                  labelText: context.loc.email,
                  controller: emailController,
                  onSaved: (email) => vm.saveEmail(email),
                  validator: (p0) => _validator(context, p0),
                ),
                const VerticalMediumSpacer(),
                AppTextFormField(
                  labelText: context.loc.password,
                  controller: passwordController,
                  onSaved: (p0) => vm.savePassword(p0),
                  validator: (p0) => _validator(context, p0),
                ),
                const VerticalMediumSpacer(),
                AppButton(
                  style: AppButtonStyle.elevated,
                  text: context.loc.login.toUpperCase(),
                  width: double.infinity,
                  onPressed: () => {vm.login(context, formKey)},
                ),
                const VerticalMediumSpacer(),
                AppButton(
                  style: AppButtonStyle.outlined,
                  text: context.loc.cancel.toUpperCase(),
                  width: double.infinity,
                  onPressed: () => {vm.closeModal(context)},
                ),
              ],
            ),
          ),
        );
  }

  _validator(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return context.loc.genericError;
    }
    return null;
  }
}

final _loginVmProvider =
    NotifierProvider.autoDispose<LoginVm, LoginState>(() => LoginVm());

final _emailProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_loginVmProvider).email);
final _passowrdProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_loginVmProvider).password);
