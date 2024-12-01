import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_vm.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/string_ext.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field_datetime.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalInfoView extends ConsumerWidget {
  const PersonalInfoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final name = ref.watch(_nameProvider);
    final surname = ref.watch(_surnameProvider);
    final birthDate = ref.watch(_birthDateProvider);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppTextFormFiled(
          labelText: context.loc.name.capitalize(),
          initialValue: name,
        ),
        AppTextFormFiled(
          labelText: context.loc.surname.capitalize(),
          initialValue: surname,
        ),
        AppTextFormFieldDatetime(
          labelText: context.loc.birthDate.capitalize(),
          initialValue: birthDate,
          onSavedDateTime: (p0) => {vm.setBirthDate(p0)},
          // onTap: () => {_selectDate(context, birthDate, vm.setBirthDate)},
        ),
        Row(
          children: [
            Expanded(
              child: AppTextFormFiled(
                labelText: context.loc.weight.capitalize(),
                initialValue: name,
              ),
            ),
            const HorizontalMediumSpacer(),
            Expanded(
              child: AppTextFormFiled(
                labelText: context.loc.height.capitalize(),
                initialValue: surname,
              ),
            ),
            const HorizontalMediumSpacer(),
            Expanded(
              child: AppTextFormFiled(
                labelText: context.loc.age.capitalize(),
                // initialValue: birthDate,
                // onTap: () => {_selectDate(context, birthDate, vm.setBirthDate)},
              ),
            ),
          ],
        )
      ],
    );
  }
}

final _registrationVmProvider =
    NotifierProvider.autoDispose<RegistrationVm, RegistrationState>(
        () => RegistrationVm());

final _nameProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).name);

final _surnameProvider = StateProvider.autoDispose<String>(
    (ref) => ref.watch(_registrationVmProvider).surname);

final _birthDateProvider = StateProvider.autoDispose<DateTime?>(
    (ref) => ref.watch(_registrationVmProvider).birthDate);
