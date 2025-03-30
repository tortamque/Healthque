import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';

part 'user_state.dart';
part 'user_cubit.freezed.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(
    this._getUserUsecase,
    this._saveUserUsecase,
  ) : super(UserState.user()) {
    _initUserFromHive();
  }

  final GetUserUsecase _getUserUsecase;
  final SaveUserUsecase _saveUserUsecase;

  void _initUserFromHive() {
    final storedUser = retrieveUser();

    if (storedUser != null) {
      emit(state.copyWith(user: storedUser));
    }
  }

  void saveEmailAndAvatar({
    required String email,
    required String avatarUrl,
  }) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          email: email,
          avatarUrl: avatarUrl,
        ),
      ),
    );
  }

  void saveNameAndSurname({
    required String name,
    required String? surname,
  }) {
    emit(
      state.copyWith(
        user: state.user.copyWith(
          name: name,
          surname: surname,
        ),
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
        user: state.user.copyWith(
          age: age,
          height: height,
          weight: weight,
          gender: gender,
        ),
      ),
    );
  }

  void saveWaterConsumption({
    required int waterConsumption,
  }) =>
      emit(
        state.copyWith(
          user: state.user.copyWith(
            waterConsumption: waterConsumption,
          ),
        ),
      );

  void saveCaloriesBurnInOneDay({
    required int caloriesBurnInOneDay,
  }) =>
      emit(
        state.copyWith(
          user: state.user.copyWith(
            caloriesBurnInOneDay: caloriesBurnInOneDay,
          ),
        ),
      );

  void saveDesiredSteps({
    required int desiredSteps,
  }) =>
      emit(
        state.copyWith(
          user: state.user.copyWith(
            desiredSteps: desiredSteps,
          ),
        ),
      );

  Future<void> storeUser() async {
    if (state.user.email == null ||
        state.user.name == null ||
        state.user.age == null ||
        state.user.gender == null ||
        state.user.height == null ||
        state.user.weight == null ||
        state.user.waterConsumption == null ||
        state.user.caloriesBurnInOneDay == null ||
        state.user.desiredSteps == null) {
      throw Exception('Can\'t store user with null fields');
    }

    await _saveUserUsecase.call(state.user);
  }

  User? retrieveUser() => _getUserUsecase.call(null);
}
