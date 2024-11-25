import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  void _onPressed(BuildContext context, WidgetRef ref) {
    dbMethods(ref);
    context.go(AppPath.loginPage);
  }

  dbMethods(WidgetRef ref) async {
    // final db = ref.read(internalLocalDbDatasourceProvider);
    // db.addInitialData();

    // final a = await db.getAllUserTypeDto();
    // print(a);
    // final user = await ref.read(userRepositoryProvider).getUserById(1);

    // ref
    //     .read(userAppStateProvider)
    //     .update((loggedUser) => loggedUser = user);

    // final db = ref.read(internalLocalDbDatasourceProvider);
    // // db.init();
    // final userTypeRepo = ref.read(userTypeRepositoryProvider);
    // final userRepo = ref.read(userRepositoryProvider);
    // // await userRepo.addUser(User(
    // //   id: 1,
    // //   email: 'test@test.it',
    // //   name: 'Test provalo',
    // //   password: '123456',
    // //   dateOfBirth: DateTime(1990),
    // //   height: 169,
    // //   weight: 45,
    // //   userTypeId: 1,
    // // ));
    // // final users = await userRepo.getUserById('1');
    // final users = await userRepo.getAllUsers();
    // print(users);
    // final allUserType = await userTypeRepo.getAllUserTypes();
    // for (var userType in allUserType) {
    //   print('${userType.id}: ${userType.typeName}');
    // }
    // await userTypeRepo.deleteUserType(1);

    // userTypeRepo.addUserType(UserType(id: 1, typeName: UserTypeEnum.ATHLETE.toShortString()));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text('RootPage'),
          ),
          AppElevatedButton(
              onPressed: () => _onPressed(context, ref),
              text: 'Go to Sheet Page'),
        ],
      ),
    );
  }
}
