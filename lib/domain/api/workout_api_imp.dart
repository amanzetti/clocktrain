import 'package:clocktrain/domain/api/interface/workout_api_interface.dart';
import 'package:clocktrain/domain/models/exercise_model.dart';
import 'package:clocktrain/domain/models/rep_model.dart';
import 'package:clocktrain/domain/models/set_model.dart';
import 'package:clocktrain/domain/models/workout_model.dart';

class WorkoutApiImp implements WorkoutApiInterface{
  @override
  Future<Workout> getWorkoutById(String id) async{
    // Call API
    return Workout(
      id: '1',
      name: 'Workout 1',
      description: 'Description of workout 1',
      createdAt: DateTime.now(),
      exercises: [
        Exercise(
          id: '1',
          name: 'Exercise 1',
          description: 'Description of exercise 1',
          duration: Duration(minutes: 10), 
          targetMuscle: '', 
          videoUrl: 'https://www.youtube.com/watch?v=xfyxEaUWo3M&pp=ygUFc3F1YXQ%3D',
          sets: [
            Set(
              setNumber: 1,
              reps: [
                Rep(
                  repNumber: 1, 
                  restTime: Duration(seconds: 30), 
                  weight: 10
                ),
              ]
            ),
          ], mediaUrl: '',
        ),
      ], mediaUrl: ''
    );
  }
}