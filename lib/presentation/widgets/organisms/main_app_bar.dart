import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/circle_button.dart';
import 'package:clocktrain/presentation/widgets/organisms/sub_app_bar.dart';
import 'package:clocktrain/utils/ext/icon_ext.dart';
import 'package:flutter/material.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
    this.mainAppBarTitle = '',
    this.onMainPressedBack,
    this.onMainPressedAction,
    this.mainAppBarHeight = kToolbarHeight,
    this.subAppBarTitle = '',
    this.onSubPressedAction,
    this.subAppBarHeight = 40,
    this.showSubAppBar = true,
  });

  final String mainAppBarTitle;
  final VoidCallback? onMainPressedBack;
  final VoidCallback? onMainPressedAction;
  final double mainAppBarHeight;
  final String subAppBarTitle;
  final VoidCallback? onSubPressedAction;
  final double subAppBarHeight;
  final bool showSubAppBar;

  double _heightAppBar() {
    if (showSubAppBar) {
      return mainAppBarHeight + subAppBarHeight;
    } else {
      return mainAppBarHeight;
    }
  }

  @override
  Size get preferredSize => Size.fromHeight(_heightAppBar());

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        mainAppBarTitle,
        style: AppTypography.instance.titleL,
      ),
      leading: _buildLeading(context),
      actions: _buildActions(context),
      backgroundColor: AppColor.instance.surface,
      foregroundColor: AppColor.instance.textPrimary,
      bottom: _buildBottom(context),
      automaticallyImplyLeading: false,
    );
  }

  Widget? _buildLeading(BuildContext context) {
    // if (context.canPop()) {
    //   return IconButton(icon: AppAsset.arrowBack, onPressed: onMainPressedBack);
    // } else {
    //   return null;
    // }
    return null;
  }

  List<Widget>? _buildActions(BuildContext context) {
    List<Widget> actions = [];
    actions.add(CircleButton(
        size: 34,
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        onTap: onMainPressedAction,
        child: AppAsset.account.copyWith(size: 500)));
    return actions;
  }

  PreferredSizeWidget? _buildBottom(BuildContext context) {
    if (showSubAppBar) {
      return SubAppBar(
        height: subAppBarHeight,
        title: subAppBarTitle,
        onPressedAction: onSubPressedAction,
      );
    } else {
      return null;
    }
  }
}




// class MainAppBar2 extends ConsumerStatefulWidget
//     implements PreferredSizeWidget {
//   const MainAppBar2(
//       {this.height = kToolbarHeight,
//       this.subAppBarHeight = 40,
//       this.showSubAppBar = true,
//       super.key});

//   final double height;
//   final double subAppBarHeight;
//   final bool showSubAppBar;

//   _heightAppBar() {
//     if (showSubAppBar) {
//       return height + subAppBarHeight;
//     } else {
//       return height;
//     }
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(_heightAppBar());

//   @override
//   ConsumerState<MainAppBar2> createState() => _MainAppBar2State();
// }

// class _MainAppBar2State extends ConsumerState<MainAppBar2> {
//   Widget? _buildLeading(BuildContext context) {
//     if (context.canPop()) {
//       return IconButton(
//         icon: AppAsset.arrowBack,
//         onPressed: () {
//           context.pop();
//           switch (context.currentRoute) {
//             case AppPath.sheetListPage:
//               ref
//                   .read(appStateProvider)
//                   .copyWith(mainAppBarTitle: 'Sheet', showSubAppBar: true);

//               break;
//             case '/workout_page':
//               break;
//             default:
//           }
//         },
//       );
//     } else {
//       return null;
//     }
//   }

//   List<Widget>? _buildActions(BuildContext context) {
//     List<Widget> actions = [];
//     actions.add(CircleButton(
//         size: 34,
//         padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
//         child: AppAsset.account.copyWith(size: 500),
//         onTap: () => context.goAndUpdateTitle(AppPath.profilePage,
//             ref: ref, newTitle: 'Account')));
//     return actions;
//   }

//   PreferredSizeWidget? _buildBottom(BuildContext context) {
//     final params = ref.watch(appStateProvider);
//     if (params.showSubAppBar) {
//       return SubAppBar(
//         height: widget.subAppBarHeight,
//       );
//     } else {
//       return null;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final params = ref.watch(appStateProvider);
//     return AppBar(
//       title: Text(
//         params.mainAppBarTitle,
//         style: AppTypography.instance.titleL,
//       ),
//       leading: _buildLeading(context),
//       actions: _buildActions(context),
//       backgroundColor: AppColor.instance.surface,
//       foregroundColor: AppColor.instance.textPrimary,
//       bottom: _buildBottom(context),
//     );
//   }
// }
