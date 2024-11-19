class User {
  final int id;
  final String name;
  final String email;
  final String password;
  final DateTime dateOfBirth;
  final double height;
  final double weight;
  final String? avatar;
  final int userTypeId;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.dateOfBirth,
    required this.height,
    required this.weight,
    this.avatar,
    required this.userTypeId,
  });
}
