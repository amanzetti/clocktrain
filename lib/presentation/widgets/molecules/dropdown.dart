import 'package:clocktrain/utils/enum/muscle_group_enum.dart';
import 'package:flutter/material.dart';

class MultiSelectDropdown extends StatefulWidget {
  @override
  _MultiSelectDropdownState createState() => _MultiSelectDropdownState();
}

class _MultiSelectDropdownState extends State<MultiSelectDropdown> {
  // Lista dei gruppi muscolari selezionati
  List<MuscleGroup> selectedMuscleGroups = [];

  // Funzione per mostrare il dialogo di selezione
  void _showMultiSelectDialog() async {
    final List<MuscleGroup>? selectedValues = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return MultiSelectDialog(
          initialSelectedValues: selectedMuscleGroups,
        );
      },
    );

    if (selectedValues != null) {
      setState(() {
        selectedMuscleGroups = selectedValues;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Select Muscle Groups"),
        SizedBox(height: 8),
        GestureDetector(
          onTap: _showMultiSelectDialog,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              selectedMuscleGroups.isNotEmpty
                  ? selectedMuscleGroups.map((e) => e.name).join(', ')
                  : "No muscle groups selected",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}

class MultiSelectDialog extends StatefulWidget {
  final List<MuscleGroup> initialSelectedValues;

  MultiSelectDialog({required this.initialSelectedValues});

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
      title: Text("Select Muscle Groups"),
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
          child: Text("Cancel"),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.of(context).pop(selectedValues);
          },
        ),
      ],
    );
  }
}
