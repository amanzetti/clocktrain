import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onPressed,
      this.child,
      this.size,
      this.backgroundColor,
      this.borderRadius,
      this.width,
      this.height});

  final void Function()? onPressed;
  final Size? size;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius100),
      ),
      onTap: onPressed,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            constraints: AppDimensions.boxConstraints,
            decoration: BoxDecoration(
              borderRadius: borderRadius ??
                  BorderRadius.circular(AppDimensions.borderRadius100),
              color: backgroundColor ?? Colors.transparent,
            ),
          ),
          Container(
              height: size != null ? size!.height : 24,
              width: size != null ? size!.width : 24,
              color: Colors.transparent,
              child: FittedBox(child: child))
        ],
      ),
    );
  }
}
