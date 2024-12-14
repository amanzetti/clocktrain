import 'package:flutter/material.dart';
import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_outlined_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_text_button.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/widgets/atoms/buttons/notch_rounded_button.dart';

enum AppButtonShape {
  circular,
  rounded,
}

class AppButton extends StatelessWidget {
  /// Costruttore privato che riceve direttamente il widget
  const AppButton._(this.buttonWidget, {super.key});

  /// Factory per Notch Button
  factory AppButton.notch({
    required String text,
    void Function()? onPressed,
  }) {
    return AppButton._(
      NotchRoundedButton(
        text: text,
        onTap: onPressed,
      ),
    );
  }

  /// Factory per Elevated Button
  factory AppButton.elevated({
    required String text,
    void Function()? onPressed,
    double? width,
    double? height,
    Widget? child,
    AppButtonShape? shape,
    Key? key,
  }) {
    return AppButton._(
      AppElevatedButton(
        text: text,
        onPressed: onPressed,
        width: width,
        height: height,
        key: key,
        shape: shape,
        child: child,
      ),
    );
  }

  /// Factory per Outlined Button
  factory AppButton.outlined({
    required String text,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
    Widget? child,
  }) {
    return AppButton._(
      AppOutlinedButton(
        text: text,
        onPressed: onPressed,
        width: width,
        height: height,
        key: key,
        child: child,
      ),
    );
  }

  /// Factory per Text Button
  factory AppButton.text({
    required String text,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
    Widget? child,
  }) {
    return AppButton._(
      AppTextButton(
        text: text,
        onPressed: onPressed,
        width: width,
        height: height,
        key: key,
        child: child,
      ),
    );
  }

  /// Factory per Icon Button
  factory AppButton.icon({
    required Widget child,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
    Color? backgroundColor,
  }) {
    return AppButton._(
      AppIconButton.icon(
        onPressed: onPressed,
        width: width,
        height: height,
        key: key,
        child: child,
      ),
    );
  }

  factory AppButton.iconCircleBox({
    required Widget child,
    void Function()? onPressed,
    double? width,
    double? height,
    Key? key,
    Color? backgroundColor,
    Color? borderColor,
  }) {
    return AppButton._(
      AppIconButton.iconCircleBox(
        onPressed: onPressed,
        width: width,
        height: height,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        key: key,
        child: child,
      ),
    );
  }

  /// Proprietà comuni a tutti i bottoni
  final Widget buttonWidget;

  @override
  Widget build(BuildContext context) {
    return buttonWidget;
  }
}
