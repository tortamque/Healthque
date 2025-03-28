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

      final List<HealthRecord> stepsRecords = [];
      final List<HealthRecord> caloriesRecords = [];
      final List<HealthRecord> distanceRecords = [];
      final List<HealthRecord> sleepRecords = [];
      final List<HealthRecord> workoutRecords = [];
      final List<HealthRecord> heartRateRecords = [];
      final List<HealthRecord> bloodOxygenRecords = [];

      final Set<HealthDataType> sleepTypes = {
        HealthDataType.SLEEP_AWAKE,
        HealthDataType.SLEEP_DEEP,
        HealthDataType.SLEEP_LIGHT,
        HealthDataType.SLEEP_REM,
      };

      for (var data in healthData) {
        final record = HealthRecord(dataPoint: data, date: data.dateFrom);
        if (data.type == HealthDataType.STEPS) {
          stepsRecords.add(record);
        } else if (data.type == HealthDataType.TOTAL_CALORIES_BURNED) {
          caloriesRecords.add(record);
        } else if (data.type == HealthDataType.DISTANCE_DELTA) {
          distanceRecords.add(record);
        } else if (sleepTypes.contains(data.type)) {
          sleepRecords.add(record);
        } else if (data.type == HealthDataType.WORKOUT) {
          workoutRecords.add(record);
        } else if (data.type == HealthDataType.HEART_RATE) {
          heartRateRecords.add(record);
        } else if (data.type == HealthDataType.BLOOD_OXYGEN) {
          bloodOxygenRecords.add(record);
        }
      }

      emit(HealthState.loaded(
        steps: stepsRecords,
        calories: caloriesRecords,
        distance: distanceRecords,
        sleep: sleepRecords,
        workout: workoutRecords,
        heartRate: heartRateRecords,
        bloodOxygen: bloodOxygenRecords,
      ));
    } catch (error) {
      emit(HealthState.error(error.toString()));
    }
  }
}

class HealthRecord {
  final HealthDataPoint dataPoint;
  final DateTime date;

  HealthRecord({
    required this.dataPoint,
    required this.date,
  });

  @override
  String toString() {
    return 'HealthRecord(date: $date, dataPoint: $dataPoint)';
  }
}
