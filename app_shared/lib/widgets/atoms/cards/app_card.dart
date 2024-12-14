import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/utils_ui/app_container.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      this.child,
      this.margin,
      this.padding,
      this.height,
      this.width,
      this.color,
      this.borderRadius,
      this.border});

  final Widget? child;
  final EdgeInsets? padding;
  final double? height;
  final double? width;
  final Color? color;
  final BorderRadius? borderRadius;
  final BoxBorder? border;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return AppContainer(
      margin: margin,
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color ?? context.colorScheme.surfaceContainerLow,
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppDimensions.borderRadius24),
        border: border,
      ),
      child: child,
    );
  }
}
