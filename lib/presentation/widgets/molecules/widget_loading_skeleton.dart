import 'package:clocktrain/presentation/widgets/atoms/error/base_error.dart';
import 'package:clocktrain/presentation/widgets/atoms/skeleton/base_skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WidgetLoadingSkeleton<T> extends ConsumerWidget {
  final Widget? childSkeleton;
  final Widget childBody;
  final T? value;

  const WidgetLoadingSkeleton({
    super.key,
    required this.value,
    required this.childBody,
    this.childSkeleton,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
