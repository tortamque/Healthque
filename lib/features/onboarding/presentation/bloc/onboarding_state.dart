part of 'onboarding_cubit.dart';

@freezed
sealed class OnboardingState with _$OnboardingState {
  const OnboardingState._();

  const factory OnboardingState.userInfo({
    String? email,
    String? avatarUrl,
    String? name,
    String? surname,
    String? googleDisplayName,
    int? age,
    Gender? gender,
    double? height,
    double? weight,
    double? dailyWaterIntake,
    double? calorieBurnTarget,
    int? desiredSteps,
  }) = OnboardingUserInfo;
}
