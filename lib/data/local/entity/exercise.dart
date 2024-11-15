import 'package:drift/drift.dart';

@DataClassName('Exercise')
class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 100)();
  TextColumn get description => text().nullable()();
  TextColumn get videoUrl => text().nullable()();
  TextColumn get imageUrl => text().nullable()();
  IntColumn get difficultyLevel => integer()();
}