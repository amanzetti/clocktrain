import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard(
      {super.key,
      this.child,
      this.color,
      this.padding,
      this.size,
      this.height,
      this.width});

  final Widget? child;
  final Color? color;
  final EdgeInsets? padding;
  final Size? size;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: padding,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
