import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(OnboardingState.userInfo());

  void saveEmailAndAvatar(String email, String avatarUrl) {
    emit(OnboardingState.userInfo(email: email, avatarUrl: avatarUrl));
  }
}
