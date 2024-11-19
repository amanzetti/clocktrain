import 'package:clocktrain/data/local/tables/workout_set_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/workout_set_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'workout_set_dao.g.dart';

@DriftAccessor(tables: [WorkoutSets])
class WorkoutSetDao extends DatabaseAccessor<AppDatabase> with _$WorkoutSetDaoMixin {
  WorkoutSetDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<WorkoutSetDto>>> getAllWorkoutSets() async {
    try {
      final workoutSets = await select(db.workoutSets).get();
      final workoutSetDtos = workoutSets.map((workoutSet) => WorkoutSetDto(
        id: workoutSet.id,
        workoutExerciseId: workoutSet.workoutExerciseId,
        setNumber: workoutSet.setNumber,
        reps: workoutSet.reps,
        weight: workoutSet.weight,
        restTime: workoutSet.restTime,
      )).toList();
      return Right(workoutSetDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, WorkoutSetDto>> getWorkoutSetById(int id) async {
    try {
      final workoutSet = await (select(db.workoutSets)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (workoutSet != null) {
        return Right(WorkoutSetDto(
          id: workoutSet.id,
          workoutExerciseId: workoutSet.workoutExerciseId,
          setNumber: workoutSet.setNumber,
          reps: workoutSet.reps,
          weight: workoutSet.weight,
          restTime: workoutSet.restTime,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertWorkoutSet(WorkoutSetDto workoutSetDto) async {
    try {
      await into(db.workoutSets).insert(WorkoutSetsCompanion.insert(
        workoutExerciseId: (workoutSetDto.workoutExerciseId),
        setNumber: (workoutSetDto.setNumber),
        reps: (workoutSetDto.reps),
        weight: Value(workoutSetDto.weight),
        restTime: (workoutSetDto.restTime),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateWorkoutSet(WorkoutSetDto workoutSetDto) async {
    try {
      await (update(db.workoutSets)..where((tbl) => tbl.id.equals(workoutSetDto.id)))
          .write(WorkoutSetsCompanion(
            workoutExerciseId: Value(workoutSetDto.workoutExerciseId),
            setNumber: Value(workoutSetDto.setNumber),
            reps: Value(workoutSetDto.reps),
            weight: Value(workoutSetDto.weight),
            restTime: Value(workoutSetDto.restTime),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteWorkoutSet(int id) async {
    try {
      await (delete(db.workoutSets)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}