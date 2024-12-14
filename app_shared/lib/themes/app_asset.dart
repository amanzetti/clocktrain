import 'package:app_shared/config/logger_config.dart';
import 'package:app_shared/gen/assets.gen.dart';
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

  static String errorIcon = SharedAssets.icons.xOctagon.path;
  static String warningIcon = SharedAssets.icons.alertTriangle.path;
  static String arrowBackIcon = SharedAssets.icons.chevronLeft.path;
  static String arrowNextIcon = SharedAssets.icons.chevronRight.path;
  static String editIcon = SharedAssets.icons.edit3.path;
  static String uneditIcon = SharedAssets.icons.xCircle.path;
  static String deleteIcon = 'assets/icons/trash-2.svg';
  static String favoriteIcon = SharedAssets.icons.heart.path;
  static String favoriteIconFilled = SharedAssets.icons.heartFill.path;
  static String unfavoriteIcon = 'assets/icons/heart.svg';
  static String saveIcon = 'assets/icons/save.svg';
  static String signInIcon = 'assets/icons/log-in.svg';
  static String signOutIcon = 'assets/icons/log-out.svg';
  static String dayIcon = 'assets/icons/sunrise.svg';
  static String noonIcon = 'assets/icons/sun.svg';
  static String eveningIcon = 'assets/icons/sunset.svg';
  static String nightIcon = 'assets/icons/moon.svg';
  static String cancelIcon = 'assets/icons/x.svg';
  static String accountIcon = 'assets/icons/user.svg';
  static String settingsIcon = 'assets/icons/settings.svg';
  static String toolsIcon = 'assets/icons/tool.svg';
  static String homeIcon = 'assets/icons/home.svg';
  static String sheetIcon = 'assets/icons/clipboard.svg';
  static String playIcon = SharedAssets.icons.play.path;
  static String pauseIcon = 'assets/icons/pause.svg';
  static String clockIcon = 'assets/icons/clock.svg';
  static String calendarIcon = 'assets/icons/calendar.svg';
  static String addIcon = 'assets/icons/plus.svg';
  static String notificationIcon = 'assets/icons/bell.svg';
  static String fullscreenIcon = 'assets/icons/maximize.svg';
  static String reduceIcon = 'assets/icons/minimize.svg';

  // Funzione per ottenere l'icona SVG con il filtro del colore
  Widget getSvgWithColorFilter(BuildContext context, String assetPath,
      {Size size = const Size(24, 24), String? package}) {
    final log = LoggerConfig.logger;
    log.d('package: $package');
    log.d('asset_path: $assetPath');
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
        'assets/icons/x-octagon.svg',
        size: size,
        package: package,
      );
  Widget warningSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/alert-triangle.svg',
          size: size, package: package);
  Widget arrowBackSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/chevron-left.svg',
          size: size, package: package);
  Widget arrowNextSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/chevron-right.svg',
          size: size, package: package);
  Widget editSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/edit-3.svg',
          size: size, package: package);
  Widget uneditSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/x-circle.svg',
          size: size, package: package);
  Widget deleteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/trash-2.svg',
          size: size, package: package);
  Widget favoriteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/heart.svg',
          size: size, package: package);
  Widget unfavoriteSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/heart.svg',
          size: size, package: package);
  Widget saveSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/save.svg',
          size: size, package: package);
  Widget signInSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/log-in.svg',
          size: size, package: package);
  Widget signOutSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/log-out.svg',
          size: size, package: package);
  Widget daySvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/sunrise.svg',
          size: size, package: package);
  Widget noonSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/sun.svg',
          size: size, package: package);
  Widget eveningSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/sunset.svg',
          size: size, package: package);
  Widget nightSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/moon.svg',
          size: size, package: package);
  Widget cancelSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/x.svg',
          size: size, package: package);
  Widget accountSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/user.svg',
          size: size, package: package);
  Widget settingsSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/settings.svg',
          size: size, package: package);
  Widget toolsSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/tool.svg',
          size: size, package: package);
  Widget homeSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/home.svg',
          size: size, package: package);
  Widget sheetSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/clipboard.svg',
          size: size, package: package);
  Widget playSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/play.svg',
          size: size, package: package);
  Widget pauseSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/pause.svg',
          size: size, package: package);
  Widget clockSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/clock.svg',
          size: size, package: package);
  Widget calendarSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/calendar.svg',
          size: size, package: package);
  Widget addSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/plus.svg',
          size: size, package: package);
  Widget notificationSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/bell.svg',
          size: size, package: package);
  Widget fullscreenSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/maximize.svg',
          size: size, package: package);
  Widget reduceSvg(BuildContext context,
          {Size size = const Size(24, 24), String? package}) =>
      getSvgWithColorFilter(context, 'assets/icons/minimize.svg',
          size: size, package: package);
}
