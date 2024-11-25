import 'package:clocktrain/data/local/app_database.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress_dto.freezed.dart';
part 'progress_dto.g.dart';

@freezed
class ProgressDto with _$ProgressDto {
  const factory ProgressDto({
    required int id,
    required String userId,
    required int exerciseId,
    required DateTime progressDate,
    required int reps,
    double? weight,
    String? notes,
  }) = _ProgressDto;

  factory ProgressDto.fromJson(Map<String, dynamic> json) =>
      _$ProgressDtoFromJson(json);

  factory ProgressDto.fromEntity(Progress entity) {
    return ProgressDto(
      id: entity.id,
      userId: entity.userId,
      exerciseId: entity.exerciseId,
      progressDate: entity.progressDate,
      reps: entity.reps,
      weight: entity.weight,
      notes: entity.notes,
    );
  }
}

extension ProgressDtoX on ProgressDto {
  Progress toEntity() {
    return Progress(
      id: id,
      userId: userId,
      exerciseId: exerciseId,
      progressDate: progressDate,
      reps: reps,
      weight: weight,
      notes: notes,
    );
  }
}
