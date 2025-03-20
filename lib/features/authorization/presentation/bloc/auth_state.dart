part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.authenticated(User user) = AuthStateAuthenticated;
  const factory AuthState.unauthenticated() = AuthStateUnauthenticated;
  const factory AuthState.failure(String message) = AuthStateFailure;
}
