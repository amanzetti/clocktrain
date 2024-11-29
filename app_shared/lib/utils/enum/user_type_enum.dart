enum UserTypeEnum {
  ADMIN,
  ATHLETE,
  COACH,
}

extension UserTypeEnumExtension on UserTypeEnum {
  String toShortString() {
    return toString().split('.').last.toUpperCase();
  }
}