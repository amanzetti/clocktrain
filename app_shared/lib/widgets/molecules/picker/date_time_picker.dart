import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:app_shared/widgets/molecules/picker/app_wheel_picker.dart';
import 'package:flutter/material.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker(
      {super.key,
      this.title,
      this.primaryTextButton,
      this.secondaryTextButton,
      this.onDone,
      this.onCancel,
      this.initialDateTime});

  final String? title;
  final String? primaryTextButton;
  final String? secondaryTextButton;
  final Function(DateTime)? onDone;
  final Function()? onCancel;
  final DateTime? initialDateTime;

  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  late final DateTime initialDateTime;
  int selectedDay = 0;
  int selectedMonth = 0;
  int selectedYear = 0;
  int maxDayValue = 31;

  @override
  void initState() {
    initialDateTime = widget.initialDateTime ?? DateTime.now();
    selectedDay = initialDateTime.day;
    selectedMonth = initialDateTime.month;
    selectedYear = initialDateTime.year;
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
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedDay = index;
                      });
                    },
                    selectedValue: selectedDay,
                    minValue: 1,
                    maxValue: maxDayValue,
                    step: 1,
                  ),
                ),

                Expanded(
                  flex: 3,
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setMaxDayValueFromMonth();
                      setState(() {
                        selectedMonth = index;
                      });
                    },
                    selectedValue: selectedMonth,
                    minValue: 1,
                    maxValue: 12,
                    step: 1,
                  ),
                ),
                Expanded(
                  child: AppWheelPicker(
                    onSelectedItemChanged: (index) {
                      setState(() {
                        selectedYear = index;
                      });
                    },
                    selectedValue: selectedYear,
                    minValue: DateTime.now().year - 100,
                    maxValue: DateTime.now().year,
                    step: 1,
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
                    widget.onDone?.call(
                        DateTime(selectedYear, selectedMonth, selectedDay));
                    final value =
                        DateTime(selectedYear, selectedMonth, selectedDay);
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

  int setMaxDayValueFromMonth() {
    switch (selectedMonth + 1) {
      case 1:
      case 3:
      case 5:
      case 7:
      case 8:
      case 10:
      case 12:
        setState(() {
          maxDayValue = 31;
        });
        return 31;
      case 4:
      case 6:
      case 9:
      case 11:
        setState(() {
          maxDayValue = 30;
        });
        return 30;
      case 2:
        setState(() {
          maxDayValue = selectedYear % 4 == 0 ? 29 : 28;
        });
        return selectedYear % 4 == 0 ? 29 : 28;
      default:
        return 31;
    }
  }
}
