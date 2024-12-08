/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/alert-triangle.svg
  SvgGenImage get alertTriangle =>
      const SvgGenImage('assets/icons/alert-triangle.svg');

  /// File path: assets/icons/arrow-left.svg
  SvgGenImage get arrowLeft => const SvgGenImage('assets/icons/arrow-left.svg');

  /// File path: assets/icons/arrow-right.svg
  SvgGenImage get arrowRight =>
      const SvgGenImage('assets/icons/arrow-right.svg');

  /// File path: assets/icons/bell.svg
  SvgGenImage get bell => const SvgGenImage('assets/icons/bell.svg');

  /// File path: assets/icons/calendar.svg
  SvgGenImage get calendar => const SvgGenImage('assets/icons/calendar.svg');

  /// File path: assets/icons/chevron-left.svg
  SvgGenImage get chevronLeft =>
      const SvgGenImage('assets/icons/chevron-left.svg');

  /// File path: assets/icons/chevron-right.svg
  SvgGenImage get chevronRight =>
      const SvgGenImage('assets/icons/chevron-right.svg');

  /// File path: assets/icons/clipboard.svg
  SvgGenImage get clipboard => const SvgGenImage('assets/icons/clipboard.svg');

  /// File path: assets/icons/clock.svg
  SvgGenImage get clock => const SvgGenImage('assets/icons/clock.svg');

  /// File path: assets/icons/edit-3.svg
  SvgGenImage get edit3 => const SvgGenImage('assets/icons/edit-3.svg');

  /// File path: assets/icons/heart.svg
  SvgGenImage get heart => const SvgGenImage('assets/icons/heart.svg');

  /// File path: assets/icons/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icons/home.svg');

  /// File path: assets/icons/log-in.svg
  SvgGenImage get logIn => const SvgGenImage('assets/icons/log-in.svg');

  /// File path: assets/icons/log-out.svg
  SvgGenImage get logOut => const SvgGenImage('assets/icons/log-out.svg');

  /// File path: assets/icons/maximize.svg
  SvgGenImage get maximize => const SvgGenImage('assets/icons/maximize.svg');

  /// File path: assets/icons/minimize.svg
  SvgGenImage get minimize => const SvgGenImage('assets/icons/minimize.svg');

  /// File path: assets/icons/moon.svg
  SvgGenImage get moon => const SvgGenImage('assets/icons/moon.svg');

  /// File path: assets/icons/pause.svg
  SvgGenImage get pause => const SvgGenImage('assets/icons/pause.svg');

  /// File path: assets/icons/play.svg
  SvgGenImage get play => const SvgGenImage('assets/icons/play.svg');

  /// File path: assets/icons/plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/plus.svg');

  /// File path: assets/icons/save.svg
  SvgGenImage get save => const SvgGenImage('assets/icons/save.svg');

  /// File path: assets/icons/settings.svg
  SvgGenImage get settings => const SvgGenImage('assets/icons/settings.svg');

  /// File path: assets/icons/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/icons/sun.svg');

  /// File path: assets/icons/sunrise.svg
  SvgGenImage get sunrise => const SvgGenImage('assets/icons/sunrise.svg');

  /// File path: assets/icons/sunset.svg
  SvgGenImage get sunset => const SvgGenImage('assets/icons/sunset.svg');

  /// File path: assets/icons/tool.svg
  SvgGenImage get tool => const SvgGenImage('assets/icons/tool.svg');

  /// File path: assets/icons/trash-2.svg
  SvgGenImage get trash2 => const SvgGenImage('assets/icons/trash-2.svg');

  /// File path: assets/icons/user.svg
  SvgGenImage get user => const SvgGenImage('assets/icons/user.svg');

  /// File path: assets/icons/x-circle.svg
  SvgGenImage get xCircle => const SvgGenImage('assets/icons/x-circle.svg');

  /// File path: assets/icons/x-octagon.svg
  SvgGenImage get xOctagon => const SvgGenImage('assets/icons/x-octagon.svg');

  /// File path: assets/icons/x.svg
  SvgGenImage get x => const SvgGenImage('assets/icons/x.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        alertTriangle,
        arrowLeft,
        arrowRight,
        bell,
        calendar,
        chevronLeft,
        chevronRight,
        clipboard,
        clock,
        edit3,
        heart,
        home,
        logIn,
        logOut,
        maximize,
        minimize,
        moon,
        pause,
        play,
        plus,
        save,
        settings,
        sun,
        sunrise,
        sunset,
        tool,
        trash2,
        user,
        xCircle,
        xOctagon,
        x
      ];
}

class $AssetsSoundsGen {
  const $AssetsSoundsGen();

  /// File path: assets/sounds/beep1.mp3
  String get beep1 => 'packages/app_shared/assets/sounds/beep1.mp3';

  /// File path: assets/sounds/beep2.mp3
  String get beep2 => 'packages/app_shared/assets/sounds/beep2.mp3';

  /// List of all assets
  List<String> get values => [beep1, beep2];
}

class SharedAssets {
  SharedAssets._();

  static const String package = 'app_shared';

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsSoundsGen sounds = $AssetsSoundsGen();
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  static const String package = 'app_shared';

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    @Deprecated('Do not specify package for a generated library asset')
    String? package = package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => 'packages/app_shared/$_assetName';
}
