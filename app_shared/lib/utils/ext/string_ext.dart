import 'package:intl/intl.dart';

extension StringExt on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

extension StringToDateTime on String {
  DateTime? toDateTimeFromddMMMyyyy() {
    try {
      return DateFormat('dd - MMM - yyyy').parse(this);
    } catch (e) {
      return null; 
    }
  }
}
