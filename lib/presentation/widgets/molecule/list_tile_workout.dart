import 'package:clocktrain/domain/providers/main_page_params_provider.dart';
import 'package:clocktrain/domain/providers/sheet_list_page_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:clocktrain/presentation/themes/app_color.dart';
import 'package:clocktrain/presentation/themes/app_typography.dart';
import 'package:clocktrain/utils/ext/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ListTileWorkout extends ConsumerWidget {
  const ListTileWorkout({
    super.key,
    required this.exercise,
    this.padding,
  });

  final Workout exercise;
  final EdgeInsetsGeometry? padding;

  static const heigth = 150.0;
  static const rateo = 4 / 5;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: SizedBox(
        height: heigth,
        width: context.mq.size.width,
        key: key,
        child: Row(
          children: [
            Expanded(
                flex: 7,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      exercise.exercise,
                      style: AppTypography().titleS,
                    ),
                    Text(
                      exercise.description,
                      style: AppTypography().caption,
                    ),
                    const Spacer(),
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColor().primaryButtonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                            side: BorderSide(
                                color: AppColor().primaryButtonColor),
                          ),
                        ),
                        onPressed: () {
                          ref
                              .read(mainPageParamsProvider.notifier)
                              .update((state) => MainPageParams(
                                    title: exercise.exercise,
                                  ));
                          context.go(
                              '/sheet_list_page${AppPath.sheetPageWithId(exercise.exercise)}');
                        },
                        child: const Text('Start Workout')),
                  ],
                )),
            const Expanded(flex: 1, child: SizedBox()),
            Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Container(
                        height: heigth,
                        width: heigth * rateo,
                        decoration: BoxDecoration(
                          color: AppColor().enabledTextField,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(child: Text('IMAGE')))
                  ],
                )),
          ],
        ),

        // ListTile(
        //   title: Text(exercise),
        //   leading: const Icon(Icons.drag_handle),
        //   trailing: IconButton(
        //     icon: const Icon(Icons.arrow_forward_ios),
        //     onPressed: () {
        //       ref
        //           .read(mainPageParamsProvider.notifier)
        //           .update((state) => MainPageParams(
        //                 title: exercise,
        //               ));
        //       context.go('/sheet_list_page${AppPath.sheetPageWithId(exercise)}');
        //       // ref
        //       //     .read(exerciseListProvider.notifier)
        //       //     .remove(exerciseList[index]);

        //       // ref
        //       //     .read(indexBottomNavbarProvider.notifier)
        //       //     .update((state) => value),
        //       // navigationShell.goBranch(value),
        //       // context.go(bottomNavigationPath[value])
        //     },
        //   ),
        // ),
      ),
    );
  }
}
