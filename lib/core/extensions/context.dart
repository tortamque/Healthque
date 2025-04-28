import 'package:flutter/material.dart';
import 'package:healthque/core/localization/generated/l10n.dart';

extension ContextExtenstions on BuildContext {
  Strings get strings => Strings.of(this);
  double get width => MediaQuery.of(this).size.width;
  double get height => MediaQuery.of(this).size.height;
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
}
