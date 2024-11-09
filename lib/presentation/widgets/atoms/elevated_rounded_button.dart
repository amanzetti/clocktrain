import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ElevatedNotchRoundedButton extends ConsumerWidget {
  const ElevatedNotchRoundedButton({this.onTap, super.key});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
          height: 48,
          width: 80,
          child: Center(
            child: Container(
              height: 34,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppAsset.add,
                  Text(
                    'Add',
                    style: AppTypography.instance.button.copyWith(
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
