import 'package:clocktrain/domain/entities/tag_entity.dart';

abstract class TagRepository {
  Future<List<Tag>> getAllTags();
  Future<Tag> getTagById(int id);
  Future<void> addTag(Tag tag);
  Future<void> updateTag(Tag tag);
  Future<void> deleteTag(int id);
}