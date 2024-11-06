import 'package:clocktrain/data/api/api.dart';
import 'package:clocktrain/data/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserApi {
  static final UserApi _instance = UserApi._internal();

  factory UserApi() {
    return _instance;
  }

  UserApi._internal();

  final Api _api = Api();

  // Crea un nuovo utente nel Firestore
  Future<void> createUser(String userId, User user) async {
    try {
      print("Creating user...");
      await _api.firestore.collection('users').doc(userId).set(user.toMap());
      print('User created successfully!');
    } catch (e) {
      print('Error creating user: $e');
    }
  }

  // Ottieni un utente da Firestore per ID
  Future<User?> getUserById(String userId) async {
    try {
      DocumentSnapshot userSnapshot =
          await _api.firestore.collection('users').doc(userId).get();

      if (userSnapshot.exists) {
        final data = userSnapshot.data();

        // Verifica che i dati siano una mappa di tipo Map<String, dynamic>
        if (data is Map<String, dynamic>) {
          return User.fromMap(data);
        } else {
          print('Invalid data format: Expected Map<String, dynamic>');
          return null;
        }
      } else {
        print('User not found');
        return null;
      }
    } catch (e) {
      print('Error fetching user: $e');
      return null;
    }
  }

  ///MOCK
  void createMockUser() {
    User mockUser = User(
      id: 'user123',
      name: 'John',
      surname: 'Doe',
      username: 'johndoe',
      email: 'johndoe@example.com',
      userRole: UserRole.athlete,
      height: 180,
      weight: 75.5,
      birthDate: DateTime(1990, 5, 10),
      goal: 'Build muscle',
      profileImageUrl: null,
      workouts: [],
      darkModeEnabled: true,
      createdAt: DateTime.now(),
    );

    // Creazione dell'utente con UserApi
    UserApi().createUser(mockUser.id, mockUser);
  }
}
