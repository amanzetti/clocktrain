import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:app_shared/widgets/atoms/utils_ui/svg_widget.dart';
import 'package:app_shared/widgets/organisms/app_bar/app_bar_main.dart';
import 'package:app_shared/widgets/organisms/app_bar/app_bar_secondary.dart';
import 'package:flutter/material.dart';

class AppHeaderButtonState {
  AppHeaderButtonState(
      {required this.type,
      this.text,
      this.onPressed,
      this.semanticLabel,
      this.icon});
  final String? text;
  final void Function()? onPressed;
  final String? semanticLabel;
  final Widget? icon;
  final AppButtonStyle type;
}

enum AppBarType { main, secondary }

class AppHeader extends StatelessWidget {
  const AppHeader({
    this.type = AppBarType.main,
    this.leftButton,
    this.rightButton,
    super.key,
    this.title,
    this.color,
    this.height,
  });
  final String? title;
  final Color? color;
  final double? height;
  final AppHeaderButtonState? leftButton;
  final List<AppHeaderButtonState>? rightButton;
  final AppBarType type;

  @override
  Widget build(BuildContext context) {
    return _buildAppBarType(context);
  }

  Widget _buildAppBarType(BuildContext context) {
    switch (type) {
      case AppBarType.main:
        return _buildAppBarMain(context);

      case AppBarType.secondary:
        return _buildAppBarSecondary(
          context,
          title: title,
          color: color,
          height: height,
          leftButton: leftButton,
          rightButton: rightButton,
        );
    }
  }

  ///MAIN
  Widget _buildAppBarMain(BuildContext context) {
    return AppBarMain();
  }

  ///SECONDARY
  Widget _buildAppBarSecondary(
    BuildContext context, {
    String? title,
    Color? color,
    double? height,
    AppHeaderButtonState? leftButton,
    List<AppHeaderButtonState>? rightButton,
  }) {
    return AppBarSecondary(
      title: title,
      color: color,
      height: height,
      leftButton: leftButton,
      rightButton: rightButton,
    );
  }
}
