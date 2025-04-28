import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final int starIndex;
  final int currentRating;
  final ValueChanged<int> onRatingChanged;
  final Color filledColor;
  final Color unfilledColor;

  const StarWidget({
    super.key,
    required this.starIndex,
    required this.currentRating,
    required this.onRatingChanged,
    required this.filledColor,
    required this.unfilledColor,
  });

  @override
  Widget build(BuildContext context) {
    final bool isFilled = starIndex < currentRating;
    return IconButton(
      icon: Icon(
        isFilled ? Icons.star : Icons.star_border,
        color: isFilled ? filledColor : unfilledColor,
      ),
      onPressed: () => onRatingChanged(starIndex + 1),
      iconSize: 28,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
    );
  }
}
