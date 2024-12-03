// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegistrationState {
  bool get isEmailValid => throw _privateConstructorUsedError;
  bool get isPasswordValid => throw _privateConstructorUsedError;
  bool get isConfirmPasswordValid => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isSuccess => throw _privateConstructorUsedError;
  bool get isFailure => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  ///Registration
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get confirmPassword => throw _privateConstructorUsedError;

  ///User
  String? get name => throw _privateConstructorUsedError;
  String? get surname => throw _privateConstructorUsedError;
  DateTime? get birthDate => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegistrationStateCopyWith<RegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationStateCopyWith<$Res> {
  factory $RegistrationStateCopyWith(
          RegistrationState value, $Res Function(RegistrationState) then) =
      _$RegistrationStateCopyWithImpl<$Res, RegistrationState>;
  @useResult
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isConfirmPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String errorMessage,
      int currentPage,
      String email,
      String password,
      String confirmPassword,
      String? name,
      String? surname,
      DateTime? birthDate,
      double? weight,
      int? height,
      int? age});
}

/// @nodoc
class _$RegistrationStateCopyWithImpl<$Res, $Val extends RegistrationState>
    implements $RegistrationStateCopyWith<$Res> {
  _$RegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isConfirmPasswordValid = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? isFailure = null,
    Object? errorMessage = null,
    Object? currentPage = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? birthDate = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordValid: null == isConfirmPasswordValid
          ? _value.isConfirmPasswordValid
          : isConfirmPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationStateImplCopyWith<$Res>
    implements $RegistrationStateCopyWith<$Res> {
  factory _$$RegistrationStateImplCopyWith(_$RegistrationStateImpl value,
          $Res Function(_$RegistrationStateImpl) then) =
      __$$RegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isEmailValid,
      bool isPasswordValid,
      bool isConfirmPasswordValid,
      bool isSubmitting,
      bool isSuccess,
      bool isFailure,
      String errorMessage,
      int currentPage,
      String email,
      String password,
      String confirmPassword,
      String? name,
      String? surname,
      DateTime? birthDate,
      double? weight,
      int? height,
      int? age});
}

