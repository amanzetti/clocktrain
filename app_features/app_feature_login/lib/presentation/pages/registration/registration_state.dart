import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool isConfirmPasswordValid,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default('') String errorMessage,
    @Default(0) int currentPage,

    ///User
    @Default('') String name,
    @Default('') String surname,
    @Default(null) DateTime? birthDate,

  }) = _RegistrationState;

  factory RegistrationState.initial() => const RegistrationState();

  // bool get isFormValid => isEmailValid && isPasswordValid && isConfirmPasswordValid;
}
