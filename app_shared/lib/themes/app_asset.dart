import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAsset {
  // Metodo factory per ottenere l'istanza
  factory AppAsset() => _instance;

  // Costruttore privato
  AppAsset._internal();

  // Singleton
  static final AppAsset _instance = AppAsset._internal();

  // Funzione per ottenere l'icona SVG con il filtro del colore
  Widget getSvgWithColorFilter(BuildContext context, String assetPath,
      {Size size = const Size(24, 24), String? package}) {
    print('package: $package');
    print('asset_path: $assetPath');
    return SvgPicture.asset(
      assetPath,
      width: size.width,
      height: size.height,
      package: package,
      colorFilter: ColorFilter.mode(
        context.colorScheme.onPrimary,
        BlendMode.srcIn,
      ),
    );
  }

  // Esempio di icone con il context:
  Widget errorSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(
        context,
        'assets/icon/x-octagon.svg',
        size: size,
        package: package,
      );
  Widget warningSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/alert-triangle.svg',
          size: size, package: package);
  Widget arrowBackSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/chevron-left.svg',
          size: size, package: package);
  Widget arrowNextSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/chevron-right.svg',
          size: size, package: package);
  Widget editSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/edit-3.svg',
          size: size, package: package);
  Widget uneditSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/x-circle.svg',
          size: size, package: package);
  Widget deleteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/trash-2.svg',
          size: size, package: package);
  Widget favoriteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/heart.svg',
          size: size, package: package);
  Widget unfavoriteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/heart.svg',
          size: size, package: package);
  Widget saveSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/save.svg',
          size: size, package: package);
  Widget signInSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/log-in.svg',
          size: size, package: package);
  Widget signOutSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/log-out.svg',
          size: size, package: package);
  Widget daySvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/sunrise.svg',
          size: size, package: package);
  Widget noonSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/sun.svg',
          size: size, package: package);
  Widget eveningSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/sunset.svg',
          size: size, package: package);
  Widget nightSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/moon.svg',
          size: size, package: package);
  Widget cancelSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/x.svg',
          size: size, package: package);
  Widget accountSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/user.svg',
          size: size, package: package);
  Widget settingsSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/settings.svg',
          size: size, package: package);
  Widget toolsSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/tool.svg',
          size: size, package: package);
  Widget homeSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/home.svg',
          size: size, package: package);
  Widget sheetSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/clipboard.svg',
          size: size, package: package);
  Widget playSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/play.svg',
          size: size, package: package);
  Widget pauseSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/pause.svg',
          size: size, package: package);
  Widget clockSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/clock.svg',
          size: size, package: package);
  Widget calendarSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/calendar.svg',
          size: size, package: package);
  Widget addSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/plus.svg',
          size: size, package: package);
  Widget notificationSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/bell.svg',
          size: size, package: package);
  Widget fullscreenSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/maximize.svg',
          size: size, package: package);
  Widget reduceSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icon/minimize.svg',
          size: size, package: package);
}
