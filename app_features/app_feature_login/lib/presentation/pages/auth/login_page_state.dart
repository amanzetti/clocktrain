import 'package:app_feature_login/domain/enities/user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_page_state.freezed.dart';

@freezed
class LoginPageState with _$LoginPageState {
  const factory LoginPageState({
    @Default(false) bool isLoading,
    @Default(null) String? email,
    @Default(null) String? password,
    @Default(null) User ?user,
  }) = _LoginPageStatee;
}
