import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:app_shared/widgets/molecules/picker/app_wheel_picker.dart';
import 'package:flutter/material.dart';

class HeightPicker extends StatefulWidget {
  const HeightPicker(
      {super.key,
      this.title,
      this.primaryTextButton,
      this.secondaryTextButton,
      this.onDone,
      this.onCancel,
      this.initialHeight});

  final String? title;
  final String? primaryTextButton;
  final String? secondaryTextButton;
  final Function(int)? onDone;
  final Function()? onCancel;
  final int? initialHeight;

  @override
  _WeightPickerState createState() => _WeightPickerState();
}

class _WeightPickerState extends State<HeightPicker> {
  late final int initialHeight;
  int selectedHeigth = 100;

  @override
  void initState() {
    initialHeight = widget.initialHeight ?? 100;
    selectedHeigth = initialHeight.toInt();
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
                Expanded(
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedHeigth = index;
                      });
                    },
                    selectedValue: selectedHeigth,
                    minValue: 100,
                    maxValue: 250,
                    step: 1,
                    showActionButtons: true,
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
                    widget.onDone?.call(selectedHeigth);
                    final value = selectedHeigth;
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
