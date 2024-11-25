import 'package:clocktrain/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

enum SpacerType { horizontal, vertical }

enum SpacerSize { small, medium, large }

class SpacerSizedBox extends StatelessWidget {
  const SpacerSizedBox(
      {super.key,
      this.height,
      this.width,
      required this.spacerType,
      required this.spacerSize});

  final double? height;
  final double? width;
  final SpacerType spacerType;
  final SpacerSize spacerSize;

  _getSpacerSize(SpacerSize spacerSize) {
    switch (spacerSize) {
      case SpacerSize.small:
        return AppDimensions.small;
      case SpacerSize.medium:
        return AppDimensions.medium;
      case SpacerSize.large:
        return AppDimensions.large;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spacerType == SpacerType.vertical
          ? _getSpacerSize(spacerSize)
          : height,
      width: spacerType == SpacerType.horizontal
          ? _getSpacerSize(spacerSize)
          : width,
    );
  }
}
