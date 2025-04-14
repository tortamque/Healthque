import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:healthque/core/shared/shared.dart';
import 'package:healthque/core/utils/hive/hive.dart';

part 'firebase_sync_state.dart';
part 'firebase_sync_cubit.freezed.dart';

class FirebaseSyncCubit extends Cubit<FirebaseSyncState> {
  final SaveUserDataUseCase _saveUserDataUseCase;
  final GetUserDataUseCase _getUserDataUseCase;
  final UserHiveManager _userHiveManager;
  final WorkoutsHiveManager _workoutsHiveManager;
  final BloodPressureTrackingHiveManager _bloodPressureTrackingHiveManager;
  final TemperatureTrackingHiveManager _temperatureTrackingHiveManager;
  final BloodSugarTrackingHiveManager _bloodSugarTrackingHiveManager;
  final WaterTrackingHiveManager _waterTrackingHiveManager;
  final StressMoodTrackingHiveManager _stressMoodTrackingHiveManager;
  final NotificationsHiveManager _notificationsHiveManager;
  final CourseTreatmentHiveManager _courseTreatmentHiveManager;
  final MedicationTrackingHiveManager _medicationTrackingHiveManager;
  final ThemePreferenceHiveManager _themePreferenceHiveManager;
  final LocaleHiveManager _localeHiveManager;

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
      print('here');
      emit(state.copyWith(isLoading: true, syncSuccess: false));

      final user = _userHiveManager.userBox.get(_userHiveManager.hiveKey);

      final workouts = _workoutsHiveManager.workoutsBox.get(_workoutsHiveManager.hiveKey);

      final bloodPressureRecords =
          _bloodPressureTrackingHiveManager.bloodPressureBox.get(_bloodPressureTrackingHiveManager.hiveKey);

      final temperatureRecords =
          _temperatureTrackingHiveManager.temperatureRecordsBox.get(_temperatureTrackingHiveManager.hiveKey);

      final bloodSugarRecords =
          _bloodSugarTrackingHiveManager.bloodSugarRecordsBox.get(_bloodSugarTrackingHiveManager.hiveKey);

      final waterRecords = _waterTrackingHiveManager.waterRecordsBox.get(_waterTrackingHiveManager.hiveKey);

      final stressMoodRecords =
          _stressMoodTrackingHiveManager.stressMoodBox.get(_stressMoodTrackingHiveManager.hiveKey);

      final notifications = _notificationsHiveManager.notifications.get(_notificationsHiveManager.hiveKey);

      final courseTreatments = _courseTreatmentHiveManager.courseTreatmentsBox.get(_courseTreatmentHiveManager.hiveKey);

      final medications =
          _medicationTrackingHiveManager.medicationTrackingBox.get(_medicationTrackingHiveManager.hiveKey);

      final themePreference = _themePreferenceHiveManager.themePreferenceBox.get(_themePreferenceHiveManager.hiveKey);

      final localeString = _localeHiveManager.localeBox.get(_localeHiveManager.hiveKey);

      final SaveUserDataParams params = SaveUserDataParams(
        profile: user?.toJson() ?? {},
        workouts: workouts?.toJson() ?? {"workouts": []},
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
            : {"courses": courseTreatments.courses.map((e) => e.toJson()).toList()},
        medications: medications == null
            ? {"medications": []}
            : {"medications": medications.medications.map((e) => e.toJson()).toList()},
        themePreference: themePreference?.toJson() ?? {},
        locale: {"locale": localeString ?? ""},
      );

      await _saveUserDataUseCase.call(params);

      emit(state.copyWith(isLoading: false, syncSuccess: true));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> loadUserData() async {
    try {
      emit(state.copyWith(isLoading: true));
      final data = await _getUserDataUseCase(null);
      emit(state.copyWith(isLoading: false, data: data));
    } catch (e) {
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
