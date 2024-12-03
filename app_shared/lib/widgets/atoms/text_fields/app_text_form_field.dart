import 'package:app_shared/themes/app_theme.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
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
    this.suffixChild,
  });
  final TextEditingController? controller;
  final bool enabled;
  final EdgeInsets? padding;
  final bool readOnly;
  final void Function()? onTap;
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  final String? labelText;
  final String? initialValue;
  final Widget? suffixChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: TextFormField(
              // Controller and Data Properties
              controller: controller,
              initialValue: initialValue,

              // Functional Properties
              readOnly: readOnly,
              enabled: enabled,
              onTap: onTap,
              onSaved: onSaved,
              validator: validator,

              // Styling and UI Properties
              cursorColor: context.colorScheme.onPrimary,
              style: context.textTheme.bodyLarge
                  ?.copyWith(color: context.colorScheme.onSurface),
              decoration: InputDecoration(
                suffixIcon: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: _buildSuffixWidget(context)),
                contentPadding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
                filled: true,
                fillColor: context.colorScheme.surfaceContainerHighest,
                focusColor: context.colorScheme.surfaceContainerHighest,
                hoverColor: context.colorScheme.surfaceContainerHighest,
                border: AppTheme.outlinedBorder(context),
                enabledBorder: AppTheme.outlinedBorder(context),
                focusedBorder: AppTheme.outlinedBorder(context),
                errorBorder: AppTheme.outlinedBorderError(context),
                counterText: '',
              ),
            ),
          ),
          Positioned(
              left: 0,
              top: 0,
              child: Text(labelText ?? '',
                  style: context.textTheme.bodyMedium
                      ?.copyWith(color: context.colorScheme.onSurface))),
        ],
      ),
    );
  }

  Widget? _buildSuffixWidget(BuildContext context) {
    if (suffixChild != null) {
      return Container(
          decoration: AppTheme.boxDecorationRounded(context)
              .copyWith(color: context.colorScheme.surfaceContainerLow),
          child: suffixChild);
    }
    return null;
  }
}
