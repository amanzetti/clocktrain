import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:app_shared/widgets/atoms/utils_ui/svg_widget.dart';
import 'package:app_shared/widgets/organisms/app_bar/app_header.dart';
import 'package:flutter/material.dart';

class AppBarSecondary extends StatelessWidget {
  const AppBarSecondary(
      {super.key,
      this.title,
      this.color,
      this.height,
      this.leftButton,
      this.rightButton});

  final String? title;
  final Color? color;
  final double? height;
  final AppHeaderButtonState? leftButton;
  final List<AppHeaderButtonState>? rightButton;

  @override
  Widget build(BuildContext context) {
    return _buildAppBarSecondary(context);
  }

  Widget _buildAppBarSecondary(BuildContext context) {
    return AppContainer(
        height: height,
        color: color,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            _buildTitle(context),
            _buildLeftIcon(context),
            _buildRightIcon(context)
          ],
        ));
  }

  Widget _buildTitle(BuildContext context) {
    return Positioned(
        // alignment: Alignment.centerLeft,
        left: leftButton == null ? 0 : 50,
        child: Text(title ?? '', style: context.textTheme.headlineSmall));
  }

  Widget _buildLeftIcon(BuildContext context) {
    if (leftButton == null) {
      return const SizedBox();
    }
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          AppButton.icon(
            onPressed: leftButton!.onPressed,
            child: SvgWidget(AppAsset.arrowBackIcon),
          ),
        ],
      ),
    );
  }

  Widget _buildRightIcon(BuildContext context) {
    if (rightButton == null) {
      return const SizedBox();
    }
    final list = rightButton!.map((e) {
      return AppButton.notch(
        onPressed: e.onPressed,
        text: e.text ?? '',
      );
    }).toList();

    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: list,
      ),
    );
  }
}
