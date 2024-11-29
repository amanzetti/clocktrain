import 'package:app_shared/themes/app_theme.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';

class AppTextFormFiled extends StatelessWidget {
  final TextEditingController? controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? initialValue;

  const AppTextFormFiled({
    this.controller,
    this.enabled = true,
    this.padding,
    this.readOnly = false,
    this.onTap,
    this.onSaved,
    this.validator,
    this.labelText,
    this.initialValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: TextFormField(
              initialValue: initialValue,
              readOnly: readOnly,
              enabled: enabled,
              onTap: onTap,
              onSaved: onSaved,
              validator: validator,
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                contentPadding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
                fillColor: enabled
                    ? context.colorScheme.primary
                    : context.colorScheme.surface,
                focusColor: context.colorScheme.primary,
                hoverColor: context.colorScheme.primary,
                filled: true,
                border: AppTheme.outlinedBorder(context),
                enabledBorder: AppTheme.outlinedBorder(context),
                focusedBorder: AppTheme.outlinedBorder(context),
                errorBorder: AppTheme.outlinedBorderError(context),
                counterText: '',
              ),
              cursorColor: context.colorScheme.onPrimary,
              controller: controller,
              style: context.textTheme.bodyMedium?.copyWith(
                color: enabled
                    ? context.colorScheme.onPrimary
                    : context.colorScheme.onSurface,
              ),
            ),
          ),
          Positioned(
              left: 20,
              top: 0,
              child: Container(
                  padding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
                  decoration: AppTheme.boxDecorationFilled(context).copyWith(
                    color: context.colorScheme.secondary,
                  ),
                  child: Text(labelText ?? ''))),
        ],
      ),
    );
  }
}
