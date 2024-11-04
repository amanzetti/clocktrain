import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/option_keybord.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextFiledExerciseTile extends ConsumerWidget {
  final TextEditingController controller;
  final bool readOnly;

  const TextFiledExerciseTile({
    required this.controller,
    required this.readOnly,
    super.key,
  });

  Widget Function(FocusNode) funChild() {
    return (FocusNode node) => TextField(
          focusNode: node,
          readOnly: readOnly,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
            contentPadding: EdgeInsets.zero,
            // Qui puoi anche personalizzare ulteriormente il tema, ad esempio, impostando il colore del testo.
            hintText: 'Inserisci valore',
            hintStyle: AppTypography()
                .paragraph
                .copyWith(color: Colors.grey), // Esempio di utilizzo del tema
          ),
          maxLength: 3,
          controller: controller,
          style: AppTypography()
              .titleL, // Utilizza la tipografia definita nel tema
          keyboardType: TextInputType.number,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OptionKeybord(readOnly: readOnly, funChild: funChild());
  }
}
