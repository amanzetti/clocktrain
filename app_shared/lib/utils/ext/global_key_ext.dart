import 'package:flutter/material.dart';

extension GlobalKeyExtensions on GlobalKey {
  double? getHeight() {
    final RenderBox? renderBox =
        currentContext?.findRenderObject() as RenderBox?;
    return renderBox?.size.height;
  }
}
