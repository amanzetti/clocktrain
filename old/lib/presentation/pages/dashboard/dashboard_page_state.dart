import 'package:clocktrain/domain/entities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_page_state.freezed.dart';

@freezed
class DashboardPageState with _$DashboardPageState {
  const factory DashboardPageState({
    @Default(false) bool isLoading,
    @Default(null) User? loggedUser,
  }) = _DashboardPageState;
}
