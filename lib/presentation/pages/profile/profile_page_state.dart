import 'package:clocktrain/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_page_state.freezed.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState({
    @Default(null) User? currentUser,
  }) = _ProfilePageState;
}