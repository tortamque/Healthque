import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

part 'health_connection_state.dart';
part 'health_connection_cubit.freezed.dart';

class HealthConnectionCubit extends Cubit<HealthConnectionState> {
  HealthConnectionCubit() : super(const HealthConnectionState.initial());

  final Health _health = Health();

  final List<HealthDataType> _dataTypes = [
    HealthDataType.STEPS,
    HealthDataType.TOTAL_CALORIES_BURNED,
    HealthDataType.DISTANCE_DELTA,
    HealthDataType.SLEEP_AWAKE,
    HealthDataType.SLEEP_DEEP,
    HealthDataType.SLEEP_LIGHT,
    HealthDataType.SLEEP_REM,
    HealthDataType.WORKOUT,
    HealthDataType.HEART_RATE,
    HealthDataType.BLOOD_OXYGEN,
  ];

  Future<void> checkHealthConnectStatus({bool throttle = false}) async {
    emit(const HealthConnectionState.loading());

    if (throttle) {
      await Future.delayed(const Duration(seconds: 2));
    }

    try {
      await Permission.activityRecognition.request();
      await Permission.location.request();

      bool? permissionStatus = await _health.hasPermissions(_dataTypes);
      bool authorized;

      if (!(permissionStatus ?? false)) {
        authorized = await _health.requestAuthorization(_dataTypes);
      } else {
        authorized = true;
      }
      if (!authorized) {
        emit(const HealthConnectionState.error(
            "Health Connect is not connected. Please set up Health Connect to proceed."));
      } else {
        emit(const HealthConnectionState.connected());
      }
    } catch (error) {
      emit(HealthConnectionState.error(error.toString()));
    }
  }
}
