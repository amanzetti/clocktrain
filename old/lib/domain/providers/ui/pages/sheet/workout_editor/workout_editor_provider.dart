
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TextControllerPair {
  final UniqueKey key;
  final List<TextEditingController> controllers;

  TextControllerPair()
      : key = UniqueKey(),
        controllers = [TextEditingController(), TextEditingController(), TextEditingController()];
}

final repTextControllerPairProvider = StateNotifierProvider<
    RepTextControllerPairProvider, List<TextControllerPair>>((ref) {
  return RepTextControllerPairProvider();
});

class RepTextControllerPairProvider
    extends StateNotifier<List<TextControllerPair>> {
  RepTextControllerPairProvider() : super([]);

  // Aggiunge una coppia di controller per ogni nuova coppia di TextField
  void addControllerPair() {
    state = [...state, TextControllerPair()];
  }

  // Rimuove una coppia di controller
  void removeControllerPair(UniqueKey key) {
    final itemToRemove = state.firstWhere((item) => item.key == key);
    for (var controller in itemToRemove.controllers) {
      controller.dispose();
    } // Libera risorse
    state = state.where((item) => item.key != key).toList();
  }

  // Restituisce i valori dei controller in forma di coppie
  List<List<String>> get controllerPairValues {
    return state
        .map((pair) =>
            pair.controllers.map((controller) => controller.text).toList())
        .toList();
  }
}