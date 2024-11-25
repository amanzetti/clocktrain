import 'package:drift/drift.dart';

@DataClassName('MuscleGroup')
class MuscleGroups extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get groupName => text().withLength(min: 1, max: 50)();
}
