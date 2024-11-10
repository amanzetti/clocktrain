import 'package:clocktrain/presentation/pages/sheet/flow_manage_workout/exerecise_editor.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutEditorPage extends ConsumerStatefulWidget {
  const WorkoutEditorPage({super.key});

  @override
  ConsumerState<WorkoutEditorPage> createState() => _WorkoutEditorPageState();
}

class _WorkoutEditorPageState extends ConsumerState<WorkoutEditorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Text('Workout Editor', style: AppTypography.instance.titleS),
            ],
          ),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildTextField('Name Workout'),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildNavBar(context, 'Exercises'),
        ],
      ),
    );
  }

  Widget _buildNavBar(BuildContext context, String title) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTypography().titleS),
        ElevatedNotchRoundedButton(
          // onTap: () {
          //   context.push(AppPath.sheetListPage + AppPath.workoutEditorPage);
          // },
          onTap: () {
            showDialog(
                useSafeArea: false,
                context: context,
                builder: (context) => ExereciseEditor());
          },
        )
      ],
    ));
  }

  Widget _buildTextField(String label) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        labelText: label,
        // border: OutlineInputBorder(),
      ),
    );
  }
}
