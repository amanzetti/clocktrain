import 'package:clocktrain/presentation/pages/sheet/workout_editor/exercise_editor_page/exerecise_editor_page.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/text_fields/app_text_field.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/app_widgetbook/lib/widgets/organisms/header_with_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
          HeaderWithCloseButton(
              title: 'Workout Editor',
              onTap: () {
                context.pop();
              }),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          const AppTextFiled(labelText: 'Name Workout'),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          HeaderWithActionButton(
            title: 'Exercises',
            onTap: () {
              showDialog(
                  useSafeArea: false,
                  context: context,
                  builder: (context) => const ExerciseEditorPage());
            },
          ),
        ],
      ),
    );
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
