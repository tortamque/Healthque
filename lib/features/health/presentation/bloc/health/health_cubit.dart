import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:health/health.dart';
import 'package:healthque/features/health/health.dart';
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

  Future<void> fetchHealthData({DateTime? customStart, DateTime? customEnd}) async {
    HealthStateLoaded? previousData;

    if (state is HealthStateLoaded) {
      previousData = state as HealthStateLoaded;
    }

    emit(HealthState.loading(previousData: previousData));

    try {
      final DateTime now = DateTime.now();
      final DateTime start = customStart ?? DateTime(now.year, now.month, now.day);
      final DateTime end = customEnd ?? now;

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

      List<HealthDataPoint> healthData = await _health.getHealthDataFromTypes(
        startTime: start,
        endTime: end,
        types: _dataTypes,
      );

      healthData = _health.removeDuplicates(healthData);

      final List<HealthRecord> newSteps = [];
      final List<HealthRecord> newCalories = [];
      final List<HealthRecord> newDistance = [];
      final List<HealthRecord> newSleep = [];
      final List<HealthRecord> newWorkout = [];
      final List<HealthRecord> newHeartRate = [];
      final List<HealthRecord> newBloodOxygen = [];

      final Set<HealthDataType> sleepTypes = {
        HealthDataType.SLEEP_AWAKE,
        HealthDataType.SLEEP_DEEP,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_REM,
      };

      for (var data in healthData) {
        final record = HealthRecord(
          dataPoint: data,
          date: data.dateFrom,
        );
        if (data.type == HealthDataType.STEPS) {
          newSteps.add(record);
        } else if (data.type == HealthDataType.TOTAL_CALORIES_BURNED) {
          newCalories.add(record);
        } else if (data.type == HealthDataType.DISTANCE_DELTA) {
          newDistance.add(record);
        } else if (sleepTypes.contains(data.type)) {
          newSleep.add(record);
        } else if (data.type == HealthDataType.WORKOUT) {
          newWorkout.add(record);
        } else if (data.type == HealthDataType.HEART_RATE) {
          newHeartRate.add(record);
        } else if (data.type == HealthDataType.BLOOD_OXYGEN) {
          newBloodOxygen.add(record);
        }
      }

      final List<HealthRecord> stepsExisting = previousData?.steps ?? [];
      final List<HealthRecord> caloriesExisting = previousData?.calories ?? [];
      final List<HealthRecord> distanceExisting = previousData?.distance ?? [];
      final List<HealthRecord> sleepExisting = previousData?.sleep ?? [];
      final List<HealthRecord> workoutExisting = previousData?.workout ?? [];
      final List<HealthRecord> heartRateExisting = previousData?.heartRate ?? [];
      final List<HealthRecord> bloodOxygenExisting = previousData?.bloodOxygen ?? [];

      final mergedSteps = _mergeRecords(stepsExisting, newSteps);
      final mergedCalories = _mergeRecords(caloriesExisting, newCalories);
      final mergedDistance = _mergeRecords(distanceExisting, newDistance);
      final mergedSleep = _mergeRecords(sleepExisting, newSleep);
      final mergedWorkout = _mergeRecords(workoutExisting, newWorkout);
      final mergedHeartRate = _mergeRecords(heartRateExisting, newHeartRate);
      final mergedBloodOxygen = _mergeRecords(bloodOxygenExisting, newBloodOxygen);

      emit(HealthState.loaded(
        steps: mergedSteps,
        calories: mergedCalories,
        distance: mergedDistance,
        sleep: mergedSleep,
        workout: mergedWorkout,
        heartRate: mergedHeartRate,
        bloodOxygen: mergedBloodOxygen,
      ));
    } catch (error) {
      emit(HealthState.error(error.toString()));
    }
  }

  List<HealthRecord> _mergeRecords(List<HealthRecord> oldRecords, List<HealthRecord> newRecords) {
    final combined = [...oldRecords, ...newRecords];
    final Map<String, HealthRecord> uniqueMap = {};
    for (var record in combined) {
      final key = record.dataPoint.uuid;
      uniqueMap[key] = record;
    }
    final merged = uniqueMap.values.toList();
    merged.sort((a, b) => a.date.compareTo(b.date));
    return merged;
  }
}
