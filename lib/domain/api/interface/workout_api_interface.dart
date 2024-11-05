import 'package:clocktrain/domain/models/workout_model.dart';

abstract class WorkoutApiInterface {
  Future<Workout> getWorkoutById(String id);
}