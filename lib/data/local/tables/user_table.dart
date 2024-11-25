import 'package:drift/drift.dart';
import 'package:uuid/uuid.dart';

// ignore: unused_import
import 'package:clocktrain/data/local/tables/user_type_table.dart';

@DataClassName('User')
class Users extends Table {
  TextColumn get id => text().clientDefault(() => const Uuid().v4())();
  TextColumn get name => text().withLength(min: 1, max: 50)();
  TextColumn get email => text().withLength(min: 1, max: 100)();
  TextColumn get password => text().withLength(min: 6, max: 100)();
  DateTimeColumn get dateOfBirth => dateTime()();
  RealColumn get height => real()();
  RealColumn get weight => real()();
  TextColumn get avatar => text().nullable()();
  IntColumn get userTypeId =>
      integer().customConstraint('REFERENCES user_types(id) NOT NULL')();

  @override
  Set<Column> get primaryKey => {id};
}
