import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(null) User? loggedUser,
    @Default(ThemeMode.system) ThemeMode? themeMode,
  }) = _AppState;
}