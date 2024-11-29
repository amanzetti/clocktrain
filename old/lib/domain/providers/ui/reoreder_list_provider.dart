import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListNotifier extends StateNotifier<List> {
  ListNotifier() : super([]);

  void setList(List list) {
    state = list;
  }

  void reorderList(int oldIndex, int newIndex) {
    final updatedList = List.from(state);
    if (newIndex > oldIndex) {
      newIndex -= 1;
    }
    final item = updatedList.removeAt(oldIndex);
    updatedList.insert(newIndex, item);
    state = updatedList;
  }
}

// Provider per il notifier
final listProvider = StateNotifierProvider<ListNotifier, List>((ref) {
  return ListNotifier();
});