import 'package:clocktrain/domain/providers/ui/main_page_params_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/circle_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
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
          switch (context.currentRoute) {
            case AppPath.sheetListPage:
              ref.read(mainAppStateProvider.notifier).updateTitle('Sheet');
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
    List<Widget> actions = [];
    actions.add(CircleButton(
        child: AppAsset.account,
        onTap: () => context.goAndUpdateTitle(AppPath.profilePage,
            ref: ref, newTitle: 'Account')));
    return actions;
  }

  @override
  Widget build(BuildContext context) {
    final params = ref.watch(mainAppStateProvider);
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
