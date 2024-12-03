import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
import 'package:app_shared/widgets/molecules/app_time_picker.dart';
import 'package:app_shared/widgets/molecules/picker/picker_wight.dart';
import 'package:app_shared/widgets/molecules/picker/date_time_picker.dart';
import 'package:app_shared/widgets/molecules/picker/height_picker.dart';
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
  void setName(String? name) {
    state = state.copyWith(name: name);
  }

  void setSurname(String? surname) {
    state = state.copyWith(surname: surname);
  }

  void setBirthDate(DateTime? birthDate) {
    state = state.copyWith(birthDate: birthDate);
    if(birthDate == null) return;
    final int age = DateTime.now().year - birthDate.year;
    setAge(age);
  }

  void setWeight(double weight) {
    state = state.copyWith(weight: weight);
  }

  void setHeight(int height) {
    state = state.copyWith(height: height);
  }

  void setAge(int age) {
    state = state.copyWith(age: age);
  }

  ///Login
  void setEmail(String email) {
    state = state.copyWith(email: email);
  }

  void setPassword(String password) {
    state = state.copyWith(password: password);
  }

  void setConfirmPassword(String confirmPassword) {
    state = state.copyWith(confirmPassword: confirmPassword);
  }

  void getUserData(GlobalKey<FormState> formKey) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
    }
    print('Name: ${state.name}');
    print('Surname: ${state.surname}');
    print('BirthDate: ${state.birthDate}');
    print('Weight: ${state.weight}');
    print('Height: ${state.height}');
    print('Age: ${state.age}');
    print('email: ${state.email}');
    print('password: ${state.password}');

    
  }

  void showWeightPicker(BuildContext context,
      {required String doneText,
      required String cancelText,
      required String title}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: WeightPicker(
            title: title,
            primaryTextButton: doneText,
            secondaryTextButton: cancelText,
            initialWeight: state.weight,
            onDone: (p0) => {setWeight(p0)},
          ),
        );
      },
    );
  }

  void showHeightPicker(BuildContext context,
      {required String doneText,
      required String cancelText,
      required String title}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: HeightPicker(
            title: title,
            primaryTextButton: doneText,
            secondaryTextButton: cancelText,
            initialHeight: state.height,
            onDone: (p0) => {setHeight(p0)},
          ),
        );
      },
    );
  }

  void showDateTimePicker(BuildContext context,
      {required String doneText,
      required String cancelText,
      required String title}) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: DateTimePicker(
            title: title,
            primaryTextButton: doneText,
            secondaryTextButton: cancelText,
            initialDateTime: state.birthDate,
            onDone: (p0) => {setBirthDate(p0)},
          ),
        );
      },
    );
  }

  void goBack(BuildContext context) {
    context.pop();
  }

  ///Validator
  String? validateName(String? p0) {
     if (p0 == null || p0.isEmpty) {
    return 'Name cannot be empty';
  }
  return null;
  }

  String? validateSurname(String? p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Surname cannot be empty';
    }
    return null;
  }

  String? validateBirthDate(String? p0) {
    if (p0 == null) {
      return 'Birth date cannot be empty';
    }
    return null;
  }

  String? validateWeight(String? p0) {
    if (p0 == null) {
      return 'Weight cannot be empty';
    }
    return null;
  }

  String? validateHeight(String? p0) {
    if (p0 == null) {
      return 'Height cannot be empty';
    }
    return null;
  }

  String? validateAge(String? p0) {
    if (p0 == null) {
      return 'Age cannot be empty';
    }
    return null;
  }

  String? validateEmail(String? p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Email cannot be empty';
    }
    return null;
  }

  String? validatePassword(String? p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Password cannot be empty';
    }
    return null;
  }

  String? validateConfirmPassword(String? p0) {
    if (p0 == null || p0.isEmpty) {
      return 'Confirm password cannot be empty';
    }
    return null;
  }


}
