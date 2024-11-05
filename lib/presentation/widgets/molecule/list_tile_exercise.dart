import 'package:clocktrain/domain/providers/edit_provider.dart';
import 'package:clocktrain/domain/providers/mini_player_provider.dart';
import 'package:clocktrain/presentation/themes/app_asset.dart';
import 'package:clocktrain/presentation/widgets/atoms/media_screen.dart';
import 'package:clocktrain/presentation/widgets/atoms/text_filed_exercise_tile.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';

class ListTileExercise extends ConsumerStatefulWidget {
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
  _ListTileExerciseState createState() => _ListTileExerciseState();
}

class _ListTileExerciseState extends ConsumerState<ListTileExercise> {
  late final TextEditingController repController;
  late final TextEditingController setController;
  final colors = AppColor.instance;
  final typography = AppTypography.instance;

  @override
  void initState() {
    super.initState();
    repController = TextEditingController(text: widget.rep.toString());
    setController = TextEditingController(text: widget.set.toString());
  }

  @override
  void dispose() {
    repController.dispose();
    setController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final openExerciseId = ref.watch(openExerciseProvider);
    final bool edit = ref.watch(editProvider);

    void toggleVideo() {
      if (openExerciseId == widget.key) {
        FocusScope.of(context).unfocus();
        ref.read(openExerciseProvider.notifier).state = null;
      } else {
        ref.read(openExerciseProvider.notifier).state = widget.key;
      }
    }

    return Container(
      width: context.mq.size.width,
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: 
            Row(
              children: [
                Expanded(flex:8, child:Column(),),

                Expanded(
                  flex: 6,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      widget.exerciseName,
                      style: typography.paragraph,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      TextFiledExerciseTile(
                        controller: repController,
                        enabled: edit,
                      ),
                      Text("REP", style: typography.caption),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      TextFiledExerciseTile(
                        controller: setController,
                        enabled: edit,
                      ),
                      Text("SET", style: typography.caption),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: IconButton(
                    icon: AppAsset.arrowNext,
                    onPressed: toggleVideo,
                  ),
                ),
              ],
            ),
          //   if (openExerciseId == widget.key)
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         MiniYoutubePlayer(
          //           videoUrl: widget.videoUrl,
          //         ),
          //       ],
          //     ),
          // ],
      ),
    );
  }
}
