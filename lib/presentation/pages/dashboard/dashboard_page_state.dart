
import 'package:clocktrain/domain/models/user_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_page_state.freezed.dart'

@freezed
class DashboardPageState with _$DashboardPageState{

const factory DashboardPageState({
  required User user,
  
  }) = _DashboardPageState;
}