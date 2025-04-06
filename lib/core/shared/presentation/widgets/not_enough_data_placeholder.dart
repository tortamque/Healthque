import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';

class NotEnoughDataPlaceholder extends StatelessWidget {
  const NotEnoughDataPlaceholder({
    super.key,
    this.padding = const EdgeInsets.all(0),
  });

  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: padding,
        child: Text(
          context.strings.theresNotEnoughDataToBuildTheChart,
          style: context.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
