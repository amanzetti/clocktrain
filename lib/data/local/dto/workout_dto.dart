import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_dto.freezed.dart';
part 'workout_dto.g.dart';

@freezed
class WorkoutDto with _$WorkoutDto {
  const factory WorkoutDto({
    required int id,
    required String name,
    String? description,
    required String userId,
    required DateTime dateCreated,
  }) = _WorkoutDto;

  factory WorkoutDto.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDtoFromJson(json);

  factory WorkoutDto.fromEntity(Workout entity) {
    return WorkoutDto(
      id: entity.id,
      name: entity.name,
      description: entity.description,
      userId: entity.userId,
      dateCreated: entity.dateCreated,
    );
  }
}

extension WorkoutDtoX on WorkoutDto {
  Workout toEntity() {
    return Workout(
      id: id,
      name: name,
      description: description,
      userId: userId,
      dateCreated: dateCreated,
    );
  }
}
