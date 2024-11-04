import 'package:clocktrain/domain/providers/main_page_params_provider.dart';
import 'package:clocktrain/domain/providers/sheet_list_page_provider.dart';
import 'package:clocktrain/presentation/routes/path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SheetListPage extends ConsumerWidget {
  const SheetListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exerciseList = ref.watch(exerciseListProvider);

    return Column(
      children: [
        Expanded(
          child: ReorderableListView(
            onReorder: (oldIndex, newIndex) {
              ref
                  .read(exerciseListProvider.notifier)
                  .reorderList(oldIndex, newIndex);
            },
            children: [
              for (int index = 0; index < exerciseList.length; index++)
                Card(
                  key: ValueKey(exerciseList[index]),
                  child: ListTile(
                    title: Text(exerciseList[index]),
                    leading: const Icon(Icons.drag_handle),
                    trailing: IconButton(
                      icon: const Icon(Icons.arrow_forward_ios),
                      onPressed: () {
                        ref
                            .read(mainPageParamsProvider.notifier)
                            .update((state) => MainPageParams(
                                  title: exerciseList[index],
                                ));
                        context.go(
                            '/sheet_list_page${AppPath.sheetPageWithId(exerciseList[index])}');
                        // ref
                        //     .read(exerciseListProvider.notifier)
                        //     .remove(exerciseList[index]);

                        // ref
                        //     .read(indexBottomNavbarProvider.notifier)
                        //     .update((state) => value),
                        // navigationShell.goBranch(value),
                        // context.go(bottomNavigationPath[value])
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
