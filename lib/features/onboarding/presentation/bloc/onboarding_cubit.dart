import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.userInfo());

  void saveEmailAndAvatar({
    required String email,
    required String avatarUrl,
    required String googleDisplayName,
  }) {
    emit(
      state.copyWith(
        email: email,
        avatarUrl: avatarUrl,
        googleDisplayName: googleDisplayName,
      ),
    );
  }

  void saveNameAndSurname({
    required String name,
    required String? surname,
  }) {
    emit(
      state.copyWith(
        name: name,
        surname: (surname ?? '').isEmpty ? null : surname,
      ),
    );
  }

  void saveAgeWeightHeightGender({
    required int age,
    required double height,
    required double weight,
    required Gender gender,
  }) {
    emit(
      state.copyWith(
        age: age,
        height: height,
        weight: weight,
        gender: gender,
      ),
    );
  }

  void saveWaterConsumption({
    required int waterConsumption,
  }) =>
      emit(state.copyWith(waterConsumption: waterConsumption));

  void saveCaloriesBurnInOneDay({
    required int caloriesBurnInOneDay,
  }) =>
      emit(state.copyWith(caloriesBurnInOneDay: caloriesBurnInOneDay));

  void saveDesiredSteps({
    required int desiredSteps,
  }) =>
      emit(state.copyWith(desiredSteps: desiredSteps));
}
