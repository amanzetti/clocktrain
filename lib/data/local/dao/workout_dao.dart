import 'package:clocktrain/data/local/tables/workout_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/workout_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'workout_dao.g.dart';

@DriftAccessor(tables: [Workouts])
class WorkoutDao extends DatabaseAccessor<AppDatabase> with _$WorkoutDaoMixin {
  WorkoutDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<WorkoutDto>>> getAllWorkouts() async {
    try {
      final workouts = await select(db.workouts).get();
      final workoutDtos = workouts
          .map((workout) => WorkoutDto(
                id: workout.id,
                userId: workout.userId,
                name: workout.name,
                description: workout.description,
                dateCreated: workout.dateCreated,
              ))
          .toList();
      return Right(workoutDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, WorkoutDto>> getWorkoutById(int id) async {
    try {
      final workout = await (select(db.workouts)
            ..where((tbl) => tbl.id.equals(id)))
          .getSingleOrNull();
      if (workout != null) {
        return Right(WorkoutDto(
          id: workout.id,
          userId: workout.userId,
          name: workout.name,
          description: workout.description,
          dateCreated: workout.dateCreated,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertWorkout(WorkoutDto workoutDto) async {
    try {
      await into(db.workouts).insert(WorkoutsCompanion.insert(
        userId: (workoutDto.userId),
        name: (workoutDto.name),
        description: Value(workoutDto.description),
        dateCreated: (workoutDto.dateCreated),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateWorkout(WorkoutDto workoutDto) async {
    try {
      await (update(db.workouts)..where((tbl) => tbl.id.equals(workoutDto.id)))
          .write(WorkoutsCompanion(
        userId: Value(workoutDto.userId),
        name: Value(workoutDto.name),
        description: Value(workoutDto.description),
        dateCreated: Value(workoutDto.dateCreated),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteWorkout(int id) async {
    try {
      await (delete(db.workouts)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}