/// @nodoc
class __$$RegistrationStateImplCopyWithImpl<$Res>
    extends _$RegistrationStateCopyWithImpl<$Res, _$RegistrationStateImpl>
    implements _$$RegistrationStateImplCopyWith<$Res> {
  __$$RegistrationStateImplCopyWithImpl(_$RegistrationStateImpl _value,
      $Res Function(_$RegistrationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEmailValid = null,
    Object? isPasswordValid = null,
    Object? isConfirmPasswordValid = null,
    Object? isSubmitting = null,
    Object? isSuccess = null,
    Object? isFailure = null,
    Object? errorMessage = null,
    Object? currentPage = null,
    Object? email = null,
    Object? password = null,
    Object? confirmPassword = null,
    Object? name = freezed,
    Object? surname = freezed,
    Object? birthDate = freezed,
    Object? weight = freezed,
    Object? height = freezed,
    Object? age = freezed,
  }) {
    return _then(_$RegistrationStateImpl(
      isEmailValid: null == isEmailValid
          ? _value.isEmailValid
          : isEmailValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isPasswordValid: null == isPasswordValid
          ? _value.isPasswordValid
          : isPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isConfirmPasswordValid: null == isConfirmPasswordValid
          ? _value.isConfirmPasswordValid
          : isConfirmPasswordValid // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isSuccess: null == isSuccess
          ? _value.isSuccess
          : isSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isFailure: null == isFailure
          ? _value.isFailure
          : isFailure // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      surname: freezed == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String?,
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$RegistrationStateImpl implements _RegistrationState {
  const _$RegistrationStateImpl(
      {this.isEmailValid = false,
      this.isPasswordValid = false,
      this.isConfirmPasswordValid = false,
      this.isSubmitting = false,
      this.isSuccess = false,
      this.isFailure = false,
      this.errorMessage = '',
      this.currentPage = 0,
      this.email = '',
      this.password = '',
      this.confirmPassword = '',
      this.name = null,
      this.surname = null,
      this.birthDate = null,
      this.weight = null,
      this.height = null,
      this.age = null});

  @override
  @JsonKey()
  final bool isEmailValid;
  @override
  @JsonKey()
  final bool isPasswordValid;
  @override
  @JsonKey()
  final bool isConfirmPasswordValid;
  @override
  @JsonKey()
  final bool isSubmitting;
  @override
  @JsonKey()
  final bool isSuccess;
  @override
  @JsonKey()
  final bool isFailure;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final int currentPage;

  ///Registration
  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String confirmPassword;

  ///User
  @override
  @JsonKey()
  final String? name;
  @override
  @JsonKey()
  final String? surname;
  @override
  @JsonKey()
  final DateTime? birthDate;
  @override
  @JsonKey()
  final double? weight;
  @override
  @JsonKey()
  final int? height;
  @override
  @JsonKey()
  final int? age;

  @override
  String toString() {
    return 'RegistrationState(isEmailValid: $isEmailValid, isPasswordValid: $isPasswordValid, isConfirmPasswordValid: $isConfirmPasswordValid, isSubmitting: $isSubmitting, isSuccess: $isSuccess, isFailure: $isFailure, errorMessage: $errorMessage, currentPage: $currentPage, email: $email, password: $password, confirmPassword: $confirmPassword, name: $name, surname: $surname, birthDate: $birthDate, weight: $weight, height: $height, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationStateImpl &&
            (identical(other.isEmailValid, isEmailValid) ||
                other.isEmailValid == isEmailValid) &&
            (identical(other.isPasswordValid, isPasswordValid) ||
                other.isPasswordValid == isPasswordValid) &&
            (identical(other.isConfirmPasswordValid, isConfirmPasswordValid) ||
                other.isConfirmPasswordValid == isConfirmPasswordValid) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.isSuccess, isSuccess) ||
                other.isSuccess == isSuccess) &&
            (identical(other.isFailure, isFailure) ||
                other.isFailure == isFailure) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isEmailValid,
      isPasswordValid,
      isConfirmPasswordValid,
      isSubmitting,
      isSuccess,
      isFailure,
      errorMessage,
      currentPage,
      email,
      password,
      confirmPassword,
      name,
      surname,
      birthDate,
      weight,
      height,
      age);

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      __$$RegistrationStateImplCopyWithImpl<_$RegistrationStateImpl>(
          this, _$identity);
}

abstract class _RegistrationState implements RegistrationState {
  const factory _RegistrationState(
      {final bool isEmailValid,
      final bool isPasswordValid,
      final bool isConfirmPasswordValid,
      final bool isSubmitting,
      final bool isSuccess,
      final bool isFailure,
      final String errorMessage,
      final int currentPage,
      final String email,
      final String password,
      final String confirmPassword,
      final String? name,
      final String? surname,
      final DateTime? birthDate,
      final double? weight,
      final int? height,
      final int? age}) = _$RegistrationStateImpl;

  @override
  bool get isEmailValid;
  @override
  bool get isPasswordValid;
  @override
  bool get isConfirmPasswordValid;
  @override
  bool get isSubmitting;
  @override
  bool get isSuccess;
  @override
  bool get isFailure;
  @override
  String get errorMessage;
  @override
  int get currentPage;

  ///Registration
  @override
  String get email;
  @override
  String get password;
  @override
  String get confirmPassword;

  ///User
  @override
  String? get name;
  @override
  String? get surname;
  @override
  DateTime? get birthDate;
  @override
  double? get weight;
  @override
  int? get height;
  @override
  int? get age;

  /// Create a copy of RegistrationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegistrationStateImplCopyWith<_$RegistrationStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
