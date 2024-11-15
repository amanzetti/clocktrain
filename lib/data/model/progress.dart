import 'package:freezed_annotation/freezed_annotation.dart';

part 'progress.freezed.dart';
part 'progress.g.dart';

@freezed
class Progress with _$Progress {
  const factory Progress({
    required int id,
    required int userId,
    required int exerciseId,
    required DateTime progressDate,
    required int reps,
    double? weight,
    String? notes,
  }) = _Progress;

  factory Progress.fromJson(Map<String, dynamic> json) => _$ProgressFromJson(json);
}