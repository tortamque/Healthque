import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';
import 'package:hive/hive.dart';

part 'medication_type.g.dart';

@HiveType(typeId: 8)
enum MedicationType {
  @HiveField(0)
  tablet,
  @HiveField(1)
  capsule,
  @HiveField(2)
  injection,
  @HiveField(3)
  syrup,
  @HiveField(4)
  other,
}

extension MedicationTypeExtension on MedicationType {
  String displayName(BuildContext context) {
    switch (this) {
      case MedicationType.tablet:
        return context.strings.tablet;
      case MedicationType.capsule:
        return context.strings.capsule;
      case MedicationType.injection:
        return context.strings.injection;
      case MedicationType.syrup:
        return context.strings.syrup;
      case MedicationType.other:
        return context.strings.other;
    }
  }

  String defaultUnit(BuildContext context) {
    switch (this) {
      case MedicationType.tablet:
      case MedicationType.capsule:
        return context.strings.pieces;
      case MedicationType.injection:
      case MedicationType.syrup:
        return context.strings.ml;
      case MedicationType.other:
        return context.strings.units;
    }
  }
}
