import 'package:clocktrain/data/models/exercise_model.dart';
import 'package:clocktrain/data/models/rep_model.dart';
import 'package:clocktrain/data/models/set_model.dart' as model;
import 'package:clocktrain/domain/providers/ui/pages/sheet/workout_editor/workout_editor_provider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/atoms/app_text_field.dart';
import 'package:clocktrain/presentation/widgets/molecules/app_time_picker.dart';
import 'package:clocktrain/presentation/widgets/molecules/dropdown.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_close_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
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
      color: context.colorScheme.surface,
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HeaderWithCloseButton(title: 'Exercise Editor'),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              AppTextFiled(
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
                    child: AppTextFiled(
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
                    child: AppTextFiled(
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
              _repList(context, ref),
              ElevatedButton(
                onPressed: () {
                  final set = model.Set(
                    setNumber: 1,
                    reps: _getReps(ref) ?? [],
                  );

                  final exercise = Exercise(
                    name: _nameControler.text,
                    targetMuscle: 'targetMuscle',
                    videoUrl: '',
                    duration:
                        Duration(seconds: int.parse(_durationControler.text)),
                    sets: [set],
                  );
                  // final rep = ref.read(repTextControllerPairProvider.notifier);
                  // final a = rep.controllerPairValues;
                  // print('SAVE');
                  // print(_nameControler.text);
                  // print(_durationControler.text);
                  // print(_setControler.text);
                  // print(a);
                  print(exercise);
                },
                child: const Text('SAVE'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Rep>? _getReps(WidgetRef ref) {
    final rep = ref.read(repTextControllerPairProvider.notifier);
    final value = rep.controllerPairValues;
    List<Rep> reps = [];

    for (var v in value) {
      final repNumber = int.parse(v[0]);
      final restTime = Duration(seconds: int.parse(v[1]));
      final weight = int.parse(v[2]);
      final rep = Rep(repNumber: repNumber, restTime: restTime, weight: weight);
      reps.add(rep);
    }
    return reps;
  }

  Widget _buildDropdown() {
    return const MultiSelectDropdown();
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

  Widget _repList(BuildContext context, WidgetRef ref) {
    final List<TextControllerPair> exercisePairProvider =
        ref.watch(repTextControllerPairProvider);
    return Wrap(
      children: [
        for (var pair in exercisePairProvider)
          Row(
            key: pair.key,
            children: [
              Flexible(
                child: AppTextFiled(
                  controller: pair.controllers[0],
                  enabled: true,
                ),
              ),
              const SpacerSizedBox(
                spacerType: SpacerType.horizontal,
                spacerSize: SpacerSize.medium,
              ),
              Flexible(
                child: AppTextFiled(
                  controller: pair.controllers[1],
                  enabled: true,
                ),
              ),
              const SpacerSizedBox(
                spacerType: SpacerType.horizontal,
                spacerSize: SpacerSize.medium,
              ),
              Flexible(
                child: AppTextFiled(
                  controller: pair.controllers[2],
                  enabled: true,
                ),
              ),
              const SpacerSizedBox(
                spacerType: SpacerType.horizontal,
                spacerSize: SpacerSize.medium,
              ),
              IconButton(
                  onPressed: () {
                    ref
                        .read(repTextControllerPairProvider.notifier)
                        .removeControllerPair(pair.key);
                  },
                  icon: AppAsset().cancelSvg(context))
            ],
          ),
      ],
    );
  }
}
