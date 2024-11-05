import 'package:clocktrain/domain/providers/ui/edit_provider.dart';
import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';

class MainAppBar extends ConsumerStatefulWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  ConsumerState<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends ConsumerState<MainAppBar> {
  Widget? _buildLeading(BuildContext context) {
    if (context.canPop()) {
      return IconButton(
        icon: AppAsset.arrowBack,
        onPressed: () {
          context.pop();
          switch (GoRouter.of(context)
              .routerDelegate
              .currentConfiguration
              .fullPath) {
            case '/sheet_list_page':
              ref
                  .read(mainPageParamsProvider.notifier)
                  .update((state) => MainPageParams(title: 'Sheet'));
              break;
            case '/workout_page':
              break;
            default:
          }
        },
      );
    } else {
      return null;
    }
  }

  List<Widget>? _buildActions(BuildContext context) {
    final currentPath =
        GoRouter.of(context).routerDelegate.currentConfiguration.fullPath;

    switch (currentPath) {
      case '/sheet_list_page/sheet/:exerciseId':
        return [
          IconButton(
            icon: (!ref.watch(editProvider)) ? AppAsset.edit : AppAsset.disable,
            onPressed: () {
              print('before ${ref.watch(editProvider)}');
              ref.read(editProvider.notifier).update((state) => !state);
              print('after  ${ref.watch(editProvider)}');
            },
          ),
        ];
      default:
        return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final params = ref.watch(mainPageParamsProvider);
    return AppBar(
      title: Text(
        params.title,
        style: AppTypography.instance.titleL,
      ),
      leading: _buildLeading(context),
      actions: _buildActions(context),
      backgroundColor: AppColor.instance.surface,
      foregroundColor: AppColor.instance.textPrimary,
    );
  }
}
