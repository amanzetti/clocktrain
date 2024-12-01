import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_outlined_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_text_button.dart';
import 'package:flutter/material.dart';

enum AppButtonStyle {
  elevated,
  outlined,
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
      this.borderRadius,
      this.width,
      this.height});

  ///Data Properties
  final String? text;
  final Widget? child;

  ///Functional Properties
  final void Function()? onPressed;

  ///UI Properties
  final AppButtonStyle? style;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;
  final Size? size;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    switch (style) {
      case AppButtonStyle.elevated:
        return AppElevatedButton(
          text: text ?? '',
          onPressed: onPressed,
          width: width,
          height: height,
          child: child,
        );
      case AppButtonStyle.outlined:
        return AppOutlinedButton(
          text: text ?? '',
          onPressed: onPressed,
          width: width,
          height: height,
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
