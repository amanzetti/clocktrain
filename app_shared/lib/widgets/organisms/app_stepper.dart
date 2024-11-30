import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/cards/app_card.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';

class AppStepper extends StatefulWidget {
  const AppStepper({super.key, required this.steps, this.onPageChanged});

  final List<Widget> steps;
  final Function(int)? onPageChanged;

  @override
  _AppStepperState createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  final PageController _pageController = PageController();
  late int _currentPage;
  late List<Widget> _steps;

  @override
  void initState() {
    _currentPage = 0;
    _steps = widget.steps;
    super.initState();
  }

  void _nextPage() {
    if (_currentPage < _steps.length - 1) {
      setState(() {
        _currentPage++;
        _pageController.jumpToPage(_currentPage);
        widget.onPageChanged?.call(_currentPage);
      });
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      setState(() {
        _currentPage--;
        _pageController.jumpToPage(_currentPage);
        widget.onPageChanged?.call(_currentPage);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: AppCard(
            padding: AppDimesnionsEdgeInsetsExt.mediumAll,
            child: PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: _steps,
            ),
          ),
        ),
        const VerticalSmallSpacer(),
        Row(
          children: [
            Expanded(
              child: _currentPage > 0
                  ? AppButton(
                      style: AppButtonStyle.outlied,
                      onPressed: _previousPage,
                      text: 'back')
                  : const SizedBox(),
            ),
            const HorizontalMediumSpacer(),
            Expanded(
              child: AppButton(
                  style: AppButtonStyle.elevated,
                  onPressed: _nextPage,
                  text: _currentPage == _steps.length - 1 ? "Submit" : "Next"),
            )
          ],
        )
      ],
    );
  }
}
