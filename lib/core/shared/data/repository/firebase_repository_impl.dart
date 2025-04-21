import 'package:firebase_auth/firebase_auth.dart';
import 'package:healthque/core/shared/shared.dart';

class FirebaseRepositoryImpl implements FirebaseRepository {
  final FirebaseDbService _dbManager;

  FirebaseRepositoryImpl(this._dbManager);

  @override
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
  }) async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      throw Exception("User not authenticated!");
    }
    final data = {
      "profile": profile,
      "workouts": workouts,
      "bloodPressureRecords": bloodPressureRecords,
      "temperatureRecords": temperatureRecords,
      "bloodSugarRecords": bloodSugarRecords,
      "waterRecords": waterRecords,
      "stressMoodRecords": stressMoodRecords,
      "notifications": notifications,
      "courseTreatments": courseTreatments,
      "medications": medications,
      "themePreference": themePreference,
      "locale": locale,
    };

    await _dbManager.saveUserData(
      uid: uid,
      data: data,
    );
  }

  @override
  Future<Map<String, dynamic>?> getUserData() async {
    final uid = FirebaseAuth.instance.currentUser?.uid;
    if (uid == null) {
      throw Exception("User not authenticated!");
    }
    return await _dbManager.getUserData(uid);
  }
}
