import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:flutter/material.dart';

class HeaderWithActionButton extends StatelessWidget {
  final String? title;
  final Color? color;
  final void Function()? onTap;
  final double? height;

  const HeaderWithActionButton(
      {super.key, this.title, this.color, this.onTap, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title ?? '', style: AppTypography().titleS),
            ElevatedNotchRoundedButton(
              onTap: onTap,
            )
          ],
        ));
  }
}
