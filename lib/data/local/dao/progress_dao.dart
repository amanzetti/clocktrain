import 'package:clocktrain/data/local/tables/progress_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/progress_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'progress_dao.g.dart';

@DriftAccessor(tables: [Progresses])
class ProgressDao extends DatabaseAccessor<AppDatabase> with _$ProgressDaoMixin {
  ProgressDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<ProgressDto>>> getAllProgresses() async {
    try {
      final progresses = await select(db.progresses).get();
      final progressDtos = progresses.map((progress) => ProgressDto(
        id: progress.id,
        userId: progress.userId,
        exerciseId: progress.exerciseId,
        progressDate: progress.progressDate,
        reps: progress.reps,
        weight: progress.weight,
        notes: progress.notes,
      )).toList();
      return Right(progressDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, ProgressDto>> getProgressById(int id) async {
    try {
      final progress = await (select(db.progresses)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (progress != null) {
        return Right(ProgressDto(
          id: progress.id,
          userId: progress.userId,
          exerciseId: progress.exerciseId,
          progressDate: progress.progressDate,
          reps: progress.reps,
          weight: progress.weight,
          notes: progress.notes,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertProgress(ProgressDto progressDto) async {
    try {
      await into(db.progresses).insert(ProgressesCompanion.insert(
        userId: (progressDto.userId),
        exerciseId: (progressDto.exerciseId),
        progressDate: (progressDto.progressDate),
        reps: (progressDto.reps),
        weight: Value(progressDto.weight),
        notes: Value(progressDto.notes),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateProgress(ProgressDto progressDto) async {
    try {
      await (update(db.progresses)..where((tbl) => tbl.id.equals(progressDto.id)))
          .write(ProgressesCompanion(
            userId: Value(progressDto.userId),
            exerciseId: Value(progressDto.exerciseId),
            progressDate: Value(progressDto.progressDate),
            reps: Value(progressDto.reps),
            weight: Value(progressDto.weight),
            notes: Value(progressDto.notes),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteProgress(int id) async {
    try {
      await (delete(db.progresses)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}