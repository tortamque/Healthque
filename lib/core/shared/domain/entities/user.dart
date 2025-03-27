import 'package:freezed_annotation/freezed_annotation.dart';
import 'entities.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String? email;
  final String? avatarUrl;
  final String? name;
  final String? surname;
  final int? age;
  final Gender? gender;
  final double? height;
  final double? weight;
  final int? waterConsumption;
  final int? caloriesBurnInOneDay;
  final int? desiredSteps;

  User({
    required this.email,
    required this.avatarUrl,
    required this.name,
    required this.surname,
    required this.age,
    required this.gender,
    required this.height,
    required this.weight,
    required this.waterConsumption,
    required this.caloriesBurnInOneDay,
    required this.desiredSteps,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  String get formattedName => surname == null ? name! : '$name $surname';
}
