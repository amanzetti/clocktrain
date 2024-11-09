import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';

class SubAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SubAppBar({
    super.key,
    this.title = '',
    this.onPressedAction,
    this.height = kToolbarHeight,
  });

  final String title;
  final VoidCallback? onPressedAction;
  final double height;

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.instance.accent,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(height),
          bottomRight: Radius.circular(height),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: SizedBox(
                child: Text(
                  title,
                  style: AppTypography.instance.titleS,
                ),
              ),
            ),
            Flexible(child: _buildAddButton(context, onPressedAction)),
          ],
        ),
      ),
    );
  }

  Widget _buildAddButton(BuildContext context, VoidCallback? onTap) {
    return ElevatedNotchRoundedButton(
      onTap: onTap,
    );
  }
}
