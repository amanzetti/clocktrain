// import 'package:clocktrain/domain/entities/muscle_group_entity.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// void showMultiSelectDialog(
//     BuildContext context,
//     List<MuscleGroup> values,
//     List<MuscleGroup>? valueSelected,
//     void Function(List<MuscleGroup>?)? onSaved) async {
//   await showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return MultiSelectDialog(
//         valueSelected: valueSelected,
//         values: values,
//         onSaved: onSaved,
//       );
//     },
//   );
// }

// class MultiSelectDialog extends StatefulWidget {
//   final List<MuscleGroup>? valueSelected;
//   final List<MuscleGroup> values;
//   final void Function(List<MuscleGroup>?)? onSaved;

//   const MultiSelectDialog({
//     super.key,
//     required this.values,
//     required this.valueSelected,
//     this.onSaved,
//   });

//   @override
//   _MultiSelectDialogState createState() => _MultiSelectDialogState();
// }

// class _MultiSelectDialogState extends State<MultiSelectDialog> {
//   late List<MuscleGroup> valueSelected;

//   @override
//   void initState() {
//     super.initState();
//     valueSelected = List.from(widget.valueSelected ?? []);
//   }

//   bool _valueCheck(MuscleGroup group) {
//     print(group);
//     print(valueSelected.contains(group));
//     return valueSelected.contains(group);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       content: SingleChildScrollView(
//         child: ListBody(
//           children: widget.values.map((group) {
//             return CheckboxListTile(
//               value: _valueCheck(group),
//               title: Text(group.groupName),
//               onChanged: (bool? checked) {
//                 setState(() {
//                   if (checked == true) {
//                     valueSelected.add(group);
//                   } else {
//                     valueSelected.remove(group);
//                   }
//                 });
//               },
//             );
//           }).toList(),
//         ),
//       ),
//       actions: [
//         TextButton(
//           child: const Text("Cancel"),
//           onPressed: () {
//             context.pop();
//           },
//         ),
//         TextButton(
//           child: const Text("OK"),
//           onPressed: () {
//             widget.onSaved?.call(valueSelected);
//             context.pop();
//           },
//         ),
//       ],
//     );
//   }
// }
