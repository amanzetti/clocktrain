import 'package:app_shared/app_shared.dart';
import 'package:app_shared/utils/const/app_dimensions.dart';
import 'package:app_shared/utils/ext/date_time_ext.dart';
import 'package:app_shared/widgets/atoms/buttons/app_favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class WorkoutStep {
  WorkoutStep({
    required this.exerciseName,
    required this.videoUrl,
    required this.durationSeconds,
  });
  final String exerciseName;
  final String videoUrl;
  final int durationSeconds;
}

class AppVerticalStepper extends StatefulWidget {
  const AppVerticalStepper({required this.steps, super.key});
  final List<WorkoutStep> steps;

  @override
  State<AppVerticalStepper> createState() => _AppVerticalStepperState();
}

class _AppVerticalStepperState extends State<AppVerticalStepper> {
  int _currentStep = 0;
  late VideoPlayerController _videoController;
  late int _remainingSeconds;

  @override
  void initState() {
    super.initState();
    _loadCurrentStep();
  }

  void _loadCurrentStep() {
    final currentStep = widget.steps[_currentStep];
    final url = Uri.parse(currentStep.videoUrl);
    _videoController = VideoPlayerController.networkUrl(url)
      ..initialize().then((_) => setState(() {}));
    _remainingSeconds = currentStep.durationSeconds;
    _startTimer();
  }

  void _startTimer() {
    Future.delayed(const Duration(seconds: 1), () {
      if (_remainingSeconds > 0 && mounted) {
        setState(() {
          _remainingSeconds--;
        });
        _startTimer();
      } else if (_currentStep < widget.steps.length - 1) {
        _goToNextStep();
      }
    });
  }

  void _goToNextStep() {
    _videoController.dispose();
    setState(() {
      _currentStep++;
    });
    _loadCurrentStep();
  }

  @override
  void dispose() {
    _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final list = List.generate(
        30,
        (int i) => ExerciseDataState(
            name: 'Name Exercise $i',
            duration: Duration(minutes: i),
            muscleGroup: ['Addome', 'Tricipide', 'Dorsale'],
            difficulty: 4));

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        // final step = widget.steps[index];
        // final isActive = index == _currentStep;

        return _buildExercise(e: list[index]);

        // return AnimatedContainer(
        //   duration: const Duration(milliseconds: 300),
        //   margin: const EdgeInsets.symmetric(vertical: 8.0),
        //   padding: const EdgeInsets.all(16.0),
        //   decoration: BoxDecoration(
        //     color: isActive ? Colors.blue.shade100 : Colors.grey.shade200,
        //     borderRadius: BorderRadius.circular(10.0),
        //   ),
        //   height: isActive ? 400 : 150,
        //   child: isActive
        //       ? Column(
        //           mainAxisSize: MainAxisSize.min,
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           children: [
        //             Text(
        //               step.exerciseName,
        //               style: const TextStyle(
        //                 fontSize: 20,
        //                 fontWeight: FontWeight.bold,
        //               ),
        //             ),
        //             const SizedBox(height: 10),
        //             if (_videoController.value.isInitialized)
        //               AspectRatio(
        //                 aspectRatio: _videoController.value.aspectRatio,
        //                 child: VideoPlayer(_videoController),
        //               ),
        //             const SizedBox(height: 10),
        //             Text(
        //               'Tempo rimanente: $_remainingSeconds secondi',
        //               style: const TextStyle(fontSize: 16),
        //             ),
        //           ],
        //         )
        //       : Center(
        //           child: Text(
        //             step.exerciseName,
        //             style: const TextStyle(fontSize: 16),
        //           ),
        //         ),
        // );
      },
    );
  }

  Widget _buildExercise({required ExerciseDataState e}) {
    return AppCard(
        height: 150,
        margin: AppDimesnionsEdgeInsetsExt.dim4Vertical,
        color: context.colorScheme.surfaceContainerHighest,
        padding: AppDimesnionsEdgeInsetsExt.mediumAll,
        child: Row(
          children: [
            Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(e.name.toUpperCase(),
                      style: context.textTheme.headlineLarge!
                          .copyWith(color: context.colorScheme.onSurface)),
                  const VerticalSmallSpacer(),
                  Row(
                    children: [
                      Text('${e.duration.inSeconds} sec',
                          style: context.textTheme.titleMedium!
                              .copyWith(color: context.colorScheme.onSurface)),
                    ],
                  ),
                  const VerticalSmallSpacer(),
                ]),
            const Spacer(),

            // SizedBox(
            //   height: 150,
            //   child: Stack(
            //     alignment: Alignment.center,
            //     children: [
            //       Align(
            //           alignment: Alignment.bottomCenter,
            //           child: AppFavoriteButton(
            //               // callBack: callback,
            //               // isFavorite: isFavorite,
            //               )),
            //     ],
            //   ),
            // )
          ],
        ));
  }

  Widget _buildTags(BuildContext context, {required List<String> tags}) {
    return Wrap(
      spacing: AppDimensions.small,
      runSpacing: AppDimensions.small,
      children: tags.map((e) => AppTag(label: e.toUpperCase())).toList(),
    );
  }
}

class ExerciseDataState {
  ExerciseDataState({
    required this.name,
    required this.duration,
    required this.muscleGroup,
    required this.difficulty,
  });
  final String name;
  final Duration duration;
  final List<String> muscleGroup;
  final int difficulty;
}
