import 'package:clocktrain/data/local/tables/workout_exercise_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/workout_exercise_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'workout_exercise_dao.g.dart';

@DriftAccessor(tables: [WorkoutExercises])
class WorkoutExerciseDao extends DatabaseAccessor<AppDatabase> with _$WorkoutExerciseDaoMixin {
  WorkoutExerciseDao(super.db);

  Future<Either<CommonError, List<WorkoutExerciseDto>>> getAllWorkoutExercises() async {
    try {
      final workoutExercises = await select(db.workoutExercises).get();
      final workoutExerciseDtos = workoutExercises.map((workoutExercise) => WorkoutExerciseDto(
        id: workoutExercise.id,
        workoutId: workoutExercise.workoutId,
        exerciseId: workoutExercise.exerciseId,
        order: workoutExercise.order,
        supersetGroup: workoutExercise.supersetGroup,
        notes: workoutExercise.notes,
      )).toList();
      return Right(workoutExerciseDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, WorkoutExerciseDto>> getWorkoutExerciseById(int id) async {
    try {
      final workoutExercise = await (select(db.workoutExercises)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (workoutExercise != null) {
        return Right(WorkoutExerciseDto(
          id: workoutExercise.id,
          workoutId: workoutExercise.workoutId,
          exerciseId: workoutExercise.exerciseId,
          order: workoutExercise.order,
          supersetGroup: workoutExercise.supersetGroup,
          notes: workoutExercise.notes,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertWorkoutExercise(WorkoutExerciseDto workoutExerciseDto) async {
    try {
      await into(db.workoutExercises).insert(WorkoutExercisesCompanion.insert(
        workoutId: (workoutExerciseDto.workoutId),
        exerciseId: (workoutExerciseDto.exerciseId),
        order: (workoutExerciseDto.order),
        supersetGroup: Value(workoutExerciseDto.supersetGroup),
        notes: Value(workoutExerciseDto.notes),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateWorkoutExercise(WorkoutExerciseDto workoutExerciseDto) async {
    try {
      await (update(db.workoutExercises)..where((tbl) => tbl.id.equals(workoutExerciseDto.id)))
          .write(WorkoutExercisesCompanion(
            workoutId: Value(workoutExerciseDto.workoutId),
            exerciseId: Value(workoutExerciseDto.exerciseId),
            order: Value(workoutExerciseDto.order),
            supersetGroup: Value(workoutExerciseDto.supersetGroup),
            notes: Value(workoutExerciseDto.notes),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteWorkoutExercise(int id) async {
    try {
      await (delete(db.workoutExercises)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}