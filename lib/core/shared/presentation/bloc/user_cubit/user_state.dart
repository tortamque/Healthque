part of 'user_cubit.dart';

@freezed
sealed class UserState with _$UserState {
  const UserState._();

  const factory UserState.user({
    @Default(User()) User user,
  }) = UserStateUser;
}
