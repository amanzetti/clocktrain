import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextFiledExerciseTile extends ConsumerWidget {
  final TextEditingController controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;

  const TextFiledExerciseTile({
    required this.controller,
    required this.enabled,
    this.padding,
    this.readOnly = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: TextField(
        readOnly: readOnly,
        enabled: enabled,
        onTap: onTap,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          fillColor: enabled
              ? AppColor().enabledTextField
              : AppColor().disabledTextField,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          counterText: '',
          contentPadding: EdgeInsets.zero,
        ),
        // maxLength: 3,
        controller: controller,
        style: AppTypography().titleL,
        // keyboardType: TextInputType.number,
      ),
    );
  }
}
