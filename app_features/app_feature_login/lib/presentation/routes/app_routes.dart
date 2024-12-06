import 'package:app_feature_login/presentation/pages/login/login_view.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_view.dart';
import 'package:app_feature_login/presentation/pages/registration/registration_vm.dart';
import 'package:app_feature_login/presentation/routes/app_paths.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class LoginRouteAppFeature {
  static const initialLocation = AppPaths.login;

  static List<GoRoute> getLoginRoutes() {
    return [
      GoRoute(
        name: AppPaths.login,
        path: AppPaths.login,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        name: AppPaths.registration,
        path: AppPaths.registration,
        builder: (context, state) => RegistrationView(),
      )
    ];
  }
}
