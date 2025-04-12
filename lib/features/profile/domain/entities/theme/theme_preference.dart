import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'theme_preference.freezed.dart';
part 'theme_preference.g.dart';

@freezed
@HiveType(typeId: 21, adapterName: 'ThemePreferenceAdapter')
abstract class ThemePreference with _$ThemePreference {
  const factory ThemePreference({
    @HiveField(0) required int seedColorValue,
  }) = _ThemePreference;

  factory ThemePreference.fromJson(Map<String, dynamic> json) => _$ThemePreferenceFromJson(json);
}
