import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.borderRadius = 16,
    this.controller,
    this.customDecoration,
    this.hintText,
    this.labelText,
    this.validator,
  });

  final TextEditingController? controller;
  final InputDecoration? customDecoration;
  final double borderRadius;
  final String? hintText;
  final String? labelText;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: customDecoration ??
          InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(borderRadius)),
            hintText: hintText,
            labelText: labelText,
          ),
    );
  }
}
