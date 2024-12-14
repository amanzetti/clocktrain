import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/ext/color_scheme_ext.dart';
import 'package:flutter/material.dart';

class AppFavoriteButton extends StatefulWidget {
  const AppFavoriteButton({super.key, this.callBack, this.isFavorite = false});

  final void Function()? callBack;
  final bool isFavorite;

  @override
  State<AppFavoriteButton> createState() => _AppFavoriteButtonState();
}

class _AppFavoriteButtonState extends State<AppFavoriteButton> {
  late bool isFavorite;

  @override
  void initState() {
    isFavorite = widget.isFavorite;
    super.initState();
  }

  _onPressed() {
    setState(() {
      isFavorite = !isFavorite;
    });
    widget.callBack?.call();
  }

  @override
  Widget build(BuildContext context) {
    return AppButton.icon(
      onPressed: _onPressed,
      child: AnimatedSwitcher(
        duration:
            const Duration(milliseconds: 300), // Duration of the animation
        transitionBuilder: (child, animation) {
          // Define a custom animation
          return ScaleTransition(
            scale: animation,
            child: child,
          );
        },
        child: SvgWidget(
          isFavorite ? AppAsset.favoriteIconFilled : AppAsset.favoriteIcon,
          key:
              ValueKey<bool>(isFavorite), // Key is crucial for AnimatedSwitcher
          colorFilter: ColorFilter.mode(
            _getIconColor(context),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }

  _getIconColor(BuildContext context) {
    return isFavorite
        ? context.colorScheme.favoriteRed
        : context.colorScheme.onSurface;
  }
}
