import 'package:app_shared/widgets/atoms/error/base_error.dart';
import 'package:app_shared/widgets/atoms/skeleton/base_skeleton.dart';
import 'package:flutter/material.dart';

class WidgetLoadingSkeleton<T> extends StatelessWidget {
  const WidgetLoadingSkeleton({
    required this.value,
    required this.childBody,
    super.key,
    this.childSkeleton,
  });
  final Widget? childSkeleton;
  final Widget childBody;
  final T? value;

  @override
  Widget build(BuildContext context) {
    return _build();
  }

  _build() {
    switch (value) {
      case != null:
        return childBody;
      case == null:
        return childSkeleton ?? const BaseSkeleton();
      default:
        return const BaseError(
          error: 'ERRORE NOT MAPPED',
        );
    }
  }
}
