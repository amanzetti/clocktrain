import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration_state.freezed.dart';

@freezed
class RegistrationState with _$RegistrationState {
  const factory RegistrationState({
    @Default(false) bool isEmailValid,
    @Default(false) bool isPasswordValid,
    @Default(false) bool isConfirmPasswordValid,
    @Default(false) bool isSubmitting,
    @Default(false) bool isSuccess,
    @Default(false) bool isFailure,
    @Default('') String errorMessage,
    @Default(0) int currentPage,

    ///Registration
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmPassword,

    ///User
    @Default(null) String? name,
    @Default(null) String? surname,
    @Default(null) DateTime? birthDate,
    @Default(null) double? weight,
    @Default(null) int? height,
    @Default(null) int? age,
  }) = _RegistrationState;

  factory RegistrationState.initial() => const RegistrationState();

  // bool get isFormValid => isEmailValid && isPasswordValid && isConfirmPasswordValid;
}
