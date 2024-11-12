import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/atoms/text_filed_exercise_tile.dart';
import 'package:clocktrain/presentation/widgets/molecules/app_time_picker.dart';
import 'package:clocktrain/presentation/widgets/molecules/dropdown.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_close_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExereciseEditor extends ConsumerWidget {
  ExereciseEditor({super.key});

  final _nameControler = TextEditingController();
  final _durationControler = TextEditingController();
  final _setControler = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      color: AppColor.instance.surface,
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWithCloseButton(title: 'Exercise Editor'),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              TextFiledExerciseTile(
                controller: _nameControler,
                enabled: true,
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              _buildDropdown(),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              Row(
                children: [
                  Flexible(
                    child: TextFiledExerciseTile(
                      controller: _durationControler,
                      enabled: true,
                      readOnly: true,
                      onTap: () => _showCupertinoTimerPicker(
                          context,
                          _durationControler,
                          TimePickerType.minuteSecond,
                          'Duration',
                          'Duration'),
                    ),
                  ),
                  const SpacerSizedBox(
                      spacerType: SpacerType.horizontal,
                      spacerSize: SpacerSize.medium),
                  Flexible(
                    child: TextFiledExerciseTile(
                      controller: _setControler,
                      enabled: true,
                      readOnly: true,
                      onTap: () => _showCupertinoTimerPicker(context,
                          _setControler, TimePickerType.interval, 'Set', 'Set'),
                    ),
                  ),
                ],
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              HeaderWithActionButton(
                  title: 'Rep',
                  onTap: () {
                    // ref.read(providerReps.notifier).addRepRow();
                    ref
                        .read(repTextControllerPairProvider.notifier)
                        .addControllerPair();
                  }),
              _repList(ref),
              ElevatedButton(
                onPressed: () {
                  final rep = ref.read(repTextControllerPairProvider.notifier);
                  final a = rep.controllerPairValues;
                  print('SAVE');
                  print(_nameControler.text);
                  print(_durationControler.text);
                  print(_setControler.text);
                  print(a);
                },
                child: const Text('SAVE'),
              ),
              // _buildTextField('Reps'),
              // const SpacerSizedBox(
              //     spacerType: SpacerType.vertical,
              //     spacerSize: SpacerSize.medium),
              // _buildTextField('Rest'),
              // const SpacerSizedBox(
              //     spacerType: SpacerType.vertical,
              //     spacerSize: SpacerSize.medium),
              // _buildTextField('Note'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDropdown() {
    return MultiSelectDropdown();
  }

  Widget _buildIosTimePicker(TextEditingController controller,
      TimePickerType timePickerType, String label, String hint) {
    return IOSMinuteSecondPickerField(
        controller: controller,
        timePickerType: timePickerType,
        label: label,
        hint: hint);
  }

  Future<void> _showCupertinoTimerPicker(
      BuildContext context,
      TextEditingController controller,
      TimePickerType timePickerType,
      String label,
      String hint) async {
    await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
            height: 250,
            child:
                _buildIosTimePicker(controller, timePickerType, label, hint));
      },
    );
  }

  Widget _repList(WidgetRef ref) {
    // final List<Widget> repProvider = ref.watch(providerReps);
    final List<List<TextEditingController>> exercisePairProvider =
        ref.watch(repTextControllerPairProvider);
    return Wrap(
      // children: repProvider,
      children: [
        for (var pair in exercisePairProvider)
          Row(
            children: [
              Flexible(
                child: TextFiledExerciseTile(
                  controller: pair[0],
                  enabled: true,
                ),
              ),
              const SpacerSizedBox(
                spacerType: SpacerType.horizontal,
                spacerSize: SpacerSize.medium,
              ),
              Flexible(
                child: TextFiledExerciseTile(
                  controller: pair[1],
                  enabled: true,
                ),
              ),
            ],
          ),
      ],
    );
  }
}

final repTextControllerPairProvider = StateNotifierProvider<
    RepTextControllerPairProvider, List<List<TextEditingController>>>((ref) {
  return RepTextControllerPairProvider();
});

class RepTextControllerPairProvider
    extends StateNotifier<List<List<TextEditingController>>> {
  RepTextControllerPairProvider() : super([]);

  // Aggiunge una coppia di controller per ogni nuova coppia di TextField
  void addControllerPair() {
    state = [
      ...state,
      [TextEditingController(), TextEditingController()]
    ];
  }

  // Rimuove una coppia di controller
  void removeControllerPair(int index) {
    state[index]
        .forEach((controller) => controller.dispose()); // Rilascia risorse
    state = [
      ...state.sublist(0, index),
      ...state.sublist(index + 1),
    ];
  }

  // Restituisce i valori dei controller in forma di coppie
  List<List<String>> get controllerPairValues {
    return state
        .map((pair) => pair.map((controller) => controller.text).toList())
        .toList();
  }
}
