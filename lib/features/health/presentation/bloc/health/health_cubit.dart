import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';
import 'package:permission_handler/permission_handler.dart';

part 'health_state.dart';
part 'health_cubit.freezed.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(const HealthState.initial());

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

  Future<void> fetchHealthData() async {
    emit(const HealthState.loading());
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
        emit(const HealthState.error("Permission not granted"));
        return;
      }

      final DateTime now = DateTime.now();
      final DateTime start = DateTime(now.year, now.month, now.day);

      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        startTime: start,
        endTime: now,
        types: _dataTypes,
      );

      healthData = _health.removeDuplicates(healthData);

      int steps = 0;
      double calories = 0.0;
      Duration sleepDuration = Duration.zero;
      Duration exerciseDuration = Duration.zero;
      double exerciseDistance = 0.0;
      double heartRateSum = 0.0;
      int heartRateCount = 0;
      double oxygenSum = 0.0;
      int oxygenCount = 0;

      final Set<HealthDataType> sleepTypes = {
        HealthDataType.SLEEP_AWAKE,
        HealthDataType.SLEEP_DEEP,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_REM,
      };

      for (var data in healthData) {
        if (data.type == HealthDataType.STEPS) {
          steps += (data.value as NumericHealthValue).numericValue.toInt();
        } else if (data.type == HealthDataType.TOTAL_CALORIES_BURNED) {
          calories += (data.value as NumericHealthValue).numericValue.toDouble();
        } else if (data.type == HealthDataType.DISTANCE_DELTA) {
          exerciseDistance += (data.value as NumericHealthValue).numericValue.toDouble();
        } else if (sleepTypes.contains(data.type)) {
          sleepDuration += data.dateTo.difference(data.dateFrom);
        } else if (data.type == HealthDataType.WORKOUT) {
          exerciseDuration += data.dateTo.difference(data.dateFrom);
        } else if (data.type == HealthDataType.HEART_RATE) {
          heartRateSum += (data.value as NumericHealthValue).numericValue.toDouble();
          heartRateCount++;
        } else if (data.type == HealthDataType.BLOOD_OXYGEN) {
          oxygenSum += (data.value as NumericHealthValue).numericValue.toDouble();
          oxygenCount++;
        }
      }

      final double averageHeartRate = heartRateCount > 0 ? heartRateSum / heartRateCount : 0.0;
      final double averageBloodOxygen = oxygenCount > 0 ? oxygenSum / oxygenCount : 0.0;

      emit(HealthState.loaded(
        steps: steps,
        calories: calories,
        sleepDuration: sleepDuration,
        exerciseDuration: exerciseDuration,
        exerciseDistance: exerciseDistance,
        averageHeartRate: averageHeartRate,
        averageBloodOxygen: averageBloodOxygen,
      ));
    } catch (error) {
      emit(HealthState.error(error.toString()));
    }
  }
}
