import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_shared/widgets/molecules/app_time_picker.dart';
import 'package:app_shared/widgets/molecules/picker/picker_wight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RegistrationVm extends AutoDisposeNotifier<RegistrationState> {
  @override
  RegistrationState build() {
    return const RegistrationState();
  }

  void setCurrentPage(int page) {
    state = state.copyWith(currentPage: page);
  }

  ///USER
  void setNames(String name) {
    state = state.copyWith(name: name);
  }

  void setSurname(String surname) {
    state = state.copyWith(surname: surname);
  }

  void setBirthDate(DateTime birthDate) {
    state = state.copyWith(birthDate: birthDate);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }

  void getUserData() {
    print('Name: ${state.name}');
    print('Surname: ${state.surname}');
    print('BirthDate: ${state.birthDate}');
  }

  void showWeightPicker(BuildContext context,
      {required String doneText,
      required String cancelText,
      required String title}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return WeightPicker(
          title: title,
          primaryTextButton: doneText,
          secondaryTextButton: cancelText,
          initialWeight: state.weight,
          onDone: (p0) => {setWeight(p0)},
        );
      },
    );
  }

  void showIntervalPicker(BuildContext context) {
    showCupertinoTimerPicker(
      context,
      TextEditingController(),
      TimePickerType.interval,
    );
  }

  void goBack(BuildContext context) {
    context.pop();
  }
}
