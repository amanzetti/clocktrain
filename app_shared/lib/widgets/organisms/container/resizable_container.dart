import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:flutter/material.dart';

class ResizableContainer extends StatefulWidget {
  const ResizableContainer({
    required this.hintText,
    required this.title,
    required this.childExpands,
    super.key,
    this.backgroundColor,
  });

  final String hintText;
  final String title;
  final Widget childExpands;
  final Color? backgroundColor;

  @override
  _ResizableContainerState createState() => _ResizableContainerState();
}

class _ResizableContainerState extends State<ResizableContainer> {
  bool _isCollapsed = false; // Stato per il container

  void onCollapse() {
    setState(() {
      _isCollapsed = !_isCollapsed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300), // Durata dell'animazione
      height: _isCollapsed ? 150 : 400, // Altezza dinamica
      decoration: BoxDecoration(
        color:
            widget.backgroundColor ?? context.colorScheme.surfaceContainerHigh,
        borderRadius: const BorderRadius.only(
          topLeft: AppDimensions.radius24,
          topRight: AppDimensions.radius24,
        ),
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: AppDimesnionsEdgeInsetsExt.mediumAll,
          child: Column(
            children: [
              _buildHeader(context),
              Center(child: _buildChild(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.info_outline_rounded),
        const HorizontalMediumSpacer(),
        _buildTitle(context),
        const Spacer(),
        AppButton.iconCircleBox(
          height: 40,
          width: 40,
          onPressed: onCollapse,
          child: SvgWidget(AppAsset.cancelIcon),
        ),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    if (_isCollapsed) {
      return Text(widget.title, style: context.textTheme.labelLarge);
    } else {
      return Text(widget.hintText, style: context.textTheme.labelLarge);
    }
  }

  Widget _buildChild(BuildContext context) {
    if (_isCollapsed) {
      return const SizedBox();
    } else {
      return widget.childExpands;
    }
  }
}
