import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:healthque/core/extensions/context.dart';

extension DateTimeComponentsExtension on DateTimeComponents {
  String translate(BuildContext context) {
    switch (this) {
      case DateTimeComponents.dateAndTime:
        return context.strings.once;
      case DateTimeComponents.dayOfMonthAndTime:
        return context.strings.monthly;
      case DateTimeComponents.dayOfWeekAndTime:
        return context.strings.weekly;
      case DateTimeComponents.time:
        return context.strings.daily;
    }
  }
}
