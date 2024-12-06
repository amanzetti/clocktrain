import 'package:app_shared/utils/enum/standard_rateo_enum.dart';
import 'package:app_shared/utils/ext/standard_rateo_ext.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';

class PlaceholderImg extends StatelessWidget {
  const PlaceholderImg(
      {required this.widthImage, required this.rateo, this.onTap, super.key});

  final void Function()? onTap;
  final double widthImage;
  final StandardRateo rateo;

  double _heigthFromWidth() {
    return widthImage / rateo.aspectRatio;
  }

  @override
  Widget build(BuildContext context) {
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
          color: context.colorScheme.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Center(
            child: Text(
          'IMG',
          style: context.textTheme.headlineMedium,
        )),
      ),
    );
  }
}
