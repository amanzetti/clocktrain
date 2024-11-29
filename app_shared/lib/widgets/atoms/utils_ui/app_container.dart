import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatelessWidget {
  const AppContainer(
      {super.key,
      this.child,
      this.color,
      this.borderRadius,
      this.width,
      this.height});

  final Widget? child;
  final Color? color;
  final BorderRadius? borderRadius;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      constraints: AppDimensions.boxConstraints,
      decoration: BoxDecoration(
        color: color ?? Colors.transparent,
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppDimensions.borderRadius10),
      ),
      child: child,
    );
  }
}
