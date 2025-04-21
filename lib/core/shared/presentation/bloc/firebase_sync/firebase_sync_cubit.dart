import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';
import 'package:healthque/features/health/domain/entities/medication_tracking/course_treatment.dart';

part 'firebase_sync_state.dart';
part 'firebase_sync_cubit.freezed.dart';

class FirebaseSyncCubit extends Cubit<FirebaseSyncState> {
  final SaveUserDataUseCase _saveUserDataUseCase;
  final GetUserDataUseCase _getUserDataUseCase;

  final HiveManager _userHiveManager;
  final HiveManager _workoutsHiveManager;
  final HiveManager _bloodPressureTrackingHiveManager;
  final HiveManager _temperatureTrackingHiveManager;
  final HiveManager _bloodSugarTrackingHiveManager;
  final HiveManager _waterTrackingHiveManager;
  final HiveManager _stressMoodTrackingHiveManager;
  final HiveManager _notificationsHiveManager;
  final HiveManager _courseTreatmentHiveManager;
  final HiveManager _medicationTrackingHiveManager;
  final HiveManager _themePreferenceHiveManager;
  final HiveManager _localeHiveManager;

  FirebaseSyncCubit(
    this._saveUserDataUseCase,
    this._getUserDataUseCase,
    this._userHiveManager,
    this._workoutsHiveManager,
    this._bloodPressureTrackingHiveManager,
    this._temperatureTrackingHiveManager,
    this._bloodSugarTrackingHiveManager,
    this._waterTrackingHiveManager,
    this._stressMoodTrackingHiveManager,
    this._notificationsHiveManager,
    this._courseTreatmentHiveManager,
    this._medicationTrackingHiveManager,
    this._themePreferenceHiveManager,
    this._localeHiveManager,
  ) : super(FirebaseSyncState());

  Future<void> syncUserData() async {
    try {
      emit(state.copyWith(isLoading: true, syncSuccess: false, errorMessage: null));

      final user = _userHiveManager.box.get(_userHiveManager.hiveKey);
      final workouts = _workoutsHiveManager.box.get(_workoutsHiveManager.hiveKey);
      final bloodPressureRecords = _bloodPressureTrackingHiveManager.box.get(_bloodPressureTrackingHiveManager.hiveKey);
      final temperatureRecords = _temperatureTrackingHiveManager.box.get(_temperatureTrackingHiveManager.hiveKey);
      final bloodSugarRecords = _bloodSugarTrackingHiveManager.box.get(_bloodSugarTrackingHiveManager.hiveKey);
      final waterRecords = _waterTrackingHiveManager.box.get(_waterTrackingHiveManager.hiveKey);
      final stressMoodRecords = _stressMoodTrackingHiveManager.box.get(_stressMoodTrackingHiveManager.hiveKey);
      final notifications = _notificationsHiveManager.box.get(_notificationsHiveManager.hiveKey);
      final courseTreatments = _courseTreatmentHiveManager.box.get(_courseTreatmentHiveManager.hiveKey);
      final medications = _medicationTrackingHiveManager.box.get(_medicationTrackingHiveManager.hiveKey);
      final themePreference = _themePreferenceHiveManager.box.get(_themePreferenceHiveManager.hiveKey);
      final localeString = _localeHiveManager.box.get(_localeHiveManager.hiveKey);

      final SaveUserDataParams params = SaveUserDataParams(
        profile: user?.toJson() ?? {},
        workouts: workouts == null ? {"workouts": []} : {"workouts": workouts.workouts.map((e) => e.toJson()).toList()},
        bloodPressureRecords: bloodPressureRecords == null
            ? {"records": []}
            : {"records": bloodPressureRecords.records.map((e) => e.toJson()).toList()},
        temperatureRecords: temperatureRecords == null
            ? {"records": []}
            : {"records": temperatureRecords.records.map((e) => e.toJson()).toList()},
        bloodSugarRecords: bloodSugarRecords == null
            ? {"records": []}
            : {"records": bloodSugarRecords.records.map((e) => e.toJson()).toList()},
        waterRecords:
            waterRecords == null ? {"records": []} : {"records": waterRecords.records.map((e) => e.toJson()).toList()},
        stressMoodRecords: stressMoodRecords == null
            ? {"records": []}
            : {"records": stressMoodRecords.records.map((e) => e.toJson()).toList()},
        notifications: notifications == null
            ? {"notifications": []}
            : {"notifications": notifications.notifications.map((e) => e.toJson()).toList()},
        courseTreatments: courseTreatments == null
            ? {"courses": []}
            : {
                "courses": courseTreatments.courses.map((course) {
                  final courseMap = course.toJson();
                  if (courseMap["entries"] is List) {
                    courseMap["entries"] = (courseMap["entries"] as List)
                        .map((entry) => entry is CourseTreatmentEntry ? entry.toJson() : entry)
                        .toList();
                  }
                  return courseMap;
                }).toList()
              },
        medications: medications == null
            ? {"medications": []}
            : {"medications": medications.medications.map((e) => e.toJson()).toList()},
        themePreference: themePreference?.toJson() ?? {},
        locale: {"locale": localeString ?? ""},
      );
      await _saveUserDataUseCase.call(params);

      emit(state.copyWith(isLoading: false, syncSuccess: true, errorMessage: null));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
