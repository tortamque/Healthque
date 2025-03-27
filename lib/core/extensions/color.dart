import 'package:flutter/material.dart';

extension ColorExtensions on Color {
  Color customOpacity(double value) => withValues(alpha: value);
}
