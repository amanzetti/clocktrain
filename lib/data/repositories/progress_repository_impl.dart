import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/progress_entity.dart';
import 'package:clocktrain/domain/repositories/progress_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/progress_dto.dart';

class ProgressRepositoryImpl implements ProgressRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  ProgressRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<Progress>> getAllProgresses() async {
    final result = await localDbDatasource.getAllProgresses();
    return result.fold(
      (error) => throw Exception('Error fetching progresses: $error'),
      (progressDtos) => progressDtos.map((progressDto) => Progress(
        id: progressDto.id,
        userId: progressDto.userId,
        exerciseId: progressDto.exerciseId,
        progressDate: progressDto.progressDate,
        reps: progressDto.reps,
        weight: progressDto.weight,
        notes: progressDto.notes,
      )).toList(),
    );
  }

  @override
  Future<Progress> getProgressById(int id) async {
    final result = await localDbDatasource.getProgressById(id);
    return result.fold(
      (error) => throw Exception('Error fetching progress: $error'),
      (progressDto) => Progress(
        id: progressDto.id,
        userId: progressDto.userId,
        exerciseId: progressDto.exerciseId,
        progressDate: progressDto.progressDate,
        reps: progressDto.reps,
        weight: progressDto.weight,
        notes: progressDto.notes,
      ),
    );
  }

  @override
  Future<void> addProgress(Progress progress) async {
    final progressDto = ProgressDto(
      id: progress.id,
      userId: progress.userId,
      exerciseId: progress.exerciseId,
      progressDate: progress.progressDate,
      reps: progress.reps,
      weight: progress.weight,
      notes: progress.notes,
    );
    final result = await localDbDatasource.insertProgress(progressDto);
    result.fold(
      (error) => throw Exception('Error adding progress: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateProgress(Progress progress) async {
    final progressDto = ProgressDto(
      id: progress.id,
      userId: progress.userId,
      exerciseId: progress.exerciseId,
      progressDate: progress.progressDate,
      reps: progress.reps,
      weight: progress.weight,
      notes: progress.notes,
    );
    final result = await localDbDatasource.updateProgress(progressDto);
    result.fold(
      (error) => throw Exception('Error updating progress: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteProgress(int id) async {
    final result = await localDbDatasource.deleteProgress(id);
    result.fold(
      (error) => throw Exception('Error deleting progress: $error'),
      (_) => null,
    );
  }
}