import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_dto.freezed.dart';

@freezed
class WorkoutDto with _$WorkoutDtoDto {
  const factory WorkoutDto({
    required int id,
    required String name,
    String? description,
    required int userId,
    required DateTime dateCreated,
  }) = _WorkoutDto;

  factory WorkoutDto.fromJson(Map<String, dynamic> json) => _$WorkoutDtoFromJson(json);
}