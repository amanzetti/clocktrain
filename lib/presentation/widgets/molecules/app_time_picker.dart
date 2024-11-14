import 'package:flutter/cupertino.dart';

enum TimePickerType {
  minuteSecond,
  interval,
}

class IOSMinuteSecondPickerField extends StatefulWidget {
  const IOSMinuteSecondPickerField(
      {super.key,
      required this.controller,
      required this.timePickerType,
      required this.label,
      required this.hint});

  final TextEditingController controller;
  final TimePickerType timePickerType;
  final String label;
  final String hint;

  @override
  _IOSMinuteSecondPickerFieldState createState() =>
      _IOSMinuteSecondPickerFieldState();
}

class _IOSMinuteSecondPickerFieldState
    extends State<IOSMinuteSecondPickerField> {
  Duration selectedDuration = const Duration(minutes: 0, seconds: 0);
  int selectedValue = 0;

  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller;
  }

  _onTimerDurationChanged(Duration newDuration) {
    switch (widget.timePickerType) {
      case TimePickerType.minuteSecond:
        return _setStateMinuteSecond(newDuration);
      case TimePickerType.interval:
        return _setStateInterval(newDuration);
      default:
    }
  }

  void _onValueChanged(int index) {
    setState(() {
      selectedValue = index;
      _controller.text = selectedValue.toString().padLeft(2, '0');
    });
  }

  _getCupertinoPiker() {
    switch (widget.timePickerType) {
      case TimePickerType.minuteSecond:
        return CupertinoTimerPicker(
            mode: CupertinoTimerPickerMode.ms,
            initialTimerDuration: selectedDuration,
            onTimerDurationChanged: _onTimerDurationChanged);
      case TimePickerType.interval:
        return CupertinoPicker(
          itemExtent: 32.0,
          onSelectedItemChanged: _onValueChanged,
          children: List<Widget>.generate(
            60, // Limite massimo (per esempio 60 per minuti/secondi)
            (index) => Center(
              child: Text(
                index.toString().padLeft(2, '0'),
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        );
    }
  }

  _setStateMinuteSecond(Duration duration) {
    setState(() {
      selectedDuration = duration;
      _controller.text =
          '${selectedDuration.inMinutes.toString().padLeft(2, '0')}:${(selectedDuration.inSeconds % 60).toString().padLeft(2, '0')}';
    });
  }

  _setStateInterval(Duration duration) {
    setState(() {
      selectedDuration = duration;
      _controller.text =
          '${selectedDuration.inMinutes.toString().padLeft(2, '0')}}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return _getCupertinoPiker();
  }
}
