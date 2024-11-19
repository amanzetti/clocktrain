import 'package:clocktrain/data/local/tables/tag_table.dart';
import 'package:drift/drift.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/tag_dto.dart';
import 'package:clocktrain/utils/enum/common_error.dart';
import 'package:dartz/dartz.dart';

part 'tag_dao.g.dart';

@DriftAccessor(tables: [Tags])
class TagDao extends DatabaseAccessor<AppDatabase> with _$TagDaoMixin {
  TagDao(AppDatabase db) : super(db);

  Future<Either<CommonError, List<TagDto>>> getAllTags() async {
    try {
      final tags = await select(db.tags).get();
      final tagDtos = tags.map((tag) => TagDto(
        id: tag.id,
        tagName: tag.tagName,
      )).toList();
      return Right(tagDtos);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, TagDto>> getTagById(int id) async {
    try {
      final tag = await (select(db.tags)..where((tbl) => tbl.id.equals(id))).getSingleOrNull();
      if (tag != null) {
        return Right(TagDto(
          id: tag.id,
          tagName: tag.tagName,
        ));
      } else {
        return const Left(CommonError.notFound);
      }
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> insertTag(TagDto tagDto) async {
    try {
      await into(db.tags).insert(TagsCompanion.insert(
        tagName: (tagDto.tagName),
      ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> updateTag(TagDto tagDto) async {
    try {
      await (update(db.tags)..where((tbl) => tbl.id.equals(tagDto.id)))
          .write(TagsCompanion(
            tagName: Value(tagDto.tagName),
          ));
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }

  Future<Either<CommonError, void>> deleteTag(int id) async {
    try {
      await (delete(db.tags)..where((tbl) => tbl.id.equals(id))).go();
      return const Right(null);
    } catch (e) {
      return const Left(CommonError.databaseError);
    }
  }
}