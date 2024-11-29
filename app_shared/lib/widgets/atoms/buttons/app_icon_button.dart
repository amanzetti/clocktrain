import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      this.onTap,
      this.child,
      this.size,
      this.backgroundColor,
      this.borderRadius});

  final void Function()? onTap;
  final Widget? child;
  final Size? size;
  final Color? backgroundColor;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.borderRadius100),
      ),
      onTap: onTap,
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
