// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dashboard_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DashboardPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  User? get loggedUser => throw _privateConstructorUsedError;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DashboardPageStateCopyWith<DashboardPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardPageStateCopyWith<$Res> {
  factory $DashboardPageStateCopyWith(
          DashboardPageState value, $Res Function(DashboardPageState) then) =
      _$DashboardPageStateCopyWithImpl<$Res, DashboardPageState>;
  @useResult
  $Res call({bool isLoading, User? loggedUser});
}

/// @nodoc
class _$DashboardPageStateCopyWithImpl<$Res, $Val extends DashboardPageState>
    implements $DashboardPageStateCopyWith<$Res> {
  _$DashboardPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loggedUser = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DashboardPageStateImplCopyWith<$Res>
    implements $DashboardPageStateCopyWith<$Res> {
  factory _$$DashboardPageStateImplCopyWith(_$DashboardPageStateImpl value,
          $Res Function(_$DashboardPageStateImpl) then) =
      __$$DashboardPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, User? loggedUser});
}

/// @nodoc
class __$$DashboardPageStateImplCopyWithImpl<$Res>
    extends _$DashboardPageStateCopyWithImpl<$Res, _$DashboardPageStateImpl>
    implements _$$DashboardPageStateImplCopyWith<$Res> {
  __$$DashboardPageStateImplCopyWithImpl(_$DashboardPageStateImpl _value,
      $Res Function(_$DashboardPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? loggedUser = freezed,
  }) {
    return _then(_$DashboardPageStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$DashboardPageStateImpl implements _DashboardPageState {
  const _$DashboardPageStateImpl(
      {this.isLoading = false, this.loggedUser = null});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final User? loggedUser;

  @override
  String toString() {
    return 'DashboardPageState(isLoading: $isLoading, loggedUser: $loggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DashboardPageStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.loggedUser, loggedUser) ||
                other.loggedUser == loggedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, loggedUser);

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      __$$DashboardPageStateImplCopyWithImpl<_$DashboardPageStateImpl>(
          this, _$identity);
}

abstract class _DashboardPageState implements DashboardPageState {
  const factory _DashboardPageState(
      {final bool isLoading,
      final User? loggedUser}) = _$DashboardPageStateImpl;

  @override
  bool get isLoading;
  @override
  User? get loggedUser;

  /// Create a copy of DashboardPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DashboardPageStateImplCopyWith<_$DashboardPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
