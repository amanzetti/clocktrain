import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({required this.navigationShell, super.key});
  final StatefulNavigationShell navigationShell;

  @override
  _MainBottomNavBarState createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int indexBottomNavbar = 0; // Store the current index

  void onItemTapped(int index) {
    setState(() {
      indexBottomNavbar = index;
    });
    widget.navigationShell.goBranch(index, initialLocation: true);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          padding: AppDimesnionsEdgeInsetsExt.all4,
          height: 68,
          decoration: AppTheme.boxDecorationCircle(context).copyWith(
            color: context.colorScheme.surface,
          ),
          child: _buildBottomNavigationBar(context),
        ),
      ),
    );
  }

  _buildBottomNavigationBar(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildCircleBottonFlottingMenu(context,
            color: context.colorScheme.primary,
            iconPath: AppAsset.homeIcon,
            isSelected: indexBottomNavbar == 0,
            onPressed: () => onItemTapped(0)),
        _buildCircleBottonFlottingMenu(context,
            color: context.colorScheme.primary,
            iconPath: AppAsset.sheetIcon,
            isSelected: indexBottomNavbar == 1,
            onPressed: () => onItemTapped(1)),
        _buildCircleBottonFlottingMenu(context,
            color: context.colorScheme.primary,
            iconPath: AppAsset.toolsIcon,
            isSelected: indexBottomNavbar == 2,
            onPressed: () => onItemTapped(2)),
        _buildCircleBottonFlottingMenu(context,
            color: context.colorScheme.primary,
            iconPath: AppAsset.settingsIcon,
            isSelected: indexBottomNavbar == 3,
            onPressed: () => onItemTapped(3)),
      ],
    );
  }

  Widget _buildCircleBottonFlottingMenu(
    BuildContext context, {
    required void Function() onPressed,
    required Color color,
    required String iconPath,
    required bool isSelected,
  }) {
    return Container(
      height: 60,
      width: 60,
      decoration: AppTheme.boxDecorationCircle(context).copyWith(
          color: _getButtonColor(context, isSelected).withOpacity(0.8),
          border: Border.all(color: color, width: 2)),
      child: AppButton(
        style: AppButtonStyle.icon,
        onPressed: onPressed,
        child: SvgWidget(
          iconPath,
          colorFilter: ColorFilter.mode(
              _getIconColor(context, isSelected), BlendMode.srcIn),
        ),
      ),
    );
  }

  Color _getButtonColor(BuildContext context, bool isSelected) {
    return isSelected
        ? context.colorScheme.primary
        : context.colorScheme.surface;
  }

  Color _getIconColor(BuildContext context, bool isSelected) {
    return isSelected
        ? context.colorScheme.onPrimary
        : context.colorScheme.primary;
  }
}
