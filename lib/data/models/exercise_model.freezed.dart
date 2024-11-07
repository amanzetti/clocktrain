// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exercise_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Exercise _$ExerciseFromJson(Map<String, dynamic> json) {
  return _Exercise.fromJson(json);
}

/// @nodoc
mixin _$Exercise {
  String? get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String? get description =>
      throw _privateConstructorUsedError; // Descrizione opzionale dell'esercizio
  @override
  String? get mediaUrl =>
      throw _privateConstructorUsedError; // URL immagine dell'esercizio
  String get targetMuscle => throw _privateConstructorUsedError;
  Duration? get duration =>
      throw _privateConstructorUsedError; // Durata opzionale dell'esercizio
  String get videoUrl =>
      throw _privateConstructorUsedError; // URL video dimostrativo
  List<Set> get sets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res, Exercise>;
  @useResult
  $Res call(
      {String? id,
      @override String name,
      @override String? description,
      @override String? mediaUrl,
      String targetMuscle,
      Duration? duration,
      String videoUrl,
      List<Set> sets});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res, $Val extends Exercise>
    implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? mediaUrl = freezed,
    Object? targetMuscle = null,
    Object? duration = freezed,
    Object? videoUrl = null,
    Object? sets = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetMuscle: null == targetMuscle
          ? _value.targetMuscle
          : targetMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value.sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExerciseImplCopyWith<$Res>
    implements $ExerciseCopyWith<$Res> {
  factory _$$ExerciseImplCopyWith(
          _$ExerciseImpl value, $Res Function(_$ExerciseImpl) then) =
      __$$ExerciseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @override String name,
      @override String? description,
      @override String? mediaUrl,
      String targetMuscle,
      Duration? duration,
      String videoUrl,
      List<Set> sets});
}

/// @nodoc
class __$$ExerciseImplCopyWithImpl<$Res>
    extends _$ExerciseCopyWithImpl<$Res, _$ExerciseImpl>
    implements _$$ExerciseImplCopyWith<$Res> {
  __$$ExerciseImplCopyWithImpl(
      _$ExerciseImpl _value, $Res Function(_$ExerciseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = freezed,
    Object? mediaUrl = freezed,
    Object? targetMuscle = null,
    Object? duration = freezed,
    Object? videoUrl = null,
    Object? sets = null,
  }) {
    return _then(_$ExerciseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      targetMuscle: null == targetMuscle
          ? _value.targetMuscle
          : targetMuscle // ignore: cast_nullable_to_non_nullable
              as String,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
      videoUrl: null == videoUrl
          ? _value.videoUrl
          : videoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sets: null == sets
          ? _value._sets
          : sets // ignore: cast_nullable_to_non_nullable
              as List<Set>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExerciseImpl implements _Exercise {
  const _$ExerciseImpl(
      {this.id,
      @override required this.name,
      @override this.description,
      @override this.mediaUrl,
      required this.targetMuscle,
      this.duration,
      required this.videoUrl,
      final List<Set> sets = const []})
      : _sets = sets;

  factory _$ExerciseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExerciseImplFromJson(json);

  @override
  final String? id;
  @override
  @override
  final String name;
  @override
  @override
  final String? description;
// Descrizione opzionale dell'esercizio
  @override
  @override
  final String? mediaUrl;
// URL immagine dell'esercizio
  @override
  final String targetMuscle;
  @override
  final Duration? duration;
// Durata opzionale dell'esercizio
  @override
  final String videoUrl;
// URL video dimostrativo
  final List<Set> _sets;
// URL video dimostrativo
  @override
  @JsonKey()
  List<Set> get sets {
    if (_sets is EqualUnmodifiableListView) return _sets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sets);
  }

  @override
  String toString() {
    return 'Exercise(id: $id, name: $name, description: $description, mediaUrl: $mediaUrl, targetMuscle: $targetMuscle, duration: $duration, videoUrl: $videoUrl, sets: $sets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExerciseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl) &&
            (identical(other.targetMuscle, targetMuscle) ||
                other.targetMuscle == targetMuscle) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.videoUrl, videoUrl) ||
                other.videoUrl == videoUrl) &&
            const DeepCollectionEquality().equals(other._sets, _sets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      mediaUrl,
      targetMuscle,
      duration,
      videoUrl,
      const DeepCollectionEquality().hash(_sets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      __$$ExerciseImplCopyWithImpl<_$ExerciseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExerciseImplToJson(
      this,
    );
  }
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {final String? id,
      @override required final String name,
      @override final String? description,
      @override final String? mediaUrl,
      required final String targetMuscle,
      final Duration? duration,
      required final String videoUrl,
      final List<Set> sets}) = _$ExerciseImpl;

  factory _Exercise.fromJson(Map<String, dynamic> json) =
      _$ExerciseImpl.fromJson;

  @override
  String? get id;
  @override
  @override
  String get name;
  @override
  @override
  String? get description;
  @override // Descrizione opzionale dell'esercizio
  @override
  String? get mediaUrl;
  @override // URL immagine dell'esercizio
  String get targetMuscle;
  @override
  Duration? get duration;
  @override // Durata opzionale dell'esercizio
  String get videoUrl;
  @override // URL video dimostrativo
  List<Set> get sets;
  @override
  @JsonKey(ignore: true)
  _$$ExerciseImplCopyWith<_$ExerciseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
