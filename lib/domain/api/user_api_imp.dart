import 'package:clocktrain/data/api/user_api.dart';
import 'package:clocktrain/domain/api/interface/user_api_interface.dart';
import 'package:clocktrain/data/models/user_model.dart';

class UserApiImp implements UserApiInterface {
  // final Random _random = Random();

  @override
  Future<User?> getUserById(String userId) async {
    print('c');
    var a = await UserApi().getUserById(userId);
    print(a.toString());
    return a;

    //   // Genera fino a 4 workout casuali
    //   List<Workout> workouts = List.generate(
    //     _random.nextInt(4) + 1, // Genera tra 1 e 4 workout
    //     (index) => _generateRandomWorkout(index + 1),
    //   );

    //   return User(
    //     id: id,
    //     name: 'John Doe',
    //     email: 'johndoe@example.com',
    //     createdAt: DateTime.now(),
    //     workouts: workouts,
    //     userRole: UserRole.athlete,
    //     surname: '',
    //     username: '',
    //     height: 176,
    //     weight: 89,
    //     birthDate: DateTime(2000, 6, 1),
    //     goal: 'Vincere la maratona',
    //   );
    // }

    // // Metodo per generare un Workout casuale
    // Workout _generateRandomWorkout(int workoutNumber) {
    //   return Workout(
    //     id: workoutNumber.toString(),
    //     name: 'Workout $workoutNumber',
    //     mediaUrl: '',
    //     description: 'Description of workout $workoutNumber',
    //     createdAt: DateTime.now(),
    //     exercises: List.generate(
    //       _random.nextInt(3) + 1, // Genera tra 1 e 3 esercizi
    //       (index) => _generateRandomExercise(index + 1),
    //     ),
    //   );
    // }

    // // Metodo per generare un Exercise casuale
    // Exercise _generateRandomExercise(int exerciseNumber) {
    //   return Exercise(
    //     id: exerciseNumber.toString(),
    //     name: 'Exercise $exerciseNumber',
    //     description: 'Description of exercise $exerciseNumber',
    //     duration: Duration(
    //         minutes: _random.nextInt(15) + 5), // Durata tra 5 e 20 minuti
    //     targetMuscle: 'Muscle ${_random.nextInt(5) + 1}', // Muscoli casuali
    //     videoUrl: 'https://www.youtube.com/watch?v=example_$exerciseNumber',
    //     mediaUrl: 'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
    //     sets: List.generate(
    //       _random.nextInt(4) + 1, // Genera tra 1 e 4 set
    //       (index) => _generateRandomSet(index + 1),
    //     ),
    //   );
    // }

    // // Metodo per generare un Set casuale
    // Set _generateRandomSet(int setNumber) {
    //   return Set(
    //     setNumber: setNumber,
    //     reps: List.generate(
    //       _random.nextInt(3) + 1, // Genera tra 1 e 3 ripetizioni
    //       (index) => Rep(
    //         repNumber: index + 1,
    //         restTime: Duration(
    //             seconds: _random.nextInt(30) + 30), // Riposo tra 30 e 60 secondi
    //         weight: _random.nextInt(20) + 5, // Peso tra 5 e 25 kg
    //       ),
    //     ),
    //   );
  }
}

