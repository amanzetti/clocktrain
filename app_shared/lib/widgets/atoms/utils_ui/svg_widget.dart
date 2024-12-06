import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum SvgWidgetType {
  asset,
  memory,
}

/// Creates a widget that displays an SVG asset.
class SvgWidget extends StatelessWidget {
  /// Creates a widget that displays an SVG asset.
  const SvgWidget({
    required this.path,
    super.key,
    this.width,
    this.height,
    this.alignment = Alignment.center,
    this.colorFilter,
    this.fit = BoxFit.contain,
    this.package = 'app_shared',
    this.isExternalResource = false,
    this.excludeFromSemantics = false,
    this.svgWidgetType = SvgWidgetType.asset,
    this.semanticsLabel,
    this.onBase64DecodeFail,
  });

  /// The name of the SVG asset.
  ///
  /// If **SvgWidgetType** is **memory** this refer to the base64 image string
  final String path;

  /// The width of the image.
  final double? width;

  /// The height of the image.
  final double? height;

  /// How to align the image within its bounds.
  final AlignmentGeometry alignment;

  /// A color filter to apply to the image before painting it.
  final ColorFilter? colorFilter;

  /// How to inscribe the image into the space allocated during layout.
  final BoxFit fit;

  /// The name of the package from which the SVG asset should be loaded.
  final String? package;

  /// Whether the SVG asset is an external resource.
  final bool isExternalResource;

  /// If this widget need to be semantics managed set this at TRUE cause
  /// will always read 'image'.
  final bool excludeFromSemantics;

  /// Whether the SVG is constructed from an asset or memory
  final SvgWidgetType svgWidgetType;

  /// The value indicates the purpose of the picture, and will be read out by screen readers.
  final String? semanticsLabel;

  /// Widget to show in case base64Decode fail
  final Widget Function()? onBase64DecodeFail;

  @override
  Widget build(BuildContext context) {
    return svgWidgetType == SvgWidgetType.memory
        ? _base64Decode() != null && (_base64Decode()?.isNotEmpty ?? false)
            ? SvgPicture.memory(
                _base64Decode()!,
                excludeFromSemantics: excludeFromSemantics,
                width: width,
                height: height,
                alignment: alignment,
                colorFilter: colorFilter,
                fit: fit,
                semanticsLabel: semanticsLabel,
                placeholderBuilder: SvgPicture.defaultPlaceholderBuilder,
              )
            : onBase64DecodeFail?.call() ?? const SizedBox()
        : SvgPicture.asset(
            path,
            excludeFromSemantics: excludeFromSemantics,
            width: width,
            height: height,
            alignment: alignment,
            colorFilter: colorFilter,
            fit: fit,
            package: isExternalResource ? null : package,
            semanticsLabel: semanticsLabel,
          );
  }

  Uint8List? _base64Decode() {
    Uint8List? bytes;

    try {
      bytes = base64Decode(path);
    } catch (_) {}

    return bytes;
  }
}
