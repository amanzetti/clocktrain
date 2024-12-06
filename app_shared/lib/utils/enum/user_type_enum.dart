enum UserTypeEnum {
  // ignore: constant_identifier_names
  ADMIN,
  // ignore: constant_identifier_names
  ATHLETE,
  // ignore: constant_identifier_names
  COACH,
}

extension UserTypeEnumExtension on UserTypeEnum {
  String toShortString() {
    return toString().split('.').last.toUpperCase();
  }
}