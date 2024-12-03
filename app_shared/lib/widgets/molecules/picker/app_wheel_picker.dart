import 'package:app_shared/utils/ext/build_context_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_button.dart';
import 'package:app_shared/widgets/atoms/utils_ui/spacer_sized_box.dart';
import 'package:flutter/material.dart';

class AppWheelPicker extends StatefulWidget {
  const AppWheelPicker(
      {required this.onSelectedItemChanged,
      required this.selectedValue,
      required this.minValue,
      required this.maxValue,
      required this.step,
      this.showActionButtons = false,
      super.key});

  final void Function(int) onSelectedItemChanged;
  final int selectedValue;
  final int minValue;
  final int maxValue;
  final int step;
  final bool showActionButtons;

  @override
  State<AppWheelPicker> createState() => _AppWheelPickerState();
}

class _AppWheelPickerState extends State<AppWheelPicker> {
  late final void Function(int) _onSelectedItemChanged;
  late int _selectedValue;
  late final int _minValue;
  late final int _maxValue;
  late final int _step;
  late final int _itemCount;
  late FixedExtentScrollController _controller;

  @override
  void initState() {
    _onSelectedItemChanged = widget.onSelectedItemChanged;
    _selectedValue = widget.selectedValue;
    _minValue = widget.minValue;
    _maxValue = widget.maxValue;
    _step = widget.step;
    _itemCount = ((_maxValue - _minValue) / _step).ceil() + 1;
    _controller = FixedExtentScrollController(
      initialItem: ((_selectedValue - _minValue) / _step).round(),
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateSelectedValue(int delta) {
    final newIndex = ((_selectedValue - _minValue) / _step).round() + delta;
    if (newIndex >= 0 && newIndex < _itemCount) {
      final newValue = _minValue + (newIndex * _step);
      _controller.jumpToItem(newIndex); // Aggiorna il rullo
      setState(() {
        _selectedValue = newValue;
      });
      _onSelectedItemChanged.call(newValue);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...?_showActionButton(),
        Flexible(
          child: _buildPicker(),
        ),
      ],
    );
  }

  List<Widget>? _showActionButton() {
    if (widget.showActionButtons) {
      return [_buildActionButton()];
    }
    return null;
  }

  Widget _buildActionButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppButton(
          style: AppButtonStyle.elevated,
          shape: AppShape.circular,
          onPressed: () => _updateSelectedValue(10 ~/ _step),
          text: '+10',
        ),
        const VerticalLargeSpacer(),
        AppButton(
          style: AppButtonStyle.elevated,
          shape: AppShape.circular,
          onPressed: () => _updateSelectedValue(-10 ~/ _step),
          text: '-10',
        ),
      ],
    );
  }

  Widget _buildPicker() {
    return ListWheelScrollView.useDelegate(
      controller: _controller,
      physics: const FixedExtentScrollPhysics(),
      itemExtent: 50,
      magnification: 1.2,
      diameterRatio: 1.2,
      onSelectedItemChanged: (index) {
        final value = _minValue + (index * _step);
        _onSelectedItemChanged.call(value);
        setState(() {
          _selectedValue = value;
        });
      },
      childDelegate: ListWheelChildBuilderDelegate(
        builder: (context, index) {
          if (index >= _itemCount || index < 0) return null;

          final value = _minValue + (index * _step);

          if (value < _minValue || value > _maxValue) {
            return null; // Limita il range.
          }
          final isSelected = value == _selectedValue;
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: isSelected
                  ? Border(
                      top: BorderSide(color: context.colorScheme.secondary),
                      bottom: BorderSide(color: context.colorScheme.secondary),
                    )
                  : null,
            ),
            child: Text(
              '$value',
              style: _getFont(context, isSelected),
            ),
          );
        },
      ),
    );
  }

  _getFont(BuildContext context, bool isSelected) {
    if (isSelected) {
      return context.textTheme.labelLarge!.copyWith(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: context.colorScheme.onSurface,
      );
    } else {
      return context.textTheme.labelLarge!.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: context.colorScheme.onSurface.withOpacity(0.3),
      );
    }
  }
}
