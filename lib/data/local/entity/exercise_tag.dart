import 'package:drift/drift.dart';

import 'exercise.dart';
import 'tag.dart';

@DataClassName('ExerciseTag')
class ExerciseTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId =>
      integer().customConstraint('REFERENCES exercises(id) NOT NULL')();
  IntColumn get tagId => integer().customConstraint('REFERENCES tags(id) NOT NULL')();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}
