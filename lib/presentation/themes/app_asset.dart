import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppAsset {
  // Singleton
  static final AppAsset _instance = AppAsset._internal();

  // Costruttore privato
  AppAsset._internal();

  // Metodo factory per ottenere l'istanza
  factory AppAsset() => _instance;

  // Funzione per ottenere l'icona SVG con il filtro del colore
  Widget getSvgWithColorFilter(BuildContext context, String assetPath) {
    return SvgPicture.asset(
      assetPath,
      width: 24,
      height: 24,
      colorFilter: ColorFilter.mode(
        context.colorScheme.onPrimary, // Usa onPrimary per testo e icone
        BlendMode.srcIn,
      ),
    );
  }

  // Esempio di icone con il context:
  Widget errorSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/x-octagon.svg');
  Widget warningSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/alert-triangle.svg');
  Widget arrowBackSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/chevron-left.svg');
  Widget arrowNextSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/chevron-right.svg');
  Widget editSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/edit-3.svg');
  Widget uneditSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/x-circle.svg');
  Widget deleteSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/trash-2.svg');
  Widget favoriteSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/heart.svg');
  Widget unfavoriteSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/heart.svg');
  Widget saveSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/save.svg');
  Widget signInSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/log-in.svg');
  Widget signOutSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/log-out.svg');
  Widget daySvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/sunrise.svg');
  Widget noonSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/sun.svg');
  Widget eveningSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/sunset.svg');
  Widget nightSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/moon.svg');
  Widget cancelSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/x.svg');
  Widget accountSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/user.svg');
  Widget settingsSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/settings.svg');
  Widget toolsSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/tool.svg');
  Widget homeSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/home.svg');
  Widget sheetSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/clipboard.svg');
  Widget playSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/play.svg');
  Widget pauseSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/pause.svg');
  Widget clockSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/clock.svg');
  Widget calendarSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/calendar.svg');
  Widget addSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/plus.svg');
  Widget notificationSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/bell.svg');
  Widget fullscreenSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/maximize.svg');
  Widget reduceSvg(BuildContext context) =>
      getSvgWithColorFilter(context, 'assets/icon/minimize.svg');
}
