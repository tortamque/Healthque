import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class DashboardItemTemplate extends StatelessWidget {
  const DashboardItemTemplate({
    super.key,
    required this.child,
    required this.icon,
    required this.title,
    this.outerPadding = const EdgeInsets.only(top: 16, left: 16),
    this.innerPadding = const EdgeInsets.all(0),
  });

  final Widget child;
  final IconData icon;
  final String title;
  final EdgeInsets outerPadding;
  final EdgeInsets innerPadding;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Padding(
            padding: outerPadding,
            child: Row(
              children: [
                Icon(
                  icon,
                  color: context.theme.colorScheme.onPrimaryFixedVariant,
                ),
                Gap(8),
                Text(
                  title,
                  style: context.textTheme.bodyLarge,
                ),
              ],
            ),
          ),
          Padding(
            padding: innerPadding,
            child: child,
          )
        ],
      ),
    );
  }
}
