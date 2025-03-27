import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/shared_preferences/shared_preferences.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserState.userInfo());

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

  Future<void> storeUser() async {
    if (state.email == null ||
        state.name == null ||
        state.age == null ||
        state.gender == null ||
        state.height == null ||
        state.weight == null ||
        state.waterConsumption == null ||
        state.caloriesBurnInOneDay == null ||
        state.desiredSteps == null) {
      throw Exception('Can\'t store user with null fields');
    }

    final user = User(
      email: state.email,
      avatarUrl: state.avatarUrl,
      name: state.name,
      surname: state.surname,
      age: state.age,
      gender: state.gender,
      height: state.height,
      weight: state.weight,
      waterConsumption: state.waterConsumption,
      caloriesBurnInOneDay: state.caloriesBurnInOneDay,
      desiredSteps: state.desiredSteps,
    );

    await SharedPreferencesManager.storeValue<User>(
      sharedPreferencesUser,
      user,
      serialize: (u) => jsonEncode(u.toJson()),
    );
  }

  User? retrieveUser() => SharedPreferencesManager.retrieveValue<User>(
        sharedPreferencesUser,
        deserialize: (json) => User.fromJson(json),
      );
}
