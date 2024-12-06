import 'package:app_shared/themes/app_theme.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class AppChip extends StatelessWidget {
  const AppChip(
      {required this.label,
      super.key,
      this.onDeleteIcon,
      this.onDeleteTap,
      this.padding});

  final String label;
  final Widget? onDeleteIcon;
  final void Function()? onDeleteTap;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppTheme.boxDecorationFilled(context)
          .copyWith(color: context.colorScheme.secondary),
      constraints: AppDimensions.boxConstraints,
      padding: padding ?? AppDimesnionsEdgeInsetsExt.mediumOnlyLeft,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label,
              style: context.textTheme.bodyLarge!
                  .copyWith(color: context.colorScheme.onSecondary)),
          AppIconButton(
            onPressed: onDeleteTap,
            child: onDeleteIcon,
          )
        ],
      ),
    );
  }
}
