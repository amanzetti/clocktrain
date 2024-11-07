import 'package:clocktrain/data/models/workout_model.dart';
import 'package:clocktrain/domain/providers/user_proivider.dart';
import 'package:clocktrain/domain/providers/workout_provider.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/widgets/molecule/list_tile_app.dart';
import 'package:clocktrain/utils/enum/standard_rateo_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutListPage extends ConsumerWidget {
  const WorkoutListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Otteniamo lo stato dell'utente
    final workoutState = ref.watch(workoutProvider);

    // Verifica se la lista è vuota e, se sì, richiama getUserById
    if (workoutState.isEmpty) {
      ref.read(workoutProvider.notifier).getAllWorkouts();
    }

    // Mostra l'indicatore di caricamento finché non ci sono dati
    if (workoutState.isEmpty) {
      return Scaffold(
        body: Center(child: ElevatedButton(
          onPressed: () {
            ref.read(workoutProvider.notifier).getAllWorkouts();
          },
          child: Text('Create Workout'),
        )),
      );
    }

    final workouts = workoutState;

    return Container(
      color: AppColor.instance.surface,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Expanded(
            child: ReorderableListView(
              onReorder: (oldIndex, newIndex) {
                // ref
                //     .read(listProvider.notifier)
                //     .reorderList(oldIndex, newIndex);
              },
              children: [
                for (int index = 0; index < workouts.length; index++)
                  ListTileApp<Workout>(
                      listTileAppType: ListTileAppType.workout,
                      object: workouts[index],
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      rateo: StandardRateo.ratio_4_5,
                      widthImage: 100,
                      mediaUrl: '',
                      key: ValueKey(
                        workouts[index],
                      ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
