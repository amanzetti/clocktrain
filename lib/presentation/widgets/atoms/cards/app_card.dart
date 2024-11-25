import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      this.child,
      this.padding,
      this.height,
      this.width});

  final Widget? child;
  final EdgeInsets? padding;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
