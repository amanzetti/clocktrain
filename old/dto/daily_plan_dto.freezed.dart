// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_plan_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyPlanDto _$DailyPlanDtoFromJson(Map<String, dynamic> json) {
  return _DailyPlanDto.fromJson(json);
}

/// @nodoc
mixin _$DailyPlanDto {
  int? get id => throw _privateConstructorUsedError;
  String? get day => throw _privateConstructorUsedError;
  List<WorkoutItemDto> get workoutItems => throw _privateConstructorUsedError;

  /// Serializes this DailyPlanDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DailyPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DailyPlanDtoCopyWith<DailyPlanDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyPlanDtoCopyWith<$Res> {
  factory $DailyPlanDtoCopyWith(
          DailyPlanDto value, $Res Function(DailyPlanDto) then) =
      _$DailyPlanDtoCopyWithImpl<$Res, DailyPlanDto>;
  @useResult
  $Res call({int? id, String? day, List<WorkoutItemDto> workoutItems});
}

/// @nodoc
class _$DailyPlanDtoCopyWithImpl<$Res, $Val extends DailyPlanDto>
    implements $DailyPlanDtoCopyWith<$Res> {
  _$DailyPlanDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DailyPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? workoutItems = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutItems: null == workoutItems
          ? _value.workoutItems
          : workoutItems // ignore: cast_nullable_to_non_nullable
              as List<WorkoutItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyPlanDtoImplCopyWith<$Res>
    implements $DailyPlanDtoCopyWith<$Res> {
  factory _$$DailyPlanDtoImplCopyWith(
          _$DailyPlanDtoImpl value, $Res Function(_$DailyPlanDtoImpl) then) =
      __$$DailyPlanDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? day, List<WorkoutItemDto> workoutItems});
}

/// @nodoc
class __$$DailyPlanDtoImplCopyWithImpl<$Res>
    extends _$DailyPlanDtoCopyWithImpl<$Res, _$DailyPlanDtoImpl>
    implements _$$DailyPlanDtoImplCopyWith<$Res> {
  __$$DailyPlanDtoImplCopyWithImpl(
      _$DailyPlanDtoImpl _value, $Res Function(_$DailyPlanDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of DailyPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? day = freezed,
    Object? workoutItems = null,
  }) {
    return _then(_$DailyPlanDtoImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutItems: null == workoutItems
          ? _value._workoutItems
          : workoutItems // ignore: cast_nullable_to_non_nullable
              as List<WorkoutItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyPlanDtoImpl implements _DailyPlanDto {
  const _$DailyPlanDtoImpl(
      {this.id, this.day, required final List<WorkoutItemDto> workoutItems})
      : _workoutItems = workoutItems;

  factory _$DailyPlanDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyPlanDtoImplFromJson(json);

  @override
  final int? id;
  @override
  final String? day;
  final List<WorkoutItemDto> _workoutItems;
  @override
  List<WorkoutItemDto> get workoutItems {
    if (_workoutItems is EqualUnmodifiableListView) return _workoutItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workoutItems);
  }

  @override
  String toString() {
    return 'DailyPlanDto(id: $id, day: $day, workoutItems: $workoutItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyPlanDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality()
                .equals(other._workoutItems, _workoutItems));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, day, const DeepCollectionEquality().hash(_workoutItems));

  /// Create a copy of DailyPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyPlanDtoImplCopyWith<_$DailyPlanDtoImpl> get copyWith =>
      __$$DailyPlanDtoImplCopyWithImpl<_$DailyPlanDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyPlanDtoImplToJson(
      this,
    );
  }
}

abstract class _DailyPlanDto implements DailyPlanDto {
  const factory _DailyPlanDto(
      {final int? id,
      final String? day,
      required final List<WorkoutItemDto> workoutItems}) = _$DailyPlanDtoImpl;

  factory _DailyPlanDto.fromJson(Map<String, dynamic> json) =
      _$DailyPlanDtoImpl.fromJson;

  @override
  int? get id;
  @override
  String? get day;
  @override
  List<WorkoutItemDto> get workoutItems;

  /// Create a copy of DailyPlanDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DailyPlanDtoImplCopyWith<_$DailyPlanDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
