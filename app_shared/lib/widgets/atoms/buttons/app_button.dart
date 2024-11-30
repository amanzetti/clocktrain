import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_outlined_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_text_button.dart';
import 'package:flutter/material.dart';

enum AppButtonStyle {
  elevated,
  outlied,
  text,
  icon,
}

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.style,
      this.onPressed,
      this.text,
      this.child,
      this.size,
      this.backgroundColor,
      this.borderRadius});

  final AppButtonStyle? style;
  final void Function()? onPressed;
  final String? text;
  final Widget? child;
  final Size? size;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case AppButtonStyle.elevated:
        return AppElevatedButton(
          text: text ?? '',
          onPressed: onPressed,
          width: size?.width,
          height: size?.height,
          child: child,
        );
      case AppButtonStyle.outlied:
        return AppOutlinedButton(
          text: text ?? '',
          onPressed: onPressed,
          width: size?.width,
          height: size?.height,
          child: child,
        );
      case AppButtonStyle.text:
        return AppTextButton(
          text: text ?? '',
          onPressed: onPressed,
          width: size?.width,
          height: size?.height,
          child: child,
        );
      case AppButtonStyle.icon:
        return AppIconButton(
          onPressed: onPressed,
          // width: size?.width,
          // height: size?.height,
          backgroundColor: backgroundColor,
          size: size,
          child: child,
        );
      default:
        return AppIconButton(
          onPressed: onPressed,
          width: size?.width,
          height: size?.height,
        );
    }
  }
}
