import 'package:clocktrain/data/datasource/abtraction/local_db_datasource.dart';
import 'package:clocktrain/data/datasource/local_db_datasource_impl.dart';
import 'package:clocktrain/data/di/internal/di_internal_datasource_provider.dart';
import 'package:clocktrain/data/local/app_database.dart';
import 'package:clocktrain/data/local/dto/user_type_dto.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  void _onPressed(BuildContext context, LocalDbDatasource db) {
    dbMethods(db);
    // context.go(AppPath.DashboardPage);
  }

  dbMethods(LocalDbDatasource db) async {
    db.init();
    final allUserType = await db.getAllUserTypeDto();
    print(allUserType);
    await db.putUserTypeDto(UserTypeDto(id: 1, typeName: 'Admin'));
    print('UserTypeDto inserted');
    final allUserTypeAfterInsert = await db.getAllUserTypeDto();
    print(allUserTypeAfterInsert);

    // final database = AppDatabase();

    // final users = await database.getAllUsers();
    // for (var user in users) {
    //   print('User: ${user.name}, Email: ${user.email}');
    // }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final db = ref.read(internalLocalDbDatasourceProvider);

    // final userState = ref.watch(userProvider);

    // if (userState.isEmpty) {
    //   ref.read(userProvider.notifier).getUserByIdMock('user123');
    // }

    // if (userState.isEmpty) {
    //   return const Scaffold(
    //     body: Center(child: CircularProgressIndicator()),
    //   );
    // }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('RootPage'),
          ),
          AppElevatedButton(
              onPressed: () => _onPressed(context, db),
              text: 'Go to Sheet Page'),
        ],
      ),
    );
  }
}
