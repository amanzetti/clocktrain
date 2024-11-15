import 'package:freezed_annotation/freezed_annotation.dart';

part '../model/progress_dto.freezed.dart';
part '../model/progress_dto.g.dart';

@freezed
class ProgressDto with _$ProgressDto {
  const factory ProgressDto({
    required int id,
    required int userId,
    required int exerciseId,
    required DateTime progressDate,
    required int reps,
    double? weight,
    String? notes,
  }) = _ProgressDto;

  factory ProgressDto.fromJson(Map<String, dynamic> json) => _$ProgressDtoFromJson(json);
}