import 'package:clocktrain/utils/enum/muscle_group_enum.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void showMultiSelectDialog(
    BuildContext context, TextEditingController controller) async {
  final List<MuscleGroup> selectedMuscleGroups;
  if (controller.text.isNotEmpty) {
    selectedMuscleGroups = controller.text
        .split(', ')
        .map((e) =>
            MuscleGroup.values.firstWhere((element) => element.name == e))
        .toList();
  } else {
    selectedMuscleGroups = [];
  }

  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return MultiSelectDialog(
        initialSelectedValues: selectedMuscleGroups,
        controller: controller,
      );
    },
  );
}

class MultiSelectDialog extends StatefulWidget {
  final List<MuscleGroup> initialSelectedValues;
  final TextEditingController controller;

  const MultiSelectDialog(
      {super.key,
      required this.initialSelectedValues,
      required this.controller});

  @override
  _MultiSelectDialogState createState() => _MultiSelectDialogState();
}

class _MultiSelectDialogState extends State<MultiSelectDialog> {
  late List<MuscleGroup> selectedValues;

  @override
  void initState() {
    super.initState();
    selectedValues = List.from(widget.initialSelectedValues);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Select Muscle Groups"),
      content: SingleChildScrollView(
        child: ListBody(
          children: MuscleGroup.values.map((group) {
            return CheckboxListTile(
              value: selectedValues.contains(group),
              title: Text(group.name),
              onChanged: (bool? checked) {
                setState(() {
                  if (checked == true) {
                    selectedValues.add(group);
                  } else {
                    selectedValues.remove(group);
                  }
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () {
            context.pop();
          },
        ),
        TextButton(
          child: const Text("OK"),
          onPressed: () {
            setState(() {
              widget.controller.text =
                  selectedValues.map((e) => e.name).join(', ');
            });
          },
        ),
      ],
    );
  }
}
