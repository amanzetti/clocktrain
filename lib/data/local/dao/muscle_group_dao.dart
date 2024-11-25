import 'package:clocktrain/data/local/tables/muscle_group_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/muscle_group_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'muscle_group_dao.g.dart';

@DriftAccessor(tables: [MuscleGroups])
class MuscleGroupDao extends DatabaseAccessor<AppDatabase> with _$MuscleGroupDaoMixin {
  MuscleGroupDao(super.db);

  Future<Either<CommonError, List<MuscleGroupDto>>> getAllMuscleGroups() async {
    try {
      final muscleGroups = await select(db.muscleGroups).get();
      final muscleGroupDtos = muscleGroups.map((muscleGroup) => MuscleGroupDto(
        id: muscleGroup.id,
        groupName: muscleGroup.groupName,
      )).toList();
      return Right(muscleGroupDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, MuscleGroupDto>> getMuscleGroupById(int id) async {
    try {
      final muscleGroup = await (select(db.muscleGroups)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (muscleGroup != null) {
        return Right(MuscleGroupDto(
          id: muscleGroup.id,
          groupName: muscleGroup.groupName,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertMuscleGroup(MuscleGroupDto muscleGroupDto) async {
    try {
      await into(db.muscleGroups).insert(MuscleGroupsCompanion.insert(
        groupName: (muscleGroupDto.groupName),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateMuscleGroup(MuscleGroupDto muscleGroupDto) async {
    try {
      await (update(db.muscleGroups)..where((tbl) => tbl.id.equals(muscleGroupDto.id)))
          .write(MuscleGroupsCompanion(
            groupName: Value(muscleGroupDto.groupName),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteMuscleGroup(int id) async {
    try {
      await (delete(db.muscleGroups)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}