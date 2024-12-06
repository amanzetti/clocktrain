import 'package:clocktrain/app_data/lib/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/domain/entities/tag_entity.dart';
import 'package:clocktrain/domain/repositories/tag_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/data/local/dto/tag_dto.dart';

class TagRepositoryImpl implements TagRepository {
  final Ref ref;
  final LocalDbDatasource localDbDatasource;

  TagRepositoryImpl(this.ref, {required this.localDbDatasource});

  @override
  Future<List<Tag>> getAllTags() async {
    final result = await localDbDatasource.getAllTags();
    return result.fold(
      (error) => throw Exception('Error fetching tags: $error'),
      (tagDtos) => tagDtos.map((tagDto) => Tag(
        id: tagDto.id,
        tagName: tagDto.tagName,
      )).toList(),
    );
  }

  @override
  Future<Tag> getTagById(int id) async {
    final result = await localDbDatasource.getTagById(id);
    return result.fold(
      (error) => throw Exception('Error fetching tag: $error'),
      (tagDto) => Tag(
        id: tagDto.id,
        tagName: tagDto.tagName,
      ),
    );
  }

  @override
  Future<void> addTag(Tag tag) async {
    final tagDto = TagDto(
      id: tag.id,
      tagName: tag.tagName,
    );
    final result = await localDbDatasource.insertTag(tagDto);
    result.fold(
      (error) => throw Exception('Error adding tag: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> updateTag(Tag tag) async {
    final tagDto = TagDto(
      id: tag.id,
      tagName: tag.tagName,
    );
    final result = await localDbDatasource.updateTag(tagDto);
    result.fold(
      (error) => throw Exception('Error updating tag: $error'),
      (_) => null,
    );
  }

  @override
  Future<void> deleteTag(int id) async {
    final result = await localDbDatasource.deleteTag(id);
    result.fold(
      (error) => throw Exception('Error deleting tag: $error'),
      (_) => null,
    );
  }
}