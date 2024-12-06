import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:app_shared/widgets/molecules/picker/app_wheel_picker.dart';
import 'package:flutter/material.dart';

class WeightPicker extends StatefulWidget {
  const WeightPicker(
      {super.key,
      this.title,
      this.primaryTextButton,
      this.secondaryTextButton,
      this.onDone,
      this.onCancel,
      this.initialWeight});

  final String? title;
  final String? primaryTextButton;
  final String? secondaryTextButton;
  final Function(double)? onDone;
  final Function()? onCancel;
  final double? initialWeight;

  @override
  _WeightPickerState createState() => _WeightPickerState();
}

class _WeightPickerState extends State<WeightPicker> {
  late final double initialWeight;
  int selectedKg = 0; // Valore iniziale per i chilogrammi
  int selectedG = 0; // Valore iniziale per i grammi

  @override
  void initState() {
    initialWeight = widget.initialWeight ?? 0.0;
    int integerPart = initialWeight.toInt();
    int decimalPart = ((initialWeight - integerPart) * 10).round();
    selectedKg = integerPart;
    selectedG = decimalPart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                widget.title ?? 'Select value',
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
          const VerticalLargeSpacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Picker per i chilogrammi
                Expanded(
                  flex: 3,
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedKg = index;
                      });
                    },
                    selectedValue: selectedKg,
                    minValue: 0,
                    maxValue: 500,
                    step: 1,
                    showActionButtons: true,
                  ),
                ),

                Expanded(
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedG = index;
                      });
                    },
                    selectedValue: selectedG,
                    minValue: 0,
                    maxValue: 9,
                    step: 5,
                  ),
                ),
              ],
            ),
          ),
          const VerticalLargeSpacer(),
          Row(
            children: [
              Expanded(
                child: AppButton(
                  style: AppButtonStyle.outlined,
                  text: widget.secondaryTextButton ?? 'cancel',
                  onPressed: () {
                    widget.onCancel?.call();
                    Navigator.of(context).pop();
                  },
                ),
              ),
              const HorizontalSmallSpacer(),
              Expanded(
                child: AppButton(
                  style: AppButtonStyle.elevated,
                  text: widget.primaryTextButton ?? 'done',
                  onPressed: () {
                    widget.onDone?.call(double.parse('$selectedKg.$selectedG'));
                    final value = double.parse('$selectedKg.$selectedG');
                    Navigator.of(context).pop(value);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
