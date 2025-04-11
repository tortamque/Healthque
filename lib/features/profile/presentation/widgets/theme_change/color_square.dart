import 'package:flutter/material.dart';

class ColorSquare extends StatefulWidget {
  final Color color;
  final VoidCallback onColorSelected;

  const ColorSquare({
    super.key,
    required this.color,
    required this.onColorSelected,
  });

  @override
  State<ColorSquare> createState() => _ColorSquareState();
}

class _ColorSquareState extends State<ColorSquare> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _rotationAnimation = Tween<double>(begin: 0, end: 0.25).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOutBack),
    );
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Future.delayed(
          Duration(milliseconds: 50),
          () => widget.onColorSelected(),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _rotationAnimation,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: _onTap,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    _controller.forward(from: 0);
  }
}
