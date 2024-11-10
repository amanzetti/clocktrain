import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/presentation/widgets/atoms/elevated_rounded_button.dart';
import 'package:clocktrain/presentation/widgets/atoms/spacer_sized_box.dart';
import 'package:clocktrain/presentation/widgets/molecules/app_time_picker.dart';
import 'package:clocktrain/presentation/widgets/molecules/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExereciseEditor extends StatelessWidget {
  ExereciseEditor({super.key});

  final _durationControler = TextEditingController();
  final _setControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.instance.surface,
      child: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildNavBar(context, 'Exercise Editor'),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              _buildTextField('Name Exercise'),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              _buildDropdown(),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              Row(
                children: [
                  _buildTextFieldFunction(context, _durationControler,
                      TimePickerType.minuteSecond, 'Duration', 'Duration'),
                  const SpacerSizedBox(
                      spacerType: SpacerType.horizontal,
                      spacerSize: SpacerSize.medium),
                  _buildTextFieldFunction(context, _setControler,
                      TimePickerType.interval, 'Set', 'Set'),
                ],
              ),
              const SpacerSizedBox(
                  spacerType: SpacerType.vertical,
                  spacerSize: SpacerSize.medium),
              _buildNavBarAdd(context, 'Rep'),
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

  Widget _buildNavBar(BuildContext context, String title) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTypography().titleS),
        IconButton(
            onPressed: () {
              context.pop();
            },
            icon: AppAsset.close)
      ],
    ));
  }

  Widget _buildNavBarAdd(BuildContext context, String title) {
    return Container(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: AppTypography().titleS),
        ElevatedNotchRoundedButton(
            // onTap: () {
            //   context.push(AppPath.sheetListPage + AppPath.workoutEditorPage);
            // },
            // onTap: () {
            //   showDialog(
            //       useSafeArea: false,
            //       context: context,
            //       builder: (context) => ExereciseEditor());
            // },
            )
      ],
    ));
  }

  Widget _buildTextField(String label) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        labelText: label,
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

  Widget _buildTextFieldFunction(
      BuildContext context,
      TextEditingController controller,
      TimePickerType timePickerType,
      String label,
      String hint) {
    return Flexible(
      child: TextField(
        controller: controller,
        readOnly: true,
        onTap: () => _showCupertinoTimerPicker(
            context, controller, timePickerType, label, hint),
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
        ),
      ),
    );
  }
}
