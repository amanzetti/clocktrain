import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_page_state.freezed.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState({
    @Default(null) User? currentUser,
  }) = _ProfilePageState;
}