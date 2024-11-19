import 'package:clocktrain/domain/entities/progress_entity.dart';

abstract class ProgressRepository {
  Future<List<Progress>> getAllProgresses();
  Future<Progress> getProgressById(int id);
  Future<void> addProgress(Progress progress);
  Future<void> updateProgress(Progress progress);
  Future<void> deleteProgress(int id);
}