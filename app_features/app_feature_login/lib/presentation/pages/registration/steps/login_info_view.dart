import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_vm.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/string_ext.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginInfoView extends ConsumerWidget {
  const LoginInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final email = ref.watch(_emailProvider);
    final password = ref.watch(_passwordProvider);
    final confirmPassword = ref.watch(_confirmPasswordProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: context.loc.email.capitalize(),
          initialValue: email,
        ),
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: context.loc.password.capitalize(),
          initialValue: password,
        ),
        // const VerticalMediumSpacer(),
        AppTextFormFiled(
          labelText: context.loc.confirmPassword.capitalize(),
          initialValue: confirmPassword,
        ),
        // const VerticalMediumSpacer(),
      ],
    );
  }
}

final _registrationVmProvider =
    NotifierProvider.autoDispose<RegistrationVm, RegistrationState>(
        () => RegistrationVm());

final _emailProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).email);

final _passwordProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).password);

final _confirmPasswordProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).confirmPassword);
