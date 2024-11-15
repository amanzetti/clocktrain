import 'package:clocktrain/data/%20model-old/rep_model.dart';
import 'package:clocktrain/domain/providers/ui/pages/sheet/workout_editor/workout_editor_provider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/buttons/app_elevated_button.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/atoms/app_text_field.dart';
import 'package:clocktrain/presentation/widgets/molecules/app_time_picker.dart';
import 'package:clocktrain/presentation/widgets/molecules/dropdown.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_close_button.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExereciseEditorPage extends ConsumerWidget {
  ExereciseEditorPage({super.key});

  final _nameControler = TextEditingController();
  final _durationControler = TextEditingController();
  final _setControler = TextEditingController();
  final _muscelGroupControler = TextEditingController();

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
                labelText: 'Name Exercise',
                controller: _nameControler,
                enabled: true,
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              AppTextFiled(
                labelText: 'Muscle Group',
                controller: _muscelGroupControler,
                enabled: true,
                onTap: () =>
                    showMultiSelectDialog(context, _muscelGroupControler),
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              Row(
                children: [
                  Flexible(
                    child: AppTextFiled(
                      labelText: 'Duration',
                      controller: _durationControler,
                      enabled: true,
                      readOnly: true,
                      onTap: () => showCupertinoTimerPicker(
                        context,
                        _durationControler,
                        TimePickerType.minuteSecond,
                      ),
                    ),
                  ),
                  const SpacerSizedBox(
                      spacerType: SpacerType.horizontal,
                      spacerSize: SpacerSize.medium),
                  Flexible(
                    child: AppTextFiled(
                      labelText: 'Set',
                      controller: _setControler,
                      enabled: true,
                      readOnly: true,
                      onTap: () => showCupertinoTimerPicker(
                          context, _setControler, TimePickerType.interval),
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
              AppElevatedButton(
                onPressed: () {
                  print(_muscelGroupControler);
                  // final set = model.Set(
                  //   setNumber: 1,
                  //   reps: _getReps(ref) ?? [],
                  // );

                  // final exercise = Exercise(
                  //   name: _nameControler.text,
                  //   targetMuscle: 'targetMuscle',
                  //   videoUrl: '',
                  //   duration:
                  //       Duration(seconds: int.parse(_durationControler.text)),
                  //   sets: [set],
                  // );
                  // // final rep = ref.read(repTextControllerPairProvider.notifier);
                  // // final a = rep.controllerPairValues;
                  // // print('SAVE');
                  // // print(_nameControler.text);
                  // // print(_durationControler.text);
                  // // print(_setControler.text);
                  // // print(a);
                  // print(exercise);
                },
                text: 'SAVE',
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
                  labelText: 'Num',
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
                  labelText: 'Weight',
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
                  labelText: 'Rest Time',
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
