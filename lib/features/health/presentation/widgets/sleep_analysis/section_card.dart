import 'package:flutter/material.dart';
import 'package:healthque/core/extensions/context.dart';

class SectionCard extends StatelessWidget {
  final String title;
  final String content;

  const SectionCard({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: context.textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              content,
              style: context.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
