import 'package:app_feature_login/presentation/pages/registration/registration_state.dart';
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

  void getUserData() {
    print('Name: ${state.name}');
    print('Surname: ${state.surname}');
    print('BirthDate: ${state.birthDate}');
  }

  void goBack(BuildContext context) {
    context.pop();
  }
}
