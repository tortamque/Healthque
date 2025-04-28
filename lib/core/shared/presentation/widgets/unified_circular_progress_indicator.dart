import 'package:flutter/material.dart';

class UnifiedCircularProgressIndicator extends StatelessWidget {
  const UnifiedCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularProgressIndicator(
      strokeCap: StrokeCap.round,
    );
  }
}
