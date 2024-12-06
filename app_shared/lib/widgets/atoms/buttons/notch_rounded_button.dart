import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class NotchRoundedButton extends StatelessWidget {
  const NotchRoundedButton(
      {required this.text,
      this.onTap,
      this.leftIcon,
      this.backgroundColor,
      this.textColor,
      super.key});

  final String text;
  final Widget? leftIcon;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          height: 48,
          width: 80,
          child: Center(
            child: Container(
              height: 34,
              width: 70,
              decoration: BoxDecoration(
                color: backgroundColor ?? context.colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  leftIcon ?? const SizedBox(),
                  Text(
                    text,
                    style: context.textTheme.labelLarge?.copyWith(
                      color: context.colorScheme.onPrimary,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
