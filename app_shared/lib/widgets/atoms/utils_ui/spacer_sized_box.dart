import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

enum _SpacerType { horizontal, vertical }

enum _SpacerSize { small, medium, large, custom }

class _SpacerSizedBox extends StatelessWidget {
  const _SpacerSizedBox({
    required this.spacerType,
    required this.spacerSize,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;
  final _SpacerType spacerType;
  final _SpacerSize spacerSize;

  double _getSpacerSize(_SpacerSize spacerSize, [double? value]) {
    switch (spacerSize) {
      case _SpacerSize.small:
        return AppDimensions.small;
      case _SpacerSize.medium:
        return AppDimensions.medium;
      case _SpacerSize.large:
        return AppDimensions.large;
      case _SpacerSize.custom:
        return value!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: spacerType == _SpacerType.vertical
          ? _getSpacerSize(spacerSize, height)
          : height,
      width: spacerType == _SpacerType.horizontal
          ? _getSpacerSize(spacerSize, width)
          : width,
    );
  }
}

// Widget per combinazioni specifiche
class HorizontalSmallSpacer extends StatelessWidget {
  const HorizontalSmallSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.horizontal,
      spacerSize: _SpacerSize.small,
    );
  }
}

class HorizontalMediumSpacer extends StatelessWidget {
  const HorizontalMediumSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.horizontal,
      spacerSize: _SpacerSize.medium,
    );
  }
}

class HorizontalLargeSpacer extends StatelessWidget {
  const HorizontalLargeSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.horizontal,
      spacerSize: _SpacerSize.large,
    );
  }
}

class HorizontalCustomSpacer extends StatelessWidget {
  const HorizontalCustomSpacer({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return _SpacerSizedBox(
      spacerType: _SpacerType.horizontal,
      spacerSize: _SpacerSize.large,
      width: width,
    );
  }
}

class VerticalSmallSpacer extends StatelessWidget {
  const VerticalSmallSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.vertical,
      spacerSize: _SpacerSize.small,
    );
  }
}

class VerticalMediumSpacer extends StatelessWidget {
  const VerticalMediumSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.vertical,
      spacerSize: _SpacerSize.medium,
    );
  }
}

class VerticalLargeSpacer extends StatelessWidget {
  const VerticalLargeSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return const _SpacerSizedBox(
      spacerType: _SpacerType.vertical,
      spacerSize: _SpacerSize.large,
    );
  }
}

class VerticalCustomSpacer extends StatelessWidget {
  const VerticalCustomSpacer({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return _SpacerSizedBox(
      spacerType: _SpacerType.vertical,
      spacerSize: _SpacerSize.large,
      height: height,
    );
  }
}
