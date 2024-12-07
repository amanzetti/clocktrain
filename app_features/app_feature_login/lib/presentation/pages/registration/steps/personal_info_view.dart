import 'package:app_feature_login/presentation/pages/registration/registration_view.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/string_ext.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:app_shared/widgets/atoms/text_fields/app_text_form_field.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PersonalInfoView extends ConsumerWidget {
  PersonalInfoView({
    super.key,
  });

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_registrationVmProvider.notifier);
    final name = ref.watch(_nameProvider);
    final surname = ref.watch(_surnameProvider);
    var birthDate = ref.watch(_birthDateProvider)?.toddMMMyyyyString();
    var weight = ref.watch(_weightProvider);
    var height = ref.watch(_heightProvider);
    var age = ref.watch(_ageProvider);

    final birthDateController = TextEditingController(
        text: (birthDate != null) ? birthDate.toString() : '');
    final heightController =
        TextEditingController(text: (height != null) ? height.toString() : '');
    final weightController =
        TextEditingController(text: (weight != null) ? weight.toString() : '');
    final ageController =
        TextEditingController(text: (age != null) ? age.toString() : '');

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppTextFormField(
          labelText: context.loc.name.capitalize(),
          initialValue: name,
          onSaved: (p0) => vm.setName(p0),
          validator: (p0) => vm.validateName(p0),
        ),
        AppTextFormField(
          labelText: context.loc.surname.capitalize(),
          initialValue: surname,
          onSaved: (p0) => vm.setSurname(p0),
          validator: (p0) => vm.validateSurname(p0),
        ),
        AppTextFormField(
          labelText: context.loc.birthDate.capitalize(),
          controller: birthDateController,
          readOnly: true,
          onSaved: (p0) => vm.setBirthDate(p0?.toDateTimeFromddMMMyyyy()),
          validator: (p0) => vm.validateBirthDate(p0),
          onTap: () => {
            vm.showDateTimePicker(context,
                doneText: context.loc.done.toUpperCase(),
                cancelText: context.loc.cancel.toUpperCase(),
                title: 'Select bith date')
          },
        ),
        Row(
          children: [
            Expanded(
              child: AppTextFormField(
                labelText: context.loc.weight.capitalize(),
                controller: weightController,
                readOnly: true,
                onSaved: (p0) => vm.setWeight(double.parse(p0 ?? '0')),
                validator: (p0) => vm.validateWeight(p0),
                suffixChild: _buildSuffixChild(context, 'kg'),
                onTap: () => {
                  vm.showWeightPicker(context,
                      doneText: context.loc.done.toUpperCase(),
                      cancelText: context.loc.cancel.toUpperCase(),
                      title: 'Select weight')
                },
              ),
            ),
            const HorizontalMediumSpacer(),
            Expanded(
              child: AppTextFormField(
                labelText: context.loc.height.capitalize(),
                controller: heightController,
                readOnly: true,
                onSaved: (p0) => vm.setHeight(int.parse(p0 ?? '0')),
                validator: (p0) => vm.validateHeight(p0),
                suffixChild: _buildSuffixChild(context, 'cm'),
                onTap: () => {
                  vm.showHeightPicker(context,
                      doneText: context.loc.done.toUpperCase(),
                      cancelText: context.loc.cancel.toUpperCase(),
                      title: 'Select height')
                },
              ),
            ),
            const HorizontalMediumSpacer(),
            Expanded(
              child: AppTextFormField(
                labelText: context.loc.age.capitalize(),
                controller: ageController,
                readOnly: true,
                onSaved: (p0) => vm.setAge(int.parse(p0 ?? '0')),
                validator: (p0) => vm.validateAge(p0),
                suffixChild: _buildSuffixChild(context, 'y'),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildSuffixChild(BuildContext context, String text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: context.textTheme.titleLarge
              ?.copyWith(color: context.colorScheme.onSurface),
        ),
      ],
    );
  }
}

final _registrationVmProvider = registrationVmProvider;

final _nameProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_registrationVmProvider).name);

final _surnameProvider = StateProvider.autoDispose<String?>(
    (ref) => ref.watch(_registrationVmProvider).surname);

final _birthDateProvider = StateProvider.autoDispose<DateTime?>(
    (ref) => ref.watch(_registrationVmProvider).birthDate);

final _weightProvider = StateProvider.autoDispose<double?>(
    (ref) => ref.watch(_registrationVmProvider).weight);

final _heightProvider = StateProvider.autoDispose<int?>(
    (ref) => ref.watch(_registrationVmProvider).height);

final _ageProvider = StateProvider.autoDispose<int?>(
    (ref) => ref.watch(_registrationVmProvider).age);
