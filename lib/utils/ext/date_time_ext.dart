import 'package:intl/intl.dart';

extension DateTimeFormatting on DateTime {
  String toddMMMyyyyString() {
    return DateFormat('dd - MMM - yyyy').format(this);
  }
}
