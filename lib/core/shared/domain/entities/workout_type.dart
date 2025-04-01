import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:hive/hive.dart';

part 'workout_type.g.dart';

@HiveType(typeId: 3, adapterName: 'WorkoutTypeAdapter')
enum WorkoutType {
  @HiveField(0)
  running,
  @HiveField(1)
  swimming,
  @HiveField(2)
  cycling,
  @HiveField(3)
  weightTraining,
  @HiveField(4)
  walking,
  @HiveField(5)
  tennis,
  @HiveField(6)
  gymnastics,
  @HiveField(7)
  bouldering,
}

extension WorkoutTypeExtension on WorkoutType {
  String displayName(BuildContext context) {
    switch (this) {
      case WorkoutType.running:
        return context.strings.running;
      case WorkoutType.swimming:
        return context.strings.swimming;
      case WorkoutType.cycling:
        return context.strings.cycling;
      case WorkoutType.weightTraining:
        return context.strings.weightTraining;
      case WorkoutType.walking:
        return context.strings.walking;
      case WorkoutType.tennis:
        return context.strings.tennis;
      case WorkoutType.gymnastics:
        return context.strings.gymnastics;
      case WorkoutType.bouldering:
        return context.strings.bouldering;
    }
  }

  bool get needsDistance => this == WorkoutType.running || this == WorkoutType.swimming || this == WorkoutType.cycling;
}
