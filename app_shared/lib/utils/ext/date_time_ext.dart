import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String toddMMMyyyyString() {
    return DateFormat('dd - MMM - yyyy').format(this);
  }

  String toMMssString() {
    return DateFormat('mm : ss').format(this);
  }
}

enum DatePartOfDay { morning, afternoon, evening, night, error }

extension PartOfDay on DateTime {
  DatePartOfDay get partOfDay {
    final hour = this.hour;
    switch (hour) {
      case < 12 && >= 5:
        return DatePartOfDay.morning;
      case < 17 && >= 12:
        return DatePartOfDay.afternoon;
      case >= 17 && < 22:
        return DatePartOfDay.evening;
      case >= 22 || < 5:
        return DatePartOfDay.night;
      default:
        return DatePartOfDay.error;
    }
  }
}
