import 'package:firebase_database/firebase_database.dart';

abstract class FirebaseDbService {
  Future<void> saveUserData({required String uid, required Map<String, dynamic> data});

  Future<Map<String, dynamic>?> getUserData(String uid);
}

class FirebaseDbServiceImpl implements FirebaseDbService {
  final DatabaseReference _dbRef = FirebaseDatabase.instance.ref();

  @override
  Future<void> saveUserData({required String uid, required Map<String, dynamic> data}) async {
    await _dbRef.child("users").child(uid).set(data);
  }

  @override
  Future<Map<String, dynamic>?> getUserData(String uid) async {
    DataSnapshot snapshot = await _dbRef.child("users").child(uid).get();
    if (snapshot.value != null) {
      return Map<String, dynamic>.from(snapshot.value as Map);
    }
    return null;
  }
}
