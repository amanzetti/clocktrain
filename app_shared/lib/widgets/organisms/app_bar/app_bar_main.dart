import 'package:app_shared/themes/app_asset.dart';
import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/svg_widget.dart';
import 'package:flutter/material.dart';

class AppBarMain extends StatelessWidget {
  const AppBarMain({super.key, this.nameUser = 'Guest'});

  final String nameUser;

  @override
  Widget build(BuildContext context) {
    return _buildTitle(context, nameUser);
  }

  Widget _buildTitle(BuildContext context, String nameUser) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextDate(context),
              Text('Hi, $nameUser!', style: context.textTheme.displaySmall),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                style: AppButtonStyle.icon,
                child: SvgWidget(AppAsset.notificationIcon),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextDate(BuildContext context) {
    return Row(
      children: [
        _buildIcon(context, DateTime.now().partOfDay),
        Text(DateTime.now().toddMMMyyyyString(),
            style: context.textTheme.titleSmall),
      ],
    );
  }

  Widget _buildIcon(BuildContext context, DatePartOfDay partOfDay) {
    switch (partOfDay) {
      case DatePartOfDay.morning:
        return SvgWidget(AppAsset.dayIcon);
      case DatePartOfDay.afternoon:
        return SvgWidget(AppAsset.noonIcon);
      case DatePartOfDay.evening:
        return SvgWidget(AppAsset.eveningIcon);
      case DatePartOfDay.night:
        return SvgWidget(AppAsset.nightIcon);
      default:
        return SvgWidget(AppAsset.errorIcon);
    }
  }
}
