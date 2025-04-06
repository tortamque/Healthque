import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:healthque/core/extensions/context.dart';

class IntensitySlider extends StatelessWidget {
  final double intensity;
  final double minIntensity;
  final double maxIntensity;
  final ValueChanged<double> onChanged;

  const IntensitySlider({
    super.key,
    required this.intensity,
    required this.minIntensity,
    required this.maxIntensity,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.strings.intensity,
          style: context.textTheme.bodyMedium,
        ),
        const Gap(8),
        Slider(
          value: intensity,
          min: minIntensity,
          max: maxIntensity,
          divisions: (maxIntensity - minIntensity).toInt(),
          label: intensity.toStringAsFixed(0),
          onChanged: onChanged,
        ),
      ],
    );
  }
}
