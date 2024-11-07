// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      surname: json['surname'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toDouble(),
      birthDate: const TimestampSerializer().fromJson(json['birthDate']),
      userRole: json['userRole'] as String,
      goal: json['goal'] as String,
      profileImageUrl: json['profileImageUrl'] as String?,
      workouts: (json['workouts'] as List<dynamic>?)
              ?.map((e) => Workout.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      darkModeEnabled: json['darkModeEnabled'] as bool? ?? false,
      createdAt: const TimestampSerializer().fromJson(json['createdAt']),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'username': instance.username,
      'email': instance.email,
      'height': instance.height,
      'weight': instance.weight,
      'birthDate': const TimestampSerializer().toJson(instance.birthDate),
      'userRole': instance.userRole,
      'goal': instance.goal,
      'profileImageUrl': instance.profileImageUrl,
      'workouts': instance.workouts,
      'darkModeEnabled': instance.darkModeEnabled,
      'createdAt': const TimestampSerializer().toJson(instance.createdAt),
    };
