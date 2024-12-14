import 'package:app_feature_workout/presentation/pages/workouts/workouts_state.dart';
import 'package:app_feature_workout/presentation/pages/workouts/workouts_vm.dart';
import 'package:app_shared/app_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutsView extends ConsumerWidget {
  const WorkoutsView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final vm = ref.watch(_workoutsVmProvider.notifier);

    final list = List.generate(
        30,
        (int i) => WorkoutDataState(
            name: 'Name Workout $i',
            duration: DateTime.now(),
            tags: ['Cardio', 'Forza', 'Tag'],
            difficulty: 4,
            numExercise: 10));

    return Column(
      children: [
        ///App bar
        _buildAppBar(context),
        _buildSubAppBar(context),
        _buildListWorkouts(context, list: list, goToDetails: vm.goToDetail),
      ],
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return const AppHeader();
  }

  Widget _buildSubAppBar(BuildContext context) {
    return AppHeader(
      type: AppBarType.secondary,
      title: 'Workouts',
      rightButton: [
        AppHeaderButtonState(
          text: "+ ${context.loc.addShort}",
        ),
      ],
    );
  }

  Widget _buildListWorkouts(BuildContext context,
      {required List<WorkoutDataState> list,
      required void Function(BuildContext) goToDetails}) {
    return Expanded(
        child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: AppDimesnionsEdgeInsetsExt.dim4Vertical,
                child: AppListCard(list: list[index], navigation: goToDetails),
              );
            }));
  }
}

final _workoutsVmProvider =
    NotifierProvider.autoDispose<WorkoutsVm, WorkoutsState>(() => WorkoutsVm());
