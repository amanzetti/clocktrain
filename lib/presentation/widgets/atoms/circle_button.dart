import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CircleButton extends ConsumerWidget {
  const CircleButton(
      {this.onTap,
      this.borderColorIn,
      this.borderColorOut,
      this.size,
      this.child,
      this.backgroundColor,
      this.padding,
      super.key});

  final void Function()? onTap;
  final double? size;
  final Widget? child;
  final Color? backgroundColor;
  final Color? borderColorIn;
  final Color? borderColorOut;
  final EdgeInsetsGeometry? padding;

  BoxDecoration get _decoration => BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: borderColorOut ?? Colors.black, width: 2),
      );

  BoxDecoration get _innerDecoration => BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: Border.all(color: borderColorIn ?? Colors.black12, width: 2),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding ?? const EdgeInsets.all(8),
        child: Container(
            padding: const EdgeInsets.all(0),
            height: size,
            width: size,
            decoration: _decoration,
            child: Container(
                padding: const EdgeInsets.all(0),
                decoration: _innerDecoration,
                child: Center(
                    child: FittedBox(fit: BoxFit.contain, child: child!)))),
      ),
    );
  }
}
