part of 'health_connection_cubit.dart';

@freezed
sealed class HealthConnectionState with _$HealthConnectionState {
  const HealthConnectionState._();

  const factory HealthConnectionState.initial() = HealthConnectionStateInitial;
  const factory HealthConnectionState.loading() = HealthConnectionStateLoading;
  const factory HealthConnectionState.connected() = HealthConnectionStateConnected;
  const factory HealthConnectionState.error(String message) = HealthConnectionStateError;
}
