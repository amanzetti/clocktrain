import 'package:clocktrain/presentation/pages/sheet/workout_editor/exerecise_editor.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
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
              Text('Workout Editor', style: context.textTheme.displaySmall),
            ],
          ),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          _buildTextField('Name Workout'),
          const SpacerSizedBox(
              spacerType: SpacerType.vertical, spacerSize: SpacerSize.medium),
          HeaderWithActionButton(
            title: 'Exercises',
            onTap: () {
              showDialog(
                  useSafeArea: false,
                  context: context,
                  builder: (context) => ExereciseEditor());
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
