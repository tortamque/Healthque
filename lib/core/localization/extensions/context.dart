import 'package:flutter/material.dart';
import 'package:healthque/core/localization/generated/l10n.dart';

extension ContextExtenstions on BuildContext {
  Strings get strings => Strings.of(this);
}
