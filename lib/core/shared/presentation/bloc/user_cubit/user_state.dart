part of 'user_cubit.dart';

@freezed
sealed class UserState with _$UserState {
  const UserState._();

  const factory UserState.userInfo({
    String? email,
    String? avatarUrl,
    String? name,
    String? surname,
    String? googleDisplayName,
    int? age,
    Gender? gender,
    double? height,
    double? weight,
    int? waterConsumption,
    int? caloriesBurnInOneDay,
    int? desiredSteps,
  }) = UserInfo;
}
