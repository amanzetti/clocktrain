enum UserTypeEnum {
  ADMIN,
  ATHLETE,
  COACH,
}

extension UserTypeEnumExtension on UserTypeEnum {
  String toShortString() {
    return this.toString().split('.').last.toUpperCase();
  }
}