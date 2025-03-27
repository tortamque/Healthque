import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesManager {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> storeValue<T>(String key, T value, {String Function(T value)? serialize}) async {
    if (_prefs == null) {
      throw Exception("SharedPreferences not initialized. Call init() first.");
    }
    if (value is String) {
      await _prefs!.setString(key, value);
    } else if (value is int) {
      await _prefs!.setInt(key, value);
    } else if (value is double) {
      await _prefs!.setDouble(key, value);
    } else if (value is bool) {
      await _prefs!.setBool(key, value);
    } else if (value is List<String>) {
      await _prefs!.setStringList(key, value);
    } else if (serialize != null) {
      final String jsonString = serialize(value);
      await _prefs!.setString(key, jsonString);
    } else {
      throw Exception("Unsupported type $T. Provide a serialize function to store this value.");
    }
  }

  static T? retrieveValue<T>(String key, {T Function(Map<String, dynamic> json)? deserialize}) {
    if (_prefs == null) {
      throw Exception("SharedPreferences not initialized. Call init() first.");
    }

    if (T == String) {
      return _prefs!.getString(key) as T?;
    } else if (T == int) {
      return _prefs!.getInt(key) as T?;
    } else if (T == double) {
      return _prefs!.getDouble(key) as T?;
    } else if (T == bool) {
      return _prefs!.getBool(key) as T?;
    } else if (T == List<String>) {
      return _prefs!.getStringList(key) as T?;
    } else {
      final String? jsonString = _prefs!.getString(key);
      if (jsonString == null) return null;
      if (deserialize != null) {
        final Map<String, dynamic> jsonMap = jsonDecode(jsonString) as Map<String, dynamic>;

        return deserialize(jsonMap);
      } else {
        throw Exception("No deserialize function provided for type $T. Cannot retrieve value.");
      }
    }
  }
}
