import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton(
      {this.text,
      this.onPressed,
      this.width,
      this.height,
      super.key,
      this.child,
      this.shape});

  ///Data Properties
  final String? text;
  final Widget? child;

  ///Functional Properties
  final void Function()? onPressed;

  ///UI Properties
  final double? width;
  final double? height;
  final AppShape? shape;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      width: width,
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: context.colorScheme.primary,
            shape: _getShape(context),
          ),
          onPressed: onPressed,
          child: _buildChild(context)),
    );
  }

  OutlinedBorder? _getShape(BuildContext context) {
    switch (shape) {
      case AppShape.circular:
        return const CircleBorder();
      case AppShape.rounded:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius8),
          side: BorderSide(color: context.colorScheme.primary),
        );
      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius8),
          side: BorderSide(color: context.colorScheme.primary),
        );
    }
  }

  Widget? _buildChild(BuildContext context) {
    if (text != null) {
      return Text(text!,
          style: context.textTheme.labelLarge?.copyWith(
            color: context.colorScheme.onPrimary,
          ));
    } else {
      return child;
    }
  }
}
