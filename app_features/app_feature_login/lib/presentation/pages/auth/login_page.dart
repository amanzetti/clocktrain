import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'login_page_state.dart';
import 'login_page_vm.dart';
import 'package:flutter/material.dart';

class LoginPage extends ConsumerWidget {
  LoginPage({super.key});

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
    final email = ref.watch(_emailProvider);
    final password = ref.watch(_passowrdProvider);
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextFormFiled(
            labelText: context.loc.email,
            initialValue: email,
            onSaved: (email) => vm.saveEmail(email),
            validator: (p0) => _validator(context, p0),
          ),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          AppTextFormFiled(
            labelText: context.loc.password,
            initialValue: password,
            onSaved: (password) => vm.savePassword(password),
            validator: (p0) => _validator(context, p0),
          ),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          AppElevatedButton(
            text: context.loc.login,
            width: double.infinity,
            onPressed: () => vm.login(context, formKey),
          ),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          AppElevatedButton(
            text: context.loc.register,
            width: double.infinity,
            onPressed: () => vm.register(context),
          ),
        ],
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
    NotifierProvider.autoDispose<LoginPageVm, LoginPageState>(
        () => LoginPageVm());

final _emailProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_loginVmProvider).email);
final _passowrdProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_loginVmProvider).password);
