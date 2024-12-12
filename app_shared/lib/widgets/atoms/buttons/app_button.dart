import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_bottom_text.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_outlined_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_text_button.dart';
import 'package:app_shared/widgets/atoms/buttons/notch_rounded_button.dart';
import 'package:flutter/material.dart';

enum AppButtonStyle { elevated, outlined, text, icon, notch, iconBottomText }

enum AppShape { rounded, circular }

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
      this.height,
      this.shape,
      this.semanticLabel});

  ///Data Properties
  final String? text;
  final String? semanticLabel;
  final Widget? child;

  ///Functional Properties
  final void Function()? onPressed;

  ///UI Properties
  final AppButtonStyle? style;
  final AppShape? shape;
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
          shape: shape,
          child: child,
        );
      case AppButtonStyle.outlined:
        return AppOutlinedButton(
          text: text ?? '',
          onPressed: onPressed,
          width: width,
          height: height,
          shape: shape,
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
          width: width,
          height: height,
          backgroundColor: backgroundColor,
          size: size,
          child: child,
        );
      case AppButtonStyle.iconBottomText:
        return AppIconBottomTextButton(
          onPressed: onPressed,
          width: width,
          height: height,
          backgroundColor: backgroundColor,
          size: size,
          icon: child ?? const SizedBox(),
          text: text ?? '',
        );
      case AppButtonStyle.notch:
        return NotchRoundedButton(
          text: text ?? '',
          // onPressed: onPressed,
          // width: width,
          // height: height,
          // shape: shape,
          // child: child,
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
