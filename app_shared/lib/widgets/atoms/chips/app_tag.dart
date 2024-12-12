import 'package:app_shared/app_shared.dart';
import 'package:app_shared/themes/app_theme.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';

class AppTag extends StatelessWidget {
  const AppTag({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: AppDimesnionsEdgeInsetsExt.smallAll,
        height: 34,
        decoration: AppTheme.boxDecorationOutlined(context),
        child: Padding(
          padding: AppDimesnionsEdgeInsetsExt.smallHorizontal,
          child: Text(label,
              style: context.textTheme.labelSmall!
                  .copyWith(color: context.colorScheme.onPrimary)),
        ));
  }
}
