import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

class OptionKeybord extends ConsumerWidget {
  OptionKeybord({super.key, required this.funChild, required this.readOnly});

  final Widget Function(FocusNode) funChild;
  final FocusNode _nodeText = FocusNode();
  final bool readOnly;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 50,
      child: readOnly
          ? funChild(FocusNode())
          : KeyboardActions(
              config: context.buildKeyboardActionsConfig(_nodeText),
              child: funChild(_nodeText),
            ),
    );
  }
}
