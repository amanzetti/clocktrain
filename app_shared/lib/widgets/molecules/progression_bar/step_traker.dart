import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/utils/ext/edge_insets_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:flutter/material.dart';

class StepTraker extends StatelessWidget {
  const StepTraker(
      {required this.currentStep,
      required this.totalSteps,
      super.key,
      this.currentStepColor,
      this.completedStepColor,
      this.uncompletedStepColor});

  final int currentStep;
  final int totalSteps;
  final Color? currentStepColor;
  final Color? completedStepColor;
  final Color? uncompletedStepColor;

  @override
  Widget build(BuildContext context) {
    return Row(children: _buildTrackers(context));
  }

  List<Widget> _buildTrackers(BuildContext context) {
    List<Widget> trackers = [];
    for (int i = 0; i < totalSteps; i++) {
      trackers.add(
        Expanded(
            child: Padding(
          padding: AppDimesnionsEdgeInsetsExt.dim4Horizontal,
          child: Container(
            height: 5,
            decoration: BoxDecoration(
                color: _getTrackerColor(context, i),
                borderRadius: BorderRadius.circular(10)),
          ),
        )),
      );
    }
    return trackers;
  }

  Color _getTrackerColor(BuildContext context, int index) {
    if (index == currentStep) {
      return currentStepColor ?? context.colorScheme.secondary;
    } else if (index < currentStep) {
      return completedStepColor ?? context.colorScheme.tertiary;
    } else {
      return uncompletedStepColor ?? context.colorScheme.surface;
    }
  }
}
