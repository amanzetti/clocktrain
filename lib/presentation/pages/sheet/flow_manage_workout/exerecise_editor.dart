import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/atoms/text_filed_exercise_tile.dart';
import 'package:clocktrain/presentation/widgets/molecules/app_time_picker.dart';
import 'package:clocktrain/presentation/widgets/molecules/dropdown.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_action_button.dart';
import 'package:clocktrain/presentation/widgets/organisms/header_with_close_button.dart';
import 'package:flutter/material.dart';

class ExereciseEditor extends StatelessWidget {
  ExereciseEditor({super.key});

  final _nameControler = TextEditingController();
  final _durationControler = TextEditingController();
  final _setControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              HeaderWithActionButton(title: 'Rep'),
              _repList(),
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

  Widget _repList() {
    return Wrap(
      children: [
        Row(
          children: [
            Flexible(
              child: TextFiledExerciseTile(
                controller: _nameControler,
                enabled: true,
              ),
            ),
            const SpacerSizedBox(
                spacerType: SpacerType.horizontal,
                spacerSize: SpacerSize.medium),
            Flexible(
              child: TextFiledExerciseTile(
                controller: _nameControler,
                enabled: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
