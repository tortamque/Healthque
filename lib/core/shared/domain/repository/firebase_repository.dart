abstract class FirebaseRepository {
  Future<void> saveUserData({
    required Map<String, dynamic> profile,
    required Map<String, dynamic> workouts,
    required Map<String, dynamic> bloodPressureRecords,
    required Map<String, dynamic> temperatureRecords,
    required Map<String, dynamic> bloodSugarRecords,
    required Map<String, dynamic> waterRecords,
    required Map<String, dynamic> stressMoodRecords,
    required Map<String, dynamic> notifications,
    required Map<String, dynamic> courseTreatments,
    required Map<String, dynamic> medications,
    required Map<String, dynamic> themePreference,
    required Map<String, dynamic> locale,
  });

  Future<Map<String, dynamic>?> getUserData();
}
