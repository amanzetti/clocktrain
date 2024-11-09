import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:clocktrain/utils/ext/standard_rateo_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlaceholderImg extends ConsumerWidget {
  const PlaceholderImg(
      {required this.widthImage, required this.rateo, this.onTap, super.key});

  final void Function()? onTap;
  final double widthImage;
  final StandardRateo rateo;

  double _heigthFromWidth() {
    return widthImage / rateo.aspectRatio;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        height: _heigthFromWidth(),
        width: widthImage,
        decoration: BoxDecoration(
          color: AppColor().enabledTextField,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
            child: Text(
          "IMG",
          style: AppTypography().titleS,
        )),
      ),
    );
  }
}
