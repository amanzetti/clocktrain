import 'package:clocktrain/domain/providers/mini_player_provider.dart';
import 'package:clocktrain/presentation/widgets/atoms/media_screen.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListTileExercise extends ConsumerWidget {
  const ListTileExercise({
    required this.videoUrl,
    required this.exerciseName,
    required this.rep,
    required this.set,
    super.key,
  });

  final String exerciseName;
  final int rep;
  final int set;
  final String videoUrl;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final openExerciseId = ref.watch(openExerciseProvider);
    void toggleVideo() {
      if (openExerciseId == key) {
        ref.read(openExerciseProvider.notifier).state = null;
      } else {
        ref.read(openExerciseProvider.notifier).state = key;
      }
    }

    return Container(
      width: context.mq.size.width,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                flex: 6,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 16),
                          child: Text(
                            exerciseName,
                            style: const TextStyle(fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          rep.toString(),
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text("REP", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          set.toString(),
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const Text("SET", style: TextStyle(fontSize: 10)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_forward_ios),
                        onPressed: toggleVideo,
                      ),
                    ],
                  ))
            ],
          ),
          if (openExerciseId == key)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MiniYoutubePlayer(
                  videoUrl: videoUrl,
                ),
              ],
            ),
        ],
      ),
    );
  }
}
