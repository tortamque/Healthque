import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';

class FavoriteToggle extends StatelessWidget {
  final bool isFavorite;
  final ValueChanged<bool> onChanged;

  const FavoriteToggle({
    super.key,
    required this.isFavorite,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(context.strings.markAsFavorite),
      value: isFavorite,
      onChanged: onChanged,
      contentPadding: EdgeInsets.zero,
      activeColor: context.theme.colorScheme.primary,
    );
  }
}
