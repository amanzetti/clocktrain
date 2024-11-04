import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainPageParams {
  final String title;

  MainPageParams({required this.title});
}

final mainPageParamsProvider = StateProvider<MainPageParams>((ref) {
  return MainPageParams(title: 'Main page');
});