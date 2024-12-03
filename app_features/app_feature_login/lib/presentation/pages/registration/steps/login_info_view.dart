import 'package:app_feature_login/presentation/pages/registration/registration_view.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/string_ext.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginInfoView extends ConsumerWidget {
  LoginInfoView({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final email = ref.watch(_emailProvider);
    final password = ref.watch(_passwordProvider);
    final confirmPassword = ref.watch(_confirmPasswordProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppTextFormField(
          labelText: context.loc.email.capitalize(),
          initialValue: email,
          onSaved: (p0) => vm.setEmail(p0!),
          validator: (p0) => vm.validateEmail(p0),
        ),
        AppTextFormField(
          labelText: context.loc.password.capitalize(),
          initialValue: password,
          onSaved: (p0) => vm.setPassword(p0!),
          validator: (p0) => vm.validatePassword(p0),
        ),
        AppTextFormField(
          labelText: context.loc.confirmPassword.capitalize(),
          initialValue: confirmPassword,
          onSaved: (p0) => vm.setConfirmPassword(p0!),
          validator: (p0) => vm.validateConfirmPassword(p0),
        ),
      ],
    );
  }
}

final _registrationVmProvider = registrationVmProvider;

final _emailProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).email);

final _passwordProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).password);

final _confirmPasswordProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).confirmPassword);
