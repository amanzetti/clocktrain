import 'package:drift/drift.dart';

// ignore: unused_import
import 'package:clocktrain/data/local/tables/exercise_table.dart';
// ignore: unused_import
import 'package:clocktrain/data/local/tables/tag_table.dart';

@DataClassName('ExerciseTag')
class ExerciseTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get exerciseId =>
      integer().customConstraint('REFERENCES exercises(id) NOT NULL')();
  IntColumn get tagId =>
      integer().customConstraint('REFERENCES tags(id) NOT NULL')();

  ///Specifying which from the field above is the primary key
  // @override
  // Set<Column> get primaryKey => {id};
}