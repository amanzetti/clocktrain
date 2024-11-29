import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/widgets/atoms/chips/app_chip.dart';
import 'package:app_shared/widgets/atoms/buttons/app_icon_button.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:flutter/material.dart';

class ChipData {
  final String label;
  final void Function()? onDelete;

  ChipData({required this.label, this.onDelete});
}

class ChipsFormField extends StatelessWidget {
  const ChipsFormField({
    super.key,
    this.onRemoveChip,
    this.onAddChip,
    this.backgroundColor,
    this.chipBackgroundColor,
    this.actionButtonbackgroundColor,
    this.chips = const [],
    this.borderRadius,
  });

  final void Function()? onRemoveChip;
  final void Function()? onAddChip;
  final Color? backgroundColor;
  final Color? chipBackgroundColor;
  final Color? actionButtonbackgroundColor;
  final BorderRadius? borderRadius;
  final List<ChipData> chips;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppDimesnionsEdgeInsetsExt.all4,
      decoration: BoxDecoration(
          color: backgroundColor ?? context.colorScheme.primary,
          borderRadius: BorderRadius.circular(AppDimensions.borderRadius10)),
      child: Row(
        children: [
          Expanded(
            flex: 10,
            child: Wrap(
                spacing: AppDimensions.dim4,
                runSpacing: AppDimensions.dim4,
                children: List.generate(
                    chips.length,
                    (index) => AppChip(
                          label: chips.elementAt(index).label,
                          onDeleteTap: chips.elementAt(index).onDelete,
                          onDeleteIcon: AppAsset().cancelSvg(context),
                        ))),
          ),
          AppIconButton(
              onTap: onAddChip,
              borderRadius: borderRadius ??
                  BorderRadius.circular(AppDimensions.borderRadius8),
              backgroundColor:
                  actionButtonbackgroundColor ?? Colors.transparent,
              child: AppAsset().addSvg(context))
        ],
      ),
    );
  }
}
